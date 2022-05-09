; ModuleID = '/llk/IR_all_yes/fs/udf/super.c_pt.bc'
source_filename = "../fs/udf/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.export_operations = type opaque
%struct.match_token = type { i32, ptr }
%struct.user_namespace = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.logicalVolIntegrityDesc = type { %struct.tag, %struct.timestamp, i32, %struct.extent_ad, [32 x i8], i32, i32, [0 x i32] }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.timestamp = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.extent_ad = type { i32, i32 }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.udf_part_map = type { %union.anon.77, i32, i32, i16, i16, %union.anon.78, ptr, i16, i16 }
%union.anon.77 = type { ptr }
%union.anon.78 = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i32, i32, i32, i16, i16, i32, ptr, ptr, ptr }
%struct.udf_options = type { i8, i32, i32, i32, i32, i32, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.logicalVolIntegrityDescImpUse = type <{ %struct.regid, i32, i32, i16, i16, i16, [0 x i8] }>
%struct.regid = type { i8, [23 x i8], [8 x i8] }
%struct.substring_t = type { ptr, ptr }
%struct.udf_bitmap = type { i32, i32, [0 x ptr] }
%struct.udf_inode_info = type { %struct.timespec64, %struct.kernel_lb_addr, i64, i32, i32, i64, i32, i32, i32, i32, i32, ptr, %struct.kernel_lb_addr, i64, %struct.rw_semaphore, %struct.udf_ext_cache, %struct.spinlock, %struct.inode }
%struct.udf_ext_cache = type { %struct.extent_position, i64 }
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.spaceBitmapDesc = type { %struct.tag, i32, i32, [0 x i8] }
%struct.volStructDesc = type { i8, [5 x i8], i8, [2041 x i8] }
%struct.anchorVolDescPtr = type { %struct.tag, %struct.extent_ad, %struct.extent_ad, [480 x i8] }
%struct.desc_seq_scan_data = type { [4 x %struct.udf_vds_record], i32, i32, ptr }
%struct.udf_vds_record = type { i32, i32 }
%struct.generic_desc = type { %struct.tag, i32 }
%struct.volDescPtr = type { %struct.tag, i32, %struct.extent_ad, [484 x i8] }
%struct.partitionDesc = type { %struct.tag, i32, i16, i16, %struct.regid, [128 x i8], i32, i32, i32, %struct.regid, [128 x i8], [156 x i8] }
%struct.part_desc_seq_scan_data = type { %struct.udf_vds_record, i32 }
%struct.primaryVolDesc = type { %struct.tag, i32, i32, [32 x i8], i16, i16, i16, i16, i32, i32, [128 x i8], %struct.charspec, %struct.charspec, %struct.extent_ad, %struct.extent_ad, %struct.regid, %struct.timestamp, %struct.regid, [64 x i8], i32, i16, [22 x i8] }
%struct.charspec = type { i8, [63 x i8] }
%struct.logicalVolDesc = type { %struct.tag, i32, %struct.charspec, [128 x i8], i32, %struct.regid, [16 x i8], i32, i32, %struct.regid, [128 x i8], %struct.extent_ad, [0 x i8] }
%struct.genericPartitionMap1 = type { i8, i8, i16, i16 }
%struct.udfPartitionMap2 = type { i8, i8, [2 x i8], %struct.regid, i16, i16 }
%struct.sparablePartitionMap = type { i8, i8, [2 x i8], %struct.regid, i16, i16, i16, i8, [1 x i8], i32, [4 x i32] }
%struct.sparingTable = type { %struct.tag, %struct.regid, i16, i16, i32, [0 x %struct.sparingEntry] }
%struct.sparingEntry = type { i32, i32 }
%struct.metadataPartitionMap = type { i8, i8, [2 x i8], %struct.regid, i16, i16, i32, i32, i32, i32, i16, i8, [5 x i8] }
%struct.genericPartitionMap = type { i8, i8, [0 x i8] }
%struct.udf_virtual_data = type { i32, i16 }
%struct.fileSetDesc = type { %struct.tag, %struct.timestamp, i16, i16, i32, i32, i32, i32, %struct.charspec, [128 x i8], %struct.charspec, [32 x i8], [32 x i8], [32 x i8], %struct.long_ad, %struct.regid, %struct.long_ad, %struct.long_ad, [32 x i8] }
%struct.long_ad = type { i32, %struct.lb_addr, [6 x i8] }
%struct.lb_addr = type <{ i32, i16 }>

@__UNIQUE_ID_alias269 = internal constant [17 x i8] c"udf.alias=fs-udf\00", section ".modinfo", align 1
@udf_fstype = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 1, ptr null, ptr null, ptr @udf_mount, ptr @kill_block_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__func__.udf_find_metadata_inode_efe = private unnamed_addr constant [28 x i8] c"udf_find_metadata_inode_efe\00", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"metadata inode efe not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"metadata inode efe does not have short allocation descriptors!\0A\00", [32 x i8] zeroinitializer }, align 32
@_udf_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013UDF-fs: error (device %s): %s: %pV\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_udf_err\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/udf/super.c\00", [17 x i8] zeroinitializer }, align 32
@_udf_err._entry_ptr = internal global ptr @_udf_err._entry, section ".printk_index", align 4
@_udf_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 2345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014UDF-fs: warning (device %s): %s: %pV\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_udf_warn\00", [22 x i8] zeroinitializer }, align 32
@_udf_warn._entry_ptr = internal global ptr @_udf_warn._entry, section ".printk_index", align 4
@__UNIQUE_ID_author310 = internal constant [23 x i8] c"udf.author=Ben Fennema\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [49 x i8] c"udf.description=Universal Disk Format Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [20 x i8] c"udf.file=fs/udf/udf\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [16 x i8] c"udf.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_udf__314_2546_init_udf_fs6 = internal global ptr @init_udf_fs, section ".initcall6.init", align 4
@__exitcall_exit_udf_fs = internal global ptr @exit_udf_fs, section ".exitcall.exit", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@udf_fill_super.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sbi->s_alloc_mutex\00", [44 x i8] zeroinitializer }, align 32
@udf_fill_super.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sbi->s_cred_lock\00", [46 x i8] zeroinitializer }, align 32
@udf_fill_super.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 2, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udf_fill_super\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d:%s: Multi-session=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"UDF-fs: %s:%d:%s: Multi-session=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@udf_sb_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @udf_alloc_inode, ptr null, ptr @udf_free_in_core_inode, ptr null, ptr @udf_write_inode, ptr null, ptr @udf_evict_inode, ptr @udf_put_super, ptr @udf_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @udf_statfs, ptr @udf_remount_fs, ptr null, ptr @udf_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@udf_export_ops = external dso_local constant %struct.export_operations, align 1
@udf_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.4, i32 2188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015UDF-fs: Scanning with blocksize %u failed\0A\00", [51 x i8] zeroinitializer }, align 32
@udf_fill_super._entry_ptr = internal global ptr @udf_fill_super._entry, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No partition found (1)\0A\00", [40 x i8] zeroinitializer }, align 32
@udf_fill_super.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.12, ptr @.str.4, ptr @.str.17, i8 2, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%d:%s: Lastblock=%u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UDF-fs: %s:%d:%s: Lastblock=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"minUDFReadRev=%x (max is %x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No partition found (2)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No fileset found\0A\00", [46 x i8] zeroinitializer }, align 32
@udf_fill_super._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 2275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016UDF-fs: INFO Mounting volume '%s', timestamp %04u/%02u/%02u %02u:%02u (%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@udf_fill_super._entry_ptr.24 = internal global ptr @udf_fill_super._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error in udf_iget, block=%u, partition=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't allocate root dentry\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@tokens = internal constant { [28 x %struct.match_token], [32 x i8] } { [28 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.35 }, %struct.match_token { i32 1, ptr @.str.36 }, %struct.match_token { i32 2, ptr @.str.37 }, %struct.match_token { i32 3, ptr @.str.38 }, %struct.match_token { i32 4, ptr @.str.39 }, %struct.match_token { i32 5, ptr @.str.40 }, %struct.match_token { i32 6, ptr @.str.41 }, %struct.match_token { i32 7, ptr @.str.42 }, %struct.match_token { i32 8, ptr @.str.43 }, %struct.match_token { i32 22, ptr @.str.44 }, %struct.match_token { i32 23, ptr @.str.45 }, %struct.match_token { i32 24, ptr @.str.46 }, %struct.match_token { i32 25, ptr @.str.47 }, %struct.match_token { i32 9, ptr @.str.48 }, %struct.match_token { i32 10, ptr @.str.49 }, %struct.match_token { i32 11, ptr @.str.50 }, %struct.match_token { i32 12, ptr @.str.51 }, %struct.match_token { i32 13, ptr @.str.52 }, %struct.match_token { i32 14, ptr @.str.53 }, %struct.match_token { i32 15, ptr @.str.54 }, %struct.match_token { i32 16, ptr @.str.55 }, %struct.match_token { i32 17, ptr @.str.56 }, %struct.match_token { i32 18, ptr @.str.57 }, %struct.match_token { i32 19, ptr @.str.29 }, %struct.match_token { i32 20, ptr @.str.58 }, %struct.match_token { i32 26, ptr @.str.59 }, %struct.match_token { i32 27, ptr @.str.60 }, %struct.match_token { i32 21, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"utf8\00", [27 x i8] zeroinitializer }, align 32
@udf_parse_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013UDF-fs: iocharset %s not found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_parse_options\00", [46 x i8] zeroinitializer }, align 32
@udf_parse_options._entry_ptr = internal global ptr @udf_parse_options._entry, section ".printk_index", align 4
@udf_parse_options._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013UDF-fs: bad mount option \22%s\22 or missing value\0A\00", [46 x i8] zeroinitializer }, align 32
@udf_parse_options._entry_ptr.34 = internal global ptr @udf_parse_options._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"novrs\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nostrict\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bs=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unhide\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"undelete\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"noadinicb\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adinicb\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"shortad\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"longad\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uid=forget\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uid=ignore\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gid=forget\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gid=ignore\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uid=%u\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"umask=%o\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"session=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lastblock=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"anchor=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"volume=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"partition=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fileset=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rootdir=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iocharset=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mode=%o\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmode=%o\00", [23 x i8] zeroinitializer }, align 32
@udf_inode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@udf_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ei->i_data_sem\00", [16 x i8] zeroinitializer }, align 32
@udf_alloc_inode.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ei->i_extent_cache_lock\00", [39 x i8] zeroinitializer }, align 32
@__func__.udf_count_free_bitmap = private unnamed_addr constant [22 x i8] c"udf_count_free_bitmap\00", align 1
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"udf_count_free failed\0A\00", [41 x i8] zeroinitializer }, align 32
@udf_count_free_bitmap.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_count_free_bitmap, ptr @.str.4, ptr @.str.65, i8 2, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s:%d:%s: read failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"UDF-fs: %s:%d:%s: read failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nostrict\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",bs=%lu\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",unhide\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",undelete\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",noadinicb\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",shortad\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",uid=forget\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",gid=forget\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",uid=%u\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",gid=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",umask=%ho\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",mode=%ho\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",dmode=%ho\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",session=%d\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",lastblock=%u\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",anchor=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",iocharset=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",iocharset=utf8\00", [16 x i8] zeroinitializer }, align 32
@__func__.udf_load_vrs = private unnamed_addr constant [13 x i8] c"udf_load_vrs\00", align 1
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad block size\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No VRS found\0A\00", [18 x i8] zeroinitializer }, align 32
@udf_load_vrs.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_vrs, ptr @.str.4, ptr @.str.87, i8 1, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s:%d:%s: Failed to read sector at offset %d. Assuming open disc. Skipping validity check\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"UDF-fs: %s:%d:%s: Failed to read sector at offset %d. Assuming open disc. Skipping validity check\0A\00", [61 x i8] zeroinitializer }, align 32
@udf_load_vrs.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_vrs, ptr @.str.4, ptr @.str.89, i8 1, i8 -12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:%s: Validity check skipped because of novrs option\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UDF-fs: %s:%d:%s: Validity check skipped because of novrs option\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No anchor found\0A\00", [47 x i8] zeroinitializer }, align 32
@udf_check_vsd.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"udf_check_vsd\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:%s: Starting at sector %u (%lu byte sectors)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UDF-fs: %s:%d:%s: Starting at sector %u (%lu byte sectors)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CD001\00", [26 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.97, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"identify_vsd\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:%s: ISO9660 Boot Record found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UDF-fs: %s:%d:%s: ISO9660 Boot Record found\0A\00", [51 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.99, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:%s: ISO9660 Primary Volume Descriptor found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UDF-fs: %s:%d:%s: ISO9660 Primary Volume Descriptor found\0A\00", [37 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.101, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:%s: ISO9660 Supplementary Volume Descriptor found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"UDF-fs: %s:%d:%s: ISO9660 Supplementary Volume Descriptor found\0A\00", [63 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.103, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:%s: ISO9660 Volume Partition Descriptor found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UDF-fs: %s:%d:%s: ISO9660 Volume Partition Descriptor found\0A\00", [35 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.105, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:%s: ISO9660 Volume Descriptor Set Terminator found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"UDF-fs: %s:%d:%s: ISO9660 Volume Descriptor Set Terminator found\0A\00", [62 x i8] zeroinitializer }, align 32
@identify_vsd.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.96, ptr @.str.4, ptr @.str.107, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:%s: ISO9660 VRS (%u) found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UDF-fs: %s:%d:%s: ISO9660 VRS (%u) found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BEA01\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NSR02\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NSR03\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOOT2\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CDW02\00", [26 x i8] zeroinitializer }, align 32
@__func__.udf_process_sequence = private unnamed_addr constant [21 x i8] c"udf_process_sequence\00", align 1
@.str.114 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"too many Volume Descriptor Pointers (max %u supported)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Primary Volume Descriptor not found!\0A\00", [58 x i8] zeroinitializer }, align 32
@udf_load_pvoldesc.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.116, ptr @.str.4, ptr @.str.117, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_load_pvoldesc\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:%s: recording time %04u/%02u/%02u %02u:%02u (%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UDF-fs: %s:%d:%s: recording time %04u/%02u/%02u %02u:%02u (%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"InvalidName\00", [20 x i8] zeroinitializer }, align 32
@udf_load_pvoldesc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.116, ptr @.str.4, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014UDF-fs: incorrect volume identification, setting to 'InvalidName'\0A\00", [59 x i8] zeroinitializer }, align 32
@udf_load_pvoldesc._entry_ptr = internal global ptr @udf_load_pvoldesc._entry, section ".printk_index", align 4
@udf_load_pvoldesc.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.116, ptr @.str.4, ptr @.str.121, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d:%s: volIdent[] = '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UDF-fs: %s:%d:%s: volIdent[] = '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@udf_load_pvoldesc.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.116, ptr @.str.4, ptr @.str.123, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:%s: volSetIdent[] = '%s'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UDF-fs: %s:%d:%s: volSetIdent[] = '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.udf_load_logicalvol = private unnamed_addr constant [20 x i8] c"udf_load_logicalvol\00", align 1
@.str.125 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"error loading logical volume descriptor: Partition table too long (%u > %lu)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"logical volume\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"*UDF Virtual Partition\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"*UDF Sparable Partition\00", [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"*UDF Metadata Partition\00", [40 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.130, i8 1, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:%s: Parsing Logical vol part %d type %u  id=%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UDF-fs: %s:%d:%s: Parsing Logical vol part %d type %u  id=%s\0A\00", [34 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.132, i8 1, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:%s: Metadata Ident suffix=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UDF-fs: %s:%d:%s: Metadata Ident suffix=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.134, i8 1, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:%s: Metadata part num=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UDF-fs: %s:%d:%s: Metadata part num=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.136, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:%s: Metadata part alloc unit size=%u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"UDF-fs: %s:%d:%s: Metadata part alloc unit size=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.138, i8 1, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:%s: Metadata file loc=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"UDF-fs: %s:%d:%s: Metadata file loc=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.140, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:%s: Mirror file loc=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UDF-fs: %s:%d:%s: Mirror file loc=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.142, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:%s: Bitmap file loc=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UDF-fs: %s:%d:%s: Bitmap file loc=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.144, i8 1, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%d:%s: Flags: %d %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"UDF-fs: %s:%d:%s: Flags: %d %u\0A\00", [32 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.146, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d:%s: Unknown ident: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"UDF-fs: %s:%d:%s: Unknown ident: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.148, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:%s: Partition (%d:%u) type %u on volume %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"UDF-fs: %s:%d:%s: Partition (%d:%u) type %u on volume %u\0A\00", [38 x i8] zeroinitializer }, align 32
@udf_load_logicalvol.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @__func__.udf_load_logicalvol, ptr @.str.4, ptr @.str.150, i8 1, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:%s: FileSet found in LogicalVolDesc at block=%u, partition=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"UDF-fs: %s:%d:%s: FileSet found in LogicalVolDesc at block=%u, partition=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Damaged or missing LVID, forcing readonly mount\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"*OSTA UDF Compliant\00", [44 x i8] zeroinitializer }, align 32
@__func__.udf_verify_domain_identifier = private unnamed_addr constant [29 x i8] c"udf_verify_domain_identifier\00", align 1
@.str.154 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Not OSTA UDF compliant %s descriptor.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Possibly not OSTA UDF compliant %s descriptor.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Descriptor for %s marked write protected. Forcing read only mount.\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.udf_load_sparable_map = private unnamed_addr constant [22 x i8] c"udf_load_sparable_map\00", align 1
@.str.157 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"error loading logical volume descriptor: Invalid packet length %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"error loading logical volume descriptor: Too many sparing tables (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"error loading logical volume descriptor: Too big sparing table size (%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"*UDF Sparing Table\00", [45 x i8] zeroinitializer }, align 32
@__func__.udf_load_logicalvolint = private unnamed_addr constant [23 x i8] c"udf_load_logicalvolint\00", align 1
@.str.161 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Too many LVID indirections (max %u), ignoring.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Corrupted LVID (parts=%u, impuselen=%u), ignoring.\0A\00", [44 x i8] zeroinitializer }, align 32
@udf_load_partdesc.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.163, ptr @.str.4, ptr @.str.164, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_load_partdesc\00", [46 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:%s: Searching map: (%u == %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UDF-fs: %s:%d:%s: Searching map: (%u == %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@udf_load_partdesc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.163, ptr @.str.4, ptr @.str.166, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:%s: Partition (%u) not found in partition map\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"UDF-fs: %s:%d:%s: Partition (%u) not found in partition map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error loading MetaData partition map %d\0A\00", [55 x i8] zeroinitializer }, align 32
@udf_fill_partdesc_info.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.169, ptr @.str.4, ptr @.str.170, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"udf_fill_partdesc_info\00", [41 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s:%d:%s: Partition (%d type %x) starts at physical %u, block length %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"UDF-fs: %s:%d:%s: Partition (%d type %x) starts at physical %u, block length %u\0A\00", [47 x i8] zeroinitializer }, align 32
@udf_fill_partdesc_info.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.169, ptr @.str.4, ptr @.str.172, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:%s: cannot load unallocSpaceTable (part %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"UDF-fs: %s:%d:%s: cannot load unallocSpaceTable (part %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@udf_fill_partdesc_info.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.169, ptr @.str.4, ptr @.str.174, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: unallocSpaceTable (part %d) @ %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: unallocSpaceTable (part %d) @ %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@udf_fill_partdesc_info.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.169, ptr @.str.4, ptr @.str.176, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: unallocSpaceBitmap (part %d) @ %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: unallocSpaceBitmap (part %d) @ %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"+NSR02\00", [25 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"+NSR03\00", [25 x i8] zeroinitializer }, align 32
@udf_load_metadata_files.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.180, ptr @.str.4, ptr @.str.181, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"udf_load_metadata_files\00", [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:%s: Metadata file location: block = %u part = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"UDF-fs: %s:%d:%s: Metadata file location: block = %u part = %u\0A\00", [32 x i8] zeroinitializer }, align 32
@udf_load_metadata_files.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.180, ptr @.str.4, ptr @.str.183, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:%s: Mirror metadata file location: block = %u part = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"UDF-fs: %s:%d:%s: Mirror metadata file location: block = %u part = %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Both metadata and mirror metadata inode efe can not found\0A\00", [37 x i8] zeroinitializer }, align 32
@udf_load_metadata_files.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.180, ptr @.str.4, ptr @.str.186, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:%s: Bitmap file location: block = %u part = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"UDF-fs: %s:%d:%s: Bitmap file location: block = %u part = %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"bitmap inode efe not found but it's ok since the disc is mounted read-only\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"bitmap inode efe not found and attempted read-write mount\0A\00", [37 x i8] zeroinitializer }, align 32
@udf_load_metadata_files.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.180, ptr @.str.4, ptr @.str.190, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:%s: udf_load_metadata_files Ok\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UDF-fs: %s:%d:%s: udf_load_metadata_files Ok\0A\00", [50 x i8] zeroinitializer }, align 32
@udf_load_vat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.4, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\015UDF-fs: Failed to read VAT inode from the last recorded block (%lu), retrying with the last block of the device (%lu).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udf_load_vat\00", [19 x i8] zeroinitializer }, align 32
@udf_load_vat._entry_ptr = internal global ptr @udf_load_vat._entry, section ".printk_index", align 4
@udf_find_fileset.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.194, ptr @.str.4, ptr @.str.195, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udf_find_fileset\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: Fileset at block=%u, partition=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: Fileset at block=%u, partition=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"file set\00", [23 x i8] zeroinitializer }, align 32
@udf_load_fileset.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.198, ptr @.str.4, ptr @.str.199, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udf_load_fileset\00", [47 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: Rootdir at block=%u, partition=%u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: Rootdir at block=%u, partition=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@udf_updated_lvid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/udf/udfdecl.h\00", [47 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udf_inode_cache\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [29 x i64] [i64 27, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.203 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 16, i64 5410, i64 9489]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 16, i64 5394, i64 8210, i64 9489]
@__sancov_gen_cov_switch_values.207 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 255]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.210 = internal global [9 x i64] [i64 7, i64 16, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@__sancov_gen_cov_switch_values.213 = internal global [4 x i64] [i64 2, i64 16, i64 5393, i64 5410]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 16, i64 5394, i64 8210, i64 9489]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 16, i64 5394, i64 8210, i64 9489]
@__sancov_gen_cov_switch_values.216 = internal global [4 x i64] [i64 2, i64 16, i64 5394, i64 8210]
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"udf_fstype\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 125, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 925, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 929, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2329, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2345, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 127, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2148, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2163, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2170, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [11 x i8] c"udf_sb_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 195, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2187, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2206, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2212, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2227, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2249, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2265, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2272, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2287, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2296, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 468, i32 31 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 422, i32 28 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 568, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 571, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 598, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 423, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 424, i32 17 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 425, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 426, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 427, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 428, i32 18 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 429, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 430, i32 16 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 431, i32 15 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 432, i32 16 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 433, i32 16 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 434, i32 16 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 435, i32 16 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 436, i32 12 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 437, i32 12 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 438, i32 14 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 439, i32 16 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 440, i32 18 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 441, i32 15 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 442, i32 15 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 443, i32 18 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 444, i32 16 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 445, i32 16 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 447, i32 18 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 448, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 449, i32 18 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"udf_inode_cachep\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 134, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 150, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 152, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2436, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2459, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 317, i32 17 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 319, i32 19 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 321, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 323, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 325, i32 17 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 327, i32 17 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 329, i32 17 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 331, i32 17 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 333, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 335, i32 19 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 337, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 339, i32 19 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 341, i32 19 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 343, i32 19 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 345, i32 19 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 347, i32 19 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 349, i32 19 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 351, i32 17 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1982, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1991, i32 5 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1995, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2001, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 2009, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 721, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 657, i32 29 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 660, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 663, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 666, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 669, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 672, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 675, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 678, i32 36 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 680, i32 34 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 682, i32 34 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 684, i32 34 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 686, i32 34 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1710, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1757, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 883, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 889, i32 38 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 890, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 895, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 903, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1399, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1407, i32 9 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1431, i32 40 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1448, i32 7 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1455, i32 7 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1462, i32 5 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1481, i32 5 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1484, i32 5 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1486, i32 5 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1488, i32 5 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1490, i32 5 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1492, i32 5 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1494, i32 5 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1497, i32 5 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1504, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1512, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1525, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 775, i32 27 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 776, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 780, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 788, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1339, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1345, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1351, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1365, i32 39 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1577, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1589, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1252, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1261, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1299, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1094, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1121, i32 4 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1127, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1139, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1038, i32 41 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1039, i32 41 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 951, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 958, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 965, i32 4 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 982, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 988, i32 5 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 990, i32 5 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 997, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 1185, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 839, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 807, i32 61 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 814, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant [20 x i8] c"../fs/udf/udfdecl.h\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.845, i32 114, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.848 = private constant [18 x i8] c"../fs/udf/super.c\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.848, i32 173, i32 39 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_exit_udf_fs, ptr @__initcall__kmod_udf__314_2546_init_udf_fs6, ptr @_udf_err._entry, ptr @_udf_err._entry_ptr, ptr @_udf_warn._entry, ptr @_udf_warn._entry_ptr, ptr @exit_udf_fs, ptr @udf_fill_super._entry, ptr @udf_fill_super._entry.22, ptr @udf_fill_super._entry_ptr, ptr @udf_fill_super._entry_ptr.24, ptr @udf_load_pvoldesc._entry, ptr @udf_load_pvoldesc._entry_ptr, ptr @udf_load_vat._entry, ptr @udf_load_vat._entry_ptr, ptr @udf_parse_options._entry, ptr @udf_parse_options._entry.32, ptr @udf_parse_options._entry_ptr, ptr @udf_parse_options._entry_ptr.34, ptr @udf_fstype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @udf_fill_super.__key, ptr @.str.9, ptr @udf_fill_super.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @udf_sb_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @tokens, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @udf_inode_cachep, ptr @udf_alloc_inode.__key, ptr @.str.61, ptr @udf_alloc_inode.__key.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_fstype to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_udf_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_udf_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_fill_super.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_fill_super.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_sb_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_fill_super._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_parse_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_parse_options._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_alloc_inode.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_load_pvoldesc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_load_vat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @udf_sb_lvidiu(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %numOfPartitions = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %numOfPartitions to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %numOfPartitions, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %mul3 = shl i32 %8, 3
  %add.ptr = getelementptr %struct.logicalVolIntegrityDesc, ptr %5, i32 1
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_udf_fs() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @udf_fstype) #16
  tail call void @rcu_barrier() #16
  %0 = load ptr, ptr @udf_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_find_metadata_inode_efe(ptr noundef %sb, i32 noundef %meta_file_loc, i32 noundef %partition_ref) local_unnamed_addr #5 align 64 {
entry:
  %addr = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %addr, align 8, !annotation !444
  store i32 %meta_file_loc, ptr %addr, align 8
  %conv = trunc i32 %partition_ref to i16
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %addr, i32 0, i32 1
  %1 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %partitionReferenceNum, align 4
  %call.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %addr, i1 noundef zeroext true) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str)
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_alloc_type = getelementptr i8, ptr %call.i, i32 -192
  %2 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp.not = icmp ult i32 %bf.load, 536870912
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str.1)
  call void @iput(ptr noundef %call.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call.i, %if.then ], [ inttoptr (i32 -5 to ptr), %if.then4 ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_udf_warn(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #5 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !444
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #19
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @udf_compute_nr_groups(ptr nocapture noundef readonly %sb, i32 noundef %partition) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %3, i32 %partition, i32 2
  %4 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_partition_len, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %add1 = add i32 %5, 191
  %sub = add i32 %add1, %mul
  %div = udiv i32 %sub, %mul
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @lvid_get_unique_id(ptr nocapture noundef readonly %sb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %logicalVolContentsUse = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 4
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #16
  %6 = ptrtoint ptr %logicalVolContentsUse to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %logicalVolContentsUse, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %inc = add i64 %8, 1
  %and = and i64 %inc, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  %add = add i64 %8, 17
  %spec.select = select i1 %tobool2.not, i64 %add, i64 %inc
  %9 = tail call i64 @llvm.bswap.i64(i64 %spec.select)
  %10 = ptrtoint ptr %logicalVolContentsUse to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %logicalVolContentsUse, align 1
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !445

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #16, !srcloc !446
  unreachable

do.end9.i:                                        ; preds = %if.end
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %integrityType.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %integrityType.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %integrityType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %do.end9.i.udf_updated_lvid.exit_crit_edge, label %land.rhs.i

do.end9.i.udf_updated_lvid.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_updated_lvid.exit

land.rhs.i:                                       ; preds = %do.end9.i
  %.b62.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.udf_updated_lvid.exit_crit_edge, label %if.then24.i, !prof !447

land.rhs.i.udf_updated_lvid.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_updated_lvid.exit

if.then24.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.201, i32 noundef 116, i32 noundef 9, ptr noundef null) #16
  br label %udf_updated_lvid.exit

udf_updated_lvid.exit:                            ; preds = %if.then24.i, %land.rhs.i.udf_updated_lvid.exit_crit_edge, %do.end9.i.udf_updated_lvid.exit_crit_edge
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i = getelementptr inbounds %struct.udf_sb_info, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %s_lvid_dirty.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %s_lvid_dirty.i, align 4
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %udf_updated_lvid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %8, %udf_updated_lvid.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_udf_err(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #5 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !444
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #19
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_udf_fs() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.202, i32 noundef 1040, i32 noundef 0, i32 noundef 68288512, ptr noundef nonnull @init_once) #16
  store ptr %call.i, ptr @udf_inode_cachep, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @udf_fstype) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %out

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rcu_barrier() #16
  %0 = load ptr, ptr @udf_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mount_bdev(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data, ptr noundef nonnull @udf_fill_super) #16
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_bdev(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_fill_super(ptr noundef %sb, ptr noundef %options, i32 noundef %silent) #5 align 64 {
entry:
  %uopt = alloca %struct.udf_options, align 4
  %rootdir = alloca %struct.kernel_lb_addr, align 8
  %fileset = alloca %struct.kernel_lb_addr, align 8
  %ts = alloca %struct.timestamp, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %uopt) #16
  %0 = call ptr @memset(ptr %uopt, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rootdir) #16
  %1 = ptrtoint ptr %rootdir to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %rootdir, align 8, !annotation !444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fileset) #16
  %2 = ptrtoint ptr %fileset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %fileset, align 8, !annotation !444
  %flags = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 40, ptr %flags, align 4
  %uid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !434) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %12 = load i32, ptr @overflowuid, align 4
  %call3 = tail call i32 @make_kuid(ptr noundef %11, i32 noundef %12) #16
  %13 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call3, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 7
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred12 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred12, align 16
  %user_ns13 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %20 = load i32, ptr @overflowgid, align 4
  %call14 = tail call i32 @make_kgid(ptr noundef %19, i32 noundef %20) #16
  %21 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call14, ptr %gid, align 4
  %umask = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 6
  %22 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %umask, align 4
  %fmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 9
  %23 = ptrtoint ptr %fmode to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %fmode, align 4
  %dmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 10
  %24 = ptrtoint ptr %dmode to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %dmode, align 2
  %nls_map = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 11
  %25 = ptrtoint ptr %nls_map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %nls_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 248) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup189_crit_edge, label %if.end

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup189

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %s_alloc_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @udf_fill_super.__key) #16
  %call20 = call fastcc i32 @udf_parse_options(ptr noundef %options, ptr noundef nonnull %uopt, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %parse_options_failure.thread, label %if.end23

parse_options_failure.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nls_map, align 4
  call void @unload_nls(ptr noundef %29) #16
  br label %if.end186

if.end23:                                         ; preds = %if.end
  %30 = ptrtoint ptr %fileset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %fileset, align 8
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %fileset, i32 0, i32 1
  %31 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %partitionReferenceNum, align 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %s_flags = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 17
  %34 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %s_flags, align 4
  %s_uid = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uid, align 4
  %37 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %s_uid, align 8
  %s_gid = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gid, align 4
  %40 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %s_gid, align 4
  %41 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %umask, align 4
  %s_umask = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %s_umask to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %s_umask, align 8
  %44 = ptrtoint ptr %fmode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fmode, align 4
  %s_fmode = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 11
  %46 = ptrtoint ptr %s_fmode to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %s_fmode, align 4
  %47 = ptrtoint ptr %dmode to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dmode, align 2
  %s_dmode = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 12
  %49 = ptrtoint ptr %s_dmode to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %s_dmode, align 2
  %50 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nls_map, align 4
  %s_nls_map = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 18
  %52 = ptrtoint ptr %s_nls_map to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %s_nls_map, align 8
  %s_cred_lock = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 13
  call void @__rwlock_init(ptr noundef %s_cred_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @udf_fill_super.__key.10) #16
  %session = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 2
  %53 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %session, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp = icmp eq i32 %54, -1
  br i1 %cmp, label %if.then34, label %if.end23.do.body39_crit_edge

if.end23.do.body39_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body39

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %call35 = call i32 @udf_get_last_session(ptr noundef %sb) #16
  br label %do.body39

do.body39:                                        ; preds = %if.then34, %if.end23.do.body39_crit_edge
  %.sink = phi i32 [ %call35, %if.then34 ], [ %54, %if.end23.do.body39_crit_edge ]
  %55 = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %55, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_super.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_super, %if.then45)) #16
          to label %do.end49 [label %if.then45], !srcloc !448

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %55, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_super.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef 2170, ptr noundef nonnull @.str.12, i32 noundef %58) #16
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body39
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %59 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @udf_sb_ops, ptr %s_op, align 4
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 9
  %60 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @udf_export_ops, ptr %s_export_op, align 16
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %61 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 352400198, ptr %s_magic, align 4
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %62 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1000, ptr %s_time_gran, align 4
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %and = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.else54, label %if.end78

if.else54:                                        ; preds = %do.end49
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %65 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %if.else54.bdev_logical_block_size.exit.thread_crit_edge, label %land.lhs.true.i.i

if.else54.bdev_logical_block_size.exit.thread_crit_edge: ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_logical_block_size.exit.thread

land.lhs.true.i.i:                                ; preds = %if.else54
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 37, i32 9
  %69 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool2.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.bdev_logical_block_size.exit.thread_crit_edge, label %bdev_logical_block_size.exit

land.lhs.true.i.i.bdev_logical_block_size.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bdev_logical_block_size.exit.thread

bdev_logical_block_size.exit.thread:              ; preds = %land.lhs.true.i.i.bdev_logical_block_size.exit.thread_crit_edge, %if.else54.bdev_logical_block_size.exit.thread_crit_edge
  %blocksize321 = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 1
  %71 = ptrtoint ptr %blocksize321 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 512, ptr %blocksize321, align 4
  br label %while.body.lr.ph

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i
  %blocksize = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 1
  %72 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %70, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %70)
  %cmp57317 = icmp ult i32 %70, 4097
  br i1 %cmp57317, label %bdev_logical_block_size.exit.while.body.lr.ph_crit_edge, label %bdev_logical_block_size.exit.parse_options_failure_crit_edge

bdev_logical_block_size.exit.parse_options_failure_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

bdev_logical_block_size.exit.while.body.lr.ph_crit_edge: ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %bdev_logical_block_size.exit.while.body.lr.ph_crit_edge, %bdev_logical_block_size.exit.thread
  %blocksize323 = phi ptr [ %blocksize321, %bdev_logical_block_size.exit.thread ], [ %blocksize, %bdev_logical_block_size.exit.while.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool61.not = icmp ne i32 %silent, 0
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %while.body.lr.ph
  %call58 = call fastcc i32 @udf_load_vrs(ptr noundef %sb, ptr noundef nonnull %uopt, i32 noundef %silent, ptr noundef nonnull %fileset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %while.body.do.body85_crit_edge

while.body.do.body85_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body85

if.then60:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call58)
  %cmp62.not = icmp eq i32 %call58, -13
  %or.cond = select i1 %tobool61.not, i1 true, i1 %cmp62.not
  br i1 %or.cond, label %if.then60.if.end70_crit_edge, label %do.end66

if.then60.if.end70_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %blocksize323 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blocksize323, align 4
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %74) #19
  br label %if.end70

if.end70:                                         ; preds = %do.end66, %if.then60.if.end70_crit_edge
  %75 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.end70.brelse.exit_crit_edge, label %if.then.i

if.end70.brelse.exit_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %76) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end70.brelse.exit_crit_edge
  %77 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %s_lvid_bh, align 4
  br i1 %cmp62.not, label %brelse.exit.parse_options_failure_crit_edge, label %if.end76

brelse.exit.parse_options_failure_crit_edge:      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

if.end76:                                         ; preds = %brelse.exit
  %78 = ptrtoint ptr %blocksize323 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blocksize323, align 4
  %shl = shl i32 %79, 1
  store i32 %shl, ptr %blocksize323, align 4
  %cmp57 = icmp ult i32 %shl, 4097
  br i1 %cmp57, label %if.end76.while.body_crit_edge, label %if.end76.if.then80_crit_edge

if.end76.if.then80_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end78:                                         ; preds = %do.end49
  %call53 = call fastcc i32 @udf_load_vrs(ptr noundef %sb, ptr noundef nonnull %uopt, i32 noundef %silent, ptr noundef nonnull %fileset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp79 = icmp slt i32 %call53, 0
  br i1 %cmp79, label %if.end78.if.then80_crit_edge, label %if.end78.do.body85_crit_edge

if.end78.do.body85_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body85

if.end78.if.then80_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

if.then80:                                        ; preds = %if.end78.if.then80_crit_edge, %if.end76.if.then80_crit_edge
  %ret.1300 = phi i32 [ %call53, %if.end78.if.then80_crit_edge ], [ %call58, %if.end76.if.then80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.1300)
  %cmp81 = icmp eq i32 %ret.1300, -11
  br i1 %cmp81, label %if.then82, label %if.then80.parse_options_failure_crit_edge

if.then80.parse_options_failure_crit_edge:        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

if.then82:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16)
  br label %parse_options_failure

do.body85:                                        ; preds = %if.end78.do.body85_crit_edge, %while.body.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_super.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_super, %if.then97)) #16
          to label %do.end100 [label %if.then97], !srcloc !448

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #18
  %s_last_block = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %s_last_block to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %s_last_block, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_super.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, i32 noundef 2212, ptr noundef nonnull @.str.12, i32 noundef %81) #16
  br label %do.end100

do.end100:                                        ; preds = %if.then97, %do.body85
  %s_lvid_bh101 = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 7
  %82 = ptrtoint ptr %s_lvid_bh101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %s_lvid_bh101, align 4
  %tobool102.not = icmp eq ptr %83, null
  br i1 %tobool102.not, label %do.end100.if.end136_crit_edge, label %if.then103

do.end100.if.end136_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

if.then103:                                       ; preds = %do.end100
  %84 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_fs_info, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i276 = icmp eq ptr %87, null
  br i1 %tobool.not.i276, label %if.then103.parse_options_failure_crit_edge, label %udf_sb_lvidiu.exit

if.then103.parse_options_failure_crit_edge:       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

udf_sb_lvidiu.exit:                               ; preds = %if.then103
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_data.i, align 4
  %numOfPartitions.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %numOfPartitions.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %numOfPartitions.i, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #16
  %mul3.i = shl i32 %92, 3
  %add.ptr.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %89, i32 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %tobool105.not = icmp eq ptr %add.ptr4.i, null
  br i1 %tobool105.not, label %udf_sb_lvidiu.exit.parse_options_failure_crit_edge, label %if.end107

udf_sb_lvidiu.exit.parse_options_failure_crit_edge: ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

if.end107:                                        ; preds = %udf_sb_lvidiu.exit
  %minUDFReadRev108 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %add.ptr4.i, i32 0, i32 3
  %93 = ptrtoint ptr %minUDFReadRev108 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %minUDFReadRev108, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %minUDFWriteRev109 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %add.ptr4.i, i32 0, i32 4
  %96 = ptrtoint ptr %minUDFWriteRev109 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %minUDFWriteRev109, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97)
  call void @__sanitizer_cov_trace_const_cmp2(i16 592, i16 %95)
  %cmp110 = icmp ugt i16 %95, 592
  br i1 %cmp110, label %if.then112, label %if.else114

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %95 to i32
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef 592)
  br label %parse_options_failure

if.else114:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %98)
  %cmp116 = icmp ugt i16 %98, 513
  br i1 %cmp116, label %if.then118, label %if.else114.if.end123_crit_edge

if.else114.if.end123_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

if.then118:                                       ; preds = %if.else114
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %99 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %s_flags.i, align 4
  %and.i278 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.i.not = icmp eq i32 %and.i278, 0
  br i1 %tobool.i.not, label %if.then118.parse_options_failure_crit_edge, label %if.end121

if.then118.parse_options_failure_crit_edge:       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

if.end121:                                        ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #18
  %s_flags.i280 = getelementptr inbounds %struct.udf_sb_info, ptr %85, i32 0, i32 17
  call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i280) #16
  br label %if.end123

if.end123:                                        ; preds = %if.end121, %if.else114.if.end123_crit_edge
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 16
  %101 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %98, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %95)
  %cmp125 = icmp ugt i16 %95, 511
  br i1 %cmp125, label %if.then127, label %if.end123.if.end136_crit_edge

if.end123.if.end136_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i282 = getelementptr inbounds %struct.udf_sb_info, ptr %103, i32 0, i32 17
  call void @_set_bit(i32 noundef 0, ptr noundef %s_flags.i282) #16
  %104 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i284 = getelementptr inbounds %struct.udf_sb_info, ptr %105, i32 0, i32 17
  call void @_set_bit(i32 noundef 1, ptr noundef %s_flags.i284) #16
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %if.end123.if.end136_crit_edge, %do.end100.if.end136_crit_edge
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool137.not = icmp eq i16 %107, 0
  br i1 %tobool137.not, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20)
  br label %parse_options_failure

if.end139:                                        ; preds = %if.end136
  %108 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call7.i.i, align 8
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %s_partition to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %s_partition, align 2
  %idxprom = zext i16 %111 to i32
  %s_partition_flags = getelementptr %struct.udf_part_map, ptr %109, i32 %idxprom, i32 8
  %112 = ptrtoint ptr %s_partition_flags to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %s_partition_flags, align 2
  %114 = and i16 %113, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool142.not = icmp eq i16 %114, 0
  br i1 %tobool142.not, label %if.end139.if.end147_crit_edge, label %if.then143

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end147

if.then143:                                       ; preds = %if.end139
  %s_flags.i285 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %115 = ptrtoint ptr %s_flags.i285 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_flags.i285, align 4
  %and.i286 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i286)
  %tobool.i287.not = icmp eq i32 %and.i286, 0
  br i1 %tobool.i287.not, label %if.then143.parse_options_failure_crit_edge, label %if.end146

if.then143.parse_options_failure_crit_edge:       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  br label %parse_options_failure

if.end146:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info, align 16
  %s_flags.i289 = getelementptr inbounds %struct.udf_sb_info, ptr %118, i32 0, i32 17
  call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i289) #16
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end139.if.end147_crit_edge
  %call148 = call fastcc i32 @udf_find_fileset(ptr noundef %sb, ptr noundef nonnull %fileset, ptr noundef nonnull %rootdir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149 = icmp slt i32 %call148, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21)
  br label %parse_options_failure

if.end152:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool153.not = icmp eq i32 %silent, 0
  br i1 %tobool153.not, label %if.then154, label %if.end152.if.end166_crit_edge

if.end152.if.end166_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end166

if.then154:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ts) #16
  %119 = getelementptr inbounds %struct.timestamp, ptr %ts, i32 0, i32 1
  %120 = getelementptr inbounds %struct.timestamp, ptr %ts, i32 0, i32 2
  %121 = getelementptr inbounds %struct.timestamp, ptr %ts, i32 0, i32 3
  %122 = getelementptr inbounds %struct.timestamp, ptr %ts, i32 0, i32 4
  %123 = getelementptr inbounds %struct.timestamp, ptr %ts, i32 0, i32 5
  %s_record_time = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 14
  %124 = call ptr @memset(ptr %ts, i32 255, i32 12)
  %125 = ptrtoint ptr %s_record_time to i32
  call void @__asan_load8_noabort(i32 %125)
  %.unpack = load i64, ptr %s_record_time, align 8
  %126 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt271 = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 14, i32 1
  %127 = ptrtoint ptr %.elt271 to i32
  call void @__asan_load8_noabort(i32 %127)
  %.unpack272 = load i64, ptr %.elt271, align 8
  %128 = insertvalue [2 x i64] %126, i64 %.unpack272, 1
  call void @udf_time_to_disk_stamp(ptr noundef nonnull %ts, [2 x i64] %128) #16
  %s_volume_ident = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %119, align 2
  %131 = call i16 @llvm.bswap.i16(i16 %130)
  %conv159 = zext i16 %131 to i32
  %132 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %120, align 2
  %conv160 = zext i8 %133 to i32
  %134 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %121, align 1
  %conv161 = zext i8 %135 to i32
  %136 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %122, align 2
  %conv162 = zext i8 %137 to i32
  %138 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %123, align 1
  %conv163 = zext i8 %139 to i32
  %140 = ptrtoint ptr %ts to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ts, align 2
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %conv164 = zext i16 %142 to i32
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %s_volume_ident, i32 noundef %conv159, i32 noundef %conv160, i32 noundef %conv161, i32 noundef %conv162, i32 noundef %conv163, i32 noundef %conv164) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ts) #16
  br label %if.end166

if.end166:                                        ; preds = %if.then154, %if.end152.if.end166_crit_edge
  %s_flags.i290 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %143 = ptrtoint ptr %s_flags.i290 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %s_flags.i290, align 4
  %and.i291 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i291)
  %tobool.i292.not = icmp eq i32 %and.i291, 0
  br i1 %tobool.i292.not, label %if.then168, label %if.end166.if.end169_crit_edge

if.end166.if.end169_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end169

if.then168:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @udf_open_lvid(ptr noundef %sb)
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.end166.if.end169_crit_edge
  %lvid_open.0 = phi i8 [ 0, %if.end166.if.end169_crit_edge ], [ 1, %if.then168 ]
  %call.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %rootdir, i1 noundef zeroext false) #16
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then172, label %if.end177

if.then172:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #18
  %145 = ptrtoint ptr %rootdir to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rootdir, align 8
  %partitionReferenceNum174 = getelementptr inbounds %struct.kernel_lb_addr, ptr %rootdir, i32 0, i32 1
  %147 = ptrtoint ptr %partitionReferenceNum174 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %partitionReferenceNum174, align 4
  %conv175 = zext i16 %148 to i32
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.25, i32 noundef %146, i32 noundef %conv175)
  %149 = ptrtoint ptr %call.i to i32
  br label %parse_options_failure

if.end177:                                        ; preds = %if.end169
  %call178 = call ptr @d_make_root(ptr noundef %call.i) #16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %150 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call178, ptr %s_root, align 64
  %tobool180.not = icmp eq ptr %call178, null
  br i1 %tobool180.not, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.26)
  br label %parse_options_failure

if.end182:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #18
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %151 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_max_links = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 41
  %152 = ptrtoint ptr %s_max_links to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 65535, ptr %s_max_links, align 128
  br label %cleanup189

parse_options_failure:                            ; preds = %if.then181, %if.then172, %if.then151, %if.then143.parse_options_failure_crit_edge, %if.then138, %if.then118.parse_options_failure_crit_edge, %if.then112, %udf_sb_lvidiu.exit.parse_options_failure_crit_edge, %if.then103.parse_options_failure_crit_edge, %if.then82, %if.then80.parse_options_failure_crit_edge, %brelse.exit.parse_options_failure_crit_edge, %bdev_logical_block_size.exit.parse_options_failure_crit_edge
  %lvid_open.1 = phi i8 [ 0, %if.then82 ], [ 0, %if.then80.parse_options_failure_crit_edge ], [ 0, %if.then151 ], [ %lvid_open.0, %if.then172 ], [ %lvid_open.0, %if.then181 ], [ 0, %if.then138 ], [ 0, %if.then143.parse_options_failure_crit_edge ], [ 0, %if.then112 ], [ 0, %udf_sb_lvidiu.exit.parse_options_failure_crit_edge ], [ 0, %if.then118.parse_options_failure_crit_edge ], [ 0, %if.then103.parse_options_failure_crit_edge ], [ 0, %bdev_logical_block_size.exit.parse_options_failure_crit_edge ], [ 0, %brelse.exit.parse_options_failure_crit_edge ]
  %ret.3 = phi i32 [ -22, %if.then82 ], [ %ret.1300, %if.then80.parse_options_failure_crit_edge ], [ %call148, %if.then151 ], [ %149, %if.then172 ], [ -12, %if.then181 ], [ -22, %if.then138 ], [ -13, %if.then143.parse_options_failure_crit_edge ], [ -22, %if.then112 ], [ -22, %udf_sb_lvidiu.exit.parse_options_failure_crit_edge ], [ -13, %if.then118.parse_options_failure_crit_edge ], [ -22, %if.then103.parse_options_failure_crit_edge ], [ -22, %bdev_logical_block_size.exit.parse_options_failure_crit_edge ], [ -13, %brelse.exit.parse_options_failure_crit_edge ]
  %s_vat_inode = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 19
  %153 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_vat_inode, align 4
  call void @iput(ptr noundef %154) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lvid_open.1)
  %extract.t.not = icmp eq i8 %lvid_open.1, 0
  %155 = ptrtoint ptr %nls_map to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %nls_map, align 4
  call void @unload_nls(ptr noundef %156) #16
  br i1 %extract.t.not, label %parse_options_failure.if.end186_crit_edge, label %if.then185

parse_options_failure.if.end186_crit_edge:        ; preds = %parse_options_failure
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end186

if.then185:                                       ; preds = %parse_options_failure
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @udf_close_lvid(ptr noundef %sb)
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %parse_options_failure.if.end186_crit_edge, %parse_options_failure.thread
  %ret.4312 = phi i32 [ -22, %parse_options_failure.thread ], [ %ret.3, %if.then185 ], [ %ret.3, %parse_options_failure.if.end186_crit_edge ]
  %s_lvid_bh187 = getelementptr inbounds %struct.udf_sb_info, ptr %call7.i.i, i32 0, i32 7
  %157 = ptrtoint ptr %s_lvid_bh187 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_lvid_bh187, align 4
  %tobool.not.i293 = icmp eq ptr %158, null
  br i1 %tobool.not.i293, label %if.end186.brelse.exit296_crit_edge, label %if.then.i294

if.end186.brelse.exit296_crit_edge:               ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit296

if.then.i294:                                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %158) #16
  br label %brelse.exit296

brelse.exit296:                                   ; preds = %if.then.i294, %if.end186.brelse.exit296_crit_edge
  call fastcc void @udf_sb_free_partitions(ptr noundef %sb)
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %159 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup189

cleanup189:                                       ; preds = %brelse.exit296, %if.end182, %entry.cleanup189_crit_edge
  %retval.0 = phi i32 [ %ret.4312, %brelse.exit296 ], [ 0, %if.end182 ], [ -12, %entry.cleanup189_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fileset) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rootdir) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %uopt) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_parse_options(ptr noundef %options, ptr noundef %uopt, i1 noundef zeroext %remount) unnamed_addr #5 align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %option = alloca i32, align 4
  %uv = alloca i32, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %option) #16
  %1 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %option, align 4, !annotation !444
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uv) #16
  %2 = ptrtoint ptr %uv to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uv, align 4, !annotation !444
  %3 = ptrtoint ptr %uopt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %uopt, align 4
  %session = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 2
  %4 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %session, align 4
  %lastblock = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 3
  %5 = ptrtoint ptr %lastblock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lastblock, align 4
  %anchor = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 4
  %6 = ptrtoint ptr %anchor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %anchor, align 4
  %tobool.not = icmp eq ptr %options, null
  br i1 %tobool.not, label %entry.cleanup183_crit_edge, label %while.cond.preheader

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup183

while.cond.preheader:                             ; preds = %entry
  %call237 = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.27) #16
  %cmp.not238 = icmp eq ptr %call237, null
  br i1 %cmp.not238, label %while.cond.preheader.cleanup183_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup183_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup183

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 10
  %fmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 9
  %flags158 = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 5
  %nls_map127 = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 11
  %umask = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 6
  %uid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 8
  %gid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 7
  %blocksize = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call239 = phi ptr [ %call237, %while.body.lr.ph ], [ %call, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #16
  %7 = call ptr @memset(ptr %args, i32 255, i32 24)
  %8 = ptrtoint ptr %call239 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call239, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %if.end3

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %while.body
  %call4 = call i32 @match_token(ptr noundef nonnull %call239, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #16
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %do.end178 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb27
    i32 7, label %sw.bb30
    i32 8, label %sw.bb33
    i32 9, label %sw.bb36
    i32 10, label %sw.bb53
    i32 11, label %sw.bb78
    i32 1, label %sw.bb84
    i32 12, label %sw.bb87
    i32 13, label %sw.bb99
    i32 14, label %sw.bb111
    i32 15, label %if.end3.cleanup_crit_edge
    i32 16, label %if.end3.cleanup_crit_edge255
    i32 17, label %if.end3.cleanup_crit_edge256
    i32 18, label %if.end3.cleanup_crit_edge257
    i32 19, label %sw.bb119
    i32 20, label %sw.bb124
    i32 22, label %sw.bb153
    i32 23, label %if.end3.cleanup_crit_edge258
    i32 25, label %if.end3.cleanup_crit_edge259
    i32 24, label %sw.bb157
    i32 26, label %sw.bb160
    i32 27, label %sw.bb168
  ]

if.end3.cleanup_crit_edge259:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.cleanup_crit_edge258:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.cleanup_crit_edge257:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.cleanup_crit_edge256:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.cleanup_crit_edge255:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %uopt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %uopt, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end3
  %call7 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.bb6.cleanup.thread_crit_edge

sw.bb6.cleanup.thread_crit_edge:                  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end10:                                         ; preds = %sw.bb6
  %12 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %option, align 4
  %14 = add i32 %13, -512
  %15 = call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 23)
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %15, label %if.end10.cleanup.thread_crit_edge [
    i32 0, label %if.end10.if.end18_crit_edge
    i32 1, label %if.end10.if.end18_crit_edge260
    i32 3, label %if.end10.if.end18_crit_edge261
    i32 7, label %if.end10.if.end18_crit_edge262
  ]

if.end10.if.end18_crit_edge262:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end10.if.end18_crit_edge261:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end10.if.end18_crit_edge260:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end18:                                         ; preds = %if.end10.if.end18_crit_edge, %if.end10.if.end18_crit_edge260, %if.end10.if.end18_crit_edge261, %if.end10.if.end18_crit_edge262
  %17 = ptrtoint ptr %blocksize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %blocksize, align 4
  %18 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags158, align 4
  %or = or i32 %19, 131072
  store i32 %or, ptr %flags158, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags158, align 4
  %or21 = or i32 %21, 128
  store i32 %or21, ptr %flags158, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags158, align 4
  %or24 = or i32 %23, 64
  store i32 %or24, ptr %flags158, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags158, align 4
  %and = and i32 %25, -9
  store i32 %and, ptr %flags158, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags158, align 4
  %or29 = or i32 %27, 8
  store i32 %or29, ptr %flags158, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags158, align 4
  %or32 = or i32 %29, 4
  store i32 %or32, ptr %flags158, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags158, align 4
  %and35 = and i32 %31, -5
  store i32 %and35, ptr %flags158, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %if.end3
  %call38 = call i32 @match_uint(ptr noundef nonnull %args, ptr noundef nonnull %uv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %sw.bb36.cleanup.thread_crit_edge

sw.bb36.cleanup.thread_crit_edge:                 ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end41:                                         ; preds = %sw.bb36
  %32 = call i32 @llvm.read_register.i32(metadata !434) #16
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 99
  %36 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_ns, align 4
  %40 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uv, align 4
  %call45 = call i32 @make_kgid(ptr noundef %39, i32 noundef %41) #16
  %42 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call45, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call45)
  %cmp.i.not = icmp eq i32 %call45, -1
  br i1 %cmp.i.not, label %if.end41.cleanup.thread_crit_edge, label %if.end50

if.end41.cleanup.thread_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags158, align 4
  %or52 = or i32 %44, 16384
  store i32 %or52, ptr %flags158, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %if.end3
  %call55 = call i32 @match_uint(ptr noundef nonnull %args, ptr noundef nonnull %uv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %sw.bb53.cleanup.thread_crit_edge

sw.bb53.cleanup.thread_crit_edge:                 ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end58:                                         ; preds = %sw.bb53
  %45 = call i32 @llvm.read_register.i32(metadata !434) #16
  %and.i231 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i231 to ptr
  %task66 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task66, align 8
  %cred67 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 99
  %49 = ptrtoint ptr %cred67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cred67, align 16
  %user_ns68 = getelementptr inbounds %struct.cred, ptr %50, i32 0, i32 25
  %51 = ptrtoint ptr %user_ns68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_ns68, align 4
  %53 = ptrtoint ptr %uv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uv, align 4
  %call69 = call i32 @make_kuid(ptr noundef %52, i32 noundef %54) #16
  %55 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call69, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call69)
  %cmp.i232.not = icmp eq i32 %call69, -1
  br i1 %cmp.i232.not, label %if.end58.cleanup.thread_crit_edge, label %if.end75

if.end58.cleanup.thread_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end75:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags158, align 4
  %or77 = or i32 %57, 8192
  store i32 %or77, ptr %flags158, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.end3
  %call80 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %sw.bb78.cleanup.thread_crit_edge

sw.bb78.cleanup.thread_crit_edge:                 ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end83:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %option, align 4
  %conv = trunc i32 %59 to i16
  %60 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv, ptr %umask, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %61 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags158, align 4
  %and86 = and i32 %62, -33
  store i32 %and86, ptr %flags158, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %if.end3
  %call89 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %sw.bb87.cleanup.thread_crit_edge

sw.bb87.cleanup.thread_crit_edge:                 ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end92:                                         ; preds = %sw.bb87
  %63 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %option, align 4
  %65 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %session, align 4
  br i1 %remount, label %if.end92.cleanup_crit_edge, label %if.then95

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags158, align 4
  %or97 = or i32 %67, 32768
  store i32 %or97, ptr %flags158, align 4
  br label %cleanup

sw.bb99:                                          ; preds = %if.end3
  %call101 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %sw.bb99.cleanup.thread_crit_edge

sw.bb99.cleanup.thread_crit_edge:                 ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end104:                                        ; preds = %sw.bb99
  %68 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %option, align 4
  %70 = ptrtoint ptr %lastblock to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lastblock, align 4
  br i1 %remount, label %if.end104.cleanup_crit_edge, label %if.then107

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  %71 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags158, align 4
  %or109 = or i32 %72, 65536
  store i32 %or109, ptr %flags158, align 4
  br label %cleanup

sw.bb111:                                         ; preds = %if.end3
  %call113 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %sw.bb111.cleanup.thread_crit_edge

sw.bb111.cleanup.thread_crit_edge:                ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end116:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #18
  %73 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %option, align 4
  %75 = ptrtoint ptr %anchor to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %anchor, align 4
  br label %cleanup

sw.bb119:                                         ; preds = %if.end3
  br i1 %remount, label %sw.bb119.cleanup_crit_edge, label %if.then121

sw.bb119.cleanup_crit_edge:                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then121:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %nls_map127 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nls_map127, align 4
  call void @unload_nls(ptr noundef %77) #16
  %78 = ptrtoint ptr %nls_map127 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %nls_map127, align 4
  br label %cleanup

sw.bb124:                                         ; preds = %if.end3
  br i1 %remount, label %sw.bb124.cleanup_crit_edge, label %if.then126

sw.bb124.cleanup_crit_edge:                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then126:                                       ; preds = %sw.bb124
  %79 = ptrtoint ptr %nls_map127 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %nls_map127, align 4
  call void @unload_nls(ptr noundef %80) #16
  %81 = ptrtoint ptr %nls_map127 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %nls_map127, align 4
  %82 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %args, align 4
  %call133 = call i32 @strcmp(ptr noundef %83, ptr noundef nonnull dereferenceable(5) @.str.29) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134.not = icmp eq i32 %call133, 0
  br i1 %cmp134.not, label %if.then126.cleanup_crit_edge, label %if.then136

if.then126.cleanup_crit_edge:                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then136:                                       ; preds = %if.then126
  %call139 = call ptr @load_nls(ptr noundef %83) #16
  %84 = ptrtoint ptr %nls_map127 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call139, ptr %nls_map127, align 4
  %tobool142.not = icmp eq ptr %call139, null
  br i1 %tobool142.not, label %do.end146, label %if.then136.cleanup_crit_edge

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end146:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %args, align 4
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %86) #19
  br label %cleanup.thread

sw.bb153:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %87 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags158, align 4
  %or155 = or i32 %88, 2048
  store i32 %or155, ptr %flags158, align 4
  br label %cleanup

sw.bb157:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %flags158 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags158, align 4
  %or159 = or i32 %90, 4096
  store i32 %or159, ptr %flags158, align 4
  br label %cleanup

sw.bb160:                                         ; preds = %if.end3
  %call162 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %sw.bb160.cleanup.thread_crit_edge

sw.bb160.cleanup.thread_crit_edge:                ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end165:                                        ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %option, align 4
  %93 = trunc i32 %92 to i16
  %conv167 = and i16 %93, 511
  %94 = ptrtoint ptr %fmode to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv167, ptr %fmode, align 4
  br label %cleanup

sw.bb168:                                         ; preds = %if.end3
  %call170 = call i32 @match_octal(ptr noundef nonnull %args, ptr noundef nonnull %option) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %sw.bb168.cleanup.thread_crit_edge

sw.bb168.cleanup.thread_crit_edge:                ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end173:                                        ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %option, align 4
  %97 = trunc i32 %96 to i16
  %conv175 = and i16 %97, 511
  %98 = ptrtoint ptr %dmode to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv175, ptr %dmode, align 2
  br label %cleanup

do.end178:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %call180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %call239) #19
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end178, %sw.bb168.cleanup.thread_crit_edge, %sw.bb160.cleanup.thread_crit_edge, %do.end146, %sw.bb111.cleanup.thread_crit_edge, %sw.bb99.cleanup.thread_crit_edge, %sw.bb87.cleanup.thread_crit_edge, %sw.bb78.cleanup.thread_crit_edge, %if.end58.cleanup.thread_crit_edge, %sw.bb53.cleanup.thread_crit_edge, %if.end41.cleanup.thread_crit_edge, %sw.bb36.cleanup.thread_crit_edge, %if.end10.cleanup.thread_crit_edge, %sw.bb6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #16
  br label %cleanup183

cleanup:                                          ; preds = %if.end173, %if.end165, %sw.bb157, %sw.bb153, %if.then136.cleanup_crit_edge, %if.then126.cleanup_crit_edge, %sw.bb124.cleanup_crit_edge, %if.then121, %sw.bb119.cleanup_crit_edge, %if.end116, %if.then107, %if.end104.cleanup_crit_edge, %if.then95, %if.end92.cleanup_crit_edge, %sw.bb84, %if.end83, %if.end75, %if.end50, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb25, %sw.bb22, %sw.bb19, %if.end18, %sw.bb, %if.end3.cleanup_crit_edge, %if.end3.cleanup_crit_edge255, %if.end3.cleanup_crit_edge256, %if.end3.cleanup_crit_edge257, %if.end3.cleanup_crit_edge258, %if.end3.cleanup_crit_edge259, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #16
  %call = call ptr @strsep(ptr noundef nonnull %options.addr, ptr noundef nonnull @.str.27) #16
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %cleanup.cleanup183_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup.cleanup183_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup183

cleanup183:                                       ; preds = %cleanup.cleanup183_crit_edge, %cleanup.thread, %while.cond.preheader.cleanup183_crit_edge, %entry.cleanup183_crit_edge
  %retval.2 = phi i32 [ 1, %entry.cleanup183_crit_edge ], [ 0, %cleanup.thread ], [ 1, %while.cond.preheader.cleanup183_crit_edge ], [ 1, %cleanup.cleanup183_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uv) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %option) #16
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_last_session(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_vrs(ptr noundef %sb, ptr nocapture noundef readonly %uopt, i32 noundef %silent, ptr noundef %fileset) unnamed_addr #5 align 64 {
entry:
  %lastblock.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %blocksize = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 1
  %2 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocksize, align 4
  %call1 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool2.not = icmp eq i32 %silent, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_vrs, ptr noundef nonnull @.str.85)
  br label %cleanup

if.end4:                                          ; preds = %entry
  %lastblock = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 3
  %4 = ptrtoint ptr %lastblock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lastblock, align 4
  %s_last_block = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %s_last_block to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %s_last_block, align 8
  %7 = ptrtoint ptr %uopt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %uopt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.then6, label %do.body28

if.then6:                                         ; preds = %if.end4
  %call7 = tail call fastcc i32 @udf_check_vsd(ptr noundef %sb)
  %9 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %call7, label %if.then6.if.end21_crit_edge [
    i32 0, label %if.then9
    i32 -1, label %do.body
  ]

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool10.not = icmp eq i32 %silent, 0
  br i1 %tobool10.not, label %if.then11, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_vrs, ptr noundef nonnull @.str.86)
  br label %cleanup

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_vrs.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_vrs, %if.then19)) #16
          to label %if.end21 [label %if.then19], !srcloc !448

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_vrs.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.4, i32 noundef 1997, ptr noundef nonnull @__func__.udf_load_vrs, i32 noundef 32768) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body, %if.then6.if.end21_crit_edge
  %10 = ptrtoint ptr %s_last_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_last_block, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end44_crit_edge

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call25 = tail call i32 @udf_get_last_block(ptr noundef %sb) #16
  %12 = ptrtoint ptr %s_last_block to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call25, ptr %s_last_block, align 8
  br label %if.end44

do.body28:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_vrs.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_vrs, %if.then40)) #16
          to label %if.end44 [label %if.then40], !srcloc !448

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_vrs.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.4, i32 noundef 2001, ptr noundef nonnull @__func__.udf_load_vrs) #16
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.body28, %if.then24, %if.end21.if.end44_crit_edge
  %anchor = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 4
  %13 = ptrtoint ptr %anchor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %anchor, align 4
  %s_anchor = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %s_anchor to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %s_anchor, align 4
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastblock.i) #16
  %s_last_block.i = getelementptr inbounds %struct.udf_sb_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %s_last_block.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_last_block.i, align 8
  %conv.i = zext i32 %19 to i64
  %20 = ptrtoint ptr %lastblock.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.i, ptr %lastblock.i, align 8
  %call1.i = call fastcc i32 @udf_scan_anchors(ptr noundef %sb, ptr noundef nonnull %lastblock.i, ptr noundef %fileset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, -11
  br i1 %cmp.not.i, label %if.end.i, label %if.end44.out.i_crit_edge

if.end44.out.i_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end.i:                                         ; preds = %if.end44
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %22, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 8, ptr noundef %s_flags.i.i) #16
  %23 = ptrtoint ptr %s_last_block.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_last_block.i, align 8
  %.frozen = freeze i32 %24
  %div.i = udiv i32 %.frozen, 39
  %shl.i = shl nuw i32 %div.i, 5
  %25 = mul i32 %div.i, 39
  %rem.i.decomposed = sub i32 %.frozen, %25
  %add.i = add nuw i32 %shl.i, %rem.i.decomposed
  %conv5.i = zext i32 %add.i to i64
  %26 = ptrtoint ptr %lastblock.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv5.i, ptr %lastblock.i, align 8
  %call6.i = call fastcc i32 @udf_scan_anchors(ptr noundef %sb, ptr noundef nonnull %lastblock.i, ptr noundef %fileset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6.i)
  %cmp7.not.i = icmp eq i32 %call6.i, -11
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end10.i:                                       ; preds = %if.end.i
  %27 = ptrtoint ptr %s_last_block.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_last_block.i, align 8
  %conv12.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %lastblock.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv12.i, ptr %lastblock.i, align 8
  %call13.i = call fastcc i32 @udf_scan_anchors(ptr noundef %sb, ptr noundef nonnull %lastblock.i, ptr noundef %fileset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %udf_find_anchor.exit.thread, label %if.end10.i.out.i_crit_edge

if.end10.i.out.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

udf_find_anchor.exit.thread:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i40.i = getelementptr inbounds %struct.udf_sb_info, ptr %31, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %s_flags.i40.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastblock.i) #16
  br label %if.then47

out.i:                                            ; preds = %if.end10.i.out.i_crit_edge, %if.end.i.out.i_crit_edge, %if.end44.out.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end44.out.i_crit_edge ], [ %call6.i, %if.end.i.out.i_crit_edge ], [ %call13.i, %if.end10.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp18.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp18.i, label %udf_find_anchor.exit.thread81, label %udf_find_anchor.exit

udf_find_anchor.exit.thread81:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %lastblock.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %lastblock.i, align 8
  %conv21.i = trunc i64 %33 to i32
  %34 = ptrtoint ptr %s_last_block.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv21.i, ptr %s_last_block.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastblock.i) #16
  br label %cleanup

udf_find_anchor.exit:                             ; preds = %out.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastblock.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp46 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp46, label %udf_find_anchor.exit.if.then47_crit_edge, label %udf_find_anchor.exit.cleanup_crit_edge

udf_find_anchor.exit.cleanup_crit_edge:           ; preds = %udf_find_anchor.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

udf_find_anchor.exit.if.then47_crit_edge:         ; preds = %udf_find_anchor.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.then47:                                        ; preds = %udf_find_anchor.exit.if.then47_crit_edge, %udf_find_anchor.exit.thread
  %ret.043.i80 = phi i32 [ %call13.i, %udf_find_anchor.exit.thread ], [ %ret.0.i, %udf_find_anchor.exit.if.then47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool48.not = icmp eq i32 %silent, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.043.i80)
  %cmp49 = icmp eq i32 %ret.043.i80, -11
  %or.cond = select i1 %tobool48.not, i1 %cmp49, i1 false
  br i1 %or.cond, label %if.then50, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_vrs, ptr noundef nonnull @.str.91)
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.then47.cleanup_crit_edge, %udf_find_anchor.exit.cleanup_crit_edge, %udf_find_anchor.exit.thread81, %if.then11, %if.then9.cleanup_crit_edge, %if.then3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %if.then9.cleanup_crit_edge ], [ -11, %if.then50 ], [ %ret.043.i80, %if.then47.cleanup_crit_edge ], [ 0, %udf_find_anchor.exit.cleanup_crit_edge ], [ 0, %udf_find_anchor.exit.thread81 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_find_fileset(ptr noundef %sb, ptr noundef %fileset, ptr nocapture noundef %root) unnamed_addr #5 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %1 = ptrtoint ptr %fileset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fileset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %fileset, i32 0, i32 1
  %3 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %partitionReferenceNum, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp1 = icmp eq i16 %4, -1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call ptr @udf_read_ptagged(ptr noundef %sb, ptr noundef %fileset, i32 noundef 0, ptr noundef nonnull %ident) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp6.not = icmp eq i16 %6, 256
  br i1 %cmp6.not, label %do.body, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_find_fileset.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_find_fileset, %if.then14)) #16
          to label %brelse.exit36 [label %if.then14], !srcloc !448

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %fileset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fileset, align 4
  %partitionReferenceNum16 = getelementptr inbounds %struct.kernel_lb_addr, ptr %fileset, i32 0, i32 1
  %9 = ptrtoint ptr %partitionReferenceNum16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %partitionReferenceNum16, align 4
  %conv17 = zext i16 %10 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_find_fileset.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.4, i32 noundef 840, ptr noundef nonnull @.str.194, i32 noundef %8, i32 noundef %conv17) #16
  br label %brelse.exit36

brelse.exit36:                                    ; preds = %if.then14, %do.body
  %partitionReferenceNum19 = getelementptr inbounds %struct.kernel_lb_addr, ptr %fileset, i32 0, i32 1
  %11 = ptrtoint ptr %partitionReferenceNum19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %partitionReferenceNum19, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %s_partition to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %12, ptr %s_partition, align 2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %call21 = call fastcc i32 @udf_load_fileset(ptr noundef %sb, ptr noundef %17, ptr noundef %root)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %brelse.exit36, %if.end4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call21, %brelse.exit36 ], [ -22, %if.end4.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_time_to_disk_stamp(ptr noundef, [2 x i64]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_open_lvid(ptr nocapture noundef readonly %sb) unnamed_addr #5 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %udf_sb_lvidiu.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

udf_sb_lvidiu.exit:                               ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %numOfPartitions.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %numOfPartitions.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %numOfPartitions.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  %mul3.i = shl i32 %8, 3
  %add.ptr.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %5, i32 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %tobool2.not = icmp eq ptr %add.ptr4.i, null
  br i1 %tobool2.not, label %udf_sb_lvidiu.exit.cleanup_crit_edge, label %if.end4

udf_sb_lvidiu.exit.cleanup_crit_edge:             ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %udf_sb_lvidiu.exit
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #16
  %identSuffix = getelementptr inbounds %struct.regid, ptr %add.ptr4.i, i32 0, i32 2
  %9 = ptrtoint ptr %identSuffix to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %identSuffix, align 1
  %arrayidx7 = getelementptr %struct.regid, ptr %add.ptr4.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %arrayidx7, align 1
  %integrityType = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %integrityType to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %integrityType, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp = icmp eq i32 %12, 16777216
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %integrityType to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %integrityType, align 1
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %15, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 18, ptr noundef %s_flags.i) #16
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %16 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #16
  %recordingDateAndTime.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.0.load.i = load i64, ptr %ts.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %18 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @udf_time_to_disk_stamp(ptr noundef %recordingDateAndTime.i, [2 x i64] %.fca.1.insert.i) #16
  %descCRCLength.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %descCRCLength.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %descCRCLength.i, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20) #16
  %conv.i = zext i16 %21 to i32
  %call.i = call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %recordingDateAndTime.i, i32 noundef %conv.i) #16
  %22 = call i16 @llvm.bswap.i16(i16 %call.i) #16
  %descCRC.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %descCRC.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %descCRC.i, align 1
  %call3.i = call zeroext i8 @udf_tag_checksum(ptr noundef %5) #16
  %tagChecksum.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %tagChecksum.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call3.i, ptr %tagChecksum.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  call void @mark_buffer_dirty(ptr noundef nonnull %3) #16
  %s_lvid_dirty = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 21
  %25 = ptrtoint ptr %s_lvid_dirty to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %s_lvid_dirty, align 4
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #16
  %call12 = call i32 @sync_dirty_buffer(ptr noundef nonnull %3) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %udf_sb_lvidiu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unload_nls(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_close_lvid(ptr nocapture noundef readonly %sb) unnamed_addr #5 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %udf_sb_lvidiu.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

udf_sb_lvidiu.exit:                               ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %numOfPartitions.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %numOfPartitions.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %numOfPartitions.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  %mul3.i = shl i32 %8, 3
  %add.ptr.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %5, i32 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  %tobool2.not = icmp eq ptr %add.ptr4.i, null
  br i1 %tobool2.not, label %udf_sb_lvidiu.exit.cleanup_crit_edge, label %if.end4

udf_sb_lvidiu.exit.cleanup_crit_edge:             ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %udf_sb_lvidiu.exit
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #16
  %identSuffix = getelementptr inbounds %struct.regid, ptr %add.ptr4.i, i32 0, i32 2
  %9 = ptrtoint ptr %identSuffix to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %identSuffix, align 1
  %arrayidx7 = getelementptr %struct.regid, ptr %add.ptr4.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 5, ptr %arrayidx7, align 1
  %maxUDFWriteRev = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %add.ptr4.i, i32 0, i32 5
  %11 = ptrtoint ptr %maxUDFWriteRev to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %maxUDFWriteRev, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %13)
  %cmp = icmp ult i16 %13, 513
  br i1 %cmp, label %if.then9, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %maxUDFWriteRev to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 258, ptr %maxUDFWriteRev, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end4.if.end11_crit_edge
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %s_udfrev, align 2
  %minUDFReadRev = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %add.ptr4.i, i32 0, i32 3
  %17 = ptrtoint ptr %minUDFReadRev to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %minUDFReadRev, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %19)
  %cmp14 = icmp ugt i16 %16, %19
  br i1 %cmp14, label %if.then16, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %20 = tail call i16 @llvm.bswap.i16(i16 %16)
  %21 = ptrtoint ptr %minUDFReadRev to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %minUDFReadRev, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %22 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_udfrev, align 2
  %minUDFWriteRev = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %add.ptr4.i, i32 0, i32 4
  %24 = ptrtoint ptr %minUDFWriteRev to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %minUDFWriteRev, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %26)
  %cmp23 = icmp ugt i16 %23, %26
  br i1 %cmp23, label %if.then25, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %27 = tail call i16 @llvm.bswap.i16(i16 %23)
  %28 = ptrtoint ptr %minUDFWriteRev to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %minUDFWriteRev, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end19.if.end28_crit_edge
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %s_flags.i, align 4
  %33 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool30.not = icmp eq i32 %33, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %integrityType = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %integrityType to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 16777216, ptr %integrityType, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28.if.end32_crit_edge
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %3, align 4
  %and1.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end32.set_buffer_uptodate.exit_crit_edge

if.end32.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %3) #16
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end32.set_buffer_uptodate.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %37 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #16
  %recordingDateAndTime.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %.fca.0.load.i = load i64, ptr %ts.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %39 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @udf_time_to_disk_stamp(ptr noundef %recordingDateAndTime.i, [2 x i64] %.fca.1.insert.i) #16
  %descCRCLength.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 6
  %40 = ptrtoint ptr %descCRCLength.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %descCRCLength.i, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41) #16
  %conv.i = zext i16 %42 to i32
  %call.i = call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %recordingDateAndTime.i, i32 noundef %conv.i) #16
  %43 = call i16 @llvm.bswap.i16(i16 %call.i) #16
  %descCRC.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %descCRC.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %descCRC.i, align 1
  %call3.i = call zeroext i8 @udf_tag_checksum(ptr noundef %5) #16
  %tagChecksum.i = getelementptr inbounds %struct.tag, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %tagChecksum.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call3.i, ptr %tagChecksum.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  call void @mark_buffer_dirty(ptr noundef nonnull %3) #16
  %s_lvid_dirty = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %s_lvid_dirty to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %s_lvid_dirty, align 4
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #16
  %call34 = call i32 @sync_dirty_buffer(ptr noundef nonnull %3) #16
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_uptodate.exit, %udf_sb_lvidiu.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_sb_free_partitions(ptr nocapture noundef readonly %sb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp13.not = icmp eq i16 %5, 0
  br i1 %cmp13.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %udf_free_partition.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %udf_free_partition.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014
  %s_partition_flags.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 8
  %8 = ptrtoint ptr %s_partition_flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_partition_flags.i, align 2
  %10 = and i16 %9, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void @iput(ptr noundef %12) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %13 = ptrtoint ptr %s_partition_flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_partition_flags.i, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool4.not.i = icmp eq i16 %15, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %s_nr_groups.i.i = getelementptr inbounds %struct.udf_bitmap, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %s_nr_groups.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_nr_groups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5.i.i = icmp sgt i32 %19, 0
  br i1 %cmp5.i.i, label %if.then5.i.for.body.i.i_crit_edge, label %if.then5.i.udf_sb_free_bitmap.exit.i_crit_edge

if.then5.i.udf_sb_free_bitmap.exit.i_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_sb_free_bitmap.exit.i

if.then5.i.for.body.i.i_crit_edge:                ; preds = %if.then5.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %if.then5.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.udf_bitmap, ptr %17, i32 0, i32 2, i32 %i.06.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %21) #16
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %19
  br i1 %exitcond.not.i.i, label %brelse.exit.i.i.udf_sb_free_bitmap.exit.i_crit_edge, label %brelse.exit.i.i.for.body.i.i_crit_edge

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

brelse.exit.i.i.udf_sb_free_bitmap.exit.i_crit_edge: ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_sb_free_bitmap.exit.i

udf_sb_free_bitmap.exit.i:                        ; preds = %brelse.exit.i.i.udf_sb_free_bitmap.exit.i_crit_edge, %if.then5.i.udf_sb_free_bitmap.exit.i_crit_edge
  tail call void @kvfree(ptr noundef %17) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %udf_sb_free_bitmap.exit.i, %if.end.i.if.end7.i_crit_edge
  %s_partition_type.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 3
  %22 = ptrtoint ptr %s_partition_type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_partition_type.i, align 4
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.205)
  switch i16 %23, label %if.end7.i.udf_free_partition.exit_crit_edge [
    i16 5410, label %for.cond.preheader.i
    i16 9489, label %if.then17.i
  ]

if.end7.i.udf_free_partition.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_free_partition.exit

for.cond.preheader.i:                             ; preds = %if.end7.i
  %s_spar_map.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %s_spar_map.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_spar_map.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.cond.preheader.i.brelse.exit.i_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %26) #16
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.cond.preheader.i.brelse.exit.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.1.i, label %brelse.exit.i.brelse.exit.1.i_crit_edge, label %if.then.i.1.i

brelse.exit.i.brelse.exit.1.i_crit_edge:          ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.1.i

if.then.i.1.i:                                    ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %28) #16
  br label %brelse.exit.1.i

brelse.exit.1.i:                                  ; preds = %if.then.i.1.i, %brelse.exit.i.brelse.exit.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.i.2.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.2.i, label %brelse.exit.1.i.brelse.exit.2.i_crit_edge, label %if.then.i.2.i

brelse.exit.1.i.brelse.exit.2.i_crit_edge:        ; preds = %brelse.exit.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.2.i

if.then.i.2.i:                                    ; preds = %brelse.exit.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %30) #16
  br label %brelse.exit.2.i

brelse.exit.2.i:                                  ; preds = %if.then.i.2.i, %brelse.exit.1.i.brelse.exit.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.i.3.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.3.i, label %brelse.exit.2.i.udf_free_partition.exit_crit_edge, label %if.then.i.3.i

brelse.exit.2.i.udf_free_partition.exit_crit_edge: ; preds = %brelse.exit.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_free_partition.exit

if.then.i.3.i:                                    ; preds = %brelse.exit.2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %32) #16
  br label %udf_free_partition.exit

if.then17.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  %s_metadata_fe.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 7
  %33 = ptrtoint ptr %s_metadata_fe.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_metadata_fe.i, align 4
  tail call void @iput(ptr noundef %34) #16
  %35 = ptrtoint ptr %s_metadata_fe.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %s_metadata_fe.i, align 4
  %s_mirror_fe.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 8
  %36 = ptrtoint ptr %s_mirror_fe.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_mirror_fe.i, align 4
  tail call void @iput(ptr noundef %37) #16
  %38 = ptrtoint ptr %s_mirror_fe.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %s_mirror_fe.i, align 4
  %s_bitmap_fe.i = getelementptr %struct.udf_part_map, ptr %7, i32 %i.014, i32 5, i32 0, i32 9
  %39 = ptrtoint ptr %s_bitmap_fe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bitmap_fe.i, align 4
  tail call void @iput(ptr noundef %40) #16
  %41 = ptrtoint ptr %s_bitmap_fe.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %s_bitmap_fe.i, align 4
  br label %udf_free_partition.exit

udf_free_partition.exit:                          ; preds = %if.then17.i, %if.then.i.3.i, %brelse.exit.2.i.udf_free_partition.exit_crit_edge, %if.end7.i.udf_free_partition.exit_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %42 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %s_partitions, align 4
  %conv = zext i16 %43 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %udf_free_partition.exit.for.body_crit_edge, label %udf_free_partition.exit.for.end_crit_edge

udf_free_partition.exit.for.end_crit_edge:        ; preds = %udf_free_partition.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

udf_free_partition.exit.for.body_crit_edge:       ; preds = %udf_free_partition.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %udf_free_partition.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  tail call void @kfree(ptr noundef %45) #16
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %1, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_uint(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @load_nls(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_alloc_inode(ptr nocapture noundef readnone %sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @udf_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %i_unique = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %i_unique to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %i_unique, align 8
  %i_lenExtents = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 5
  %i_lenStreams = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %i_lenStreams to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i_lenStreams, align 8
  %i_strat4096 = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 10
  %3 = call ptr @memset(ptr %i_lenExtents, i32 0, i32 16)
  %4 = ptrtoint ptr %i_strat4096 to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %i_strat4096, align 8
  %bf.clear2 = and i32 %bf.load, -100663297
  store i32 %bf.clear2, ptr %i_strat4096, align 8
  %i_data_sem = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 14
  tail call void @__init_rwsem(ptr noundef %i_data_sem, ptr noundef nonnull @.str.61, ptr noundef nonnull @udf_alloc_inode.__key) #16
  %lstart = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 15, i32 1
  %5 = ptrtoint ptr %lstart to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %lstart, align 8
  %i_extent_cache_lock = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %i_extent_cache_lock, ptr noundef nonnull @.str.63, ptr noundef nonnull @udf_alloc_inode.__key.62, i16 noundef signext 3) #16
  %vfs_inode = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 17
  %i_version.i.i = getelementptr inbounds %struct.udf_inode_info, ptr %call, i32 0, i32 17, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #16
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udf_free_in_core_inode(ptr noundef %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @udf_inode_cachep, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -256
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_write_inode(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_evict_inode(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udf_put_super(ptr nocapture noundef %sb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_vat_inode = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_vat_inode, align 4
  tail call void @iput(ptr noundef %3) #16
  %s_nls_map = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %s_nls_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_nls_map, align 8
  tail call void @unload_nls(ptr noundef %5) #16
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @udf_close_lvid(ptr noundef %sb)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__brelse(ptr noundef nonnull %9) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  tail call fastcc void @udf_sb_free_partitions(ptr noundef %sb)
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_destroy(ptr noundef %s_alloc_mutex) #16
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @kfree(ptr noundef %11) #16
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %s_fs_info.i, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #5 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #16
  %s_lvid_dirty = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %s_lvid_dirty to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_lvid_dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_lvid_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #16
  %8 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #16
  %recordingDateAndTime.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %.fca.0.load.i = load i64, ptr %ts.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i, 0
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %ts.i, i32 0, i32 1
  %10 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call void @udf_time_to_disk_stamp(ptr noundef %recordingDateAndTime.i, [2 x i64] %.fca.1.insert.i) #16
  %descCRCLength.i = getelementptr inbounds %struct.tag, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %descCRCLength.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %descCRCLength.i, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12) #16
  %conv.i = zext i16 %13 to i32
  %call.i = call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %recordingDateAndTime.i, i32 noundef %conv.i) #16
  %14 = call i16 @llvm.bswap.i16(i16 %call.i) #16
  %descCRC.i = getelementptr inbounds %struct.tag, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %descCRC.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %descCRC.i, align 1
  %call3.i = call zeroext i8 @udf_tag_checksum(ptr noundef %7) #16
  %tagChecksum.i = getelementptr inbounds %struct.tag, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %tagChecksum.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call3.i, ptr %tagChecksum.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #16
  call void @mark_buffer_dirty(ptr noundef %5) #16
  %17 = ptrtoint ptr %s_lvid_dirty to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %s_lvid_dirty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef %buf) #5 align 64 {
entry:
  %elen.i.i = alloca i32, align 4
  %eloc.i.i = alloca %struct.kernel_lb_addr, align 8
  %epos.i.i = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #18
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
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.udf_sb_lvidiu.exit_crit_edge, label %if.end.i

entry.udf_sb_lvidiu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_sb_lvidiu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %numOfPartitions.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %numOfPartitions.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %numOfPartitions.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  %mul3.i = shl i32 %14, 3
  %add.ptr.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %11, i32 1
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul3.i
  br label %udf_sb_lvidiu.exit

udf_sb_lvidiu.exit:                               ; preds = %if.end.i, %entry.udf_sb_lvidiu.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr4.i, %if.end.i ], [ null, %entry.udf_sb_lvidiu.exit_crit_edge ]
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 352400198, ptr %buf, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_blocksize, align 16
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %18 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %f_bsize, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %s_partition to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s_partition, align 2
  %idxprom = zext i16 %22 to i32
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %20, i32 %idxprom, i32 2
  %23 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_partition_len, align 4
  %conv = zext i32 %24 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %25 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %f_blocks, align 8
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition.i = getelementptr inbounds %struct.udf_sb_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %s_partition.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %s_partition.i, align 2
  %conv.i30 = zext i16 %29 to i32
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 8
  %s_partition_type.i = getelementptr %struct.udf_part_map, ptr %31, i32 %conv.i30, i32 3
  %32 = ptrtoint ptr %s_partition_type.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s_partition_type.i, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.206)
  switch i16 %33, label %udf_sb_lvidiu.exit.if.end11.i_crit_edge [
    i16 9489, label %if.then.i
    i16 5394, label %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge
    i16 8210, label %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge36
  ]

udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge36: ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free.exit

udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge: ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free.exit

udf_sb_lvidiu.exit.if.end11.i_crit_edge:          ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then.i:                                        ; preds = %udf_sb_lvidiu.exit
  call void @__sanitizer_cov_trace_pc() #18
  %s_phys_partition_ref.i = getelementptr %struct.udf_part_map, ptr %31, i32 %conv.i30, i32 5, i32 0, i32 5
  %35 = ptrtoint ptr %s_phys_partition_ref.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %s_phys_partition_ref.i, align 2
  %conv5.i = zext i16 %36 to i32
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then.i, %udf_sb_lvidiu.exit.if.end11.i_crit_edge
  %part.0.i = phi i32 [ %conv5.i, %if.then.i ], [ %conv.i30, %udf_sb_lvidiu.exit.if.end11.i_crit_edge ]
  %s_lvid_bh.i31 = getelementptr inbounds %struct.udf_sb_info, ptr %27, i32 0, i32 7
  %37 = ptrtoint ptr %s_lvid_bh.i31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_lvid_bh.i31, align 4
  %tobool.not.i32 = icmp eq ptr %38, null
  br i1 %tobool.not.i32, label %if.end11.i.if.end26.i_crit_edge, label %if.then12.i

if.end11.i.if.end26.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then12.i:                                      ; preds = %if.end11.i
  %b_data.i33 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %b_data.i33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data.i33, align 4
  %numOfPartitions.i34 = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %numOfPartitions.i34 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %numOfPartitions.i34, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %part.0.i)
  %cmp14.i = icmp ugt i32 %43, %part.0.i
  br i1 %cmp14.i, label %if.then16.i, label %if.then12.i.if.end26.i_crit_edge

if.then12.i.if.end26.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.then16.i:                                      ; preds = %if.then12.i
  %arrayidx17.i = getelementptr %struct.logicalVolIntegrityDesc, ptr %40, i32 0, i32 7, i32 %part.0.i
  %44 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %arrayidx17.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #16
  %47 = add i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %if.then16.i.if.end26.i_crit_edge, label %if.then16.i.udf_count_free.exit_crit_edge

if.then16.i.udf_count_free.exit_crit_edge:        ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free.exit

if.then16.i.if.end26.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then16.i.if.end26.i_crit_edge, %if.then12.i.if.end26.i_crit_edge, %if.end11.i.if.end26.i_crit_edge
  %arrayidx28.i = getelementptr %struct.udf_part_map, ptr %31, i32 %part.0.i
  %s_partition_flags.i = getelementptr %struct.udf_part_map, ptr %31, i32 %part.0.i, i32 8
  %49 = ptrtoint ptr %s_partition_flags.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %s_partition_flags.i, align 2
  %51 = and i16 %50, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool30.not.i = icmp eq i16 %51, 0
  br i1 %tobool30.not.i, label %if.end26.i.if.end36.i_crit_edge, label %if.end33.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

if.end33.i:                                       ; preds = %if.end26.i
  %52 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx28.i, align 4
  %call32.i = tail call fastcc i32 @udf_count_free_bitmap(ptr noundef %1, ptr noundef %53) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool34.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end36.i_crit_edge, label %if.end33.i.udf_count_free.exit_crit_edge

if.end33.i.udf_count_free.exit_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free.exit

if.end33.i.if.end36.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end33.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %54 = ptrtoint ptr %s_partition_flags.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %s_partition_flags.i, align 2
  %56 = and i16 %55, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool40.not.i = icmp eq i16 %56, 0
  br i1 %tobool40.not.i, label %if.end36.i.udf_count_free.exit_crit_edge, label %if.then41.i

if.end36.i.udf_count_free.exit_crit_edge:         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free.exit

if.then41.i:                                      ; preds = %if.end36.i
  %57 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx28.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen.i.i) #16
  %59 = ptrtoint ptr %elen.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %elen.i.i, align 4, !annotation !444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc.i.i) #16
  %60 = ptrtoint ptr %eloc.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 -1, ptr %eloc.i.i, align 8, !annotation !444
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos.i.i) #16
  %61 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %62, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex.i.i, i32 noundef 0) #16
  %block.i.i = getelementptr inbounds %struct.extent_position, ptr %epos.i.i, i32 0, i32 2
  %i_location.i.i = getelementptr i8, ptr %58, i32 -240
  %63 = ptrtoint ptr %i_location.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_location.i.i, align 8
  %65 = ptrtoint ptr %block.i.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 %64, ptr %block.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.extent_position, ptr %epos.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 40, ptr %offset.i.i, align 4
  %67 = ptrtoint ptr %epos.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %epos.i.i, align 4
  %call213.i.i = call signext i8 @udf_next_aext(ptr noundef %58, ptr noundef nonnull %epos.i.i, ptr noundef nonnull %eloc.i.i, ptr noundef nonnull %elen.i.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call213.i.i)
  %cmp.not14.i.i = icmp eq i8 %call213.i.i, -1
  br i1 %cmp.not14.i.i, label %if.then41.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

if.then41.i.while.end.i.i_crit_edge:              ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %if.then41.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %accum.015.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %68 = ptrtoint ptr %elen.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %elen.i.i, align 4
  %70 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv4.i.i = zext i8 %73 to i32
  %shr.i.i = lshr i32 %69, %conv4.i.i
  %add.i.i = add i32 %shr.i.i, %accum.015.i.i
  %call2.i.i = call signext i8 @udf_next_aext(ptr noundef %58, ptr noundef nonnull %epos.i.i, ptr noundef nonnull %eloc.i.i, ptr noundef nonnull %elen.i.i, i32 noundef 1) #16
  %cmp.not.i.i = icmp eq i8 %call2.i.i, -1
  br i1 %cmp.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.then41.i.while.end.i.i_crit_edge
  %accum.0.lcssa.i.i = phi i32 [ 0, %if.then41.i.while.end.i.i_crit_edge ], [ %add.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %74 = ptrtoint ptr %epos.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %epos.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i.i, label %while.end.i.i.udf_count_free_table.exit.i_crit_edge, label %if.then.i.i.i

while.end.i.i.udf_count_free_table.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_count_free_table.exit.i

if.then.i.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %75) #16
  br label %udf_count_free_table.exit.i

udf_count_free_table.exit.i:                      ; preds = %if.then.i.i.i, %while.end.i.i.udf_count_free_table.exit.i_crit_edge
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex7.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %77, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %s_alloc_mutex7.i.i) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos.i.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen.i.i) #16
  br label %udf_count_free.exit

udf_count_free.exit:                              ; preds = %udf_count_free_table.exit.i, %if.end36.i.udf_count_free.exit_crit_edge, %if.end33.i.udf_count_free.exit_crit_edge, %if.then16.i.udf_count_free.exit_crit_edge, %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge, %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge36
  %retval.0.i35 = phi i32 [ 0, %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge ], [ 0, %udf_sb_lvidiu.exit.udf_count_free.exit_crit_edge36 ], [ %call32.i, %if.end33.i.udf_count_free.exit_crit_edge ], [ %accum.0.lcssa.i.i, %udf_count_free_table.exit.i ], [ 0, %if.end36.i.udf_count_free.exit_crit_edge ], [ %46, %if.then16.i.udf_count_free.exit_crit_edge ]
  %conv4 = zext i32 %retval.0.i35 to i64
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %78 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv4, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %79 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv4, ptr %f_bavail, align 8
  %cmp.not = icmp eq ptr %retval.0.i, null
  br i1 %cmp.not, label %udf_count_free.exit.cond.end_crit_edge, label %cond.true

udf_count_free.exit.cond.end_crit_edge:           ; preds = %udf_count_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %udf_count_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  %numFiles = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %retval.0.i, i32 0, i32 1
  %80 = ptrtoint ptr %numFiles to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %numFiles, align 1
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %numDirs = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %retval.0.i, i32 0, i32 2
  %83 = ptrtoint ptr %numDirs to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %numDirs, align 1
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  %add = add i32 %85, %82
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %udf_count_free.exit.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.true ], [ 0, %udf_count_free.exit.cond.end_crit_edge ]
  %86 = lshr i32 %7, 12
  %shl.i.i = and i32 %86, 1048320
  %and1.i.i = and i32 %7, 255
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv7 = zext i32 %cond to i64
  %add9 = add nuw nsw i64 %conv7, %conv4
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %87 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %add9, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %88 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv4, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %89 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 254, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %90 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_remount_fs(ptr noundef %sb, ptr nocapture noundef readonly %flags, ptr noundef %options) #5 align 64 {
entry:
  %uopt = alloca %struct.udf_options, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %uopt) #16
  %0 = call ptr @memset(ptr %uopt, i32 255, i32 28)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 17
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %s_flags.i, align 4
  %7 = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @sync_filesystem(ptr noundef %sb) #16
  %s_flags = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 17
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %flags4 = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 5
  %10 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags4, align 4
  %uid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 8
  %s_uid = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 10
  %11 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_uid, align 8
  %13 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 7
  %s_gid = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 9
  %14 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_gid, align 4
  %16 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gid, align 4
  %s_umask = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 8
  %17 = ptrtoint ptr %s_umask to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_umask, align 8
  %umask = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 6
  %19 = ptrtoint ptr %umask to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %umask, align 4
  %s_fmode = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 11
  %20 = ptrtoint ptr %s_fmode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %s_fmode, align 4
  %fmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 9
  %22 = ptrtoint ptr %fmode to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %fmode, align 4
  %s_dmode = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 12
  %23 = ptrtoint ptr %s_dmode to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_dmode, align 2
  %dmode = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 10
  %25 = ptrtoint ptr %dmode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %dmode, align 2
  %nls_map = getelementptr inbounds %struct.udf_options, ptr %uopt, i32 0, i32 11
  %26 = ptrtoint ptr %nls_map to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %nls_map, align 4
  %call5 = call fastcc i32 @udf_parse_options(ptr noundef %options, ptr noundef nonnull %uopt, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %s_cred_lock = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 13
  call void @_raw_write_lock(ptr noundef %s_cred_lock) #16
  %27 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags4, align 4
  %29 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %s_flags, align 4
  %30 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uid, align 4
  %32 = ptrtoint ptr %s_uid to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %s_uid, align 8
  %33 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gid, align 4
  %35 = ptrtoint ptr %s_gid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %s_gid, align 4
  %36 = ptrtoint ptr %umask to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %umask, align 4
  %38 = ptrtoint ptr %s_umask to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %s_umask, align 8
  %39 = ptrtoint ptr %fmode to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fmode, align 4
  %41 = ptrtoint ptr %s_fmode to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %s_fmode, align 4
  %42 = ptrtoint ptr %dmode to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dmode, align 2
  %44 = ptrtoint ptr %s_dmode to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %s_dmode, align 2
  call void @_raw_write_unlock(ptr noundef %s_cred_lock) #16
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %s_flags.i55 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %47 = ptrtoint ptr %s_flags.i55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_flags.i55, align 4
  %and.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %49 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  %cmp = xor i1 %50, %tobool.i
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end28

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end8
  br i1 %50, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @udf_close_lvid(ptr noundef %sb)
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @udf_open_lvid(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then31, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.else ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %uopt) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %s_flags.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.67) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i123 = getelementptr inbounds %struct.udf_sb_info, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %s_flags.i123 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_flags.i123, align 4
  %11 = and i32 %10, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, i32 noundef %13) #16
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i127 = getelementptr inbounds %struct.udf_sb_info, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %s_flags.i127 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %s_flags.i127, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.69) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i131 = getelementptr inbounds %struct.udf_sb_info, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %s_flags.i131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %s_flags.i131, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not = icmp eq i32 %23, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.70) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i135 = getelementptr inbounds %struct.udf_sb_info, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %s_flags.i135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_flags.i135, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not = icmp eq i32 %28, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.71) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i139 = getelementptr inbounds %struct.udf_sb_info, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %s_flags.i139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %s_flags.i139, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not = icmp eq i32 %33, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.72) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i143 = getelementptr inbounds %struct.udf_sb_info, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %s_flags.i143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %s_flags.i143, align 4
  %38 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool23.not = icmp eq i32 %38, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.73) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i147 = getelementptr inbounds %struct.udf_sb_info, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %s_flags.i147 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %s_flags.i147, align 4
  %43 = and i32 %42, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool27.not = icmp eq i32 %43, 0
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.74) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i151 = getelementptr inbounds %struct.udf_sb_info, ptr %45, i32 0, i32 17
  %46 = ptrtoint ptr %s_flags.i151 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %s_flags.i151, align 4
  %48 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool31.not = icmp eq i32 %48, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %s_uid = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 10
  %49 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack121 = load i32, ptr %s_uid, align 8
  %50 = insertvalue [1 x i32] undef, i32 %.unpack121, 0
  %call33 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %50) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.75, i32 noundef %call33) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i155 = getelementptr inbounds %struct.udf_sb_info, ptr %52, i32 0, i32 17
  %53 = ptrtoint ptr %s_flags.i155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %s_flags.i155, align 4
  %55 = and i32 %54, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool36.not = icmp eq i32 %55, 0
  br i1 %tobool36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %s_gid = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 9
  %56 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack = load i32, ptr %s_gid, align 4
  %57 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call39 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %57) #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.76, i32 noundef %call39) #16
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %s_umask = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %s_umask to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %s_umask, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp.not = icmp eq i16 %59, 0
  br i1 %cmp.not, label %if.end40.if.end45_crit_edge, label %if.then42

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.77, i32 noundef %conv) #16
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end40.if.end45_crit_edge
  %s_fmode = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 11
  %60 = ptrtoint ptr %s_fmode to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %s_fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %61)
  %cmp47.not = icmp eq i16 %61, -1
  br i1 %cmp47.not, label %if.end45.if.end52_crit_edge, label %if.then49

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  %conv46 = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.78, i32 noundef %conv46) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end45.if.end52_crit_edge
  %s_dmode = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 12
  %62 = ptrtoint ptr %s_dmode to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %s_dmode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %63)
  %cmp54.not = icmp eq i16 %63, -1
  br i1 %cmp54.not, label %if.end52.if.end59_crit_edge, label %if.then56

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %conv53 = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.79, i32 noundef %conv53) #16
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end52.if.end59_crit_edge
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i159 = getelementptr inbounds %struct.udf_sb_info, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %s_flags.i159 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %s_flags.i159, align 4
  %68 = and i32 %67, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool61.not = icmp eq i32 %68, 0
  br i1 %tobool61.not, label %if.end59.if.end63_crit_edge, label %if.then62

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %s_session = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 4
  %69 = ptrtoint ptr %s_session to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_session, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.80, i32 noundef %70) #16
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end59.if.end63_crit_edge
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i163 = getelementptr inbounds %struct.udf_sb_info, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %s_flags.i163 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %s_flags.i163, align 4
  %75 = and i32 %74, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool65.not = icmp eq i32 %75, 0
  br i1 %tobool65.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %s_last_block = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 6
  %76 = ptrtoint ptr %s_last_block to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_last_block, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.81, i32 noundef %77) #16
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %s_anchor = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 5
  %78 = ptrtoint ptr %s_anchor to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_anchor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp68.not = icmp eq i32 %79, 0
  br i1 %cmp68.not, label %if.end67.if.end72_crit_edge, label %if.then70

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.82, i32 noundef %79) #16
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end67.if.end72_crit_edge
  %s_nls_map = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 18
  %80 = ptrtoint ptr %s_nls_map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_nls_map, align 8
  %tobool73.not = icmp eq ptr %81, null
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.83, ptr noundef %83) #16
  br label %if.end76

if.else:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.84) #16
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then74
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @udf_tag_checksum(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_count_free_bitmap(ptr noundef %sb, ptr nocapture noundef readonly %bitmap) unnamed_addr #5 align 64 {
entry:
  %loc = alloca %struct.kernel_lb_addr, align 8
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loc) #16
  %0 = ptrtoint ptr %loc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %loc, align 8, !annotation !444
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %1 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bitmap, align 4
  %4 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %loc, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_partition = getelementptr inbounds %struct.udf_sb_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %s_partition to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %s_partition, align 2
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %loc, i32 0, i32 1
  %9 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %partitionReferenceNum, align 4
  %call1 = call ptr @udf_read_ptagged(ptr noundef %sb, ptr noundef nonnull %loc, i32 noundef 0, ptr noundef nonnull %ident) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_count_free_bitmap, ptr noundef nonnull @.str.64)
  br label %cleanup28

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 264, i16 %11)
  %cmp.not = icmp eq i16 %11, 264
  br i1 %cmp.not, label %if.end4, label %brelse.exit

brelse.exit:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %call1) #16
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_count_free_bitmap, ptr noundef nonnull @.str.64)
  br label %cleanup28

if.end4:                                          ; preds = %if.else
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %numOfBytes = getelementptr inbounds %struct.spaceBitmapDesc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %numOfBytes to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %numOfBytes, align 1
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.not98 = icmp eq i32 %15, 0
  br i1 %cmp6.not98, label %if.end4.while.end_crit_edge, label %while.body.lr.ph

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %bh.0104 = phi ptr [ %call1, %while.body.lr.ph ], [ %bh.0.be, %while.cond.backedge.while.body_crit_edge ]
  %accum.0103 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.cond.backedge.while.body_crit_edge ]
  %ptr.0102 = phi ptr [ %13, %while.body.lr.ph ], [ %ptr.0.be, %while.cond.backedge.while.body_crit_edge ]
  %bytes.0101 = phi i32 [ %16, %while.body.lr.ph ], [ %sub11, %while.cond.backedge.while.body_crit_edge ]
  %block.0100 = phi i32 [ 0, %while.body.lr.ph ], [ %block.0.be, %while.cond.backedge.while.body_crit_edge ]
  %index.099 = phi i32 [ 24, %while.body.lr.ph ], [ %index.0.be, %while.cond.backedge.while.body_crit_edge ]
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %sub = sub i32 %18, %index.099
  %19 = call i32 @llvm.umin.i32(i32 %bytes.0101, i32 %sub)
  %mul = shl i32 %19, 3
  %add.ptr = getelementptr i8, ptr %ptr.0102, i32 %index.099
  %call4.i = call i32 @__bitmap_weight(ptr noundef %add.ptr, i32 noundef %mul) #16
  %add = add i32 %call4.i, %accum.0103
  %sub11 = sub i32 %bytes.0101, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11)
  %tobool12.not = icmp eq i32 %sub11, 0
  br i1 %tobool12.not, label %while.body.cleanup_crit_edge, label %if.then13

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13:                                        ; preds = %while.body
  %tobool.not.i63 = icmp eq ptr %bh.0104, null
  br i1 %tobool.not.i63, label %if.then13.brelse.exit66_crit_edge, label %if.then.i64

if.then13.brelse.exit66_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit66

if.then.i64:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %bh.0104) #16
  br label %brelse.exit66

brelse.exit66:                                    ; preds = %if.then.i64, %if.then13.brelse.exit66_crit_edge
  %inc = add i32 %block.0100, 1
  %20 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %loc, align 8
  %22 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %partitionReferenceNum, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %21, i16 noundef zeroext %23, i32 noundef %inc) #16
  %call15 = call ptr @udf_tread(ptr noundef %sb, i32 noundef %call.i) #16
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body, label %if.end25

do.body:                                          ; preds = %brelse.exit66
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_count_free_bitmap.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_count_free_bitmap, %cleanup.thread)) #16
          to label %cleanup [label %cleanup.thread], !srcloc !448

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_count_free_bitmap.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.4, i32 noundef 2459, ptr noundef nonnull @__func__.udf_count_free_bitmap) #16
  br label %cleanup28

if.end25:                                         ; preds = %brelse.exit66
  call void @__sanitizer_cov_trace_pc() #18
  %b_data26 = getelementptr inbounds %struct.buffer_head, ptr %call15, i32 0, i32 5
  %24 = ptrtoint ptr %b_data26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data26, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %do.body, %while.body.cleanup_crit_edge
  %block.2 = phi i32 [ %block.0100, %while.body.cleanup_crit_edge ], [ %inc, %do.body ]
  %bh.2 = phi ptr [ %bh.0104, %while.body.cleanup_crit_edge ], [ null, %do.body ]
  br i1 %tobool12.not, label %cleanup.while.cond.backedge_crit_edge, label %cleanup.cleanup28_crit_edge

cleanup.cleanup28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

cleanup.while.cond.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cleanup.while.cond.backedge_crit_edge, %if.end25
  %index.0.be = phi i32 [ %index.099, %cleanup.while.cond.backedge_crit_edge ], [ 0, %if.end25 ]
  %block.0.be = phi i32 [ %block.2, %cleanup.while.cond.backedge_crit_edge ], [ %inc, %if.end25 ]
  %ptr.0.be = phi ptr [ %ptr.0102, %cleanup.while.cond.backedge_crit_edge ], [ %25, %if.end25 ]
  %bh.0.be = phi ptr [ %bh.2, %cleanup.while.cond.backedge_crit_edge ], [ %call15, %if.end25 ]
  %cmp6.not = icmp eq i32 %sub11, 0
  br i1 %cmp6.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.end4.while.end_crit_edge
  %accum.0.lcssa = phi i32 [ 0, %if.end4.while.end_crit_edge ], [ %add, %while.cond.backedge.while.end_crit_edge ]
  %bh.0.lcssa = phi ptr [ %call1, %if.end4.while.end_crit_edge ], [ %bh.0.be, %while.cond.backedge.while.end_crit_edge ]
  %tobool.not.i67 = icmp eq ptr %bh.0.lcssa, null
  br i1 %tobool.not.i67, label %while.end.cleanup28_crit_edge, label %if.then.i68

while.end.cleanup28_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.then.i68:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %bh.0.lcssa) #16
  br label %cleanup28

cleanup28:                                        ; preds = %if.then.i68, %while.end.cleanup28_crit_edge, %cleanup.cleanup28_crit_edge, %cleanup.thread, %brelse.exit, %if.then
  %accum.1 = phi i32 [ 0, %brelse.exit ], [ 0, %if.then ], [ %add, %cleanup.thread ], [ %accum.0.lcssa, %while.end.cleanup28_crit_edge ], [ %accum.0.lcssa, %if.then.i68 ], [ %add, %cleanup.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc) #16
  ret i32 %accum.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_read_ptagged(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_next_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_check_vsd(ptr noundef %sb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 2048)
  %s_session = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %s_session to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_session, align 8
  %conv = sext i32 %6 to i64
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %8 to i64
  %shl = shl i64 %conv, %sh_prom
  %add = add i64 %shl, 32768
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_check_vsd.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_check_vsd, %if.then6)) #16
          to label %do.end [label %if.then6], !srcloc !448

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom9 = zext i8 %10 to i64
  %shr = ashr i64 %add, %sh_prom9
  %conv10 = trunc i64 %shr to i32
  %11 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_check_vsd.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.4, i32 noundef 723, ptr noundef nonnull @.str.92, i32 noundef %conv10, i32 noundef %12) #16
  br label %do.end

do.end:                                           ; preds = %if.then6, %entry
  %conv42 = sext i32 %4 to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %add)
  %cmp14116 = icmp slt i64 %add, 8388608
  br i1 %cmp14116, label %do.end.for.body_crit_edge, label %do.end.if.else47_crit_edge

do.end.if.else47_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

land.rhs:                                         ; preds = %brelse.exit86
  %add43 = add i64 %sector.099117, %conv42
  %cmp14 = icmp slt i64 %add43, 8388608
  br i1 %cmp14, label %land.rhs.for.body_crit_edge, label %land.rhs.if.else47_crit_edge

land.rhs.if.else47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %do.end.for.body_crit_edge
  %sector.099117 = phi i64 [ %add43, %land.rhs.for.body_crit_edge ], [ %add, %do.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom18 = zext i8 %14 to i64
  %shr19 = ashr i64 %sector.099117, %sh_prom18
  %conv20 = trunc i64 %shr19 to i32
  %call21 = tail call ptr @udf_tread(ptr noundef %sb, i32 noundef %conv20) #16
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.body.if.else47_crit_edge, label %if.end24

for.body.if.else47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

if.end24:                                         ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call21, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %17 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %18, -1
  %19 = trunc i64 %sector.099117 to i32
  %idx.ext = and i32 %sub, %19
  %add.ptr = getelementptr i8, ptr %16, i32 %idx.ext
  %call27 = tail call fastcc i32 @identify_vsd(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %for.end

if.end30:                                         ; preds = %if.end24
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp32 = icmp eq i32 %21, 4096
  br i1 %cmp32, label %if.then34, label %if.end30.brelse.exit86_crit_edge

if.end30.brelse.exit86_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit86

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr35 = getelementptr %struct.volStructDesc, ptr %add.ptr, i32 1
  %call36 = tail call fastcc i32 @identify_vsd(ptr noundef %add.ptr35)
  %22 = tail call i32 @llvm.smax.i32(i32 %call36, i32 0)
  br label %brelse.exit86

brelse.exit86:                                    ; preds = %if.then34, %if.end30.brelse.exit86_crit_edge
  %nsr.1 = phi i32 [ %22, %if.then34 ], [ 0, %if.end30.brelse.exit86_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsr.1)
  %tobool13.not = icmp eq i32 %nsr.1, 0
  br i1 %tobool13.not, label %land.rhs, label %brelse.exit86.cleanup_crit_edge

brelse.exit86.cleanup_crit_edge:                  ; preds = %brelse.exit86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %if.end24
  tail call void @__brelse(ptr noundef nonnull %call21) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp44 = icmp sgt i32 %call27, 0
  br i1 %cmp44, label %for.end.cleanup_crit_edge, label %for.end.if.else47_crit_edge

for.end.if.else47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else47

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else47:                                        ; preds = %for.end.if.else47_crit_edge, %for.body.if.else47_crit_edge, %land.rhs.if.else47_crit_edge, %do.end.if.else47_crit_edge
  %sector.099113 = phi i64 [ %sector.099117, %for.end.if.else47_crit_edge ], [ %add, %do.end.if.else47_crit_edge ], [ %add43, %land.rhs.if.else47_crit_edge ], [ %sector.099117, %for.body.if.else47_crit_edge ]
  %bh.191 = phi ptr [ %call21, %for.end.if.else47_crit_edge ], [ null, %do.end.if.else47_crit_edge ], [ %call21, %land.rhs.if.else47_crit_edge ], [ null, %for.body.if.else47_crit_edge ]
  %tobool48.not = icmp eq ptr %bh.191, null
  %sub49 = sub i64 %sector.099113, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %sub49)
  %cmp50 = icmp eq i64 %sub49, 32768
  %or.cond = select i1 %tobool48.not, i1 %cmp50, i1 false
  %spec.select = sext i1 %or.cond to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %for.end.cleanup_crit_edge, %brelse.exit86.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end.cleanup_crit_edge ], [ %spec.select, %if.else47 ], [ 1, %brelse.exit86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_last_block(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @identify_vsd(ptr nocapture noundef readonly %vsd) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stdIdent = getelementptr inbounds %struct.volStructDesc, ptr %vsd, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.95, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %vsd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vsd, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.207)
  switch i8 %1, label %do.body74 [
    i8 0, label %do.body
    i8 1, label %do.body7
    i8 2, label %do.body24
    i8 3, label %do.body41
    i8 -1, label %do.body58
  ]

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then5)) #16
          to label %if.end127 [label %if.then5], !srcloc !448

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.4, i32 noundef 660, ptr noundef nonnull @.str.96) #16
  br label %if.end127

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then19)) #16
          to label %if.end127 [label %if.then19], !srcloc !448

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.4, i32 noundef 663, ptr noundef nonnull @.str.96) #16
  br label %if.end127

do.body24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then36)) #16
          to label %if.end127 [label %if.then36], !srcloc !448

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.4, i32 noundef 666, ptr noundef nonnull @.str.96) #16
  br label %if.end127

do.body41:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then53)) #16
          to label %if.end127 [label %if.then53], !srcloc !448

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.4, i32 noundef 669, ptr noundef nonnull @.str.96) #16
  br label %if.end127

do.body58:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then70)) #16
          to label %if.end127 [label %if.then70], !srcloc !448

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.4, i32 noundef 672, ptr noundef nonnull @.str.96) #16
  br label %if.end127

do.body74:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @identify_vsd.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@identify_vsd, %if.then86)) #16
          to label %if.end127 [label %if.then86], !srcloc !448

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %vsd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vsd, align 1
  %conv88 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @identify_vsd.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.4, i32 noundef 675, ptr noundef nonnull @.str.96, i32 noundef %conv88) #16
  br label %if.end127

if.else:                                          ; preds = %entry
  %bcmp135 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.109, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp135)
  %tobool95.not = icmp eq i32 %bcmp135, 0
  br i1 %tobool95.not, label %if.else.if.end127_crit_edge, label %if.else97

if.else.if.end127_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.else97:                                        ; preds = %if.else
  %bcmp136 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.110, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp136)
  %tobool101.not = icmp eq i32 %bcmp136, 0
  br i1 %tobool101.not, label %if.else97.if.end127_crit_edge, label %if.else103

if.else97.if.end127_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.else103:                                       ; preds = %if.else97
  %bcmp137 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.111, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp137)
  %tobool107.not = icmp eq i32 %bcmp137, 0
  br i1 %tobool107.not, label %if.else103.if.end127_crit_edge, label %if.else109

if.else103.if.end127_crit_edge:                   ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.else109:                                       ; preds = %if.else103
  %bcmp138 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.112, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp138)
  %tobool113.not = icmp eq i32 %bcmp138, 0
  br i1 %tobool113.not, label %if.else109.if.end127_crit_edge, label %if.else115

if.else109.if.end127_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end127

if.else115:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #18
  %bcmp139 = tail call i32 @bcmp(ptr noundef dereferenceable(5) %stdIdent, ptr noundef nonnull dereferenceable(5) @.str.113, i32 5) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp139)
  %tobool119.not = icmp ne i32 %bcmp139, 0
  %spec.select = sext i1 %tobool119.not to i32
  br label %if.end127

if.end127:                                        ; preds = %if.else115, %if.else109.if.end127_crit_edge, %if.else103.if.end127_crit_edge, %if.else97.if.end127_crit_edge, %if.else.if.end127_crit_edge, %if.then86, %do.body74, %if.then70, %do.body58, %if.then53, %do.body41, %if.then36, %do.body24, %if.then19, %do.body7, %if.then5, %do.body
  %ret.0 = phi i32 [ 0, %if.else109.if.end127_crit_edge ], [ 0, %if.else.if.end127_crit_edge ], [ 0, %if.then86 ], [ 0, %if.then70 ], [ 0, %if.then53 ], [ 0, %if.then36 ], [ 0, %if.then19 ], [ 0, %if.then5 ], [ 1, %if.else97.if.end127_crit_edge ], [ 1, %if.else103.if.end127_crit_edge ], [ %spec.select, %if.else115 ], [ 0, %do.body ], [ 0, %do.body7 ], [ 0, %do.body24 ], [ 0, %do.body41 ], [ 0, %do.body58 ], [ 0, %do.body74 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_scan_anchors(ptr noundef %sb, ptr nocapture noundef %lastblock, ptr noundef %fileset) unnamed_addr #5 align 64 {
entry:
  %last = alloca [6 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %last) #16
  %0 = getelementptr inbounds [6 x i64], ptr %last, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i64], ptr %last, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i64], ptr %last, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i64], ptr %last, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i64], ptr %last, i32 0, i32 5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = getelementptr inbounds i8, ptr %last, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 40)
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_anchor = getelementptr inbounds %struct.udf_sb_info, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %s_anchor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_anchor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then:                                          ; preds = %entry
  %conv = zext i32 %10 to i64
  %call2 = tail call fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %conv, ptr noundef %fileset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2)
  %cmp.not = icmp eq i32 %call2, -11
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %s_session = getelementptr inbounds %struct.udf_sb_info, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %s_session to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_session, align 8
  %add = add i32 %12, 256
  %conv6 = sext i32 %add to i64
  %call7 = tail call fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %conv6, ptr noundef %fileset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, -11
  br i1 %cmp8.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %lastblock to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %lastblock, align 8
  %15 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %last, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp12.not = icmp eq i64 %14, 0
  br i1 %cmp12.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1, ptr %0, align 8
  br label %if.end41

if.end17:                                         ; preds = %if.end11
  %sub = add i64 %14, -1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %sub, ptr %0, align 8
  %add18 = add i64 %14, 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add18, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %14)
  %cmp21.not = icmp eq i64 %14, 1
  br i1 %cmp21.not, label %if.end17.if.end41_crit_edge, label %if.end27

if.end17.if.end41_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end27:                                         ; preds = %if.end17
  %sub24 = add i64 %14, -2
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %sub24, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 149, i64 %14)
  %cmp28 = icmp ugt i64 %14, 149
  br i1 %cmp28, label %if.end34, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.end34:                                         ; preds = %if.end27
  %sub31 = add i64 %14, -150
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub31, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 151, i64 %14)
  %cmp35 = icmp ugt i64 %14, 151
  br i1 %cmp35, label %if.then37, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %sub38 = add i64 %14, -152
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %sub38, ptr %4, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end34.if.end41_crit_edge, %if.end27.if.end41_crit_edge, %if.end17.if.end41_crit_edge, %if.end17.thread
  %last_count.3 = phi i32 [ 6, %if.then37 ], [ 5, %if.end34.if.end41_crit_edge ], [ 4, %if.end27.if.end41_crit_edge ], [ 2, %if.end17.thread ], [ 3, %if.end17.if.end41_crit_edge ]
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end41
  %i.0147 = phi i32 [ 0, %if.end41 ], [ %inc76, %for.inc.for.body_crit_edge ]
  %arrayidx44 = getelementptr [6 x i64], ptr %last, i32 0, i32 %i.0147
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx44, align 8
  %24 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %28 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %29 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %27, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %shr.i)
  %cmp46.not = icmp ult i64 %23, %shr.i
  br i1 %cmp46.not, label %if.end49, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end49:                                         ; preds = %for.body
  %call51 = tail call fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %23, ptr noundef %fileset)
  %30 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %call51, label %if.end49.cleanup_crit_edge [
    i32 -11, label %if.end59
    i32 0, label %if.then56
  ]

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %lastblock to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %23, ptr %lastblock, align 8
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %23)
  %cmp61 = icmp ult i64 %23, 256
  br i1 %cmp61, label %if.end59.for.inc_crit_edge, label %if.end64

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end64:                                         ; preds = %if.end59
  %sub66 = add i64 %23, -256
  %call67 = tail call fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %sub66, ptr noundef %fileset)
  %32 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call67, label %if.end64.cleanup_crit_edge [
    i32 -11, label %if.end64.for.inc_crit_edge
    i32 0, label %if.then72
  ]

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %lastblock to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %23, ptr %lastblock, align 8
  br label %cleanup

for.inc:                                          ; preds = %if.end64.for.inc_crit_edge, %if.end59.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc76 = add nuw nsw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc76, %last_count.3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %s_session to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_session, align 8
  %add78 = add i32 %35, 512
  %conv79 = sext i32 %add78 to i64
  %call80 = tail call fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %conv79, ptr noundef %fileset)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then72, %if.end64.cleanup_crit_edge, %if.then56, %if.end49.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call80, %for.end ], [ %call2, %if.then.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ 0, %if.then56 ], [ 0, %if.then72 ], [ %call67, %if.end64.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %last) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_check_anchor_block(ptr noundef %sb, i64 noundef %block, ptr noundef %fileset) unnamed_addr #5 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %s_flags.i, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %shr = lshr i64 %block, 5
  %mul = mul i64 %shr, 39
  %and = and i64 %block, 31
  %add = add i64 %mul, %and
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %10 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %11 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shr.i)
  %cmp.not = icmp ult i64 %add, %shr.i
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = trunc i64 %block to i32
  %call3 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %conv, i32 noundef %conv, ptr noundef nonnull %ident) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %cmp8.not = icmp eq i16 %13, 2
  br i1 %cmp8.not, label %if.end11, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end6
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call3, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %mainVolDescSeqExt.i = getelementptr inbounds %struct.anchorVolDescPtr, ptr %15, i32 0, i32 1
  %extLocation.i = getelementptr inbounds %struct.anchorVolDescPtr, ptr %15, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %extLocation.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %extLocation.i, align 1
  %18 = call i32 @llvm.bswap.i32(i32 %17) #16
  %conv.i24 = zext i32 %18 to i64
  %19 = ptrtoint ptr %mainVolDescSeqExt.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %mainVolDescSeqExt.i, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20) #16
  %conv2.i = zext i32 %21 to i64
  %s_blocksize_bits.i25 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits.i25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits.i25, align 4
  %sh_prom.i26 = zext i8 %23 to i64
  %shr.i27 = lshr i64 %conv2.i, %sh_prom.i26
  %sub.i28 = add nsw i64 %conv.i24, -1
  %add.i = add nsw i64 %sub.i28, %shr.i27
  %reserveVolDescSeqExt.i = getelementptr inbounds %struct.anchorVolDescPtr, ptr %15, i32 0, i32 2
  %extLocation4.i = getelementptr inbounds %struct.anchorVolDescPtr, ptr %15, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %extLocation4.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %extLocation4.i, align 1
  %26 = ptrtoint ptr %reserveVolDescSeqExt.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %reserveVolDescSeqExt.i, align 1
  %call.i = call fastcc i32 @udf_process_sequence(ptr noundef %sb, i64 noundef %conv.i24, i64 noundef %add.i, ptr noundef %fileset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -11
  br i1 %cmp.not.i, label %if.end.i, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end11
  %28 = call i32 @llvm.bswap.i32(i32 %27) #16
  %conv8.i = zext i32 %28 to i64
  %shr12.i = lshr i64 %conv8.i, %sh_prom.i26
  %29 = call i32 @llvm.bswap.i32(i32 %25) #16
  %conv5.i = zext i32 %29 to i64
  %sub13.i = add nsw i64 %conv5.i, -1
  %add14.i = add nsw i64 %sub13.i, %shr12.i
  call fastcc void @udf_sb_free_partitions(ptr noundef %sb) #16
  %call16.i = call fastcc i32 @udf_process_sequence(ptr noundef %sb, i64 noundef %conv5.i, i64 noundef %add14.i, ptr noundef %fileset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @udf_sb_free_partitions(ptr noundef %sb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call16.i)
  %cmp20.i = icmp eq i32 %call16.i, -11
  %spec.store.select.i = select i1 %cmp20.i, i32 -5, i32 %call16.i
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then19.i, %if.end.i.cleanup.sink.split_crit_edge, %if.end11.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -11, %if.end6.cleanup.sink.split_crit_edge ], [ %call.i, %if.end11.cleanup.sink.split_crit_edge ], [ %spec.store.select.i, %if.then19.i ], [ %call16.i, %if.end.i.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %land.lhs.true.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_read_tagged(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_process_sequence(ptr noundef %sb, i64 noundef %block, i64 noundef %lastblock, ptr noundef %fileset) unnamed_addr #13 align 64 {
entry:
  %ident = alloca i16, align 2
  %data = alloca %struct.desc_seq_scan_data, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !444
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %data) #16
  %1 = call ptr @memset(ptr %data, i32 0, i32 32)
  %size_part_descs = getelementptr inbounds %struct.desc_seq_scan_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %size_part_descs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %size_part_descs, align 4
  %num_part_descs = getelementptr inbounds %struct.desc_seq_scan_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %num_part_descs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_part_descs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 384) #20
  %part_descs_loc = getelementptr inbounds %struct.desc_seq_scan_data, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %part_descs_loc, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %block, i64 %lastblock)
  %cmp.not150 = icmp ugt i64 %block, %lastblock
  br i1 %cmp.not150, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx9.i = getelementptr inbounds [4 x %struct.udf_vds_record], ptr %data, i32 0, i32 1
  %arrayidx6.i = getelementptr inbounds [4 x %struct.udf_vds_record], ptr %data, i32 0, i32 2
  %arrayidx3.i = getelementptr inbounds [4 x %struct.udf_vds_record], ptr %data, i32 0, i32 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %brelse.exit138.for.body_crit_edge, %for.body.lr.ph
  %indirections.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %indirections.1, %brelse.exit138.for.body_crit_edge ]
  %lastblock.addr.0152 = phi i64 [ %lastblock, %for.body.lr.ph ], [ %lastblock.addr.1, %brelse.exit138.for.body_crit_edge ]
  %block.addr.0151 = phi i64 [ %block, %for.body.lr.ph ], [ %inc37, %brelse.exit138.for.body_crit_edge ]
  %conv = trunc i64 %block.addr.0151 to i32
  %call5 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %conv, i32 noundef %conv, ptr noundef nonnull %ident) #16
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body.for.end_crit_edge, label %if.end8

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end8:                                          ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %volDescSeqNum = getelementptr inbounds %struct.generic_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %volDescSeqNum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %volDescSeqNum, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ident, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.210)
  switch i16 %12, label %if.end8.brelse.exit138_crit_edge [
    i16 3, label %sw.bb
    i16 8, label %sw.bb36
    i16 1, label %if.end8.get_volume_descriptor_record.exit_crit_edge
    i16 4, label %sw.bb1.i
    i16 6, label %sw.bb4.i
    i16 7, label %sw.bb7.i
    i16 5, label %sw.bb10.i
  ]

if.end8.get_volume_descriptor_record.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_volume_descriptor_record.exit

if.end8.brelse.exit138_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit138

sw.bb:                                            ; preds = %if.end8
  %inc = add i32 %indirections.0154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc)
  %cmp10 = icmp ugt i32 %inc, 64
  br i1 %cmp10, label %brelse.exit, label %if.end13

brelse.exit:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_process_sequence, ptr noundef nonnull @.str.114, i32 noundef 64)
  call void @__brelse(ptr noundef nonnull %call5) #16
  br label %out

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %nextVolDescSeqExt = getelementptr inbounds %struct.volDescPtr, ptr %7, i32 0, i32 2
  %extLocation = getelementptr inbounds %struct.volDescPtr, ptr %7, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %extLocation, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %conv15 = zext i32 %16 to i64
  %17 = ptrtoint ptr %nextVolDescSeqExt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %nextVolDescSeqExt, align 1
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits, align 4
  %conv17 = zext i8 %21 to i32
  %shr = lshr i32 %19, %conv17
  %conv18 = zext i32 %shr to i64
  %sub = add nsw i64 %conv15, -1
  %add = add nsw i64 %sub, %conv18
  br label %brelse.exit138

sw.bb1.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_volume_descriptor_record.exit

sw.bb4.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_volume_descriptor_record.exit

sw.bb7.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_volume_descriptor_record.exit

sw.bb10.i:                                        ; preds = %if.end8
  %partitionNumber.i.i = getelementptr inbounds %struct.partitionDesc, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %partitionNumber.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %partitionNumber.i.i, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23) #16
  %conv.i.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %num_part_descs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_part_descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp61.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp61.not.i.i, label %sw.bb10.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb10.i.for.end.i.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb10.i
  %27 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %part_descs_loc, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.062.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %partnum2.i.i = getelementptr %struct.part_desc_seq_scan_data, ptr %28, i32 %i.062.i.i, i32 1
  %29 = ptrtoint ptr %partnum2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %partnum2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i.i)
  %cmp3.i.i = icmp eq i32 %30, %conv.i.i
  br i1 %cmp3.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr %struct.part_desc_seq_scan_data, ptr %28, i32 %i.062.i.i
  br label %get_volume_descriptor_record.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.062.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %sw.bb10.i.for.end.i.i_crit_edge
  %31 = ptrtoint ptr %size_part_descs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size_part_descs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %32)
  %cmp8.not.i.i = icmp ult i32 %26, %32
  br i1 %cmp8.not.i.i, label %for.end.i.i.if.end20.i.i_crit_edge, label %if.then10.i.i

for.end.i.i.if.end20.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i.i

if.then10.i.i:                                    ; preds = %for.end.i.i
  %add.i.i = add nuw nsw i32 %conv.i.i, 31
  %and.i.i = and i32 %add.i.i, 131040
  %33 = mul nuw nsw i32 %and.i.i, 12
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #22
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then10.i.i.brelse.exit135_crit_edge, label %cleanup.i.i

if.then10.i.i.brelse.exit135_crit_edge:           ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit135

cleanup.i.i:                                      ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %part_descs_loc, align 4
  %36 = ptrtoint ptr %size_part_descs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size_part_descs, align 4
  %mul.i.i = mul i32 %37, 12
  %38 = call ptr @memcpy(ptr %call8.i.i.i.i, ptr %35, i32 %mul.i.i)
  call void @kfree(ptr noundef %35) #16
  %39 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i.i.i, ptr %part_descs_loc, align 4
  %40 = ptrtoint ptr %size_part_descs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i.i, ptr %size_part_descs, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %cleanup.i.i, %for.end.i.i.if.end20.i.i_crit_edge
  %41 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %part_descs_loc, align 4
  %43 = ptrtoint ptr %num_part_descs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_part_descs, align 4
  %inc23.i.i = add i32 %44, 1
  store i32 %inc23.i.i, ptr %num_part_descs, align 4
  %arrayidx24.i.i = getelementptr %struct.part_desc_seq_scan_data, ptr %42, i32 %44
  br label %get_volume_descriptor_record.exit

get_volume_descriptor_record.exit:                ; preds = %if.end20.i.i, %if.then.i.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %if.end8.get_volume_descriptor_record.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx9.i, %sw.bb7.i ], [ %arrayidx6.i, %sw.bb4.i ], [ %arrayidx3.i, %sw.bb1.i ], [ %arrayidx.i.i, %if.then.i.i ], [ %arrayidx24.i.i, %if.end20.i.i ], [ %data, %if.end8.get_volume_descriptor_record.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %get_volume_descriptor_record.exit.brelse.exit135_crit_edge, label %if.end24

get_volume_descriptor_record.exit.brelse.exit135_crit_edge: ; preds = %get_volume_descriptor_record.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit135

brelse.exit135:                                   ; preds = %get_volume_descriptor_record.exit.brelse.exit135_crit_edge, %if.then10.i.i.brelse.exit135_crit_edge
  %retval.0.i141 = phi ptr [ %retval.0.i, %get_volume_descriptor_record.exit.brelse.exit135_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i.i.brelse.exit135_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call5) #16
  %45 = ptrtoint ptr %retval.0.i141 to i32
  br label %out

if.end24:                                         ; preds = %get_volume_descriptor_record.exit
  %tobool25.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool25.not, label %if.end24.brelse.exit138_crit_edge, label %if.end27

if.end24.brelse.exit138_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit138

if.end27:                                         ; preds = %if.end24
  %volDescSeqNum28 = getelementptr inbounds %struct.udf_vds_record, ptr %retval.0.i, i32 0, i32 1
  %46 = ptrtoint ptr %volDescSeqNum28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %volDescSeqNum28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %47)
  %cmp29.not = icmp ult i32 %10, %47
  br i1 %cmp29.not, label %if.end27.brelse.exit138_crit_edge, label %if.then31

if.end27.brelse.exit138_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit138

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %volDescSeqNum28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %10, ptr %volDescSeqNum28, align 4
  %49 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %retval.0.i, align 4
  br label %brelse.exit138

sw.bb36:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit138

brelse.exit138:                                   ; preds = %sw.bb36, %if.then31, %if.end27.brelse.exit138_crit_edge, %if.end24.brelse.exit138_crit_edge, %if.end13, %if.end8.brelse.exit138_crit_edge
  %block.addr.1 = phi i64 [ %block.addr.0151, %if.end8.brelse.exit138_crit_edge ], [ %block.addr.0151, %sw.bb36 ], [ %block.addr.0151, %if.then31 ], [ %block.addr.0151, %if.end27.brelse.exit138_crit_edge ], [ %block.addr.0151, %if.end24.brelse.exit138_crit_edge ], [ %sub, %if.end13 ]
  %lastblock.addr.1 = phi i64 [ %lastblock.addr.0152, %if.end8.brelse.exit138_crit_edge ], [ %lastblock.addr.0152, %sw.bb36 ], [ %lastblock.addr.0152, %if.then31 ], [ %lastblock.addr.0152, %if.end27.brelse.exit138_crit_edge ], [ %lastblock.addr.0152, %if.end24.brelse.exit138_crit_edge ], [ %add, %if.end13 ]
  %done.1.off0 = phi i1 [ false, %if.end8.brelse.exit138_crit_edge ], [ true, %sw.bb36 ], [ false, %if.then31 ], [ false, %if.end27.brelse.exit138_crit_edge ], [ false, %if.end24.brelse.exit138_crit_edge ], [ false, %if.end13 ]
  %indirections.1 = phi i32 [ %indirections.0154, %if.end8.brelse.exit138_crit_edge ], [ %indirections.0154, %sw.bb36 ], [ %indirections.0154, %if.then31 ], [ %indirections.0154, %if.end27.brelse.exit138_crit_edge ], [ %indirections.0154, %if.end24.brelse.exit138_crit_edge ], [ %inc, %if.end13 ]
  call void @__brelse(ptr noundef nonnull %call5) #16
  %inc37 = add i64 %block.addr.1, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc37, i64 %lastblock.addr.1)
  %cmp.not = icmp ugt i64 %inc37, %lastblock.addr.1
  %or.cond = select i1 %done.1.off0, i1 true, i1 %cmp.not
  br i1 %or.cond, label %brelse.exit138.for.end_crit_edge, label %brelse.exit138.for.body_crit_edge

brelse.exit138.for.body_crit_edge:                ; preds = %brelse.exit138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

brelse.exit138.for.end_crit_edge:                 ; preds = %brelse.exit138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %brelse.exit138.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool40.not = icmp eq i32 %51, 0
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_process_sequence, ptr noundef nonnull @.str.115)
  br label %out

if.end42:                                         ; preds = %for.end
  %conv46 = zext i32 %51 to i64
  %call47 = call fastcc i32 @udf_load_pvoldesc(ptr noundef %sb, i64 noundef %conv46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end42.out_crit_edge, label %if.end51

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end51:                                         ; preds = %if.end42
  %arrayidx53 = getelementptr inbounds [4 x %struct.udf_vds_record], ptr %data, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool55.not = icmp eq i32 %53, 0
  br i1 %tobool55.not, label %if.end51.if.end66_crit_edge, label %if.then56

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then56:                                        ; preds = %if.end51
  %conv60 = zext i32 %53 to i64
  %call61 = call fastcc i32 @udf_load_logicalvol(ptr noundef %sb, i64 noundef %conv60, ptr noundef %fileset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then56.out_crit_edge, label %if.then56.if.end66_crit_edge

if.then56.if.end66_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then56.out_crit_edge:                          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end66:                                         ; preds = %if.then56.if.end66_crit_edge, %if.end51.if.end66_crit_edge
  %54 = ptrtoint ptr %num_part_descs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_part_descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp69155.not = icmp eq i32 %55, 0
  br i1 %cmp69155.not, label %if.end66.out_crit_edge, label %if.end66.for.body71_crit_edge

if.end66.for.body71_crit_edge:                    ; preds = %if.end66
  br label %for.body71

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond67:                                       ; preds = %for.body71
  %inc82 = add nuw i32 %i.0156, 1
  %56 = ptrtoint ptr %num_part_descs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_part_descs, align 4
  %cmp69 = icmp ult i32 %inc82, %57
  br i1 %cmp69, label %for.cond67.for.body71_crit_edge, label %for.cond67.out_crit_edge

for.cond67.out_crit_edge:                         ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond67.for.body71_crit_edge:                  ; preds = %for.cond67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body71

for.body71:                                       ; preds = %for.cond67.for.body71_crit_edge, %if.end66.for.body71_crit_edge
  %i.0156 = phi i32 [ %inc82, %for.cond67.for.body71_crit_edge ], [ 0, %if.end66.for.body71_crit_edge ]
  %58 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %part_descs_loc, align 4
  %arrayidx73 = getelementptr %struct.part_desc_seq_scan_data, ptr %59, i32 %i.0156
  %60 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx73, align 4
  %conv75 = zext i32 %61 to i64
  %call76 = call fastcc i32 @udf_load_partdesc(ptr noundef %sb, i64 noundef %conv75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %for.body71.out_crit_edge, label %for.cond67

for.body71.out_crit_edge:                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %for.body71.out_crit_edge, %for.cond67.out_crit_edge, %if.end66.out_crit_edge, %if.then56.out_crit_edge, %if.end42.out_crit_edge, %if.then41, %brelse.exit135, %brelse.exit
  %ret.0 = phi i32 [ %call47, %if.end42.out_crit_edge ], [ %call61, %if.then56.out_crit_edge ], [ -11, %if.then41 ], [ %45, %brelse.exit135 ], [ -5, %brelse.exit ], [ 0, %if.end66.out_crit_edge ], [ %call76, %for.body71.out_crit_edge ], [ 0, %for.cond67.out_crit_edge ]
  %62 = ptrtoint ptr %part_descs_loc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %part_descs_loc, align 4
  call void @kfree(ptr noundef %63) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %data) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_pvoldesc(ptr noundef %sb, i64 noundef %block) unnamed_addr #5 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !444
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3136, i32 noundef 128) #20
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %block to i32
  %call2 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %conv, i32 noundef %conv, ptr noundef nonnull %ident) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out2_crit_edge, label %if.end5

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out2

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  br i1 %cmp.not, label %if.end9, label %if.end5.brelse.exit_crit_edge

if.end5.brelse.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end9:                                          ; preds = %if.end5
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_record_time = getelementptr inbounds %struct.udf_sb_info, ptr %7, i32 0, i32 14
  %recordingDateAndTime = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %recordingDateAndTime to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %.unpack = load i32, ptr %recordingDateAndTime, align 1
  %9 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt114 = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 2
  %10 = ptrtoint ptr %.elt114 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %.unpack115 = load i32, ptr %.elt114, align 1
  %11 = insertvalue [3 x i32] %9, i32 %.unpack115, 1
  %.elt116 = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 6
  %12 = ptrtoint ptr %.elt116 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %.unpack117 = load i32, ptr %.elt116, align 1
  %13 = insertvalue [3 x i32] %11, i32 %.unpack117, 2
  call void @udf_disk_stamp_to_time(ptr noundef %s_record_time, [3 x i32] %13) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_pvoldesc, %if.then16)) #16
          to label %do.end [label %if.then16], !srcloc !448

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %year = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %year to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %year, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv17 = zext i16 %16 to i32
  %17 = ptrtoint ptr %.elt114 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %.elt114, align 1
  %conv18 = zext i8 %18 to i32
  %day = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 3
  %19 = ptrtoint ptr %day to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %day, align 1
  %conv19 = zext i8 %20 to i32
  %hour = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 4
  %21 = ptrtoint ptr %hour to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hour, align 1
  %conv20 = zext i8 %22 to i32
  %minute = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 16, i32 5
  %23 = ptrtoint ptr %minute to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %minute, align 1
  %conv21 = zext i8 %24 to i32
  %25 = ptrtoint ptr %recordingDateAndTime to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %recordingDateAndTime, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv22 = zext i16 %27 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_pvoldesc.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.4, i32 noundef 885, ptr noundef nonnull @.str.116, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv22) #16
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end9
  %volIdent = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 3
  %call24 = call i32 @udf_dstrCS0toChar(ptr noundef %sb, ptr noundef nonnull %call7.i, i32 noundef 31, ptr noundef %volIdent, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %s_volume_ident = getelementptr inbounds %struct.udf_sb_info, ptr %29, i32 0, i32 1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %30 = call ptr @memcpy(ptr %s_volume_ident, ptr @.str.119, i32 12)
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #19
  br label %do.body41

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = call ptr @strncpy(ptr noundef %s_volume_ident, ptr noundef nonnull %call7.i, i32 noundef %call24)
  br label %do.body41

do.body41:                                        ; preds = %if.else, %if.then27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_pvoldesc, %if.then53)) #16
          to label %do.end59 [label %if.then53], !srcloc !448

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_volume_ident55 = getelementptr inbounds %struct.udf_sb_info, ptr %32, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_pvoldesc.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.4, i32 noundef 895, ptr noundef nonnull @.str.116, ptr noundef %s_volume_ident55) #16
  br label %do.end59

do.end59:                                         ; preds = %if.then53, %do.body41
  %volSetIdent = getelementptr inbounds %struct.primaryVolDesc, ptr %5, i32 0, i32 10
  %call61 = call i32 @udf_dstrCS0toChar(ptr noundef %sb, ptr noundef nonnull %call7.i, i32 noundef 127, ptr noundef %volSetIdent, i32 noundef 128) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end59.brelse.exit_crit_edge, label %if.end65

do.end59.brelse.exit_crit_edge:                   ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end65:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %call61
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_pvoldesc, %if.then78)) #16
          to label %brelse.exit [label %if.then78], !srcloc !448

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_pvoldesc.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.4, i32 noundef 903, ptr noundef nonnull @.str.116, ptr noundef nonnull %call7.i) #16
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then78, %if.end65, %do.end59.brelse.exit_crit_edge, %if.end5.brelse.exit_crit_edge
  %ret.0 = phi i32 [ -5, %if.end5.brelse.exit_crit_edge ], [ 0, %do.end59.brelse.exit_crit_edge ], [ 0, %if.then78 ], [ 0, %if.end65 ]
  call void @__brelse(ptr noundef nonnull %call2) #16
  br label %out2

out2:                                             ; preds = %brelse.exit, %if.end.out2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %brelse.exit ], [ -11, %if.end.out2_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out2 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_logicalvol(ptr noundef %sb, i64 noundef %block, ptr noundef %fileset) unnamed_addr #5 align 64 {
entry:
  %ident.i = alloca i16, align 2
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %conv = trunc i64 %block to i32
  %call2 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %conv, i32 noundef %conv, ptr noundef nonnull %ident) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup313_crit_edge, label %do.body

entry.cleanup313_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup313

do.body:                                          ; preds = %entry
  %3 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %4)
  %cmp.not = icmp eq i16 %4, 6
  br i1 %cmp.not, label %do.end14, label %do.body8, !prof !447

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1395, 0\0A.popsection", ""() #16, !srcloc !449
  unreachable

do.end14:                                         ; preds = %do.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %mapTableLength = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %mapTableLength to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %mapTableLength, align 1
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %11, -440
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp15 = icmp ugt i32 %9, %sub
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_logicalvol, ptr noundef nonnull @.str.125, i32 noundef %9, i32 noundef %sub)
  br label %brelse.exit

if.end20:                                         ; preds = %do.end14
  %ident1.i = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 5, i32 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(19) %ident1.i, ptr noundef nonnull dereferenceable(19) @.str.153, i32 19) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.force_ro.sink.split.i_crit_edge

if.end20.force_ro.sink.split.i_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

if.end.i:                                         ; preds = %if.end20
  %domainIdent = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %domainIdent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %domainIdent, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i = icmp eq i8 %14, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.force_ro.sink.split.i_crit_edge

if.end.i.force_ro.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %domainFlags.i = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 5, i32 2, i32 2
  %15 = ptrtoint ptr %domainFlags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %domainFlags.i, align 1
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %if.end4.i.if.end24_crit_edge, label %if.then13.i

if.end4.i.if.end24_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.then13.i:                                      ; preds = %if.end4.i
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %19 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then13.i.force_ro.sink.split.i_crit_edge, label %if.then13.i.force_ro.i_crit_edge

if.then13.i.force_ro.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.then13.i.force_ro.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

force_ro.sink.split.i:                            ; preds = %if.then13.i.force_ro.sink.split.i_crit_edge, %if.end.i.force_ro.sink.split.i_crit_edge, %if.end20.force_ro.sink.split.i_crit_edge
  %.str.156.sink.i = phi ptr [ @.str.154, %if.end20.force_ro.sink.split.i_crit_edge ], [ @.str.155, %if.end.i.force_ro.sink.split.i_crit_edge ], [ @.str.156, %if.then13.i.force_ro.sink.split.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_verify_domain_identifier, ptr noundef nonnull %.str.156.sink.i, ptr noundef nonnull @.str.126) #16
  br label %force_ro.i

force_ro.i:                                       ; preds = %force_ro.sink.split.i, %if.then13.i.force_ro.i_crit_edge
  %s_flags.i31.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %21 = ptrtoint ptr %s_flags.i31.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_flags.i31.i, align 4
  %and.i32.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.i33.not.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.i33.not.i, label %force_ro.i.brelse.exit_crit_edge, label %if.end20.i

force_ro.i.brelse.exit_crit_edge:                 ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end20.i:                                       ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i34.i = getelementptr inbounds %struct.udf_sb_info, ptr %24, i32 0, i32 17
  call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i34.i) #16
  br label %if.end24

if.end24:                                         ; preds = %if.end20.i, %if.end4.i.if.end24_crit_edge
  %numPartitionMaps = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 8
  %25 = ptrtoint ptr %numPartitionMaps to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %numPartitionMaps, align 1
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 60) #16
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !445

kcalloc.exit.thread.i:                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %29, align 8
  br label %udf_sb_alloc_partition_maps.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end24
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #22
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i.i, ptr %29, align 8
  %tobool.not.i448 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i448, label %if.end7.i.i.i.udf_sb_alloc_partition_maps.exit.thread_crit_edge, label %udf_sb_alloc_partition_maps.exit

if.end7.i.i.i.udf_sb_alloc_partition_maps.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_sb_alloc_partition_maps.exit.thread

udf_sb_alloc_partition_maps.exit.thread:          ; preds = %if.end7.i.i.i.udf_sb_alloc_partition_maps.exit.thread_crit_edge, %kcalloc.exit.thread.i
  %s_partitions3.i464 = getelementptr inbounds %struct.udf_sb_info, ptr %29, i32 0, i32 2
  %35 = ptrtoint ptr %s_partitions3.i464 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %s_partitions3.i464, align 4
  br label %brelse.exit

udf_sb_alloc_partition_maps.exit:                 ; preds = %if.end7.i.i.i
  %conv.i = trunc i32 %27 to i16
  %s_partitions3.i = getelementptr inbounds %struct.udf_sb_info, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %s_partitions3.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %s_partitions3.i, align 4
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp30500 = icmp ne i16 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp32501 = icmp ne i32 %8, 0
  %or.cond502 = select i1 %cmp30500, i1 %cmp32501, i1 false
  br i1 %or.cond502, label %udf_sb_alloc_partition_maps.exit.for.body_crit_edge, label %udf_sb_alloc_partition_maps.exit.for.end_crit_edge

udf_sb_alloc_partition_maps.exit.for.end_crit_edge: ; preds = %udf_sb_alloc_partition_maps.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

udf_sb_alloc_partition_maps.exit.for.body_crit_edge: ; preds = %udf_sb_alloc_partition_maps.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %udf_sb_alloc_partition_maps.exit.for.body_crit_edge
  %i.0504 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %udf_sb_alloc_partition_maps.exit.for.body_crit_edge ]
  %offset.0503 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %udf_sb_alloc_partition_maps.exit.for.body_crit_edge ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %arrayidx34 = getelementptr %struct.logicalVolDesc, ptr %6, i32 0, i32 12, i32 %offset.0503
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %42 to i32
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.211)
  switch i8 %42, label %for.body.do.body255_crit_edge [
    i8 1, label %if.then38
    i8 2, label %if.then42
  ]

for.body.do.body255_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body255

if.then38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_type = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 3
  %44 = ptrtoint ptr %s_partition_type to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 5393, ptr %s_partition_type, align 4
  %volSeqNum = getelementptr inbounds %struct.genericPartitionMap1, ptr %arrayidx34, i32 0, i32 2
  %45 = ptrtoint ptr %volSeqNum to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %volSeqNum, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %s_volumeseqnum = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 7
  %48 = ptrtoint ptr %s_volumeseqnum to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %s_volumeseqnum, align 4
  %partitionNum = getelementptr inbounds %struct.genericPartitionMap1, ptr %arrayidx34, i32 0, i32 3
  %49 = ptrtoint ptr %partitionNum to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %partitionNum, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %s_partition_num = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 4
  %52 = ptrtoint ptr %s_partition_num to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %s_partition_num, align 2
  %s_partition_func = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 6
  %53 = ptrtoint ptr %s_partition_func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %s_partition_func, align 4
  br label %do.body255

if.then42:                                        ; preds = %for.body
  %ident43 = getelementptr inbounds %struct.udfPartitionMap2, ptr %arrayidx34, i32 0, i32 3, i32 1
  %call44 = call i32 @strncmp(ptr noundef %ident43, ptr noundef nonnull dereferenceable(23) @.str.127, i32 noundef 22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else60

if.then46:                                        ; preds = %if.then42
  %identSuffix = getelementptr inbounds %struct.udfPartitionMap2, ptr %arrayidx34, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %identSuffix to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %identSuffix, align 1
  %56 = and i16 %55, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp51 = icmp eq i16 %56, 0
  %s_partition_type54 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 3
  br i1 %cmp51, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %s_partition_type54 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 5394, ptr %s_partition_type54, align 4
  %s_partition_func55 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 6
  %58 = ptrtoint ptr %s_partition_func55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @udf_get_pblock_virt15, ptr %s_partition_func55, align 4
  br label %cleanup.thread480

if.else56:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %s_partition_type54 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 8210, ptr %s_partition_type54, align 4
  %s_partition_func58 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 6
  %60 = ptrtoint ptr %s_partition_func58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @udf_get_pblock_virt20, ptr %s_partition_func58, align 4
  br label %cleanup.thread480

if.else60:                                        ; preds = %if.then42
  %call64 = call i32 @strncmp(ptr noundef %ident43, ptr noundef nonnull dereferenceable(24) @.str.128, i32 noundef 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.else72

if.then66:                                        ; preds = %if.else60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident.i) #16
  %61 = ptrtoint ptr %ident.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %ident.i, align 2, !annotation !444
  %s_type_specific.i = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 5
  %s_partition_type.i = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 3
  %62 = ptrtoint ptr %s_partition_type.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 5410, ptr %s_partition_type.i, align 4
  %packetLength.i = getelementptr inbounds %struct.sparablePartitionMap, ptr %arrayidx34, i32 0, i32 6
  %63 = ptrtoint ptr %packetLength.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %packetLength.i, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #16
  %66 = ptrtoint ptr %s_type_specific.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %s_type_specific.i, align 4
  %conv.i451 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp.not.i.i = icmp ne i16 %64, 0
  %67 = call i32 @llvm.ctpop.i32(i32 %conv.i451) #16, !range !450
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp1.i.i = icmp ult i32 %67, 2
  %or.cond.i = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %or.cond.i, label %if.end.i452, label %if.then.i

if.then.i:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_sparable_map, ptr noundef nonnull @.str.157, i32 noundef %conv.i451) #16
  br label %cleanup276.thread492

if.end.i452:                                      ; preds = %if.then66
  %numSparingTables.i = getelementptr inbounds %struct.sparablePartitionMap, ptr %arrayidx34, i32 0, i32 7
  %68 = ptrtoint ptr %numSparingTables.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %numSparingTables.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp.i = icmp ugt i8 %69, 4
  br i1 %cmp.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #18
  %conv4.i = zext i8 %69 to i32
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_sparable_map, ptr noundef nonnull @.str.158, i32 noundef %conv4.i) #16
  br label %cleanup276.thread492

if.end9.i:                                        ; preds = %if.end.i452
  %sizeSparingTable.i = getelementptr inbounds %struct.sparablePartitionMap, ptr %arrayidx34, i32 0, i32 9
  %70 = ptrtoint ptr %sizeSparingTable.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %sizeSparingTable.i, align 1
  %72 = call i32 @llvm.bswap.i32(i32 %71) #16
  %73 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp10.i = icmp ugt i32 %72, %74
  br i1 %cmp10.i, label %if.then12.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp1766.not.i = icmp eq i8 %69, 0
  br i1 %cmp1766.not.i, label %for.cond.preheader.i.udf_load_sparable_map.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.udf_load_sparable_map.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_load_sparable_map.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %s_spar_map.i = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 5, i32 0, i32 1
  br label %for.body.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_sparable_map, ptr noundef nonnull @.str.159, i32 noundef %72) #16
  br label %cleanup276.thread492

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.067.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sparablePartitionMap, ptr %arrayidx34, i32 0, i32 10, i32 %i.067.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx.i, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76) #16
  %call19.i = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %77, i32 noundef %77, ptr noundef nonnull %ident.i) #16
  %tobool.not.i453 = icmp eq ptr %call19.i, null
  br i1 %tobool.not.i453, label %for.body.i.for.inc.i_crit_edge, label %if.end21.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end21.i:                                       ; preds = %for.body.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call19.i, i32 0, i32 5
  %78 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data.i, align 4
  %80 = ptrtoint ptr %ident.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %ident.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp23.not.i = icmp eq i16 %81, 0
  br i1 %cmp23.not.i, label %lor.lhs.false.i, label %if.end21.i.brelse.exit.i_crit_edge

if.end21.i.brelse.exit.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i

lor.lhs.false.i:                                  ; preds = %if.end21.i
  %ident25.i = getelementptr inbounds %struct.sparingTable, ptr %79, i32 0, i32 1, i32 1
  %call26.i = call i32 @strncmp(ptr noundef %ident25.i, ptr noundef nonnull dereferenceable(19) @.str.160, i32 noundef 18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %lor.lhs.false.i.brelse.exit.i_crit_edge

lor.lhs.false.i.brelse.exit.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false.i
  %reallocationTableLen.i = getelementptr inbounds %struct.sparingTable, ptr %79, i32 0, i32 2
  %82 = ptrtoint ptr %reallocationTableLen.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %reallocationTableLen.i, align 1
  %84 = call i16 @llvm.bswap.i16(i16 %83) #16
  %conv29.i = zext i16 %84 to i32
  %add.i = add nuw nsw i32 %conv29.i, 56
  %85 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %86)
  %cmp31.i = icmp ugt i32 %add.i, %86
  br i1 %cmp31.i, label %lor.lhs.false28.i.brelse.exit.i_crit_edge, label %if.end34.i

lor.lhs.false28.i.brelse.exit.i_crit_edge:        ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %lor.lhs.false28.i.brelse.exit.i_crit_edge, %lor.lhs.false.i.brelse.exit.i_crit_edge, %if.end21.i.brelse.exit.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call19.i) #16
  br label %for.inc.i

if.end34.i:                                       ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx35.i = getelementptr [4 x ptr], ptr %s_spar_map.i, i32 0, i32 %i.067.i
  %87 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call19.i, ptr %arrayidx35.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end34.i, %brelse.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %88 = ptrtoint ptr %numSparingTables.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %numSparingTables.i, align 1
  %conv16.i = zext i8 %89 to i32
  %cmp17.i = icmp ult i32 %inc.i, %conv16.i
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.udf_load_sparable_map.exit_crit_edge

for.inc.i.udf_load_sparable_map.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_load_sparable_map.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup276.thread492:                             ; preds = %if.then12.i, %if.then6.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident.i) #16
  br label %brelse.exit

udf_load_sparable_map.exit:                       ; preds = %for.inc.i.udf_load_sparable_map.exit_crit_edge, %for.cond.preheader.i.udf_load_sparable_map.exit_crit_edge
  %s_partition_func.i = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 6
  %90 = ptrtoint ptr %s_partition_func.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @udf_get_pblock_spar15, ptr %s_partition_func.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident.i) #16
  br label %cleanup.thread480

if.else72:                                        ; preds = %if.else60
  %call76 = call i32 @strncmp(ptr noundef %ident43, ptr noundef nonnull dereferenceable(24) @.str.129, i32 noundef 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then78, label %do.body227

if.then78:                                        ; preds = %if.else72
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then90)) #16
          to label %do.end94 [label %if.then90], !srcloc !448

if.then90:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.4, i32 noundef 1463, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %i.0504, i32 noundef 2, ptr noundef nonnull @.str.129) #16
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %if.then78
  %s_partition_type95 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 3
  %91 = ptrtoint ptr %s_partition_type95 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 9489, ptr %s_partition_type95, align 4
  %s_partition_func96 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 6
  %92 = ptrtoint ptr %s_partition_func96 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @udf_get_pblock_meta25, ptr %s_partition_func96, align 4
  %metadataFileLoc = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 6
  %93 = ptrtoint ptr %metadataFileLoc to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %metadataFileLoc, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %96 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %s_type_specific, align 4
  %metadataMirrorFileLoc = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 7
  %97 = ptrtoint ptr %metadataMirrorFileLoc to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %metadataMirrorFileLoc, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %s_mirror_file_loc = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 1
  %100 = ptrtoint ptr %s_mirror_file_loc to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %s_mirror_file_loc, align 4
  %metadataBitmapFileLoc = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 8
  %101 = ptrtoint ptr %metadataBitmapFileLoc to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %metadataBitmapFileLoc, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %s_bitmap_file_loc = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 2
  %104 = ptrtoint ptr %s_bitmap_file_loc to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %s_bitmap_file_loc, align 4
  %allocUnitSize = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 9
  %105 = ptrtoint ptr %allocUnitSize to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %allocUnitSize, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %s_alloc_unit_size = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 3
  %108 = ptrtoint ptr %s_alloc_unit_size to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %s_alloc_unit_size, align 4
  %alignUnitSize = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 10
  %109 = ptrtoint ptr %alignUnitSize to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %alignUnitSize, align 1
  %111 = call i16 @llvm.bswap.i16(i16 %110)
  %s_align_unit_size = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 4
  %112 = ptrtoint ptr %s_align_unit_size to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %s_align_unit_size, align 4
  %flags = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 11
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags, align 1
  %115 = and i8 %114, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool98.not = icmp eq i8 %115, 0
  br i1 %tobool98.not, label %do.end94.do.body101_crit_edge, label %if.then99

do.end94.do.body101_crit_edge:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body101

if.then99:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #18
  %s_flags = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 6
  %116 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_flags, align 4
  %or = or i32 %117, 1
  store i32 %or, ptr %s_flags, align 4
  br label %do.body101

do.body101:                                       ; preds = %if.then99, %do.end94.do.body101_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then113)) #16
          to label %do.body121 [label %if.then113], !srcloc !448

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #18
  %identSuffix115 = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 3, i32 2
  %118 = ptrtoint ptr %identSuffix115 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %identSuffix115, align 1
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %conv117 = zext i16 %120 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.4, i32 noundef 1483, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %conv117) #16
  br label %do.body121

do.body121:                                       ; preds = %if.then113, %do.body101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then133)) #16
          to label %do.body139 [label %if.then133], !srcloc !448

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #18
  %partitionNum134 = getelementptr inbounds %struct.metadataPartitionMap, ptr %arrayidx34, i32 0, i32 5
  %121 = ptrtoint ptr %partitionNum134 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %partitionNum134, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122)
  %conv135 = zext i16 %123 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.4, i32 noundef 1485, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %conv135) #16
  br label %do.body139

do.body139:                                       ; preds = %if.then133, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then151)) #16
          to label %do.body156 [label %if.then151], !srcloc !448

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #18
  %124 = ptrtoint ptr %allocUnitSize to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %allocUnitSize, align 1
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.4, i32 noundef 1487, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %126) #16
  br label %do.body156

do.body156:                                       ; preds = %if.then151, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then168)) #16
          to label %do.body173 [label %if.then168], !srcloc !448

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #18
  %127 = ptrtoint ptr %metadataFileLoc to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %metadataFileLoc, align 1
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.4, i32 noundef 1489, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %129) #16
  br label %do.body173

do.body173:                                       ; preds = %if.then168, %do.body156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then185)) #16
          to label %do.body190 [label %if.then185], !srcloc !448

if.then185:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #18
  %130 = ptrtoint ptr %metadataMirrorFileLoc to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %metadataMirrorFileLoc, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.4, i32 noundef 1491, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %132) #16
  br label %do.body190

do.body190:                                       ; preds = %if.then185, %do.body173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then202)) #16
          to label %do.body207 [label %if.then202], !srcloc !448

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #18
  %133 = ptrtoint ptr %metadataBitmapFileLoc to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %metadataBitmapFileLoc, align 1
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.4, i32 noundef 1493, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %135) #16
  br label %do.body207

do.body207:                                       ; preds = %if.then202, %do.body190
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then219)) #16
          to label %cleanup.thread480 [label %if.then219], !srcloc !448

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #18
  %s_flags220 = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 6
  %136 = ptrtoint ptr %s_flags220 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %s_flags220, align 4
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %flags, align 1
  %conv222 = zext i8 %139 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.4, i32 noundef 1495, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %137, i32 noundef %conv222) #16
  br label %cleanup.thread480

do.body227:                                       ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %cleanup276.thread489)) #16
          to label %cleanup276 [label %cleanup276.thread489], !srcloc !448

cleanup276.thread489:                             ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.4, i32 noundef 1498, ptr noundef nonnull @__func__.udf_load_logicalvol, ptr noundef %ident43) #16
  br label %for.inc

cleanup.thread480:                                ; preds = %if.then219, %do.body207, %udf_load_sparable_map.exit, %if.else56, %if.then53
  %volSeqNum249 = getelementptr inbounds %struct.udfPartitionMap2, ptr %arrayidx34, i32 0, i32 4
  %140 = ptrtoint ptr %volSeqNum249 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %volSeqNum249, align 1
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %s_volumeseqnum250 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 7
  %143 = ptrtoint ptr %s_volumeseqnum250 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %142, ptr %s_volumeseqnum250, align 4
  %partitionNum251 = getelementptr inbounds %struct.udfPartitionMap2, ptr %arrayidx34, i32 0, i32 5
  %144 = ptrtoint ptr %partitionNum251 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %partitionNum251, align 1
  %146 = call i16 @llvm.bswap.i16(i16 %145)
  %s_partition_num252 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 4
  %147 = ptrtoint ptr %s_partition_num252 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %s_partition_num252, align 2
  br label %do.body255

do.body255:                                       ; preds = %cleanup.thread480, %if.then38, %for.body.do.body255_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %cleanup276.thread)) #16
          to label %cleanup276 [label %cleanup276.thread], !srcloc !448

cleanup276.thread:                                ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_num268 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 4
  %148 = ptrtoint ptr %s_partition_num268 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %s_partition_num268, align 2
  %conv269 = zext i16 %149 to i32
  %s_volumeseqnum271 = getelementptr %struct.udf_part_map, ptr %40, i32 %i.0504, i32 7
  %150 = ptrtoint ptr %s_volumeseqnum271 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %s_volumeseqnum271, align 4
  %conv272 = zext i16 %151 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.4, i32 noundef 1505, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %i.0504, i32 noundef %conv269, i32 noundef %conv35, i32 noundef %conv272) #16
  br label %for.inc

cleanup276:                                       ; preds = %do.body255, %do.body227
  %cleanup.dest.slot.1 = phi i32 [ 11, %do.body227 ], [ 0, %do.body255 ]
  %152 = zext i32 %cleanup.dest.slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %cleanup.dest.slot.1, label %cleanup276.cleanup313_crit_edge [
    i32 0, label %cleanup276.for.inc_crit_edge
    i32 11, label %cleanup276.for.inc_crit_edge529
  ]

cleanup276.for.inc_crit_edge529:                  ; preds = %cleanup276
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup276.for.inc_crit_edge:                     ; preds = %cleanup276
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

cleanup276.cleanup313_crit_edge:                  ; preds = %cleanup276
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup313

for.inc:                                          ; preds = %cleanup276.for.inc_crit_edge, %cleanup276.for.inc_crit_edge529, %cleanup276.thread, %cleanup276.thread489
  %inc = add nuw nsw i32 %i.0504, 1
  %partitionMapLength = getelementptr inbounds %struct.genericPartitionMap, ptr %arrayidx34, i32 0, i32 1
  %153 = ptrtoint ptr %partitionMapLength to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %partitionMapLength, align 1
  %conv279 = zext i8 %154 to i32
  %add = add i32 %offset.0503, %conv279
  %155 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %s_partitions, align 4
  %conv29 = zext i16 %156 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv29)
  %cmp30 = icmp ult i32 %inc, %conv29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp32 = icmp ult i32 %add, %9
  %or.cond = select i1 %cmp30, i1 %cmp32, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %udf_sb_alloc_partition_maps.exit.for.end_crit_edge
  %tobool280.not = icmp eq ptr %fileset, null
  br i1 %tobool280.not, label %for.end.if.end301_crit_edge, label %if.then281

for.end.if.end301_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end301

if.then281:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %extLocation = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 6, i32 4
  %157 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 6, i32 8
  %158 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %159 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #16
  %160 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #16
  %tmp283.sroa.5.0.insert.ext = zext i16 %160 to i64
  %tmp283.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp283.sroa.5.0.insert.ext, 16
  %tmp283.sroa.0.0.insert.ext = zext i32 %159 to i64
  %tmp283.sroa.0.0.insert.shift = shl nuw i64 %tmp283.sroa.0.0.insert.ext, 32
  %tmp283.sroa.5.0.insert.insert = or i64 %tmp283.sroa.5.0.insert.shift, %tmp283.sroa.0.0.insert.shift
  %tmp283.sroa.0.0.insert.insert = or i64 %tmp283.sroa.5.0.insert.insert, 65535
  %161 = ptrtoint ptr %fileset to i32
  call void @__asan_storeN_noabort(i32 %161, i32 8)
  store i64 %tmp283.sroa.0.0.insert.insert, ptr %fileset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_logicalvol, %if.then296)) #16
          to label %if.end301 [label %if.then296], !srcloc !448

if.then296:                                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #18
  %162 = ptrtoint ptr %fileset to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %fileset, align 4
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %fileset, i32 0, i32 1
  %164 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %partitionReferenceNum, align 4
  %conv297 = zext i16 %165 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_logicalvol.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.4, i32 noundef 1514, ptr noundef nonnull @__func__.udf_load_logicalvol, i32 noundef %163, i32 noundef %conv297) #16
  br label %if.end301

if.end301:                                        ; preds = %if.then296, %if.then281, %for.end.if.end301_crit_edge
  %integritySeqExt = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 11
  %166 = ptrtoint ptr %integritySeqExt to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %integritySeqExt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool302.not = icmp eq i32 %167, 0
  br i1 %tobool302.not, label %if.end301.if.end305_crit_edge, label %if.then303

if.end301.if.end305_crit_edge:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end305

if.then303:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #18
  %.elt415 = getelementptr inbounds %struct.logicalVolDesc, ptr %6, i32 0, i32 11, i32 1
  %168 = ptrtoint ptr %.elt415 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %.unpack416 = load i32, ptr %.elt415, align 1
  %169 = call i32 @llvm.bswap.i32(i32 %167) #16
  %170 = call i32 @llvm.bswap.i32(i32 %.unpack416) #16
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %169, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %170, 1
  call fastcc void @udf_load_logicalvolint(ptr noundef %sb, [2 x i32] %.fca.1.insert)
  br label %if.end305

if.end305:                                        ; preds = %if.then303, %if.end301.if.end305_crit_edge
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 7
  %171 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %s_lvid_bh, align 4
  %tobool306.not = icmp eq ptr %172, null
  br i1 %tobool306.not, label %if.then307, label %if.end305.brelse.exit_crit_edge

if.end305.brelse.exit_crit_edge:                  ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.then307:                                       ; preds = %if.end305
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %173 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else310, label %if.then309

if.then309:                                       ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #18
  %175 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i456 = getelementptr inbounds %struct.udf_sb_info, ptr %176, i32 0, i32 17
  call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i456) #16
  br label %brelse.exit

if.else310:                                       ; preds = %if.then307
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_logicalvol, ptr noundef nonnull @.str.152)
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.else310, %if.then309, %if.end305.brelse.exit_crit_edge, %cleanup276.thread492, %udf_sb_alloc_partition_maps.exit.thread, %force_ro.i.brelse.exit_crit_edge, %if.then17
  %ret.5 = phi i32 [ -5, %if.then17 ], [ 0, %if.end305.brelse.exit_crit_edge ], [ 0, %if.then309 ], [ -13, %if.else310 ], [ -13, %force_ro.i.brelse.exit_crit_edge ], [ -12, %udf_sb_alloc_partition_maps.exit.thread ], [ -5, %cleanup276.thread492 ]
  call void @__brelse(ptr noundef nonnull %call2) #16
  br label %cleanup313

cleanup313:                                       ; preds = %brelse.exit, %cleanup276.cleanup313_crit_edge, %entry.cleanup313_crit_edge
  %retval.0 = phi i32 [ %ret.5, %brelse.exit ], [ -11, %entry.cleanup313_crit_edge ], [ undef, %cleanup276.cleanup313_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_partdesc(ptr noundef %sb, i64 noundef %block) unnamed_addr #5 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %conv = trunc i64 %block to i32
  %call2 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %conv, i32 noundef %conv, ptr noundef nonnull %ident) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp.not = icmp eq i16 %4, 5
  br i1 %cmp.not, label %if.end6, label %if.end.brelse.exit_crit_edge

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end6:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %partitionNumber7 = getelementptr inbounds %struct.partitionDesc, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %partitionNumber7 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %partitionNumber7, align 1
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp9189.not = icmp eq i16 %11, 0
  br i1 %cmp9189.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %conv17 = zext i16 %9 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_partdesc.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_partdesc, %if.then15)) #16
          to label %do.end [label %if.then15], !srcloc !448

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_num = getelementptr %struct.udf_part_map, ptr %13, i32 %i.0190, i32 4
  %14 = ptrtoint ptr %s_partition_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_partition_num, align 2
  %conv16 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_partdesc.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.4, i32 noundef 1253, ptr noundef nonnull @.str.163, i32 noundef %conv16, i32 noundef %conv17) #16
  br label %do.end

do.end:                                           ; preds = %if.then15, %for.body
  %s_partition_num19 = getelementptr %struct.udf_part_map, ptr %13, i32 %i.0190, i32 4
  %16 = ptrtoint ptr %s_partition_num19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %s_partition_num19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %9)
  %cmp22 = icmp eq i16 %17, %9
  br i1 %cmp22, label %land.lhs.true, label %do.end.for.inc_crit_edge

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end
  %s_partition_type = getelementptr %struct.udf_part_map, ptr %13, i32 %i.0190, i32 3
  %18 = ptrtoint ptr %s_partition_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %s_partition_type, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.213)
  switch i16 %19, label %land.lhs.true.for.inc_crit_edge [
    i16 5393, label %land.lhs.true.for.end_crit_edge
    i16 5410, label %land.lhs.true.for.end_crit_edge203
  ]

land.lhs.true.for.end_crit_edge203:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0190, 1
  %21 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %s_partitions, align 4
  %conv8 = zext i16 %22 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %land.lhs.true.for.end_crit_edge203, %if.end6.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %i.0190, %land.lhs.true.for.end_crit_edge ], [ %i.0190, %land.lhs.true.for.end_crit_edge203 ], [ %inc, %for.inc.for.end_crit_edge ]
  %23 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_partitions, align 4
  %conv34 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv34)
  %cmp35.not = icmp ult i32 %i.0.lcssa, %conv34
  br i1 %cmp35.not, label %if.end55, label %do.body38

do.body38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_partdesc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_partdesc, %if.then50)) #16
          to label %brelse.exit [label %if.then50], !srcloc !448

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #18
  %conv51 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_partdesc.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.4, i32 noundef 1262, ptr noundef nonnull @.str.163, i32 noundef %conv51) #16
  br label %brelse.exit

if.end55:                                         ; preds = %for.end
  %call56 = call fastcc i32 @udf_fill_partdesc_info(ptr noundef %sb, ptr noundef %6, i32 noundef %i.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.brelse.exit_crit_edge, label %for.cond61.preheader

if.end55.brelse.exit_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

for.cond61.preheader:                             ; preds = %if.end55
  %25 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %s_partitions, align 4
  %conv63 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp64195.not = icmp eq i16 %26, 0
  br i1 %cmp64195.not, label %for.cond61.preheader.brelse.exit_crit_edge, label %for.body66.lr.ph

for.cond61.preheader.brelse.exit_crit_edge:       ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

for.body66.lr.ph:                                 ; preds = %for.cond61.preheader
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  br label %for.body66

for.body66:                                       ; preds = %for.inc91.for.body66_crit_edge, %for.body66.lr.ph
  %i.1196 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc92, %for.inc91.for.body66_crit_edge ]
  %s_partition_num69 = getelementptr %struct.udf_part_map, ptr %28, i32 %i.1196, i32 4
  %29 = ptrtoint ptr %s_partition_num69 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %s_partition_num69, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %9)
  %cmp72 = icmp eq i16 %30, %9
  br i1 %cmp72, label %land.lhs.true74, label %for.body66.for.inc91_crit_edge

for.body66.for.inc91_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91

land.lhs.true74:                                  ; preds = %for.body66
  %s_partition_type75 = getelementptr %struct.udf_part_map, ptr %28, i32 %i.1196, i32 3
  %31 = ptrtoint ptr %s_partition_type75 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s_partition_type75, align 4
  %33 = zext i16 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.214)
  switch i16 %32, label %land.lhs.true74.for.inc91_crit_edge [
    i16 5394, label %land.lhs.true74.if.end99_crit_edge
    i16 8210, label %land.lhs.true74.if.end99_crit_edge204
    i16 9489, label %land.lhs.true74.if.end99_crit_edge205
  ]

land.lhs.true74.if.end99_crit_edge205:            ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

land.lhs.true74.if.end99_crit_edge204:            ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

land.lhs.true74.if.end99_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

land.lhs.true74.for.inc91_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc91

for.inc91:                                        ; preds = %land.lhs.true74.for.inc91_crit_edge, %for.body66.for.inc91_crit_edge
  %inc92 = add nuw nsw i32 %i.1196, 1
  %exitcond.not = icmp eq i32 %inc92, %conv63
  br i1 %exitcond.not, label %for.inc91.brelse.exit_crit_edge, label %for.inc91.for.body66_crit_edge

for.inc91.for.body66_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body66

for.inc91.brelse.exit_crit_edge:                  ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end99:                                         ; preds = %land.lhs.true74.if.end99_crit_edge, %land.lhs.true74.if.end99_crit_edge204, %land.lhs.true74.if.end99_crit_edge205
  %call100 = call fastcc i32 @udf_fill_partdesc_info(ptr noundef %sb, ptr noundef %6, i32 noundef %i.1196)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.brelse.exit_crit_edge, label %if.end104

if.end99.brelse.exit_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end104:                                        ; preds = %if.end99
  %34 = ptrtoint ptr %s_partition_type75 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s_partition_type75, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9489, i16 %35)
  %cmp107 = icmp eq i16 %35, 9489
  br i1 %cmp107, label %if.then109, label %if.else

if.then109:                                       ; preds = %if.end104
  %call110 = call fastcc i32 @udf_load_metadata_files(ptr noundef %sb, i32 noundef %i.1196, i32 noundef %i.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.then109.if.end123_crit_edge

if.then109.if.end123_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

if.then113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.168, i32 noundef %i.1196)
  br label %brelse.exit

if.else:                                          ; preds = %if.end104
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %36 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else.brelse.exit_crit_edge, label %if.end117

if.else.brelse.exit_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end117:                                        ; preds = %if.else
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i182 = getelementptr inbounds %struct.udf_sb_info, ptr %39, i32 0, i32 17
  call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i182) #16
  %call118 = call fastcc i32 @udf_load_vat(ptr noundef %sb, i32 noundef %i.1196, i32 noundef %i.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end117.brelse.exit_crit_edge, label %if.end117.if.end123_crit_edge

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

if.end117.brelse.exit_crit_edge:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit

if.end123:                                        ; preds = %if.end117.if.end123_crit_edge, %if.then109.if.end123_crit_edge
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.end123, %if.end117.brelse.exit_crit_edge, %if.else.brelse.exit_crit_edge, %if.then113, %if.end99.brelse.exit_crit_edge, %for.inc91.brelse.exit_crit_edge, %for.cond61.preheader.brelse.exit_crit_edge, %if.end55.brelse.exit_crit_edge, %if.then50, %do.body38, %if.end.brelse.exit_crit_edge
  %ret.0 = phi i32 [ %call56, %if.end55.brelse.exit_crit_edge ], [ %call100, %if.end99.brelse.exit_crit_edge ], [ %call110, %if.then113 ], [ 0, %if.end123 ], [ %call118, %if.end117.brelse.exit_crit_edge ], [ 0, %if.end.brelse.exit_crit_edge ], [ 0, %if.then50 ], [ -13, %if.else.brelse.exit_crit_edge ], [ 0, %do.body38 ], [ 0, %for.cond61.preheader.brelse.exit_crit_edge ], [ 0, %for.inc91.brelse.exit_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %brelse.exit ], [ -11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_disk_stamp_to_time(ptr noundef, [3 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_dstrCS0toChar(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock_virt15(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock_virt20(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock_meta25(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_load_logicalvolint(ptr noundef %sb, [2 x i32] %loc.coerce) unnamed_addr #5 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %loc.coerce.fca.0.extract = extractvalue [2 x i32] %loc.coerce, 0
  %loc.coerce.fca.1.extract = extractvalue [2 x i32] %loc.coerce, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #16
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !444
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 7
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %if.end19.while.cond1.preheader_crit_edge, %entry
  %inc91 = phi i32 [ 1, %entry ], [ %inc, %if.end19.while.cond1.preheader_crit_edge ]
  %loc.sroa.5.090 = phi i32 [ %loc.coerce.fca.1.extract, %entry ], [ %16, %if.end19.while.cond1.preheader_crit_edge ]
  %loc.sroa.0.089 = phi i32 [ %loc.coerce.fca.0.extract, %entry ], [ %15, %if.end19.while.cond1.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loc.sroa.0.089)
  %cmp2.not84 = icmp eq i32 %loc.sroa.0.089, 0
  br i1 %cmp2.not84, label %while.cond1.preheader.cleanup_crit_edge, label %while.cond1.preheader.land.rhs_crit_edge

while.cond1.preheader.land.rhs_crit_edge:         ; preds = %while.cond1.preheader
  br label %land.rhs

while.cond1.preheader.cleanup_crit_edge:          ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %brelse.exit75.land.rhs_crit_edge, %while.cond1.preheader.land.rhs_crit_edge
  %final_bh.087 = phi ptr [ %call4, %brelse.exit75.land.rhs_crit_edge ], [ null, %while.cond1.preheader.land.rhs_crit_edge ]
  %loc.sroa.5.186 = phi i32 [ %inc10, %brelse.exit75.land.rhs_crit_edge ], [ %loc.sroa.5.090, %while.cond1.preheader.land.rhs_crit_edge ]
  %loc.sroa.0.185 = phi i32 [ %sub, %brelse.exit75.land.rhs_crit_edge ], [ %loc.sroa.0.089, %while.cond1.preheader.land.rhs_crit_edge ]
  %call4 = call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %loc.sroa.5.186, i32 noundef %loc.sroa.5.186, ptr noundef nonnull %ident) #16
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body5

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body5:                                      ; preds = %land.rhs
  %3 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %4)
  %cmp6.not = icmp eq i16 %4, 9
  br i1 %cmp6.not, label %if.end, label %brelse.exit

brelse.exit:                                      ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %call4) #16
  br label %while.end

if.end:                                           ; preds = %while.body5
  %tobool.not.i73 = icmp eq ptr %final_bh.087, null
  br i1 %tobool.not.i73, label %if.end.brelse.exit75_crit_edge, label %if.then.i74

if.end.brelse.exit75_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit75

if.then.i74:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %final_bh.087) #16
  br label %brelse.exit75

brelse.exit75:                                    ; preds = %if.then.i74, %if.end.brelse.exit75_crit_edge
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %sub = sub i32 %loc.sroa.0.185, %6
  %inc10 = add i32 %loc.sroa.5.186, 1
  %cmp2.not = icmp eq i32 %sub, 0
  br i1 %cmp2.not, label %brelse.exit75.if.end13_crit_edge, label %brelse.exit75.land.rhs_crit_edge

brelse.exit75.land.rhs_crit_edge:                 ; preds = %brelse.exit75
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs

brelse.exit75.if.end13_crit_edge:                 ; preds = %brelse.exit75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

while.end:                                        ; preds = %brelse.exit, %land.rhs.while.end_crit_edge
  %tobool11.not = icmp eq ptr %final_bh.087, null
  br i1 %tobool11.not, label %while.end.cleanup_crit_edge, label %while.end.if.end13_crit_edge

while.end.if.end13_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %while.end.if.end13_crit_edge, %brelse.exit75.if.end13_crit_edge
  %final_bh.083100 = phi ptr [ %final_bh.087, %while.end.if.end13_crit_edge ], [ %call4, %brelse.exit75.if.end13_crit_edge ]
  %7 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not.i76 = icmp eq ptr %8, null
  br i1 %tobool.not.i76, label %if.end13.brelse.exit78_crit_edge, label %if.then.i77

if.end13.brelse.exit78_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit78

if.then.i77:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %8) #16
  br label %brelse.exit78

brelse.exit78:                                    ; preds = %if.then.i77, %if.end13.brelse.exit78_crit_edge
  %9 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %final_bh.083100, ptr %s_lvid_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %final_bh.083100, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %nextIntegrityExt = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %nextIntegrityExt to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %nextIntegrityExt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16 = icmp eq i32 %13, 0
  br i1 %cmp16, label %check, label %if.end19

if.end19:                                         ; preds = %brelse.exit78
  %.elt71 = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %11, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %.elt71 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %.unpack72 = load i32, ptr %.elt71, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %13) #16
  %16 = call i32 @llvm.bswap.i32(i32 %.unpack72) #16
  %inc = add nuw nsw i32 %inc91, 1
  %exitcond.not = icmp eq i32 %inc, 1001
  br i1 %exitcond.not, label %while.end21, label %if.end19.while.cond1.preheader_crit_edge

if.end19.while.cond1.preheader_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond1.preheader

while.end21:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_logicalvolint, ptr noundef nonnull @.str.161, i32 noundef 1000)
  br label %out_err

out_err:                                          ; preds = %if.then36, %while.end21
  %17 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_lvid_bh, align 4
  %tobool.not.i79 = icmp eq ptr %18, null
  br i1 %tobool.not.i79, label %out_err.brelse.exit81_crit_edge, label %if.then.i80

out_err.brelse.exit81_crit_edge:                  ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %brelse.exit81

if.then.i80:                                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %18) #16
  br label %brelse.exit81

brelse.exit81:                                    ; preds = %if.then.i80, %out_err.brelse.exit81_crit_edge
  %19 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %s_lvid_bh, align 4
  br label %cleanup

check:                                            ; preds = %brelse.exit78
  %numOfPartitions = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %numOfPartitions to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %numOfPartitions, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %lengthOfImpUse = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %11, i32 0, i32 6
  %23 = ptrtoint ptr %lengthOfImpUse to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %lengthOfImpUse, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp25.not = icmp ult i32 %22, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp28.not = icmp ult i32 %25, %27
  %or.cond = select i1 %cmp25.not, i1 %cmp28.not, i1 false
  br i1 %or.cond, label %lor.lhs.false30, label %check.if.then36_crit_edge

check.if.then36_crit_edge:                        ; preds = %check
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

lor.lhs.false30:                                  ; preds = %check
  %add = add i32 %25, 80
  %mul31 = shl i32 %22, 3
  %add32 = add i32 %add, %mul31
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %27)
  %cmp34 = icmp ugt i32 %add32, %27
  br i1 %cmp34, label %lor.lhs.false30.if.then36_crit_edge, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false30.if.then36_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false30.if.then36_crit_edge, %check.if.then36_crit_edge
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_load_logicalvolint, ptr noundef nonnull @.str.162, i32 noundef %22, i32 noundef %25)
  br label %out_err

cleanup:                                          ; preds = %lor.lhs.false30.cleanup_crit_edge, %brelse.exit81, %while.end.cleanup_crit_edge, %while.cond1.preheader.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock_spar15(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_fill_partdesc_info(ptr noundef %sb, ptr nocapture noundef readonly %p, i32 noundef %p_index) unnamed_addr #5 align 64 {
entry:
  %loc = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index
  %partitionLength = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %partitionLength to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %partitionLength, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 2
  %7 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %s_partition_len, align 4
  %partitionStartingLocation = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 7
  %8 = ptrtoint ptr %partitionStartingLocation to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %partitionStartingLocation, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %s_partition_root = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 1
  %11 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %s_partition_root, align 4
  %accessType = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %accessType to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %accessType, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %13)
  %cmp = icmp eq i32 %13, 16777216
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_flags = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %14 = ptrtoint ptr %s_partition_flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_partition_flags, align 2
  %16 = or i16 %15, 16
  store i16 %16, ptr %s_partition_flags, align 2
  %17 = ptrtoint ptr %accessType to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %.pr = load i32, ptr %accessType, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = phi i32 [ %.pr, %if.then ], [ %13, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %18)
  %cmp3 = icmp eq i32 %18, 33554432
  br i1 %cmp3, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_flags6 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %19 = ptrtoint ptr %s_partition_flags6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_partition_flags6, align 2
  %21 = or i16 %20, 32
  store i16 %21, ptr %s_partition_flags6, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %22 = ptrtoint ptr %accessType to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %accessType, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %23)
  %cmp12 = icmp eq i32 %23, 50331648
  br i1 %cmp12, label %if.then14, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_flags15 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %24 = ptrtoint ptr %s_partition_flags15 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %s_partition_flags15, align 2
  %26 = or i16 %25, 64
  store i16 %26, ptr %s_partition_flags15, align 2
  %27 = ptrtoint ptr %accessType to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %.pr188 = load i32, ptr %accessType, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end10.if.end19_crit_edge
  %28 = phi i32 [ %.pr188, %if.then14 ], [ %23, %if.end10.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %28)
  %cmp21 = icmp eq i32 %28, 67108864
  br i1 %cmp21, label %if.then23, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_flags24 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %29 = ptrtoint ptr %s_partition_flags24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %s_partition_flags24, align 2
  %31 = or i16 %30, 128
  store i16 %31, ptr %s_partition_flags24, align 2
  br label %do.body

do.body:                                          ; preds = %if.then23, %if.end19.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_partdesc_info, %if.then32)) #16
          to label %do.end [label %if.then32], !srcloc !448

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %s_partition_type = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 3
  %32 = ptrtoint ptr %s_partition_type to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s_partition_type, align 4
  %conv33 = zext i16 %33 to i32
  %34 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_partition_root, align 4
  %36 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_partition_len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_partdesc_info.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.4, i32 noundef 1096, ptr noundef nonnull @.str.169, i32 noundef %p_index, i32 noundef %conv33, i32 noundef %35, i32 noundef %37) #16
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %38 = ptrtoint ptr %accessType to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %accessType, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %switch.i = icmp ult i32 %40, 3
  br i1 %switch.i, label %do.end.force_ro.i_crit_edge, label %sw.epilog.i

do.end.force_ro.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

sw.epilog.i:                                      ; preds = %do.end
  %ident.i = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 4, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %ident.i, ptr noundef nonnull dereferenceable(7) @.str.178) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %call4.i = tail call i32 @strcmp(ptr noundef %ident.i, ptr noundef nonnull dereferenceable(7) @.str.179) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.force_ro.i_crit_edge

land.lhs.true.i.force_ro.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.epilog.i.if.end.i_crit_edge
  %partitionContentsUse.i = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5
  %41 = ptrtoint ptr %partitionContentsUse.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %partitionContentsUse.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.i = icmp eq i32 %42, 0
  %unallocSpaceBitmap.i = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 8
  %43 = ptrtoint ptr %unallocSpaceBitmap.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %unallocSpaceBitmap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool9.not.i = icmp eq i32 %44, 0
  %freedSpaceTable.i = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 24
  %45 = ptrtoint ptr %freedSpaceTable.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %freedSpaceTable.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool12.not.i = icmp ne i32 %46, 0
  %freedSpaceBitmap.i = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 32
  %47 = ptrtoint ptr %freedSpaceBitmap.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %freedSpaceBitmap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool15.not.i = icmp ne i32 %48, 0
  %49 = select i1 %tobool7.not.i, i1 %tobool9.not.i, i1 false
  %brmerge.i = xor i1 %49, true
  %brmerge68.i = select i1 %brmerge.i, i1 true, i1 %tobool12.not.i
  %brmerge69.i = select i1 %brmerge68.i, i1 true, i1 %tobool15.not.i
  %brmerge69.not.i = xor i1 %brmerge69.i, true
  %brmerge71.i = select i1 %brmerge69.not.i, i1 true, i1 %tobool12.not.i
  %brmerge73.i = select i1 %brmerge71.i, i1 true, i1 %tobool15.not.i
  %brmerge73.not.i = xor i1 %brmerge73.i, true
  %brmerge74.i = select i1 %tobool7.not.i, i1 true, i1 %tobool9.not.i
  %or.cond.i = select i1 %brmerge73.not.i, i1 %brmerge74.i, i1 false
  br i1 %or.cond.i, label %if.end34.i, label %if.end.i.force_ro.i_crit_edge

if.end.i.force_ro.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.end34.i:                                       ; preds = %if.end.i
  %s_partition_type.i = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 3
  %50 = ptrtoint ptr %s_partition_type.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %s_partition_type.i, align 4
  %52 = zext i16 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.215)
  switch i16 %51, label %if.end34.i.if.end40_crit_edge [
    i16 5394, label %if.end34.i.force_ro.i_crit_edge
    i16 8210, label %if.end34.i.force_ro.i_crit_edge199
    i16 9489, label %if.end34.i.force_ro.i_crit_edge200
  ]

if.end34.i.force_ro.i_crit_edge200:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.end34.i.force_ro.i_crit_edge199:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.end34.i.force_ro.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.end34.i.if.end40_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

force_ro.i:                                       ; preds = %if.end34.i.force_ro.i_crit_edge, %if.end34.i.force_ro.i_crit_edge199, %if.end34.i.force_ro.i_crit_edge200, %if.end.i.force_ro.i_crit_edge, %land.lhs.true.i.force_ro.i_crit_edge, %do.end.force_ro.i_crit_edge
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %force_ro.i.cleanup128_crit_edge, label %if.end50.i

force_ro.i.cleanup128_crit_edge:                  ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.end50.i:                                       ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i75.i = getelementptr inbounds %struct.udf_sb_info, ptr %56, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i75.i) #16
  br label %if.end40

if.end40:                                         ; preds = %if.end50.i, %if.end34.i.if.end40_crit_edge
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %s_flags.i, align 4
  %61 = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool42.not = icmp eq i32 %61, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup128_crit_edge

if.end40.cleanup128_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.end44:                                         ; preds = %if.end40
  %partitionContentsUse = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5
  %62 = ptrtoint ptr %partitionContentsUse to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %partitionContentsUse, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool45.not = icmp eq i32 %63, 0
  br i1 %tobool45.not, label %if.end44.if.end92_crit_edge, label %if.then46

if.end44.if.end92_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end92

if.then46:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loc) #16
  %64 = ptrtoint ptr %loc to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %loc, align 8, !annotation !444
  %extPosition = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 4
  %65 = ptrtoint ptr %extPosition to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %extPosition, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %loc, align 8
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %loc, i32 0, i32 1
  %conv48 = trunc i32 %p_index to i16
  %69 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv48, ptr %partitionReferenceNum, align 4
  %call.i184 = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %loc, i1 noundef zeroext true) #16
  %cmp.i = icmp ugt ptr %call.i184, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body52, label %if.end69

do.body52:                                        ; preds = %if.then46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_partdesc_info, %if.then64)) #16
          to label %cleanup.thread [label %if.then64], !srcloc !448

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_partdesc_info.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.4, i32 noundef 1122, ptr noundef nonnull @.str.169, i32 noundef %p_index) #16
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then64, %do.body52
  %70 = ptrtoint ptr %call.i184 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc) #16
  br label %cleanup128

if.end69:                                         ; preds = %if.then46
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i184, ptr %arrayidx, align 4
  %s_partition_flags70 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %72 = ptrtoint ptr %s_partition_flags70 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %s_partition_flags70, align 2
  %74 = or i16 %73, 2
  store i16 %74, ptr %s_partition_flags70, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_partdesc_info, %cleanup.thread195)) #16
          to label %if.end92.critedge [label %cleanup.thread195], !srcloc !448

cleanup.thread195:                                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_partdesc_info.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.4, i32 noundef 1128, ptr noundef nonnull @.str.169, i32 noundef %p_index, i32 noundef %78) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc) #16
  br label %if.end92

if.end92.critedge:                                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc) #16
  br label %if.end92

if.end92:                                         ; preds = %if.end92.critedge, %cleanup.thread195, %if.end44.if.end92_crit_edge
  %unallocSpaceBitmap = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 8
  %79 = ptrtoint ptr %unallocSpaceBitmap to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %unallocSpaceBitmap, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool94.not = icmp eq i32 %80, 0
  br i1 %tobool94.not, label %if.end92.cleanup128_crit_edge, label %if.then95

if.end92.cleanup128_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.then95:                                        ; preds = %if.end92
  %81 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i, align 16
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %s_partition_len.i.i = getelementptr %struct.udf_part_map, ptr %84, i32 %p_index, i32 2
  %85 = ptrtoint ptr %s_partition_len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %s_partition_len.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %87 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_blocksize.i.i, align 16
  %mul.i.i = shl i32 %88, 3
  %add1.i.i = add i32 %86, 191
  %sub.i.i = add i32 %add1.i.i, %mul.i.i
  %div.i.i = udiv i32 %sub.i.i, %mul.i.i
  %89 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i.i, i32 4) #16
  %90 = extractvalue { i32, i1 } %89, 1
  %91 = extractvalue { i32, i1 } %89, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %91, i32 8) #16
  %retval.0.i.i = select i1 %90, i32 -1, i32 %spec.select.i.i
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i.i, i32 noundef 3520, i32 noundef -1) #22
  %tobool.not.i186 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i186, label %if.then95.cleanup128_crit_edge, label %if.end99

if.then95.cleanup128_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup128

if.end99:                                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #18
  %s_nr_groups.i = getelementptr inbounds %struct.udf_bitmap, ptr %call.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %s_nr_groups.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div.i.i, ptr %s_nr_groups.i, align 4
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i.i, ptr %arrayidx, align 4
  %extPosition102 = getelementptr inbounds %struct.partitionDesc, ptr %p, i32 0, i32 5, i32 12
  %94 = ptrtoint ptr %extPosition102 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %extPosition102, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  %97 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %call.i.i.i, align 4
  %s_partition_flags103 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 8
  %98 = ptrtoint ptr %s_partition_flags103 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %s_partition_flags103, align 2
  %100 = or i16 %99, 1
  store i16 %100, ptr %s_partition_flags103, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_fill_partdesc_info, %if.then119)) #16
          to label %cleanup128 [label %if.then119], !srcloc !448

if.then119:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  %101 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %call.i.i.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_fill_partdesc_info.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.4, i32 noundef 1140, ptr noundef nonnull @.str.169, i32 noundef %p_index, i32 noundef %102) #16
  br label %cleanup128

cleanup128:                                       ; preds = %if.then119, %if.end99, %if.then95.cleanup128_crit_edge, %if.end92.cleanup128_crit_edge, %cleanup.thread, %if.end40.cleanup128_crit_edge, %force_ro.i.cleanup128_crit_edge
  %retval.3 = phi i32 [ 0, %if.end40.cleanup128_crit_edge ], [ -13, %force_ro.i.cleanup128_crit_edge ], [ %70, %cleanup.thread ], [ 0, %if.then119 ], [ 0, %if.end99 ], [ 0, %if.end92.cleanup128_crit_edge ], [ -12, %if.then95.cleanup128_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_metadata_files(ptr noundef %sb, i32 noundef %partition, i32 noundef %type1_index) unnamed_addr #5 align 64 {
entry:
  %addr.i131 = alloca %struct.kernel_lb_addr, align 8
  %addr.i = alloca %struct.kernel_lb_addr, align 8
  %addr = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #16
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %addr, align 8, !annotation !444
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %4, i32 %partition, i32 5
  %conv = trunc i32 %type1_index to i16
  %s_phys_partition_ref = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 5
  %5 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %s_phys_partition_ref, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_metadata_files, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !448

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_type_specific, align 4
  %8 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_phys_partition_ref, align 2
  %conv5 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_metadata_files.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.4, i32 noundef 952, ptr noundef nonnull @.str.180, i32 noundef %7, i32 noundef %conv5) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_type_specific, align 4
  %12 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_phys_partition_ref, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i) #16
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %addr.i, align 8, !annotation !444
  store i32 %11, ptr %addr.i, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %addr.i, i32 0, i32 1
  %15 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %partitionReferenceNum.i, align 4
  %call.i.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %addr.i, i1 noundef zeroext true) #16
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %udf_find_metadata_inode_efe.exit.thread154, label %if.end.i

udf_find_metadata_inode_efe.exit.thread154:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #16
  br label %do.body12

if.end.i:                                         ; preds = %do.end
  %i_alloc_type.i = getelementptr i8, ptr %call.i.i, i32 -192
  %16 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.not.i = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.not.i, label %if.else, label %udf_find_metadata_inode_efe.exit.thread

udf_find_metadata_inode_efe.exit.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str.1) #16
  call void @iput(ptr noundef %call.i.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #16
  br label %do.body12

do.body12:                                        ; preds = %udf_find_metadata_inode_efe.exit.thread, %udf_find_metadata_inode_efe.exit.thread154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_metadata_files, %if.then24)) #16
          to label %do.end29 [label %if.then24], !srcloc !448

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  %s_mirror_file_loc = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 1
  %17 = ptrtoint ptr %s_mirror_file_loc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_mirror_file_loc, align 4
  %19 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_phys_partition_ref, align 2
  %conv26 = zext i16 %20 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_metadata_files.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.4, i32 noundef 959, ptr noundef nonnull @.str.180, i32 noundef %18, i32 noundef %conv26) #16
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %s_mirror_file_loc30 = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 1
  %21 = ptrtoint ptr %s_mirror_file_loc30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_mirror_file_loc30, align 4
  %23 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_phys_partition_ref, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i131) #16
  %25 = ptrtoint ptr %addr.i131 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %addr.i131, align 8, !annotation !444
  store i32 %22, ptr %addr.i131, align 8
  %partitionReferenceNum.i132 = getelementptr inbounds %struct.kernel_lb_addr, ptr %addr.i131, i32 0, i32 1
  %26 = ptrtoint ptr %partitionReferenceNum.i132 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %24, ptr %partitionReferenceNum.i132, align 4
  %call.i.i133 = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %addr.i131, i1 noundef zeroext true) #16
  %cmp.i.i134 = icmp ugt ptr %call.i.i133, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i134, label %udf_find_metadata_inode_efe.exit142.thread155, label %if.end.i139

udf_find_metadata_inode_efe.exit142.thread155:    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i131) #16
  br label %if.then35

if.end.i139:                                      ; preds = %do.end29
  %i_alloc_type.i136 = getelementptr i8, ptr %call.i.i133, i32 -192
  %27 = ptrtoint ptr %i_alloc_type.i136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i137 = load i32, ptr %i_alloc_type.i136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i137)
  %cmp.not.i138 = icmp ult i32 %bf.load.i137, 536870912
  br i1 %cmp.not.i138, label %if.end37, label %udf_find_metadata_inode_efe.exit142.thread

udf_find_metadata_inode_efe.exit142.thread:       ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_find_metadata_inode_efe, ptr noundef nonnull @.str.1) #16
  call void @iput(ptr noundef %call.i.i133) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i131) #16
  br label %if.then35

if.then35:                                        ; preds = %udf_find_metadata_inode_efe.exit142.thread, %udf_find_metadata_inode_efe.exit142.thread155
  %retval.0.i141151 = phi ptr [ inttoptr (i32 -5 to ptr), %udf_find_metadata_inode_efe.exit142.thread ], [ %call.i.i133, %udf_find_metadata_inode_efe.exit142.thread155 ]
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.185)
  %28 = ptrtoint ptr %retval.0.i141151 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i131) #16
  %s_mirror_fe = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 8
  %29 = ptrtoint ptr %s_mirror_fe to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i133, ptr %s_mirror_fe, align 4
  br label %if.end38

if.else:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #16
  %s_metadata_fe = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 7
  %30 = ptrtoint ptr %s_metadata_fe to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %s_metadata_fe, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end37
  %s_bitmap_file_loc = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 2
  %31 = ptrtoint ptr %s_bitmap_file_loc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_bitmap_file_loc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.not = icmp eq i32 %32, -1
  br i1 %cmp.not, label %if.end38.do.body73_crit_edge, label %if.then40

if.end38.do.body73_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body73

if.then40:                                        ; preds = %if.end38
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %addr, align 8
  %34 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s_phys_partition_ref, align 2
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %addr, i32 0, i32 1
  %36 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %partitionReferenceNum, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_metadata_files, %if.then55)) #16
          to label %do.end61 [label %if.then55], !srcloc !448

if.then55:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr, align 8
  %39 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %partitionReferenceNum, align 4
  %conv58 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_metadata_files.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.4, i32 noundef 983, ptr noundef nonnull @.str.180, i32 noundef %38, i32 noundef %conv58) #16
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %if.then40
  %call.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %addr, i1 noundef zeroext true) #16
  %cmp.i144 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then64, label %if.else70

if.then64:                                        ; preds = %do.end61
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %41 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else67, label %if.then66

if.then66:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.188)
  br label %do.body73

if.else67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.189)
  %43 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.else70:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #18
  %s_bitmap_fe = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 9
  %44 = ptrtoint ptr %s_bitmap_fe to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %s_bitmap_fe, align 4
  br label %do.body73

do.body73:                                        ; preds = %if.else70, %if.then66, %if.end38.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_metadata_files, %if.then85)) #16
          to label %cleanup [label %if.then85], !srcloc !448

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_metadata_files.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.4, i32 noundef 997, ptr noundef nonnull @.str.180) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %if.else67, %if.then35
  %retval.0 = phi i32 [ %28, %if.then35 ], [ %43, %if.else67 ], [ 0, %if.then85 ], [ 0, %do.body73 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_vat(ptr noundef %sb, i32 noundef %p_index, i32 noundef %type1_index) unnamed_addr #5 align 64 {
entry:
  %ino.i90 = alloca %struct.kernel_lb_addr, align 8
  %ino.i = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %9 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %7, %sh_prom.i
  %s_last_block = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %s_last_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_last_block, align 8
  %conv = zext i32 %11 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino.i) #16
  %12 = ptrtoint ptr %ino.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %ino.i, align 8, !annotation !444
  %conv.i88 = trunc i32 %type1_index to i16
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %ino.i, i32 0, i32 1
  %13 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i88, ptr %partitionReferenceNum.i, align 4
  %s_partition_root.i = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 1
  %sub.i89 = add nsw i64 %conv, -3
  %14 = ptrtoint ptr %s_partition_root.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_partition_root.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.not20.i = icmp ugt i32 %15, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp3.not21.i = icmp ult i32 %11, 3
  %or.cond22.i = or i1 %cmp3.not21.i, %cmp.not20.i
  br i1 %or.cond22.i, label %entry.udf_find_vat_block.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.udf_find_vat_block.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_find_vat_block.exit

for.cond.i:                                       ; preds = %for.body.i
  %dec.i = add i64 %vat_block.023.i, -1
  %16 = ptrtoint ptr %s_partition_root.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_partition_root.i, align 4
  %conv1.i = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dec.i, i64 %conv1.i)
  %cmp.not.i = icmp ult i64 %dec.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %dec.i, i64 %sub.i89)
  %cmp3.not.i = icmp ult i64 %dec.i, %sub.i89
  %or.cond.i = or i1 %cmp3.not.i, %cmp.not.i
  br i1 %or.cond.i, label %for.cond.i.udf_find_vat_block.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.udf_find_vat_block.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_find_vat_block.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %18 = phi i32 [ %17, %for.cond.i.for.body.i_crit_edge ], [ %15, %entry.for.body.i_crit_edge ]
  %vat_block.023.i = phi i64 [ %dec.i, %for.cond.i.for.body.i_crit_edge ], [ %conv, %entry.for.body.i_crit_edge ]
  %19 = trunc i64 %vat_block.023.i to i32
  %conv8.i = sub i32 %19, %18
  %20 = ptrtoint ptr %ino.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv8.i, ptr %ino.i, align 8
  %call.i.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %ino.i, i1 noundef zeroext true) #16
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.cond.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %s_vat_inode.i = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %s_vat_inode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %s_vat_inode.i, align 4
  br label %udf_find_vat_block.exit

udf_find_vat_block.exit:                          ; preds = %if.then.i, %for.cond.i.udf_find_vat_block.exit_crit_edge, %entry.udf_find_vat_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino.i) #16
  %s_vat_inode = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 19
  %22 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_vat_inode, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %land.lhs.true, label %udf_find_vat_block.exit.if.end13_crit_edge

udf_find_vat_block.exit.if.end13_crit_edge:       ; preds = %udf_find_vat_block.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %udf_find_vat_block.exit
  %24 = ptrtoint ptr %s_last_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_last_block, align 8
  %conv3 = zext i32 %25 to i64
  %sub = add i64 %shr.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv3)
  %cmp.not = icmp eq i64 %sub, %conv3
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  %conv6 = trunc i64 %shr.i to i32
  %sub7 = add i32 %conv6, -1
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, i32 noundef %25, i32 noundef %sub7) #19
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino.i90) #16
  %30 = ptrtoint ptr %ino.i90 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %ino.i90, align 8, !annotation !444
  %partitionReferenceNum.i93 = getelementptr inbounds %struct.kernel_lb_addr, ptr %ino.i90, i32 0, i32 1
  %31 = ptrtoint ptr %partitionReferenceNum.i93 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i88, ptr %partitionReferenceNum.i93, align 4
  %s_partition_root.i94 = getelementptr %struct.udf_part_map, ptr %29, i32 %p_index, i32 1
  %sub.i95 = add i64 %shr.i, -4
  %32 = ptrtoint ptr %s_partition_root.i94 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_partition_root.i94, align 4
  %conv119.i96 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv119.i96)
  %cmp.not20.i97 = icmp ult i64 %sub, %conv119.i96
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %sub)
  %cmp3.not21.i98 = icmp ult i64 %sub, 3
  %or.cond22.i99 = or i1 %cmp3.not21.i98, %cmp.not20.i97
  br i1 %or.cond22.i99, label %do.end.udf_find_vat_block.exit113_crit_edge, label %do.end.for.body.i110_crit_edge

do.end.for.body.i110_crit_edge:                   ; preds = %do.end
  br label %for.body.i110

do.end.udf_find_vat_block.exit113_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_find_vat_block.exit113

for.cond.i105:                                    ; preds = %for.body.i110
  %dec.i100 = add i64 %vat_block.023.i106, -1
  %34 = ptrtoint ptr %s_partition_root.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_partition_root.i94, align 4
  %conv1.i101 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dec.i100, i64 %conv1.i101)
  %cmp.not.i102 = icmp ult i64 %dec.i100, %conv1.i101
  call void @__sanitizer_cov_trace_cmp8(i64 %dec.i100, i64 %sub.i95)
  %cmp3.not.i103 = icmp ult i64 %dec.i100, %sub.i95
  %or.cond.i104 = or i1 %cmp3.not.i103, %cmp.not.i102
  br i1 %or.cond.i104, label %for.cond.i105.udf_find_vat_block.exit113_crit_edge, label %for.cond.i105.for.body.i110_crit_edge

for.cond.i105.for.body.i110_crit_edge:            ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i110

for.cond.i105.udf_find_vat_block.exit113_crit_edge: ; preds = %for.cond.i105
  call void @__sanitizer_cov_trace_pc() #18
  br label %udf_find_vat_block.exit113

for.body.i110:                                    ; preds = %for.cond.i105.for.body.i110_crit_edge, %do.end.for.body.i110_crit_edge
  %36 = phi i32 [ %35, %for.cond.i105.for.body.i110_crit_edge ], [ %33, %do.end.for.body.i110_crit_edge ]
  %vat_block.023.i106 = phi i64 [ %dec.i100, %for.cond.i105.for.body.i110_crit_edge ], [ %sub, %do.end.for.body.i110_crit_edge ]
  %37 = trunc i64 %vat_block.023.i106 to i32
  %conv8.i107 = sub i32 %37, %36
  %38 = ptrtoint ptr %ino.i90 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv8.i107, ptr %ino.i90, align 8
  %call.i.i108 = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %ino.i90, i1 noundef zeroext true) #16
  %cmp.i.i109 = icmp ugt ptr %call.i.i108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i109, label %for.cond.i105, label %if.then.i112

if.then.i112:                                     ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #18
  %s_vat_inode.i111 = getelementptr inbounds %struct.udf_sb_info, ptr %27, i32 0, i32 19
  %39 = ptrtoint ptr %s_vat_inode.i111 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i108, ptr %s_vat_inode.i111, align 4
  br label %udf_find_vat_block.exit113

udf_find_vat_block.exit113:                       ; preds = %if.then.i112, %for.cond.i105.udf_find_vat_block.exit113_crit_edge, %do.end.udf_find_vat_block.exit113_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino.i90) #16
  br label %if.end

if.end:                                           ; preds = %udf_find_vat_block.exit113, %land.lhs.true.if.end_crit_edge
  %40 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %s_vat_inode, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %udf_find_vat_block.exit.if.end13_crit_edge
  %41 = phi ptr [ %.pr, %if.end.if.end13_crit_edge ], [ %23, %udf_find_vat_block.exit.if.end13_crit_edge ]
  %s_partition_type = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 3
  %42 = ptrtoint ptr %s_partition_type to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %s_partition_type, align 4
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.216)
  switch i16 %43, label %if.end13.cleanup_crit_edge [
    i16 5394, label %if.then17
    i16 8210, label %if.then26
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 5
  %s_start_offset = getelementptr inbounds %struct.udf_virtual_data, ptr %s_type_specific, i32 0, i32 1
  %45 = ptrtoint ptr %s_start_offset to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %s_start_offset, align 4
  %46 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_vat_inode, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %i_size, align 8
  %sub19 = add i64 %49, 17179869148
  %50 = lshr i64 %sub19, 2
  %conv20 = trunc i64 %50 to i32
  %51 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv20, ptr %s_type_specific, align 4
  br label %cleanup

if.then26:                                        ; preds = %if.end13
  %i_alloc_type = getelementptr i8, ptr %41, i32 -192
  %52 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp29.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp29.not, label %if.else39, label %if.then31

if.then31:                                        ; preds = %if.then26
  %call33 = call i32 @udf_block_map(ptr noundef nonnull %41, i64 noundef 0) #16
  %conv34 = zext i32 %call33 to i64
  %53 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %55 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__bread_gfp(ptr noundef %54, i64 noundef %conv34, i32 noundef %56, i32 noundef 8) #16
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.then31.cleanup_crit_edge, label %if.end38

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  br label %if.end40

if.else39:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %i_data = getelementptr i8, ptr %41, i32 -188
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.end38
  %bh.0 = phi ptr [ %call.i, %if.end38 ], [ null, %if.else39 ]
  %vat20.0.in = phi ptr [ %b_data, %if.end38 ], [ %i_data, %if.else39 ]
  %57 = ptrtoint ptr %vat20.0.in to i32
  call void @__asan_load4_noabort(i32 %57)
  %vat20.0 = load ptr, ptr %vat20.0.in, align 4
  %58 = ptrtoint ptr %vat20.0 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %vat20.0, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %s_type_specific41 = getelementptr %struct.udf_part_map, ptr %3, i32 %p_index, i32 5
  %s_start_offset42 = getelementptr inbounds %struct.udf_virtual_data, ptr %s_type_specific41, i32 0, i32 1
  %61 = ptrtoint ptr %s_start_offset42 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %s_start_offset42, align 4
  %62 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_vat_inode, align 4
  %i_size44 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %i_size44 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_size44, align 8
  %conv47 = zext i16 %60 to i64
  %sub48 = sub i64 %65, %conv47
  %66 = lshr i64 %sub48, 2
  %conv50 = trunc i64 %66 to i32
  %67 = ptrtoint ptr %s_type_specific41 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv50, ptr %s_type_specific41, align 4
  %tobool.not.i = icmp eq ptr %bh.0, null
  br i1 %tobool.not.i, label %if.end40.cleanup_crit_edge, label %if.then.i115

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i115:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  call void @__brelse(ptr noundef nonnull %bh.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i115, %if.end40.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then17, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.then31.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.then.i115 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_block_map(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_load_fileset(ptr noundef %sb, ptr nocapture noundef readonly %fset, ptr nocapture noundef %root) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ident1.i = getelementptr inbounds %struct.fileSetDesc, ptr %fset, i32 0, i32 15, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(19) %ident1.i, ptr noundef nonnull dereferenceable(19) @.str.153, i32 19) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.force_ro.sink.split.i_crit_edge

entry.force_ro.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

if.end.i:                                         ; preds = %entry
  %domainIdent = getelementptr inbounds %struct.fileSetDesc, ptr %fset, i32 0, i32 15
  %0 = ptrtoint ptr %domainIdent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %domainIdent, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not.i = icmp eq i8 %2, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.force_ro.sink.split.i_crit_edge

if.end.i.force_ro.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %domainFlags.i = getelementptr inbounds %struct.fileSetDesc, ptr %fset, i32 0, i32 15, i32 2, i32 2
  %3 = ptrtoint ptr %domainFlags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %domainFlags.i, align 1
  %5 = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %if.end4.i.if.end_crit_edge, label %if.then13.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then13.i:                                      ; preds = %if.end4.i
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %7 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then13.i.force_ro.sink.split.i_crit_edge, label %if.then13.i.force_ro.i_crit_edge

if.then13.i.force_ro.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.i

if.then13.i.force_ro.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %force_ro.sink.split.i

force_ro.sink.split.i:                            ; preds = %if.then13.i.force_ro.sink.split.i_crit_edge, %if.end.i.force_ro.sink.split.i_crit_edge, %entry.force_ro.sink.split.i_crit_edge
  %.str.156.sink.i = phi ptr [ @.str.154, %entry.force_ro.sink.split.i_crit_edge ], [ @.str.155, %if.end.i.force_ro.sink.split.i_crit_edge ], [ @.str.156, %if.then13.i.force_ro.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @__func__.udf_verify_domain_identifier, ptr noundef nonnull %.str.156.sink.i, ptr noundef nonnull @.str.197) #16
  br label %force_ro.i

force_ro.i:                                       ; preds = %force_ro.sink.split.i, %if.then13.i.force_ro.i_crit_edge
  %s_flags.i31.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i31.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i31.i, align 4
  %and.i32.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.i33.not.i = icmp eq i32 %and.i32.i, 0
  br i1 %tobool.i33.not.i, label %force_ro.i.cleanup_crit_edge, label %if.end20.i

force_ro.i.cleanup_crit_edge:                     ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20.i:                                       ; preds = %force_ro.i
  call void @__sanitizer_cov_trace_pc() #18
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i34.i = getelementptr inbounds %struct.udf_sb_info, ptr %12, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 19, ptr noundef %s_flags.i34.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end20.i, %if.end4.i.if.end_crit_edge
  %extLocation = getelementptr inbounds %struct.fileSetDesc, ptr %fset, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileSetDesc, ptr %fset, i32 0, i32 14, i32 1, i32 1
  %14 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #16
  %16 = tail call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #16
  %tmp.sroa.5.0.insert.ext = zext i16 %16 to i64
  %tmp.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp.sroa.5.0.insert.ext, 16
  %tmp.sroa.0.0.insert.ext = zext i32 %15 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.5.0.insert.insert = or i64 %tmp.sroa.5.0.insert.shift, %tmp.sroa.0.0.insert.shift
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.5.0.insert.insert, 65535
  %17 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %root, align 4
  %tagSerialNum = getelementptr inbounds %struct.tag, ptr %fset, i32 0, i32 4
  %18 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %tagSerialNum, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i, align 16
  %s_serial_number = getelementptr inbounds %struct.udf_sb_info, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %s_serial_number to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %s_serial_number, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_load_fileset.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_load_fileset, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !448

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %root, align 4
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_lb_addr, ptr %root, i32 0, i32 1
  %26 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %partitionReferenceNum, align 4
  %conv = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_load_fileset.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.4, i32 noundef 815, ptr noundef nonnull @.str.198, i32 noundef %25, i32 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %force_ro.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -13, %force_ro.i.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udf_iget(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.udf_inode_info, ptr %foo, i32 0, i32 11
  %0 = ptrtoint ptr %i_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %i_data, align 4
  %vfs_inode = getelementptr inbounds %struct.udf_inode_info, ptr %foo, i32 0, i32 17
  tail call void @inode_init_once(ptr noundef %vfs_inode) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !151, !153, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !201, !203, !204, !205, !207, !208, !209, !211, !213, !214, !215, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !261, !262, !263, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !282, !284, !286, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !336, !338, !339, !341, !343, !345, !346, !348, !350, !352, !354, !355, !357, !359, !360, !361, !362, !364, !365, !366, !368, !370, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !389, !391, !392, !393, !394, !396, !397, !398, !400, !402, !403, !404, !406, !408, !410, !411, !412, !414, !415, !416, !417, !419, !420, !421, !422, !424, !426, !427, !428, !429, !431, !432}
!llvm.named.register.sp = !{!434}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440, !441, !442}
!llvm.ident = !{!443}

!0 = !{ptr @__UNIQUE_ID_alias269, !1, !"__UNIQUE_ID_alias269", i1 false, i1 false}
!1 = !{!"../fs/udf/super.c", i32 132, i32 1}
!2 = !{ptr @__func__.udf_find_metadata_inode_efe, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/udf/super.c", i32 925, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/udf/super.c", i32 929, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/udf/super.c", i32 2329, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @_udf_err._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @_udf_err._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/udf/super.c", i32 2345, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @_udf_warn._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @_udf_warn._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author310, !19, !"__UNIQUE_ID_author310", i1 false, i1 false}
!19 = !{!"../fs/udf/super.c", i32 2543, i32 1}
!20 = !{ptr @__UNIQUE_ID_description311, !21, !"__UNIQUE_ID_description311", i1 false, i1 false}
!21 = !{!"../fs/udf/super.c", i32 2544, i32 1}
!22 = !{ptr @__UNIQUE_ID_file312, !23, !"__UNIQUE_ID_file312", i1 false, i1 false}
!23 = !{!"../fs/udf/super.c", i32 2545, i32 1}
!24 = !{ptr @__UNIQUE_ID_license313, !23, !"__UNIQUE_ID_license313", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_udf__314_2546_init_udf_fs6, !26, !"__initcall__kmod_udf__314_2546_init_udf_fs6", i1 false, i1 false}
!26 = !{!"../fs/udf/super.c", i32 2546, i32 1}
!27 = !{ptr @__exitcall_exit_udf_fs, !28, !"__exitcall_exit_udf_fs", i1 false, i1 false}
!28 = !{!"../fs/udf/super.c", i32 2547, i32 1}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/udf/super.c", i32 127, i32 11}
!31 = !{ptr @udf_fstype, !32, !"udf_fstype", i1 false, i1 false}
!32 = !{!"../fs/udf/super.c", i32 125, i32 32}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../fs/udf/super.c", i32 2135, i32 23}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/udf/super.c", i32 2136, i32 23}
!37 = !{ptr @udf_fill_super.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../fs/udf/super.c", i32 2148, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @udf_fill_super.__key.10, !41, !"__key", i1 false, i1 false}
!41 = !{!"../fs/udf/super.c", i32 2163, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/udf/super.c", i32 2170, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @udf_fill_super.__UNIQUE_ID_ddebug305, !44, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/udf/super.c", i32 2187, i32 6}
!50 = !{ptr @udf_fill_super._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @udf_fill_super._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/udf/super.c", i32 2206, i32 4}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/udf/super.c", i32 2212, i32 2}
!56 = !{ptr @udf_fill_super.__UNIQUE_ID_ddebug306, !55, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/udf/super.c", i32 2227, i32 4}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/udf/super.c", i32 2249, i32 3}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/udf/super.c", i32 2265, i32 3}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/udf/super.c", i32 2272, i32 3}
!66 = !{ptr @udf_fill_super._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @udf_fill_super._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/udf/super.c", i32 2287, i32 3}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/udf/super.c", i32 2296, i32 3}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/udf/super.c", i32 468, i32 31}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../fs/udf/super.c", i32 510, i32 26}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../fs/udf/super.c", i32 518, i32 26}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/udf/super.c", i32 568, i32 41}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/udf/super.c", i32 571, i32 6}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @udf_parse_options._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @udf_parse_options._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/udf/super.c", i32 598, i32 4}
!87 = !{ptr @udf_parse_options._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @udf_parse_options._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/udf/super.c", i32 423, i32 14}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/udf/super.c", i32 424, i32 17}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/udf/super.c", i32 425, i32 11}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/udf/super.c", i32 426, i32 15}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/udf/super.c", i32 427, i32 17}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/udf/super.c", i32 428, i32 18}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/udf/super.c", i32 429, i32 16}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/udf/super.c", i32 430, i32 16}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/udf/super.c", i32 431, i32 15}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/udf/super.c", i32 432, i32 16}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/udf/super.c", i32 433, i32 16}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/udf/super.c", i32 434, i32 16}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/udf/super.c", i32 435, i32 16}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/udf/super.c", i32 436, i32 12}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/udf/super.c", i32 437, i32 12}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/udf/super.c", i32 438, i32 14}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/udf/super.c", i32 439, i32 16}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/udf/super.c", i32 440, i32 18}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/udf/super.c", i32 441, i32 15}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/udf/super.c", i32 442, i32 15}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/udf/super.c", i32 443, i32 18}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/udf/super.c", i32 444, i32 16}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/udf/super.c", i32 445, i32 16}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/udf/super.c", i32 447, i32 18}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/udf/super.c", i32 448, i32 18}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/udf/super.c", i32 449, i32 18}
!141 = !{ptr @tokens, !142, !"tokens", i1 false, i1 false}
!142 = !{!"../fs/udf/super.c", i32 422, i32 28}
!143 = !{ptr @udf_sb_ops, !144, !"udf_sb_ops", i1 false, i1 false}
!144 = !{!"../fs/udf/super.c", i32 195, i32 38}
!145 = !{ptr @udf_alloc_inode.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../fs/udf/super.c", i32 150, i32 2}
!147 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @udf_alloc_inode.__key.62, !149, !"__key", i1 false, i1 false}
!149 = !{!"../fs/udf/super.c", i32 152, i32 2}
!150 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @udf_inode_cachep, !152, !"udf_inode_cachep", i1 false, i1 false}
!152 = !{!"../fs/udf/super.c", i32 134, i32 27}
!153 = !{ptr @__func__.udf_count_free_bitmap, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/udf/super.c", i32 2436, i32 3}
!155 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/udf/super.c", i32 2459, i32 5}
!158 = !{ptr @udf_count_free_bitmap.__UNIQUE_ID_ddebug309, !157, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!159 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/udf/super.c", i32 317, i32 17}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/udf/super.c", i32 319, i32 19}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/udf/super.c", i32 321, i32 17}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/udf/super.c", i32 323, i32 17}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/udf/super.c", i32 325, i32 17}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/udf/super.c", i32 327, i32 17}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/udf/super.c", i32 329, i32 17}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/udf/super.c", i32 331, i32 17}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/udf/super.c", i32 333, i32 19}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/udf/super.c", i32 335, i32 19}
!180 = !{ptr @.str.77, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/udf/super.c", i32 337, i32 19}
!182 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/udf/super.c", i32 339, i32 19}
!184 = !{ptr @.str.79, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/udf/super.c", i32 341, i32 19}
!186 = !{ptr @.str.80, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/udf/super.c", i32 343, i32 19}
!188 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/udf/super.c", i32 345, i32 19}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/udf/super.c", i32 347, i32 19}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/udf/super.c", i32 349, i32 19}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/udf/super.c", i32 351, i32 17}
!196 = !{ptr @__func__.udf_load_vrs, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/udf/super.c", i32 1982, i32 4}
!198 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../fs/udf/super.c", i32 1991, i32 5}
!201 = !{ptr @.str.87, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../fs/udf/super.c", i32 1995, i32 4}
!203 = !{ptr @udf_load_vrs.__UNIQUE_ID_ddebug303, !202, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!204 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.89, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/udf/super.c", i32 2001, i32 3}
!207 = !{ptr @udf_load_vrs.__UNIQUE_ID_ddebug304, !206, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!208 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../fs/udf/super.c", i32 2009, i32 4}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/udf/super.c", i32 721, i32 2}
!213 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @udf_check_vsd.__UNIQUE_ID_ddebug276, !212, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!215 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/udf/super.c", i32 657, i32 29}
!218 = !{ptr @.str.96, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/udf/super.c", i32 660, i32 4}
!220 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug270, !219, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!222 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/udf/super.c", i32 663, i32 4}
!225 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug271, !224, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!226 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/udf/super.c", i32 666, i32 4}
!229 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug272, !228, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!230 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/udf/super.c", i32 669, i32 4}
!233 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug273, !232, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!234 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/udf/super.c", i32 672, i32 4}
!237 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug274, !236, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!238 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/udf/super.c", i32 675, i32 4}
!241 = !{ptr @identify_vsd.__UNIQUE_ID_ddebug275, !240, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!242 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/udf/super.c", i32 678, i32 36}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/udf/super.c", i32 680, i32 34}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/udf/super.c", i32 682, i32 34}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/udf/super.c", i32 684, i32 34}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../fs/udf/super.c", i32 686, i32 34}
!253 = !{ptr @__func__.udf_process_sequence, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/udf/super.c", i32 1710, i32 5}
!255 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/udf/super.c", i32 1757, i32 3}
!258 = !{ptr @.str.116, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/udf/super.c", i32 883, i32 2}
!260 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug279, !259, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!262 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/udf/super.c", i32 889, i32 38}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/udf/super.c", i32 890, i32 3}
!267 = !{ptr @udf_load_pvoldesc._entry, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @udf_load_pvoldesc._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.121, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/udf/super.c", i32 895, i32 2}
!271 = !{ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug280, !270, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!272 = !{ptr @.str.122, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/udf/super.c", i32 903, i32 2}
!275 = !{ptr @udf_load_pvoldesc.__UNIQUE_ID_ddebug281, !274, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!276 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @__func__.udf_load_logicalvol, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../fs/udf/super.c", i32 1399, i32 3}
!279 = !{ptr @.str.125, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/udf/super.c", i32 1407, i32 9}
!282 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/udf/super.c", i32 1431, i32 40}
!284 = !{ptr @.str.128, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/udf/super.c", i32 1448, i32 7}
!286 = !{ptr @.str.129, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/udf/super.c", i32 1455, i32 7}
!288 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/udf/super.c", i32 1462, i32 5}
!290 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug292, !289, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!291 = !{ptr @.str.131, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/udf/super.c", i32 1481, i32 5}
!294 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug293, !293, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!295 = !{ptr @.str.133, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/udf/super.c", i32 1484, i32 5}
!298 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug294, !297, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!299 = !{ptr @.str.135, !297, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/udf/super.c", i32 1486, i32 5}
!302 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug295, !301, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!303 = !{ptr @.str.137, !301, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/udf/super.c", i32 1488, i32 5}
!306 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug296, !305, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!307 = !{ptr @.str.139, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.140, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/udf/super.c", i32 1490, i32 5}
!310 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug297, !309, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!311 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.142, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/udf/super.c", i32 1492, i32 5}
!314 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug298, !313, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!315 = !{ptr @.str.143, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.144, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/udf/super.c", i32 1494, i32 5}
!318 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug299, !317, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!319 = !{ptr @.str.145, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../fs/udf/super.c", i32 1497, i32 5}
!322 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug300, !321, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!323 = !{ptr @.str.147, !321, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.148, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../fs/udf/super.c", i32 1504, i32 3}
!326 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug301, !325, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!327 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.150, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../fs/udf/super.c", i32 1512, i32 3}
!330 = !{ptr @udf_load_logicalvol.__UNIQUE_ID_ddebug302, !329, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!331 = !{ptr @.str.151, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.152, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../fs/udf/super.c", i32 1525, i32 4}
!334 = !{ptr @.str.153, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/udf/super.c", i32 775, i32 27}
!336 = !{ptr @__func__.udf_verify_domain_identifier, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../fs/udf/super.c", i32 776, i32 3}
!338 = !{ptr @.str.154, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @.str.155, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../fs/udf/super.c", i32 780, i32 3}
!341 = !{ptr @.str.156, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../fs/udf/super.c", i32 788, i32 4}
!343 = !{ptr @__func__.udf_load_sparable_map, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../fs/udf/super.c", i32 1339, i32 3}
!345 = !{ptr @.str.157, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.158, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/udf/super.c", i32 1345, i32 3}
!348 = !{ptr @.str.159, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../fs/udf/super.c", i32 1351, i32 3}
!350 = !{ptr @.str.160, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/udf/super.c", i32 1365, i32 39}
!352 = !{ptr @__func__.udf_load_logicalvolint, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../fs/udf/super.c", i32 1577, i32 2}
!354 = !{ptr @.str.161, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.162, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/udf/super.c", i32 1589, i32 3}
!357 = !{ptr @.str.163, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../fs/udf/super.c", i32 1252, i32 3}
!359 = !{ptr @.str.164, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @udf_load_partdesc.__UNIQUE_ID_ddebug290, !358, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!361 = !{ptr @.str.165, !358, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.166, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../fs/udf/super.c", i32 1261, i32 3}
!364 = !{ptr @udf_load_partdesc.__UNIQUE_ID_ddebug291, !363, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!365 = !{ptr @.str.167, !363, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.168, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../fs/udf/super.c", i32 1299, i32 4}
!368 = !{ptr @.str.169, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/udf/super.c", i32 1094, i32 2}
!370 = !{ptr @.str.170, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug286, !369, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!372 = !{ptr @.str.171, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.172, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/udf/super.c", i32 1121, i32 4}
!375 = !{ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug287, !374, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!376 = !{ptr @.str.173, !374, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.174, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../fs/udf/super.c", i32 1127, i32 3}
!379 = !{ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug288, !378, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!380 = !{ptr @.str.175, !378, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.176, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/udf/super.c", i32 1139, i32 3}
!383 = !{ptr @udf_fill_partdesc_info.__UNIQUE_ID_ddebug289, !382, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!384 = !{ptr @.str.177, !382, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.178, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../fs/udf/super.c", i32 1038, i32 41}
!387 = !{ptr @.str.179, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/udf/super.c", i32 1039, i32 41}
!389 = !{ptr @.str.180, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../fs/udf/super.c", i32 951, i32 2}
!391 = !{ptr @.str.181, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug282, !390, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!393 = !{ptr @.str.182, !390, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.183, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../fs/udf/super.c", i32 958, i32 3}
!396 = !{ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug283, !395, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!397 = !{ptr @.str.184, !395, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.185, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../fs/udf/super.c", i32 965, i32 4}
!400 = !{ptr @.str.186, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../fs/udf/super.c", i32 982, i32 3}
!402 = !{ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug284, !401, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!403 = !{ptr @.str.187, !401, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.188, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../fs/udf/super.c", i32 988, i32 5}
!406 = !{ptr @.str.189, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../fs/udf/super.c", i32 990, i32 5}
!408 = !{ptr @.str.190, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../fs/udf/super.c", i32 997, i32 2}
!410 = !{ptr @udf_load_metadata_files.__UNIQUE_ID_ddebug285, !409, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!411 = !{ptr @.str.191, !409, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.192, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../fs/udf/super.c", i32 1185, i32 3}
!414 = !{ptr @.str.193, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @udf_load_vat._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @udf_load_vat._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.194, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../fs/udf/super.c", i32 839, i32 2}
!419 = !{ptr @.str.195, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @udf_find_fileset.__UNIQUE_ID_ddebug278, !418, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!421 = !{ptr @.str.196, !418, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.197, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/udf/super.c", i32 807, i32 61}
!424 = !{ptr @.str.198, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../fs/udf/super.c", i32 814, i32 2}
!426 = !{ptr @.str.199, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @udf_load_fileset.__UNIQUE_ID_ddebug277, !425, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!428 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!429 = distinct !{null, !430, !"__already_done", i1 false, i1 false}
!430 = !{!"../fs/udf/udfdecl.h", i32 114, i32 2}
!431 = !{ptr @.str.201, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @.str.202, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../fs/udf/super.c", i32 173, i32 39}
!434 = !{!"sp"}
!435 = !{i32 1, !"wchar_size", i32 2}
!436 = !{i32 1, !"min_enum_size", i32 4}
!437 = !{i32 8, !"branch-target-enforcement", i32 0}
!438 = !{i32 8, !"sign-return-address", i32 0}
!439 = !{i32 8, !"sign-return-address-all", i32 0}
!440 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!441 = !{i32 7, !"uwtable", i32 1}
!442 = !{i32 7, !"frame-pointer", i32 2}
!443 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!444 = !{!"auto-init"}
!445 = !{!"branch_weights", i32 1, i32 2000}
!446 = !{i64 2153948502, i64 2153948983, i64 2153948539, i64 2153948595, i64 2153948629, i64 2153948653, i64 2153948694, i64 2153948715, i64 2153948743, i64 2153948777}
!447 = !{!"branch_weights", i32 2000, i32 1}
!448 = !{i64 2148608134, i64 2148608139, i64 2148608152, i64 2148608196, i64 2148608230, i64 2148608251}
!449 = !{i64 2154713499, i64 2154713979, i64 2154713536, i64 2154713592, i64 2154713626, i64 2154713650, i64 2154713691, i64 2154713712, i64 2154713740, i64 2154713774}
!450 = !{i32 0, i32 17}
