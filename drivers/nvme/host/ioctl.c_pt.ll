; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/ioctl.c_pt.bc'
source_filename = "../drivers/nvme/host/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nvme_ns = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.kref, ptr, i32, i16, i16, i32, i8, i64, i32, i32, %struct.cdev, %struct.device, %struct.nvme_fault_inject }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.nvme_command = type { %union.anon.85 }
%union.anon.85 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.nvme_ns_head = type { %struct.list_head, %struct.srcu_struct, ptr, i32, %struct.nvme_ns_ids, %struct.list_head, %struct.kref, i8, i32, ptr, %struct.cdev, %struct.device, ptr, %struct.bio_list, %struct.spinlock, %struct.work_struct, %struct.mutex, i32, [0 x ptr] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvme_ns_ids = type { [8 x i8], [16 x i8], %struct.uuid_t, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.bio_list = type { ptr, ptr }
%struct.nvme_user_io = type { i8, i8, i16, i16, i16, i64, i64, i64, i32, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_passthru_cmd = type { i8, i8, i16, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nvme_passthru_cmd64 = type { i8, i8, i16, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.nvmf_common_command = type { i8, i8, i16, i8, [35 x i8], [24 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.24, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.25, %union.anon.26, %union.anon.27, %union.anon.32, ptr, ptr }
%union.anon.24 = type { %struct.list_head }
%union.anon.25 = type { %struct.hlist_node }
%union.anon.26 = type { %struct.rb_node }
%union.anon.27 = type { %struct.anon.31 }
%struct.anon.31 = type { i32, %struct.list_head, ptr }
%union.anon.32 = type { i64, [8 x i8] }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%union.nvme_result = type { i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }

@nvme_dev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resetting controller\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvme_dev_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvme/host/ioctl.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_dev_ioctl._entry_ptr = internal global ptr @nvme_dev_ioctl._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@nvme_validate_passthru_nsid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 183, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: nsid (%u) in cmd does not match nsid (%u)of namespace\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvme_validate_passthru_nsid\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_validate_passthru_nsid._entry_ptr = internal global ptr @nvme_validate_passthru_nsid._entry, section ".printk_index", align 4
@nvme_dev_user_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"NVME_IOCTL_IO_CMD not supported when multiple namespaces present!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_dev_user_cmd\00", [46 x i8] zeroinitializer }, align 32
@nvme_dev_user_cmd._entry_ptr = internal global ptr @nvme_dev_user_cmd._entry, section ".printk_index", align 4
@nvme_dev_user_cmd._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"using deprecated NVME_IOCTL_IO_CMD ioctl on the char device!\0A\00", [34 x i8] zeroinitializer }, align 32
@nvme_dev_user_cmd._entry_ptr.16 = internal global ptr @nvme_dev_user_cmd._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3225964097, i64 3226488391]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 3225964097, i64 3226488391]
@__sancov_gen_cov_switch_values.18 = internal global [20 x i64] [i64 18, i64 32, i64 1091072222, i64 1091072226, i64 1091072232, i64 1091596513, i64 1091596517, i64 1091596518, i64 1091596519, i64 1091596521, i64 1092120796, i64 1092120797, i64 1092120799, i64 1092120804, i64 1092645098, i64 1093169379, i64 1094217963, i64 1109422304, i64 3225964097, i64 3226488391]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 3225964097, i64 3226488391]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 20032, i64 1076907586, i64 3225964099, i64 3226488392]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [8 x i64] [i64 6, i64 32, i64 20036, i64 20037, i64 20038, i64 3225964097, i64 3225964099, i64 3226488391]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 487, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 230, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 214, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 156, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 189, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 180, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 453, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [29 x i8] c"../drivers/nvme/host/ioctl.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 459, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @nvme_dev_ioctl._entry, ptr @nvme_dev_ioctl._entry_ptr, ptr @nvme_dev_user_cmd._entry, ptr @nvme_dev_user_cmd._entry.14, ptr @nvme_dev_user_cmd._entry_ptr, ptr @nvme_dev_user_cmd._entry_ptr.16, ptr @nvme_validate_passthru_nsid._entry, ptr @nvme_validate_passthru_nsid._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_validate_passthru_nsid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dev_user_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_dev_user_cmd._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = inttoptr i32 %arg to ptr
  %call.i = tail call fastcc zeroext i1 @is_ctrl_ioctl(i32 noundef %cmd) #10
  br i1 %call.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %ctrl.i = getelementptr inbounds %struct.nvme_ns, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl.i, align 8
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default.i.i [
    i32 -1069003199, label %sw.bb.i.i
    i32 -1068478905, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call fastcc i32 @nvme_user_cmd(ptr noundef %6, ptr noundef null, ptr noundef %4) #10
  br label %__nvme_ioctl.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call fastcc i32 @nvme_user_cmd64(ptr noundef %6, ptr noundef null, ptr noundef %4) #10
  br label %__nvme_ioctl.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %opal_dev.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %6, i32 0, i32 25
  %8 = ptrtoint ptr %opal_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opal_dev.i.i, align 8
  %call3.i.i = tail call i32 @sed_ioctl(ptr noundef %9, i32 noundef %cmd, ptr noundef %4) #10
  br label %__nvme_ioctl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call fastcc i32 @nvme_ns_ioctl(ptr noundef %3, i32 noundef %cmd, ptr noundef %4) #10
  br label %__nvme_ioctl.exit

__nvme_ioctl.exit:                                ; preds = %if.end.i, %sw.default.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call3.i.i, %sw.default.i.i ], [ %call2.i.i, %sw.bb1.i.i ], [ %call.i.i, %sw.bb.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_ns_chr_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = inttoptr i32 %arg to ptr
  %call.i = tail call fastcc zeroext i1 @is_ctrl_ioctl(i32 noundef %cmd) #10
  br i1 %call.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %ctrl.i = getelementptr i8, ptr %4, i32 -72
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl.i, align 8
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cmd, label %sw.default.i.i [
    i32 -1069003199, label %sw.bb.i.i
    i32 -1068478905, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call fastcc i32 @nvme_user_cmd(ptr noundef %7, ptr noundef null, ptr noundef %5) #10
  br label %__nvme_ioctl.exit

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call fastcc i32 @nvme_user_cmd64(ptr noundef %7, ptr noundef null, ptr noundef %5) #10
  br label %__nvme_ioctl.exit

sw.default.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %opal_dev.i.i = getelementptr inbounds %struct.nvme_ctrl, ptr %7, i32 0, i32 25
  %9 = ptrtoint ptr %opal_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %opal_dev.i.i, align 8
  %call3.i.i = tail call i32 @sed_ioctl(ptr noundef %10, i32 noundef %cmd, ptr noundef %5) #10
  br label %__nvme_ioctl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %4, i32 -80
  %call2.i = tail call fastcc i32 @nvme_ns_ioctl(ptr noundef %add.ptr, i32 noundef %cmd, ptr noundef %5) #10
  br label %__nvme_ioctl.exit

__nvme_ioctl.exit:                                ; preds = %if.end.i, %sw.default.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call3.i.i, %sw.default.i.i ], [ %call2.i.i, %sw.bb1.i.i ], [ %call.i.i, %sw.bb.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_ns_head_ioctl(ptr nocapture noundef readonly %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = inttoptr i32 %arg to ptr
  %srcu = getelementptr inbounds %struct.nvme_ns_head, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #10
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %3, i32 0, i32 1, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #10
  %call1 = tail call ptr @nvme_find_path(ptr noundef %3) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc zeroext i1 @is_ctrl_ioctl(i32 noundef %cmd)
  br i1 %call2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @nvme_ns_head_ctrl_ioctl(ptr noundef nonnull %call1, i32 noundef %cmd, ptr noundef %4, ptr noundef %3, i32 noundef %call.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @nvme_ns_ioctl(ptr noundef nonnull %call1, i32 noundef %cmd, ptr noundef %4)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end5, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5 ], [ -11, %entry.out_unlock_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %out_unlock.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out_unlock.srcu_read_unlock.exit_crit_edge:       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out_unlock
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !43

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out_unlock.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #10
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %if.then3
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %ret.0, %srcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_find_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @is_ctrl_ioctl(i32 noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %sw.epilog.i [
    i32 -1069003199, label %entry.return_crit_edge
    i32 -1068478905, label %entry.return_crit_edge6
    i32 1092120796, label %entry.return_crit_edge7
    i32 1092120797, label %entry.return_crit_edge8
    i32 1091072222, label %entry.return_crit_edge9
    i32 1092120799, label %entry.return_crit_edge10
    i32 1109422304, label %entry.return_crit_edge11
    i32 1091596513, label %entry.return_crit_edge12
    i32 1091072226, label %entry.return_crit_edge13
    i32 1093169379, label %entry.return_crit_edge14
    i32 1092120804, label %entry.return_crit_edge15
    i32 1091596517, label %entry.return_crit_edge16
    i32 1091596518, label %entry.return_crit_edge17
    i32 1091596519, label %entry.return_crit_edge18
    i32 1091072232, label %entry.return_crit_edge19
    i32 1091596521, label %entry.return_crit_edge20
    i32 1092645098, label %entry.return_crit_edge21
    i32 1094217963, label %entry.return_crit_edge22
  ]

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog.i, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge6 ], [ false, %sw.epilog.i ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_ns_head_ctrl_ioctl(ptr nocapture noundef readonly %ns, i32 noundef %cmd, ptr noundef %argp, ptr noundef %head, i32 noundef %srcu_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 8
  %call.i = tail call ptr @get_device(ptr noundef %3) #10
  %srcu = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %srcu_idx)
  %tobool.not.i = icmp ult i32 %srcu_idx, 2
  br i1 %tobool.not.i, label %entry.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

entry.srcu_read_unlock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !43

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %entry.srcu_read_unlock.exit_crit_edge
  %dep_map.i = getelementptr inbounds %struct.nvme_ns_head, ptr %head, i32 0, i32 1, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #10
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %srcu_idx) #10
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl1, align 8
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %sw.default.i [
    i32 -1069003199, label %sw.bb.i
    i32 -1068478905, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i6 = tail call fastcc i32 @nvme_user_cmd(ptr noundef %5, ptr noundef null, ptr noundef %argp) #10
  br label %nvme_ctrl_ioctl.exit

sw.bb1.i:                                         ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call fastcc i32 @nvme_user_cmd64(ptr noundef %5, ptr noundef null, ptr noundef %argp) #10
  br label %nvme_ctrl_ioctl.exit

sw.default.i:                                     ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %opal_dev.i = getelementptr inbounds %struct.nvme_ctrl, ptr %5, i32 0, i32 25
  %7 = ptrtoint ptr %opal_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %opal_dev.i, align 8
  %call3.i = tail call i32 @sed_ioctl(ptr noundef %8, i32 noundef %cmd, ptr noundef %argp) #10
  br label %nvme_ctrl_ioctl.exit

nvme_ctrl_ioctl.exit:                             ; preds = %sw.default.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i32 [ %call3.i, %sw.default.i ], [ %call2.i, %sw.bb1.i ], [ %call.i6, %sw.bb.i ]
  %9 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %10) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_ns_ioctl(ptr noundef %ns, i32 noundef %cmd, ptr noundef %argp) unnamed_addr #0 align 64 {
entry:
  %io.i = alloca %struct.nvme_user_io, align 8
  %c.i = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 20032, label %do.end
    i32 -1069003197, label %sw.bb1
    i32 1076907586, label %sw.bb2
    i32 -1068478904, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 8
  %ns_id = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ns_id, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 8
  %call = tail call fastcc i32 @nvme_user_cmd(ptr noundef %6, ptr noundef %ns, ptr noundef %argp)
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io.i) #10
  %7 = call ptr @memset(ptr %io.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %sw.bb2.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb2.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb2
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 48, i32 -1226833920) #13, !srcloc !44
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %io.i, i32 noundef 48) #10
  %9 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !45
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %io.i, ptr noundef %argp, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb2.if.then11.i.i.i_crit_edge
  %res.0.i.i74.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 48, %sw.bb2.if.then11.i.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 48, %res.0.i.i74.i
  %add.ptr.i.i.i = getelementptr i8, ptr %io.i, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i74.i)
  br label %nvme_submit_io.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %flags.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.nvme_submit_io.exit_crit_edge

if.end.i.nvme_submit_io.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_submit_io.exit

if.end3.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %io.i, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %16, label %if.end3.i.nvme_submit_io.exit_crit_edge [
    i8 1, label %if.end3.i.sw.epilog.i_crit_edge
    i8 2, label %if.end3.i.sw.epilog.i_crit_edge14
    i8 5, label %if.end3.i.sw.epilog.i_crit_edge15
  ]

if.end3.i.sw.epilog.i_crit_edge15:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end3.i.sw.epilog.i_crit_edge14:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end3.i.nvme_submit_io.exit_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_submit_io.exit

sw.epilog.i:                                      ; preds = %if.end3.i.sw.epilog.i_crit_edge, %if.end3.i.sw.epilog.i_crit_edge14, %if.end3.i.sw.epilog.i_crit_edge15
  %nblocks.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 3
  %18 = ptrtoint ptr %nblocks.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nblocks.i, align 4
  %conv4.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv4.i, 1
  %lba_shift.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 9
  %20 = ptrtoint ptr %lba_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lba_shift.i, align 4
  %shl.i = shl i32 %add.i, %21
  %control.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 2
  %22 = ptrtoint ptr %control.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %control.i, align 2
  %24 = and i16 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool6.not.i = icmp eq i16 %24, 0
  br i1 %tobool6.not.i, label %sw.epilog.i.if.end24.i_crit_edge, label %land.lhs.true.i

sw.epilog.i.if.end24.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %ms.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 10
  %25 = ptrtoint ptr %ms.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ms.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %26)
  %cmp.i = icmp eq i16 %26, 8
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %metadata10.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 5
  %27 = ptrtoint ptr %metadata10.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %metadata10.i, align 8
  %conv11.i = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv11.i)
  %tobool13.not.i = icmp eq i32 %conv11.i, 0
  br i1 %tobool13.not.i, label %if.end24.thread.i, label %if.then9.i.nvme_submit_io.exit_crit_edge

if.then9.i.nvme_submit_io.exit_crit_edge:         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_submit_io.exit

if.end24.i:                                       ; preds = %land.lhs.true.i.if.end24.i_crit_edge, %sw.epilog.i.if.end24.i_crit_edge
  %ms19.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 10
  %29 = ptrtoint ptr %ms19.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ms19.i, align 8
  %conv20.i = zext i16 %30 to i32
  %mul.i = mul nuw i32 %add.i, %conv20.i
  %metadata21.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 5
  %31 = ptrtoint ptr %metadata21.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %metadata21.i, align 8
  %conv22.i = trunc i64 %32 to i32
  %33 = inttoptr i32 %conv22.i to ptr
  %features.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 15
  %34 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %features.i, align 8
  %and25.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else29.i, label %if.end24.i.if.then27.i_crit_edge

if.end24.i.if.then27.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

if.end24.thread.i:                                ; preds = %if.then9.i
  %features79.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 15
  %36 = ptrtoint ptr %features79.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %features79.i, align 8
  %and2580.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2580.i)
  %tobool26.not81.i = icmp eq i32 %and2580.i, 0
  br i1 %tobool26.not81.i, label %if.end24.thread.i.if.end40.i_crit_edge, label %if.end24.thread.i.if.then27.i_crit_edge

if.end24.thread.i.if.then27.i_crit_edge:          ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27.i

if.end24.thread.i.if.end40.i_crit_edge:           ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then27.i:                                      ; preds = %if.end24.thread.i.if.then27.i_crit_edge, %if.end24.i.if.then27.i_crit_edge
  %metadata.085.i = phi ptr [ null, %if.end24.thread.i.if.then27.i_crit_edge ], [ %33, %if.end24.i.if.then27.i_crit_edge ]
  %meta_len.082.i = phi i32 [ 0, %if.end24.thread.i.if.then27.i_crit_edge ], [ %mul.i, %if.end24.i.if.then27.i_crit_edge ]
  %add28.i = add i32 %meta_len.082.i, %shl.i
  br label %if.end40.i

if.else29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool30.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool30.not.i, label %if.else29.i.if.end40.i_crit_edge, label %if.then31.i

if.else29.i.if.end40.i_crit_edge:                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then31.i:                                      ; preds = %if.else29.i
  %and33.i = and i64 %32, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp ne i64 %and33.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool36.not.i = icmp eq i64 %32, 0
  %or.cond.i = or i1 %tobool36.not.i, %tobool34.not.i
  br i1 %or.cond.i, label %if.then31.i.nvme_submit_io.exit_crit_edge, label %if.then31.i.if.end40.i_crit_edge

if.then31.i.if.end40.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i

if.then31.i.nvme_submit_io.exit_crit_edge:        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_submit_io.exit

if.end40.i:                                       ; preds = %if.then31.i.if.end40.i_crit_edge, %if.else29.i.if.end40.i_crit_edge, %if.then27.i, %if.end24.thread.i.if.end40.i_crit_edge
  %metadata.084.i = phi ptr [ %metadata.085.i, %if.then27.i ], [ %33, %if.else29.i.if.end40.i_crit_edge ], [ %33, %if.then31.i.if.end40.i_crit_edge ], [ null, %if.end24.thread.i.if.end40.i_crit_edge ]
  %length.0.i = phi i32 [ %add28.i, %if.then27.i ], [ %shl.i, %if.else29.i.if.end40.i_crit_edge ], [ %shl.i, %if.then31.i.if.end40.i_crit_edge ], [ %shl.i, %if.end24.thread.i.if.end40.i_crit_edge ]
  %meta_len.1.i = phi i32 [ 0, %if.then27.i ], [ 0, %if.else29.i.if.end40.i_crit_edge ], [ %mul.i, %if.then31.i.if.end40.i_crit_edge ], [ 0, %if.end24.thread.i.if.end40.i_crit_edge ]
  %38 = call ptr @memset(ptr %c.i, i32 0, i32 40)
  %39 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %16, ptr %c.i, align 8
  %head.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %ns_id.i = getelementptr inbounds %struct.nvme_ns_head, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ns_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ns_id.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #10
  %nsid.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 3
  %45 = ptrtoint ptr %nsid.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %nsid.i, align 4
  %slba.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 7
  %46 = ptrtoint ptr %slba.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %slba.i, align 8
  %48 = call i64 @llvm.bswap.i64(i64 %47) #10
  %slba45.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 7
  %49 = ptrtoint ptr %slba45.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %slba45.i, align 8
  %50 = call i16 @llvm.bswap.i16(i16 %19) #10
  %length47.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 8
  %51 = ptrtoint ptr %length47.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %length47.i, align 8
  %52 = call i16 @llvm.bswap.i16(i16 %23) #10
  %control49.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 9
  %53 = ptrtoint ptr %control49.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %control49.i, align 2
  %dsmgmt.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 8
  %54 = ptrtoint ptr %dsmgmt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dsmgmt.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  %dsmgmt50.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 10
  %57 = ptrtoint ptr %dsmgmt50.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dsmgmt50.i, align 4
  %reftag.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 9
  %58 = ptrtoint ptr %reftag.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reftag.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #10
  %reftag51.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 11
  %61 = ptrtoint ptr %reftag51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %reftag51.i, align 8
  %apptag.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 10
  %62 = ptrtoint ptr %apptag.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %apptag.i, align 8
  %64 = call i16 @llvm.bswap.i16(i16 %63) #10
  %apptag52.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 12
  %65 = ptrtoint ptr %apptag52.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %apptag52.i, align 4
  %appmask.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 11
  %66 = ptrtoint ptr %appmask.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %appmask.i, align 2
  %68 = call i16 @llvm.bswap.i16(i16 %67) #10
  %appmask53.i = getelementptr inbounds %struct.nvme_rw_command, ptr %c.i, i32 0, i32 13
  %69 = ptrtoint ptr %appmask53.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %appmask53.i, align 2
  %queue.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %70 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %queue.i, align 4
  %addr.i = getelementptr inbounds %struct.nvme_user_io, ptr %io.i, i32 0, i32 6
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %addr.i, align 8
  %conv54.i = trunc i64 %73 to i32
  %74 = inttoptr i32 %conv54.i to ptr
  %conv58.i = trunc i64 %47 to i32
  %call59.i = call fastcc i32 @nvme_submit_user_cmd(ptr noundef %71, ptr noundef nonnull %c.i, ptr noundef %74, i32 noundef %length.0.i, ptr noundef %metadata.084.i, i32 noundef %meta_len.1.i, i32 noundef %conv58.i, ptr noundef null, i32 noundef 0) #10
  br label %nvme_submit_io.exit

nvme_submit_io.exit:                              ; preds = %if.end40.i, %if.then31.i.nvme_submit_io.exit_crit_edge, %if.then9.i.nvme_submit_io.exit_crit_edge, %if.end3.i.nvme_submit_io.exit_crit_edge, %if.end.i.nvme_submit_io.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call59.i, %if.end40.i ], [ -22, %if.end.i.nvme_submit_io.exit_crit_edge ], [ -22, %if.end3.i.nvme_submit_io.exit_crit_edge ], [ -22, %if.then9.i.nvme_submit_io.exit_crit_edge ], [ -22, %if.then31.i.nvme_submit_io.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io.i) #10
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl5 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %75 = ptrtoint ptr %ctrl5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctrl5, align 8
  %call6 = tail call fastcc i32 @nvme_user_cmd64(ptr noundef %76, ptr noundef %ns, ptr noundef %argp)
  br label %return

return:                                           ; preds = %sw.bb4, %nvme_submit_io.exit, %sw.bb1, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb4 ], [ %retval.0.i, %nvme_submit_io.exit ], [ %call, %sw.bb1 ], [ %4, %do.end ], [ -25, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_ns_head_chr_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -908
  %5 = inttoptr i32 %arg to ptr
  %srcu = getelementptr i8, ptr %4, i32 -900
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %srcu) #10
  %dep_map.i = getelementptr i8, ptr %4, i32 -104
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #10
  %call2 = tail call ptr @nvme_find_path(ptr noundef %add.ptr) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc zeroext i1 @is_ctrl_ioctl(i32 noundef %cmd)
  br i1 %call3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @nvme_ns_head_ctrl_ioctl(ptr noundef nonnull %call2, i32 noundef %cmd, ptr noundef %5, ptr noundef %add.ptr, i32 noundef %call.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @nvme_ns_ioctl(ptr noundef nonnull %call2, i32 noundef %cmd, ptr noundef %5)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6 ], [ -11, %entry.out_unlock_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %out_unlock.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out_unlock.srcu_read_unlock.exit_crit_edge:       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out_unlock
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !43

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #10
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out_unlock.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #10
  tail call void @__srcu_read_unlock(ptr noundef %srcu, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %if.then4
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %ret.0, %srcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_dev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1069003199, label %sw.bb
    i32 -1068478905, label %sw.bb1
    i32 -1069003197, label %sw.bb3
    i32 20036, label %do.end
    i32 20037, label %sw.bb7
    i32 20038, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @nvme_user_cmd(ptr noundef %1, ptr noundef null, ptr noundef %2)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @nvme_user_cmd64(ptr noundef %1, ptr noundef null, ptr noundef %2)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %namespaces_rwsem.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %namespaces_rwsem.i) #10
  %namespaces.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %namespaces.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %namespaces.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %namespaces.i
  br i1 %cmp.i.not.i, label %sw.bb3.out_unlock.i_crit_edge, label %if.end.i

sw.bb3.out_unlock.i_crit_edge:                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.i

if.end.i:                                         ; preds = %sw.bb3
  %prev.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %cmp.not.i = icmp eq ptr %5, %7
  %device11.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %device11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device11.i, align 8
  br i1 %cmp.not.i, label %do.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.12) #14
  br label %out_unlock.i

do.end10.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.15) #14
  %kref.i = getelementptr inbounds %struct.nvme_ns, ptr %5, i32 0, i32 7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !49

do.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end10.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end10.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  tail call void @up_read(ptr noundef %namespaces_rwsem.i) #10
  %call13.i = tail call fastcc i32 @nvme_user_cmd(ptr noundef %1, ptr noundef %5, ptr noundef %2) #10
  tail call void @nvme_put_ns(ptr noundef %5) #10
  br label %cleanup

out_unlock.i:                                     ; preds = %do.end.i, %sw.bb3.out_unlock.i_crit_edge
  %ret.0.i = phi i32 [ -22, %do.end.i ], [ -25, %sw.bb3.out_unlock.i_crit_edge ]
  tail call void @up_read(ptr noundef %namespaces_rwsem.i) #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str) #14
  %call6 = tail call i32 @nvme_reset_ctrl_sync(ptr noundef %1) #10
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %subsystem.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 60
  %14 = ptrtoint ptr %subsystem.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %subsystem.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %sw.bb7.cleanup_crit_edge, label %if.end.i19

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i19:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i = getelementptr inbounds %struct.nvme_ctrl, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %reg_write32.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %reg_write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_write32.i, align 4
  %call.i = tail call i32 %19(ptr noundef %1, i32 noundef 32, i32 noundef 1314278757) #10
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @nvme_queue_scan(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %if.end.i19, %sw.bb7.cleanup_crit_edge, %do.end, %out_unlock.i, %kref_get.exit.i, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ %call6, %do.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -25, %entry.cleanup_crit_edge ], [ %ret.0.i, %out_unlock.i ], [ %call13.i, %kref_get.exit.i ], [ %call.i, %if.end.i19 ], [ -25, %sw.bb7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_user_cmd(ptr nocapture noundef readonly %ctrl, ptr noundef readonly %ns, ptr noundef %ucmd) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_passthru_cmd, align 8
  %c = alloca %struct.nvme_command, align 8
  %result = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cmd) #10
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %result) #10
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %result, align 8, !annotation !51
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ucmd, i32 72, i32 -1226833920) #13, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 72) #10
  %3 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !45
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %ucmd, i32 noundef 72) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i57 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 72, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 72, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 72, %res.0.i.i57
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i57)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %flags = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %nsid = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nsid, align 4
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %if.end6.if.end9_crit_edge, label %land.lhs.true.i

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.end6
  %head.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %ns_id.i = getelementptr inbounds %struct.nvme_ns_head, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ns_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ns_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp.not.i = icmp eq i32 %14, %10
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %nvme_validate_passthru_nsid.exit

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

nvme_validate_passthru_nsid.exit:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %15 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i, align 8
  %17 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef %comm.i, i32 noundef %10, i32 noundef %14) #14
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.i.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  %21 = call ptr @memset(ptr %c, i32 0, i32 40)
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cmd, align 8
  %24 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %c, align 8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 1
  %flags12 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 1
  %27 = ptrtoint ptr %flags12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %flags12, align 1
  %28 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsid, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %nsid14 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 3
  %31 = ptrtoint ptr %nsid14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %nsid14, align 4
  %cdw2 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 4
  %32 = ptrtoint ptr %cdw2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cdw2, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %cdw215 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 4
  %35 = ptrtoint ptr %cdw215 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cdw215, align 8
  %cdw3 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 5
  %36 = ptrtoint ptr %cdw3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cdw3, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %arrayidx17 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx17, align 4
  %cdw10 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 10
  %40 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cdw10, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %cdw1018 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 7
  %43 = ptrtoint ptr %cdw1018 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cdw1018, align 8
  %cdw11 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 11
  %44 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cdw11, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %cdw1119 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 8
  %47 = ptrtoint ptr %cdw1119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %cdw1119, align 4
  %cdw12 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 12
  %48 = ptrtoint ptr %cdw12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cdw12, align 8
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %cdw1220 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 9
  %51 = ptrtoint ptr %cdw1220 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cdw1220, align 8
  %cdw13 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 13
  %52 = ptrtoint ptr %cdw13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cdw13, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %cdw1321 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 10
  %55 = ptrtoint ptr %cdw1321 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %cdw1321, align 4
  %cdw14 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 14
  %56 = ptrtoint ptr %cdw14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cdw14, align 8
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %cdw1422 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 11
  %59 = ptrtoint ptr %cdw1422 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %cdw1422, align 8
  %cdw15 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 15
  %60 = ptrtoint ptr %cdw15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cdw15, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %cdw1523 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 12
  %63 = ptrtoint ptr %cdw1523 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %cdw1523, align 4
  %timeout_ms = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 16
  %64 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %timeout_ms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool24.not = icmp eq i32 %65, 0
  br i1 %tobool24.not, label %if.end9.if.end28_crit_edge, label %if.else.i

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %65) #10
  br label %if.end28

if.end28:                                         ; preds = %if.else.i, %if.end9.if.end28_crit_edge
  %timeout.0 = phi i32 [ 0, %if.end9.if.end28_crit_edge ], [ %call2.i, %if.else.i ]
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %cond.in = select i1 %tobool.not.i, ptr %admin_q, ptr %queue
  %66 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %66)
  %cond = load ptr, ptr %cond.in, align 4
  %addr = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 7
  %67 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %addr, align 8
  %conv = trunc i64 %68 to i32
  %69 = inttoptr i32 %conv to ptr
  %data_len = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 9
  %70 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len, align 4
  %metadata = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 6
  %72 = ptrtoint ptr %metadata to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %metadata, align 8
  %conv31 = trunc i64 %73 to i32
  %74 = inttoptr i32 %conv31 to ptr
  %metadata_len = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %cmd, i32 0, i32 8
  %75 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %metadata_len, align 8
  %call33 = call fastcc i32 @nvme_submit_user_cmd(ptr noundef %cond, ptr noundef nonnull %c, ptr noundef %69, i32 noundef %71, ptr noundef %74, i32 noundef %76, i32 noundef 0, ptr noundef nonnull %result, i32 noundef %timeout.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp = icmp sgt i32 %call33, -1
  br i1 %cmp, label %if.then35, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then35:                                        ; preds = %if.end28
  %result36 = getelementptr inbounds %struct.nvme_passthru_cmd, ptr %ucmd, i32 0, i32 17
  %77 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %result, align 8
  %conv37 = trunc i64 %78 to i32
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 230) #10
  %79 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !45
  %and.i = and i32 %81, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %82 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %result36, i32 %conv37, i32 -1226833921) #10, !srcloc !52
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool40.not = icmp eq i32 %82, 0
  br i1 %tobool40.not, label %if.then35.if.end43_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then35.cleanup_crit_edge, %nvme_validate_passthru_nsid.exit, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end43 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %nvme_validate_passthru_nsid.exit ], [ -14, %if.then35.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %result) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_user_cmd64(ptr nocapture noundef readonly %ctrl, ptr noundef readonly %ns, ptr noundef %ucmd) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.nvme_passthru_cmd64, align 8
  %c = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cmd) #10
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #10
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ucmd, i32 80, i32 -1226833920) #13, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !43

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 80) #10
  %2 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !45
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %ucmd, i32 noundef 80) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !43

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i56 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 80, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 80, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 80, %res.0.i.i56
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i56)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %flags = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %nsid = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsid, align 4
  %tobool.not.i = icmp eq ptr %ns, null
  br i1 %tobool.not.i, label %if.end6.if.end9_crit_edge, label %land.lhs.true.i

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.end6
  %head.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %ns_id.i = getelementptr inbounds %struct.nvme_ns_head, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ns_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.not.i = icmp eq i32 %13, %9
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %nvme_validate_passthru_nsid.exit

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

nvme_validate_passthru_nsid.exit:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 17
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device.i, align 8
  %16 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %comm.i, i32 noundef %9, i32 noundef %13) #14
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.i.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  %20 = call ptr @memset(ptr %c, i32 0, i32 40)
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmd, align 8
  %23 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %c, align 8
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  %flags12 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 1
  %26 = ptrtoint ptr %flags12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %flags12, align 1
  %27 = ptrtoint ptr %nsid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nsid, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %nsid14 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 3
  %30 = ptrtoint ptr %nsid14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nsid14, align 4
  %cdw2 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 4
  %31 = ptrtoint ptr %cdw2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cdw2, align 8
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %cdw215 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 4
  %34 = ptrtoint ptr %cdw215 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cdw215, align 8
  %cdw3 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 5
  %35 = ptrtoint ptr %cdw3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cdw3, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx17 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx17, align 4
  %cdw10 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 10
  %39 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cdw10, align 8
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %cdw1018 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 7
  %42 = ptrtoint ptr %cdw1018 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cdw1018, align 8
  %cdw11 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 11
  %43 = ptrtoint ptr %cdw11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cdw11, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %cdw1119 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 8
  %46 = ptrtoint ptr %cdw1119 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %cdw1119, align 4
  %cdw12 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 12
  %47 = ptrtoint ptr %cdw12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cdw12, align 8
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %cdw1220 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 9
  %50 = ptrtoint ptr %cdw1220 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cdw1220, align 8
  %cdw13 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 13
  %51 = ptrtoint ptr %cdw13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cdw13, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %cdw1321 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 10
  %54 = ptrtoint ptr %cdw1321 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cdw1321, align 4
  %cdw14 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 14
  %55 = ptrtoint ptr %cdw14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cdw14, align 8
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %cdw1422 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 11
  %58 = ptrtoint ptr %cdw1422 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %cdw1422, align 8
  %cdw15 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 15
  %59 = ptrtoint ptr %cdw15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cdw15, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %cdw1523 = getelementptr inbounds %struct.nvme_common_command, ptr %c, i32 0, i32 12
  %62 = ptrtoint ptr %cdw1523 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %cdw1523, align 4
  %timeout_ms = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 16
  %63 = ptrtoint ptr %timeout_ms to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %timeout_ms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool24.not = icmp eq i32 %64, 0
  br i1 %tobool24.not, label %if.end9.if.end28_crit_edge, label %if.else.i

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %64) #10
  br label %if.end28

if.end28:                                         ; preds = %if.else.i, %if.end9.if.end28_crit_edge
  %timeout.0 = phi i32 [ 0, %if.end9.if.end28_crit_edge ], [ %call2.i, %if.else.i ]
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %ctrl, i32 0, i32 6
  %cond.in = select i1 %tobool.not.i, ptr %admin_q, ptr %queue
  %65 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %65)
  %cond = load ptr, ptr %cond.in, align 4
  %addr = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 7
  %66 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %addr, align 8
  %conv = trunc i64 %67 to i32
  %68 = inttoptr i32 %conv to ptr
  %data_len = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 9
  %69 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_len, align 4
  %metadata = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 6
  %71 = ptrtoint ptr %metadata to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %metadata, align 8
  %conv31 = trunc i64 %72 to i32
  %73 = inttoptr i32 %conv31 to ptr
  %metadata_len = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 8
  %74 = ptrtoint ptr %metadata_len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %metadata_len, align 8
  %result = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %cmd, i32 0, i32 18
  %call33 = call fastcc i32 @nvme_submit_user_cmd(ptr noundef %cond, ptr noundef nonnull %c, ptr noundef %68, i32 noundef %70, ptr noundef %73, i32 noundef %75, i32 noundef 0, ptr noundef %result, i32 noundef %timeout.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp = icmp sgt i32 %call33, -1
  br i1 %cmp, label %if.then35, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then35:                                        ; preds = %if.end28
  %result36 = getelementptr inbounds %struct.nvme_passthru_cmd64, ptr %ucmd, i32 0, i32 18
  %76 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %result, align 8
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 276) #10
  %78 = call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !45
  %and.i = and i32 %80, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %81 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %result36, i64 %77, i32 -1226833921) #10, !srcloc !53
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #10, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool40.not = icmp eq i32 %81, 0
  br i1 %tobool40.not, label %if.then35.if.end43_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then35.cleanup_crit_edge, %nvme_validate_passthru_nsid.exit, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end43 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %nvme_validate_passthru_nsid.exit ], [ -14, %if.then35.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_reset_ctrl_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_queue_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sed_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_submit_user_cmd(ptr noundef %q, ptr noundef %cmd, ptr noundef %ubuffer, i32 noundef %bufflen, ptr noundef %meta_buffer, i32 noundef %meta_len, i32 noundef %meta_seed, ptr noundef writeonly %result, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %1)
  %cmp.i.i100 = icmp eq i8 %1, 127
  br i1 %cmp.i.i100, label %if.then.i101, label %entry.nvme_is_write.exit_crit_edge, !prof !49

entry.nvme_is_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_is_write.exit

if.then.i101:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fctype.i = getelementptr inbounds %struct.nvmf_common_command, ptr %cmd, i32 0, i32 3
  br label %nvme_is_write.exit

nvme_is_write.exit:                               ; preds = %if.then.i101, %entry.nvme_is_write.exit_crit_edge
  %retval.0.in.in.in.i = phi ptr [ %fctype.i, %if.then.i101 ], [ %cmd, %entry.nvme_is_write.exit_crit_edge ]
  %2 = ptrtoint ptr %retval.0.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %retval.0.in.in.i = load i8, ptr %retval.0.in.in.in.i, align 4
  %retval.0.in.i = and i8 %retval.0.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in.i)
  %retval.0.i = icmp ne i8 %retval.0.in.i, 0
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 10
  %3 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queuedata, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %nvme_is_write.exit.cond.end_crit_edge, label %cond.true

nvme_is_write.exit.cond.end_crit_edge:            ; preds = %nvme_is_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %nvme_is_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %disk = getelementptr inbounds %struct.nvme_ns, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %part0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %nvme_is_write.exit.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ null, %nvme_is_write.exit.cond.end_crit_edge ]
  %call1 = tail call ptr @nvme_alloc_request(ptr noundef %q, ptr noundef %cmd, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool4.not = icmp eq i32 %timeout, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %timeout6 = getelementptr inbounds %struct.request, ptr %call1, i32 0, i32 7
  %10 = ptrtoint ptr %timeout6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %timeout, ptr %timeout6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %add.ptr.i.i = getelementptr %struct.request, ptr %call1, i32 1
  %flags = getelementptr inbounds %struct.nvme_request, ptr %add.ptr.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 2
  %13 = or i8 %12, 2
  store i8 %13, ptr %flags, align 2
  %tobool10.not = icmp eq ptr %ubuffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bufflen)
  %tobool11.not = icmp eq i32 %bufflen, 0
  %or.cond = or i1 %tobool10.not, %tobool11.not
  br i1 %or.cond, label %if.end7.if.end37_crit_edge, label %if.then12

if.end7.if.end37_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then12:                                        ; preds = %if.end7
  %call13 = tail call i32 @blk_rq_map_user(ptr noundef %q, ptr noundef %call1, ptr noundef null, ptr noundef nonnull %ubuffer, i32 noundef %bufflen, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16:                                         ; preds = %if.then12
  %bio17 = getelementptr inbounds %struct.request, ptr %call1, i32 0, i32 10
  %14 = ptrtoint ptr %bio17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bio17, align 8
  %tobool18.not = icmp eq ptr %cond, null
  br i1 %tobool18.not, label %if.end16.if.end37_crit_edge, label %if.then19

if.end16.if.end37_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then19:                                        ; preds = %if.end16
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %17, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %19, %cond
  br i1 %cmp.not.i, label %if.then19.bio_set_dev.exit_crit_edge, label %if.then.i102

if.then19.bio_set_dev.exit_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit

if.then.i102:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i = and i16 %17, -2177
  %20 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i102, %if.then19.bio_set_dev.exit_crit_edge
  %21 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %15) #10
  %tobool23.not = icmp eq ptr %meta_buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta_len)
  %tobool25.not = icmp eq i32 %meta_len, 0
  %or.cond98 = or i1 %tobool23.not, %tobool25.not
  br i1 %or.cond98, label %bio_set_dev.exit.if.end37_crit_edge, label %if.end8.i.i106

bio_set_dev.exit.if.end37_crit_edge:              ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end8.i.i106:                                   ; preds = %bio_set_dev.exit
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %meta_len, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i106.out.i_crit_edge, label %if.end.i

if.end8.i.i106.out.i_crit_edge:                   ; preds = %if.end8.i.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %if.end8.i.i106
  br i1 %retval.0.i, label %if.end8.i.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end8.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta_len)
  %cmp9.i.i.i = icmp slt i32 %meta_len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end8.i.i.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out_free_meta.i_crit_edge, label %if.then27.i.i.i, !prof !43

land.rhs16.i.i.i.out_free_meta.i_crit_edge:       ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_meta.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out_free_meta.i

if.then.i.i.i.i:                                  ; preds = %if.end8.i.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %meta_len, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #10
  %call.i.i.i108 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i108, label %if.then.i.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.then11.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %meta_buffer, i32 %meta_len, i32 -1226833920) #13, !srcloc !44
  %asmresult.i.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %meta_len) #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !33) #10
  %and.i.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !45
  %and.i.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %meta_buffer, i32 noundef %meta_len) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end5.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !43

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i.if.end5.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i.i115 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %meta_len, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge ], [ %meta_len, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %meta_len, %res.0.i.i.i115
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i115)
  br label %out_free_meta.i

if.end5.i:                                        ; preds = %if.end.i.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call ptr @bio_integrity_alloc(ptr noundef %15, i32 noundef 3264, i32 noundef 1) #10
  %cmp.i38.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call6.i to i32
  br label %out_free_meta.i

if.end10.i:                                       ; preds = %if.end5.i
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call6.i, i32 0, i32 1
  %bi_size.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call6.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %meta_len, ptr %bi_size.i, align 4
  %conv.i = zext i32 %meta_seed to i64
  %29 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %conv.i, ptr %bip_iter.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %31, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %30, i32 %shr.i
  %and.i = and i32 %31, 3968
  %call13.i = tail call i32 @bio_integrity_add_page(ptr noundef %15, ptr noundef %add.ptr.i, i32 noundef %meta_len, i32 noundef %and.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %meta_len)
  %cmp.i109 = icmp eq i32 %call13.i, %meta_len
  br i1 %cmp.i109, label %if.end10.i.nvme_add_user_metadata.exit_crit_edge, label %if.end10.i.out_free_meta.i_crit_edge

if.end10.i.out_free_meta.i_crit_edge:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_meta.i

if.end10.i.nvme_add_user_metadata.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nvme_add_user_metadata.exit

out_free_meta.i:                                  ; preds = %if.end10.i.out_free_meta.i_crit_edge, %if.then8.i, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out_free_meta.i_crit_edge
  %ret.0.i = phi i32 [ %27, %if.then8.i ], [ -12, %if.end10.i.out_free_meta.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out_free_meta.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %out.i

out.i:                                            ; preds = %out_free_meta.i, %if.end8.i.i106.out.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %out_free_meta.i ], [ -12, %if.end8.i.i106.out.i_crit_edge ]
  %32 = inttoptr i32 %ret.1.i to ptr
  br label %nvme_add_user_metadata.exit

nvme_add_user_metadata.exit:                      ; preds = %out.i, %if.end10.i.nvme_add_user_metadata.exit_crit_edge
  %retval.0.i110 = phi ptr [ %32, %out.i ], [ %call9.i.i, %if.end10.i.nvme_add_user_metadata.exit_crit_edge ]
  %cmp.i111 = icmp ugt ptr %retval.0.i110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then30, label %if.end32

if.then30:                                        ; preds = %nvme_add_user_metadata.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %retval.0.i110 to i32
  br label %out_unmap

if.end32:                                         ; preds = %nvme_add_user_metadata.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmd_flags = getelementptr inbounds %struct.request, ptr %call1, i32 0, i32 3
  %34 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_flags, align 4
  %36 = or i32 %35, 65536
  store i32 %36, ptr %cmd_flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end32, %bio_set_dev.exit.if.end37_crit_edge, %if.end16.if.end37_crit_edge, %if.end7.if.end37_crit_edge
  %bio.0 = phi ptr [ %15, %if.end32 ], [ %15, %bio_set_dev.exit.if.end37_crit_edge ], [ null, %if.end7.if.end37_crit_edge ], [ %15, %if.end16.if.end37_crit_edge ]
  %meta.0 = phi ptr [ %retval.0.i110, %if.end32 ], [ null, %bio_set_dev.exit.if.end37_crit_edge ], [ null, %if.end7.if.end37_crit_edge ], [ null, %if.end16.if.end37_crit_edge ]
  %call38 = tail call i32 @nvme_execute_passthru_rq(ptr noundef %call1) #10
  %tobool39.not = icmp eq ptr %result, null
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %result42 = getelementptr %struct.request, ptr %call1, i32 1, i32 2
  %37 = ptrtoint ptr %result42 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %result42, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %40 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %result, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %meta.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool46.not = icmp ne i32 %call38, 0
  %or.cond99 = select i1 %tobool44.not, i1 true, i1 %tobool46.not
  %brmerge = select i1 %or.cond99, i1 true, i1 %retval.0.i
  %call38.mux = select i1 %or.cond99, i32 %call38, i32 0
  br i1 %brmerge, label %if.end43.if.end54_crit_edge, label %if.end8.i.i

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end8.i.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta_len)
  %cmp9.i.i = icmp slt i32 %meta_len, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !43

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %meta.0, i32 noundef %meta_len, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %41 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %meta_buffer, i32 %meta_len, i32 -1226833920) #13, !srcloc !54
  %asmresult.i.i = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %meta.0, i32 noundef %meta_len) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %meta_buffer, ptr noundef nonnull %meta.0, i32 noundef %meta_len) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %meta_len, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %meta_len, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %meta_len, %if.then27.i.i ], [ %meta_len, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool51.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool51.not, i32 0, i32 -14
  br label %if.end54

if.end54:                                         ; preds = %copy_to_user.exit, %if.end43.if.end54_crit_edge
  %ret.0 = phi i32 [ %call38.mux, %if.end43.if.end54_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef %meta.0) #10
  br label %out_unmap

out_unmap:                                        ; preds = %if.end54, %if.then30
  %bio.1 = phi ptr [ %15, %if.then30 ], [ %bio.0, %if.end54 ]
  %ret.1 = phi i32 [ %33, %if.then30 ], [ %ret.0, %if.end54 ]
  %tobool55.not = icmp eq ptr %bio.1, null
  br i1 %tobool55.not, label %out_unmap.out_crit_edge, label %if.then56

out_unmap.out_crit_edge:                          ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then56:                                        ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #12
  %call57 = tail call i32 @blk_rq_unmap_user(ptr noundef nonnull %bio.1) #10
  br label %out

out:                                              ; preds = %if.then56, %out_unmap.out_crit_edge, %if.then12.out_crit_edge
  %ret.2 = phi i32 [ %call13, %if.then12.out_crit_edge ], [ %ret.1, %if.then56 ], [ %ret.1, %out_unmap.out_crit_edge ]
  tail call void @blk_mq_free_request(ptr noundef %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %ret.2, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvme_alloc_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_execute_passthru_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_integrity_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_put_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/ioctl.c", i32 487, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvme_dev_ioctl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvme_dev_ioctl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvme/host/ioctl.c", i32 180, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvme_validate_passthru_nsid._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvme_validate_passthru_nsid._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvme/host/ioctl.c", i32 453, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nvme_dev_user_cmd._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvme_dev_user_cmd._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nvme/host/ioctl.c", i32 459, i32 2}
!31 = !{ptr @nvme_dev_user_cmd._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @nvme_dev_user_cmd._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2150577487, i64 2150577512}
!45 = !{i64 3073042}
!46 = !{i64 3073239}
!47 = !{i64 2150558472}
!48 = !{i64 2148446233, i64 2148446265, i64 2148446294, i64 2148446328, i64 2148446359, i64 2148446382}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{i8 0, i8 2}
!51 = !{!"auto-init"}
!52 = !{i64 2155737288, i64 2155737568, i64 2155737902, i64 2155738236}
!53 = !{i64 2155749062, i64 2155749342, i64 2155749676, i64 2155750010}
!54 = !{i64 2150578168, i64 2150578193}
