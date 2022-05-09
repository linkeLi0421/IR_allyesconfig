; ModuleID = '/llk/IR_all_yes/drivers/scsi/sg.c_pt.bc'
source_filename = "../drivers/scsi/sg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.sg_device = type { ptr, %struct.wait_queue_head, %struct.mutex, i32, i32, %struct.list_head, %struct.rwlock_t, %struct.atomic_t, i8, i32, i8, [32 x i8], ptr, %struct.kref }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sg_fd = type { %struct.list_head, ptr, %struct.wait_queue_head, %struct.rwlock_t, %struct.mutex, i32, i32, %struct.sg_scatter_hold, %struct.list_head, ptr, [16 x %struct.sg_request], i8, i8, i8, i8, i8, i8, %struct.kref, %struct.execute_work }
%struct.sg_scatter_hold = type { i16, i32, i32, ptr, i32, i8, i8 }
%struct.sg_request = type { %struct.list_head, ptr, %struct.sg_scatter_hold, %struct.sg_io_hdr, [96 x i8], i8, i8, i8, i8, ptr, ptr, %struct.execute_work }
%struct.sg_io_hdr = type { i32, i32, i8, i8, i16, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i16, i16, i32, i32, i32 }
%struct.execute_work = type { %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sg_header = type { i32, i32, i32, i32, i32, [16 x i8] }
%struct.sg_scsi_id = type { i32, i32, i32, i32, i32, i16, i16, [2 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.sg_req_info = type { i8, i8, i8, i8, i32, ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.81 = type { ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.rq_map_data = type { ptr, i32, i32, i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.67, %union.anon.68 }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.sg_proc_deviter = type { i64, i32 }

@__param_str_scatter_elem_sz = internal constant [19 x i8] c"sg.scatter_elem_sz\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@scatter_elem_sz = internal global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@__param_scatter_elem_sz = internal constant %struct.kernel_param { ptr @__param_str_scatter_elem_sz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @scatter_elem_sz } }, section "__param", align 4
@__UNIQUE_ID_scatter_elem_sztype291 = internal constant [32 x i8] c"sg.parmtype=scatter_elem_sz:int\00", section ".modinfo", align 1
@__param_str_def_reserved_size = internal constant [21 x i8] c"sg.def_reserved_size\00", align 1
@def_reserved_size = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_def_reserved_size = internal constant %struct.kernel_param { ptr @__param_str_def_reserved_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @def_reserved_size } }, section "__param", align 4
@__UNIQUE_ID_def_reserved_sizetype292 = internal constant [34 x i8] c"sg.parmtype=def_reserved_size:int\00", section ".modinfo", align 1
@__param_str_allow_dio = internal constant [13 x i8] c"sg.allow_dio\00", align 1
@sg_allow_dio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_allow_dio = internal constant %struct.kernel_param { ptr @__param_str_allow_dio, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @sg_allow_dio } }, section "__param", align 4
@__UNIQUE_ID_allow_diotype293 = internal constant [26 x i8] c"sg.parmtype=allow_dio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [26 x i8] c"sg.author=Douglas Gilbert\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [40 x i8] c"sg.description=SCSI generic (sg) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [24 x i8] c"sg.file=drivers/scsi/sg\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [15 x i8] c"sg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version298 = internal constant [18 x i8] c"sg.version=3.5.36\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sg\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.5.36\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias299 = internal constant [25 x i8] c"sg.alias=char-major-21-*\00", section ".modinfo", align 1
@__UNIQUE_ID_scatter_elem_sz300 = internal constant [93 x i8] c"sg.parm=scatter_elem_sz:scatter gather element size (default: max(SG_SCATTER_SZ, PAGE_SIZE))\00", section ".modinfo", align 1
@__UNIQUE_ID_def_reserved_size301 = internal constant [62 x i8] c"sg.parm=def_reserved_size:size of buffer reserved for each fd\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_dio302 = internal constant [59 x i8] c"sg.parm=allow_dio:allow direct I/O (default: 0 (disallow))\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scsi/sg\00", [24 x i8] zeroinitializer }, align 32
@sg_interface = internal global { %struct.class_interface, [44 x i8] } { %struct.class_interface { %struct.list_head zeroinitializer, ptr null, ptr @sg_add_device, ptr @sg_remove_device }, [44 x i8] zeroinitializer }, align 32
@sg_sysfs_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sg_sysfs_valid = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sg_index_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.90, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_sg__305_2632_init_sg6 = internal global ptr @init_sg, section ".initcall6.init", align 4
@__exitcall_exit_sg = internal global ptr @exit_sg, section ".exitcall.exit", align 4
@hdr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sg_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: cdev_alloc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sg_add_device\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/scsi/sg.c\00", [46 x i8] zeroinitializer }, align 32
@sg_add_device._entry_ptr = internal global ptr @sg_add_device._entry, section ".printk_index", align 4
@sg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @sg_read, ptr @sg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sg_poll, ptr @sg_ioctl, ptr null, ptr @sg_mmap, i32 0, ptr @sg_open, ptr null, ptr @sg_release, ptr null, ptr @sg_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sg_add_device._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: sg_alloc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@sg_add_device._entry_ptr.9 = internal global ptr @sg_add_device._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sg_add_device._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: device_create failed\0A\00", [36 x i8] zeroinitializer }, align 32
@sg_add_device._entry_ptr.13 = internal global ptr @sg_add_device._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"generic\00", [24 x i8] zeroinitializer }, align 32
@sg_add_device._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 1542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: unable to make symlink 'generic' back to sg%d\0A\00", [43 x i8] zeroinitializer }, align 32
@sg_add_device._entry_ptr.17 = internal global ptr @sg_add_device._entry.15, section ".printk_index", align 4
@sg_add_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: sg_sys Invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@sg_add_device._entry_ptr.20 = internal global ptr @sg_add_device._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Attached scsi generic sg%d type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sg_index_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__func__.sg_read = private unnamed_addr constant [8 x i8] c"sg_read\00", align 1
@scsi_logging_level = external dso_local local_unnamed_addr global i32, align 4
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sg_read: count=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@sg_check_file_access.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sg_check_file_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013%s: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sg_check_file_access\00", [43 x i8] zeroinitializer }, align 32
@sg_check_file_access._entry_ptr = internal global ptr @sg_check_file_access._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sg_read_oxfer: num_read_xfer=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sg_finish_rem_req: res_used=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sg_unlink_reserve: req->k_use_sg=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sg_remove_scat: k_use_sg=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sg_remove_scat: k=%d, pg=0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.sg_write = private unnamed_addr constant [9 x i8] c"sg_write\00", align 1
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sg_write: count=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sg_write: queue full\0A\00", [42 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sg_write:   scsi opcode=0x%02x, cmd_size=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@sg_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@sg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.sg_write, ptr @.str.6, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [137 x i8], [55 x i8] } { [137 x i8] c"\014sg_write: data in/out %d/%d bytes for SCSI command 0x%x-- guessing data in;\0A   program %s not setting count and/or reply_len properly\0A\00", [55 x i8] zeroinitializer }, align 32
@sg_write._entry_ptr = internal global ptr @sg_write._entry, section ".printk_index", align 4
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sg_new_write: queue full\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sg_common_write: start_req err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sg_start_req: dxfer_len=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sg_link_reserve: size=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sg_link_reserve: BAD size\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sg_build_indirect: buff_size=%d, blk_size=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@scatter_elem_sz_prev = internal global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sg_build_indirect: k=%d, num=%d, ret_sz=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sg_build_indirect: k_use_sg=%d, rem_sz=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@sg_rq_end_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: device detaching\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sg_rq_end_io\00", [19 x i8] zeroinitializer }, align 32
@sg_rq_end_io._entry_ptr = internal global ptr @sg_rq_end_io._entry, section ".printk_index", align 4
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sg_cmd_done: pack_id=%d, res=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@sg_rq_end_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&srp->ew.work)\00", [63 x i8] zeroinitializer }, align 32
@sg_remove_sfp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&sfp->ew.work)\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sg_remove_sfp:    bufflen=%d, k_use_sg=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sg_remove_sfp: sfp=0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sg_device_destroy\0A\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sg_poll: res=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sg_ioctl: cmd=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sg_build_reserve: req_size=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sg_mmap starting, vm_start=%p, len=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@sg_mmap_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sg_vma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sg_vma_fault: offset=%lu, scatg=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sg_open: flags=0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sg_add_sfp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sfp->read_wait\00", [16 x i8] zeroinitializer }, align 32
@sg_add_sfp.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sfp->rq_list_lock\00", [45 x i8] zeroinitializer }, align 32
@sg_add_sfp.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sfp->f_mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sg_add_sfp: sfp=0x%p\0A\00", [42 x i8] zeroinitializer }, align 32
@sg_big_buff = internal global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sg_add_sfp: bufflen=%d, k_use_sg=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sg_release\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sg_fasync: mode=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: kmalloc Sg_device failure\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.sg_alloc = private unnamed_addr constant [9 x i8] c"sg_alloc\00", align 1
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Unable to attach sg device type=%d, minor number exceeds %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: idr allocation Sg_device failure: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sg_alloc: dev=%d \0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sg%d\00", [27 x i8] zeroinitializer }, align 32
@sg_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sdp->open_rel_lock\00", [44 x i8] zeroinitializer }, align 32
@sg_alloc.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sdp->open_wait\00", [16 x i8] zeroinitializer }, align 32
@sg_alloc.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sdp->sfd_lock\00", [17 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sg_index_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__func__.sg_remove_device = private unnamed_addr constant [17 x i8] c"sg_remove_device\00", align 1
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sg_index_idr.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@init_sg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_generic\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"allow_dio\00", [22 x i8] zeroinitializer }, align 32
@adio_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @sg_proc_single_open_adio, ptr @seq_read, ptr null, ptr @sg_proc_write_adio, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@debug_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @sg_proc_seq_show_debug }, [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"def_reserved_size\00", [46 x i8] zeroinitializer }, align 32
@dressz_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @sg_proc_single_open_dressz, ptr @seq_read, ptr null, ptr @sg_proc_write_dressz, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_hdr\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@dev_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @sg_proc_seq_show_dev }, [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_strs\00", [20 x i8] zeroinitializer }, align 32
@devstrs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dev_seq_start, ptr @dev_seq_stop, ptr @dev_seq_next, ptr @sg_proc_seq_show_devstrs }, [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"max_active_device=%d  def_reserved_size=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" >>> device=%s \00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"detaching pending close \00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d:%d:%d:%llu   em=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" sg_tablesize=%d excl=%d open_cnt=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"   FD(%d): timeout=%dms bufflen=%d (res)sgat=%d low_dma=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"   cmd_q=%d f_packid=%d k_orphan=%d closed=0\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"     mmap>> \00", [19 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"     rb>> \00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"     dio>> \00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"     \00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rcv:\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fin:\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"act:\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" id=%d blen=%d\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" dur=%d\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" t_o/elap=%d/%d\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ms sgat=%d op=0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"     No requests active\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"host\09chan\09id\09lun\09type\09opens\09qdepth\09busy\09online\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"-1\09-1\09-1\09-1\09-1\09-1\09-1\09-1\09-1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d\09%d\09%d\09%llu\09%d\09%d\09%d\09%d\09%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%8.8s\09%16.16s\09%4.4s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<no active device>\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d\09%s [%s]\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20140603\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@sg_sysctls = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.126, ptr @sg_big_buff, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sg-big-buff\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.127 = internal global [35 x i64] [i64 33, i64 32, i64 1, i64 4711, i64 4724, i64 4725, i64 4726, i64 8705, i64 8706, i64 8707, i64 8709, i64 8816, i64 8817, i64 8818, i64 8821, i64 8822, i64 8825, i64 8826, i64 8827, i64 8828, i64 8829, i64 8830, i64 8831, i64 8834, i64 8835, i64 8836, i64 8837, i64 8838, i64 8839, i64 8840, i64 8841, i64 21378, i64 21381, i64 21382, i64 3225948787]
@__sancov_gen_cov_switch_values.128 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 253, i64 254, i64 255]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 7, i64 1, i64 17]
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"scatter_elem_sz\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 90, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"def_reserved_size\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 87, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"sg_allow_dio\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 88, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1629, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1711, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"sg_interface\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 102, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"sg_sysfs_class\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1432, i32 22 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"sg_sysfs_valid\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"sg_index_idr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1651, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1508, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [8 x i8] c"sg_fops\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1418, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1516, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1532, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1534, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1539, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1541, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1544, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1546, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [14 x i8] c"sg_index_lock\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 462, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 223, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 230, i32 6 }
@___asan_gen_.237 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 214, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 174, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1997, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1858, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2078, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1971, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1978, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 622, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 646, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 660, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 702, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 732, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 798, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 809, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1739, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2050, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2069, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1904, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"scatter_elem_sz_prev\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 91, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1943, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1950, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1341, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1347, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1413, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2255, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2228, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2235, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1580, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1204, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 929, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2029, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1276, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"sg_mmap_vm_ops\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1260, i32 42 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1238, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1160, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 300, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2172, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2173, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2176, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2191, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [12 x i8] c"sg_big_buff\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 80, i32 12 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2199, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 390, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1217, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1447, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1458, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1463, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1471, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1473, i32 21 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1475, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1477, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1479, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 36, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 99, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1602, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 98, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1686, i32 26 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2375, i32 14 }
@___asan_gen_.461 = private unnamed_addr constant [14 x i8] c"adio_proc_ops\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2318, i32 30 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2376, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [14 x i8] c"debug_seq_ops\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2359, i32 36 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2377, i32 14 }
@___asan_gen_.473 = private unnamed_addr constant [16 x i8] c"dressz_proc_ops\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2329, i32 30 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2378, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2379, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [12 x i8] c"dev_seq_ops\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2343, i32 36 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2380, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [16 x i8] c"devstrs_seq_ops\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2351, i32 36 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2388, i32 16 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2599, i32 17 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2608, i32 17 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2610, i32 16 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2614, i32 18 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2620, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2543, i32 17 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2548, i32 17 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2557, i32 11 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2559, i32 11 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2562, i32 11 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2564, i32 11 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2570, i32 27 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2570, i32 36 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2571, i32 9 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2572, i32 18 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2575, i32 19 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2578, i32 19 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2583, i32 18 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2587, i32 16 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2447, i32 14 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2495, i32 15 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2498, i32 17 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2521, i32 17 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2524, i32 15 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 2440, i32 16 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 63, i32 32 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1655, i32 25 }
@___asan_gen_.575 = private unnamed_addr constant [11 x i8] c"sg_sysctls\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1640, i32 25 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.579 = private constant [21 x i8] c"../drivers/scsi/sg.c\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.579, i32 1642, i32 15 }
@llvm.compiler.used = appending global [178 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_allow_dio302, ptr @__UNIQUE_ID_allow_diotype293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_def_reserved_size301, ptr @__UNIQUE_ID_def_reserved_sizetype292, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_scatter_elem_sz300, ptr @__UNIQUE_ID_scatter_elem_sztype291, ptr @__UNIQUE_ID_version298, ptr @__exitcall_exit_sg, ptr @__initcall__kmod_sg__305_2632_init_sg6, ptr @__modver_attr, ptr @__param_allow_dio, ptr @__param_def_reserved_size, ptr @__param_scatter_elem_sz, ptr @exit_sg, ptr @sg_add_device._entry, ptr @sg_add_device._entry.11, ptr @sg_add_device._entry.15, ptr @sg_add_device._entry.18, ptr @sg_add_device._entry.7, ptr @sg_add_device._entry_ptr, ptr @sg_add_device._entry_ptr.13, ptr @sg_add_device._entry_ptr.17, ptr @sg_add_device._entry_ptr.20, ptr @sg_add_device._entry_ptr.9, ptr @sg_check_file_access._entry, ptr @sg_check_file_access._entry_ptr, ptr @sg_rq_end_io._entry, ptr @sg_rq_end_io._entry_ptr, ptr @sg_write._entry, ptr @sg_write._entry_ptr, ptr @scatter_elem_sz, ptr @def_reserved_size, ptr @sg_allow_dio, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sg_interface, ptr @sg_sysfs_class, ptr @sg_sysfs_valid, ptr @sg_index_idr, ptr @hdr, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sg_fops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @sg_index_lock, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sg_write._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @scatter_elem_sz_prev, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @sg_rq_end_io.__key, ptr @.str.53, ptr @sg_remove_sfp.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @sg_mmap_vm_ops, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @sg_add_sfp.__key, ptr @.str.65, ptr @sg_add_sfp.__key.66, ptr @.str.67, ptr @sg_add_sfp.__key.68, ptr @.str.69, ptr @.str.70, ptr @sg_big_buff, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @sg_alloc.__key, ptr @.str.80, ptr @sg_alloc.__key.81, ptr @.str.82, ptr @sg_alloc.__key.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @init_sg.__key, ptr @.str.91, ptr @.str.92, ptr @adio_proc_ops, ptr @.str.93, ptr @debug_seq_ops, ptr @.str.94, ptr @dressz_proc_ops, ptr @.str.95, ptr @.str.96, ptr @dev_seq_ops, ptr @.str.97, ptr @devstrs_seq_ops, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @sg_sysctls, ptr @.str.126], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scatter_elem_sz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_reserved_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_allow_dio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_interface to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_sysfs_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_sysfs_valid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_index_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_device._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_device._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_device._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_index_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_check_file_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 137, i32 192, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scatter_elem_sz_prev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_rq_end_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_rq_end_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_remove_sfp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_mmap_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_sfp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_sfp.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_add_sfp.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_big_buff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_alloc.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_alloc.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adio_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dressz_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devstrs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_sysctls to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_sg() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load ptr, ptr @hdr, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.unregister_sg_sysctls.exit_crit_edge, label %if.then.i

entry.unregister_sg_sysctls.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unregister_sg_sysctls.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_sysctl_table(ptr noundef nonnull %0) #14
  br label %unregister_sg_sysctls.exit

unregister_sg_sysctls.exit:                       ; preds = %if.then.i, %entry.unregister_sg_sysctls.exit_crit_edge
  %call = tail call i32 @remove_proc_subtree(ptr noundef nonnull @.str.3, ptr noundef null) #14
  tail call void @class_interface_unregister(ptr noundef nonnull @sg_interface) #14
  %1 = load ptr, ptr @sg_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %1) #14
  store i1 false, ptr @sg_sysfs_valid, align 4
  tail call void @unregister_chrdev_region(i32 noundef 22020096, i32 noundef 32768) #14
  tail call void @idr_destroy(ptr noundef nonnull @sg_index_idr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_proc_subtree(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sg() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @scatter_elem_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %0)
  %cmp = icmp ult i32 %0, 4096
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store i32 4096, ptr @scatter_elem_sz, align 4
  store i32 4096, ptr @scatter_elem_sz_prev, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @def_reserved_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp sgt i32 %1, -1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %1, ptr @sg_big_buff, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load i32, ptr @sg_big_buff, align 4
  store i32 %2, ptr @def_reserved_size, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %call = tail call i32 @register_chrdev_region(i32 noundef 22020096, i32 noundef 32768, ptr noundef nonnull @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %call6 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @init_sg.__key) #14
  store ptr %call6, ptr @sg_sysfs_class, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call6 to i32
  br label %err_out

if.end10:                                         ; preds = %if.end5
  store i1 true, ptr @sg_sysfs_valid, align 4
  %call11 = tail call i32 @scsi_register_interface(ptr noundef nonnull @sg_interface) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %call.i = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then13.cleanup_crit_edge, label %if.end.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call ptr @proc_create(ptr noundef nonnull @.str.92, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @adio_proc_ops) #14
  %call2.i = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.93, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @debug_seq_ops, i32 noundef 0, ptr noundef null) #14
  %call3.i = tail call ptr @proc_create(ptr noundef nonnull @.str.94, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @dressz_proc_ops) #14
  %call4.i = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.95, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @sg_proc_seq_show_devhdr, ptr noundef null) #14
  %call5.i = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.96, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @dev_seq_ops, i32 noundef 0, ptr noundef null) #14
  %call6.i = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.97, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @devstrs_seq_ops, i32 noundef 0, ptr noundef null) #14
  %call7.i = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef nonnull %call.i, ptr noundef nonnull @sg_proc_seq_show_version, ptr noundef null) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %4 = load ptr, ptr @sg_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %4) #14
  %5 = load ptr, ptr @hdr, align 4
  %tobool.not.i19 = icmp eq ptr %5, null
  br i1 %tobool.not.i19, label %if.then.i, label %if.end15.err_out_crit_edge

if.end15.err_out_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %call.i20 = tail call ptr @register_sysctl(ptr noundef nonnull @.str.125, ptr noundef nonnull @sg_sysctls) #14
  store ptr %call.i20, ptr @hdr, align 4
  br label %err_out

err_out:                                          ; preds = %if.then.i, %if.end15.err_out_crit_edge, %if.then8
  %rc.0 = phi i32 [ %3, %if.then8 ], [ %call11, %if.end15.err_out_crit_edge ], [ %call11, %if.then.i ]
  tail call void @unregister_chrdev_region(i32 noundef 22020096, i32 noundef 32768) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end.i, %if.then13.cleanup_crit_edge, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_out ], [ %call, %if.end3.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_add_device(ptr nocapture noundef %cl_dev, ptr nocapture noundef readnone %cl_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -408
  %call = tail call ptr @cdev_alloc() #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %out, label %if.end

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.cdev, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %owner, align 4
  %ops = getelementptr inbounds %struct.cdev, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sg_fops, ptr %ops, align 4
  %request_queue.i = getelementptr i8, ptr %1, i32 -404
  %4 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_queue.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 264) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sg_alloc.exit.thread, label %if.end.i

sg_alloc.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.74, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__.sg_alloc) #14
  br label %do.end8

if.end.i:                                         ; preds = %if.end
  tail call void @idr_preload(i32 noundef 3264) #14
  %call2.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %call3.i = tail call i32 @idr_alloc(ptr noundef nonnull @sg_index_idr, ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i32 noundef 32768, i32 noundef 2048) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call3.i)
  %cmp7.i = icmp eq i32 %call3.i, -28
  br i1 %cmp7.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  %type.i = getelementptr i8, ptr %1, i32 -252
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 4
  %conv10.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.74, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.76, i32 noundef %conv10.i, i32 noundef 32767) #14
  br label %do.body37.i

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.74, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.sg_alloc, i32 noundef %call3.i) #14
  br label %do.body37.i

if.end12.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %9 = load i32, ptr @scsi_logging_level, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp14.not.i = icmp eq i32 %10, 0
  br i1 %cmp14.not.i, label %if.end12.i.do.end24.i_crit_edge, label %do.body19.i, !prof !337

if.end12.i.do.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i

do.body19.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef %call3.i) #14
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.body19.i, %if.end12.i.do.end24.i_crit_edge
  %name.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 11
  %call25.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.79, i32 noundef %call3.i) #14
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %call7.i.i.i, align 8
  %open_rel_lock.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %open_rel_lock.i, ptr noundef nonnull @.str.80, ptr noundef nonnull @sg_alloc.__key) #14
  %sfds.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %sfds.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sfds.i, ptr %sfds.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sfds.i, ptr %prev.i.i, align 8
  %open_wait.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %open_wait.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @sg_alloc.__key.81) #14
  %detaching.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %detaching.i, i32 noundef 4) #14
  %14 = ptrtoint ptr %detaching.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %detaching.i, align 8
  %sfd_lock.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__rwlock_init(ptr noundef %sfd_lock.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @sg_alloc.__key.83) #14
  %max_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 21
  %15 = ptrtoint ptr %max_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_segments.i.i, align 4
  %conv36.i = zext i16 %16 to i32
  %sg_tablesize.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv36.i, ptr %sg_tablesize.i, align 4
  %index.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %index.i, align 8
  %d_ref.i = getelementptr inbounds %struct.sg_device, ptr %call7.i.i.i, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref.i, i32 noundef 4) #14
  %19 = ptrtoint ptr %d_ref.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %d_ref.i, align 4
  br label %do.body37.i

do.body37.i:                                      ; preds = %do.end24.i, %if.else.i, %if.then9.i
  %error.0.i = phi i32 [ -19, %if.then9.i ], [ %call3.i, %if.else.i ], [ 0, %do.end24.i ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call2.i) #14
  %20 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %25, ptrtoint (ptr @radix_tree_preloads to i32)
  %26 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %26) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !338
  %27 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool45.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool45.not.i, label %do.body37.i.sg_alloc.exit_crit_edge, label %if.then46.i

do.body37.i.sg_alloc.exit_crit_edge:              ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_alloc.exit

if.then46.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  %31 = inttoptr i32 %error.0.i to ptr
  br label %sg_alloc.exit

sg_alloc.exit:                                    ; preds = %if.then46.i, %do.body37.i.sg_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.then46.i ], [ %call7.i.i.i, %do.body37.i.sg_alloc.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sg_alloc.exit.do.end8_crit_edge, label %if.end12

sg_alloc.exit.do.end8_crit_edge:                  ; preds = %sg_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.end8:                                          ; preds = %sg_alloc.exit.do.end8_crit_edge, %sg_alloc.exit.thread
  %retval.0.i105 = phi ptr [ inttoptr (i32 -12 to ptr), %sg_alloc.exit.thread ], [ %retval.0.i, %sg_alloc.exit.do.end8_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #18
  %32 = ptrtoint ptr %retval.0.i105 to i32
  br label %if.then68

if.end12:                                         ; preds = %sg_alloc.exit
  %index = getelementptr inbounds %struct.sg_device, ptr %retval.0.i, i32 0, i32 4
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index, align 4
  %or = or i32 %34, 22020096
  %call13 = tail call i32 @cdev_add(ptr noundef nonnull %call, i32 noundef %or, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body51_crit_edge

if.end12.do.body51_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body51

if.end16:                                         ; preds = %if.end12
  %cdev17 = getelementptr inbounds %struct.sg_device, ptr %retval.0.i, i32 0, i32 12
  %35 = ptrtoint ptr %cdev17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %cdev17, align 4
  %.b = load i1, ptr @sg_sysfs_valid, align 4
  br i1 %.b, label %if.then19, label %do.end46

if.then19:                                        ; preds = %if.end16
  %36 = load ptr, ptr @sg_sysfs_class, align 4
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %or22 = or i32 %40, 22020096
  %name = getelementptr inbounds %struct.sg_device, ptr %retval.0.i, i32 0, i32 11
  %call23 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %36, ptr noundef %38, i32 noundef %or22, ptr noundef %retval.0.i, ptr noundef nonnull @.str.10, ptr noundef %name) #14
  %cmp.i101 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then19
  %call34 = tail call i32 @sysfs_create_link(ptr noundef %1, ptr noundef %call23, ptr noundef nonnull @.str.14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.if.end49_crit_edge, label %do.end39

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %42) #18
  br label %if.end49

cleanup:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5) #18
  %43 = ptrtoint ptr %call23 to i32
  br label %do.body51

do.end46:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5) #18
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %do.end39, %if.end32.if.end49_crit_edge
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index, align 4
  %type = getelementptr i8, ptr %1, i32 -252
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %type, align 4
  %conv = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.21, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef %45, i32 noundef %conv) #14
  %driver_data.i = getelementptr inbounds %struct.device, ptr %cl_dev, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i, ptr %driver_data.i, align 4
  br label %cleanup70

do.body51:                                        ; preds = %cleanup, %if.end12.do.body51_crit_edge
  %error.1 = phi i32 [ %call13, %if.end12.do.body51_crit_edge ], [ %43, %cleanup ]
  %call54 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  %call58 = tail call ptr @idr_remove(ptr noundef nonnull @sg_index_idr, i32 noundef %50) #14
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call54) #14
  tail call void @kfree(ptr noundef %retval.0.i) #14
  br label %if.then68

out:                                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18
  br label %cleanup70

if.then68:                                        ; preds = %do.body51, %do.end8
  %error.2.ph = phi i32 [ %error.1, %do.body51 ], [ %32, %do.end8 ]
  tail call void @cdev_del(ptr noundef nonnull %call) #14
  br label %cleanup70

cleanup70:                                        ; preds = %if.then68, %out, %if.end49
  %retval.0 = phi i32 [ 0, %if.end49 ], [ %error.2.ph, %if.then68 ], [ -12, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_remove_device(ptr nocapture noundef readonly %cl_dev, ptr nocapture noundef readnone %cl_intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl_dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %cl_dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %detaching = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %detaching, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !339
  tail call void @llvm.prefetch.p0(ptr %detaching, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %detaching, ptr %detaching, i32 1, ptr elementtype(i32) %detaching) #14, !srcloc !340
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !341
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %5 = load i32, ptr @scsi_logging_level, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.not = icmp eq i32 %6, 0
  br i1 %cmp4.not, label %do.body.do.body12_crit_edge, label %do.body8, !prof !337

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %8, ptr noundef %name, ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.sg_remove_device) #14
  br label %do.body12

do.body12:                                        ; preds = %do.body8, %do.body.do.body12_crit_edge
  %sfd_lock = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 6
  %call15 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %sfd_lock) #14
  %sfds = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %sfds to i32
  call void @__asan_load4_noabort(i32 %9)
  %sfp.062 = load ptr, ptr %sfds, align 4
  %cmp22.not63 = icmp eq ptr %sfp.062, %sfds
  br i1 %cmp22.not63, label %do.body12.for.end_crit_edge, label %do.body12.for.body_crit_edge

do.body12.for.body_crit_edge:                     ; preds = %do.body12
  br label %for.body

do.body12.for.end_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body12.for.body_crit_edge
  %sfp.064 = phi ptr [ %sfp.0, %for.body.for.body_crit_edge ], [ %sfp.062, %do.body12.for.body_crit_edge ]
  %read_wait = getelementptr inbounds %struct.sg_fd, ptr %sfp.064, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  %async_qp = getelementptr inbounds %struct.sg_fd, ptr %sfp.064, i32 0, i32 9
  tail call void @kill_fasync(ptr noundef %async_qp, i32 noundef 29, i32 noundef 6) #14
  %10 = ptrtoint ptr %sfp.064 to i32
  call void @__asan_load4_noabort(i32 %10)
  %sfp.0 = load ptr, ptr %sfp.064, align 4
  %cmp22.not = icmp eq ptr %sfp.0, %sfds
  br i1 %cmp22.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body12.for.end_crit_edge
  %open_wait = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #14
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %sfd_lock, i32 noundef %call15) #14
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef nonnull @.str.14) #14
  %11 = load ptr, ptr @sg_sysfs_class, align 4
  %index = getelementptr %struct.sg_device, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %or = or i32 %13, 22020096
  tail call void @device_destroy(ptr noundef %11, i32 noundef %or) #14
  %cdev = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev, align 4
  tail call void @cdev_del(ptr noundef %15) #14
  %16 = ptrtoint ptr %cdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cdev, align 4
  %d_ref = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %d_ref, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %d_ref, ptr %d_ref, i32 1, ptr elementtype(i32) %d_ref) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %d_ref, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call2.i = tail call ptr @idr_remove(ptr noundef nonnull @sg_index_idr, i32 noundef %19) #14
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %20 = load i32, ptr @scsi_logging_level, align 4
  %21 = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not.i = icmp eq i32 %21, 0
  br i1 %cmp12.not.i, label %if.then.i.sg_device_destroy.exit_crit_edge, label %do.body15.i, !prof !337

if.then.i.sg_device_destroy.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_device_destroy.exit

do.body15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %name.i = getelementptr %struct.sg_device, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %23, ptr noundef %name.i, ptr noundef nonnull @.str.57) #14
  br label %sg_device_destroy.exit

sg_device_destroy.exit:                           ; preds = %do.body15.i, %if.then.i.sg_device_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %cleanup

cleanup:                                          ; preds = %sg_device_destroy.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cdev_alloc() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_cred.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 12
  %0 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_cred.i, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98
  %6 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_cred.i, align 4
  %cmp.not.i = icmp eq ptr %1, %7
  br i1 %cmp.not.i, label %if.end, label %land.end.i

land.end.i:                                       ; preds = %entry
  %.b24.i = load i1, ptr @sg_check_file_access.__already_done, align 1
  br i1 %.b24.i, label %land.end.i.cleanup172_crit_edge, label %if.then5.i, !prof !337

land.end.i.cleanup172_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sg_check_file_access.__already_done, align 1
  %call.i.i256 = tail call i32 @__task_pid_nr_ns(ptr noundef %5, i32 noundef 1, ptr noundef null) #14
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.sg_read, i32 noundef %call.i.i256, ptr noundef %comm.i) #18
  br label %cleanup172

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.cleanup172_crit_edge, label %lor.lhs.false

if.end.cleanup172_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

lor.lhs.false:                                    ; preds = %if.end
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parentdp, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup172_crit_edge, label %do.body

lor.lhs.false.cleanup172_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %14 = load i32, ptr @scsi_logging_level, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %do.body.do.end12_crit_edge, label %do.body9, !prof !337

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %13, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %17, ptr noundef %name, ptr noundef nonnull @.str.24, i32 noundef %count) #14
  br label %do.end12

do.end12:                                         ; preds = %do.body9, %do.body.do.end12_crit_edge
  %force_packid = getelementptr inbounds %struct.sg_fd, ptr %11, i32 0, i32 11
  %18 = ptrtoint ptr %force_packid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %force_packid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %count)
  %cmp.i = icmp ugt i32 %count, 35
  %or.cond = and i1 %cmp.i, %tobool13.not
  br i1 %or.cond, label %if.then.i, label %do.end12.if.end19_crit_edge

do.end12.if.end19_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then.i:                                        ; preds = %do.end12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 416) #14
  %reply_len1.i = getelementptr inbounds %struct.sg_header, ptr %buf, i32 0, i32 1
  %20 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !345
  %and.i.i257 = and i32 %22, -13
  %or.i.i = or i32 %and.i.i257, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %23 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %reply_len1.i, i32 -1226833921) #14, !srcloc !348
  %asmresult.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup172_crit_edge

if.then.i.cleanup172_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end.i:                                         ; preds = %if.then.i
  %asmresult2.i = extractvalue { i32, i32 } %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult2.i)
  %cmp5.i = icmp sgt i32 %asmresult2.i, -1
  br i1 %cmp5.i, label %if.then6.i, label %if.end20.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 420) #14
  %pack_id10.i = getelementptr inbounds %struct.sg_header, ptr %buf, i32 0, i32 2
  %24 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i65.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i65.i to ptr
  %cpu_domain.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66.i) #5, !srcloc !345
  %and.i67.i = and i32 %26, -13
  %or.i68.i = or i32 %and.i67.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %27 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pack_id10.i, i32 -1226833921) #14, !srcloc !349
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %if.end16

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %count)
  %cmp38.i = icmp ugt i32 %count, 63
  br i1 %cmp38.i, label %if.then39.i, label %if.end20.i.if.end19_crit_edge

if.end20.i.if.end19_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then39.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 432) #14
  %pack_id44.i = getelementptr inbounds %struct.sg_io_hdr, ptr %buf, i32 0, i32 11
  %28 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i69.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i69.i to ptr
  %cpu_domain.i.i70.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70.i) #5, !srcloc !345
  %and.i71.i = and i32 %30, -13
  %or.i72.i = or i32 %and.i71.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pack_id44.i, i32 -1226833921) #14, !srcloc !350
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %if.end16

if.end16:                                         ; preds = %if.then39.i, %if.then6.i
  %.pn = phi { i32, i32 } [ %31, %if.then39.i ], [ %27, %if.then6.i ]
  %retval1.0 = extractvalue { i32, i32 } %.pn, 0
  %req_pack_id.1 = extractvalue { i32, i32 } %.pn, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool17.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.end16.cleanup172_crit_edge

if.end16.cleanup172_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end19:                                         ; preds = %if.end16.if.end19_crit_edge, %if.end20.i.if.end19_crit_edge, %do.end12.if.end19_crit_edge
  %req_pack_id.1271 = phi i32 [ %req_pack_id.1, %if.end16.if.end19_crit_edge ], [ -1, %do.end12.if.end19_crit_edge ], [ -1, %if.end20.i.if.end19_crit_edge ]
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %11, i32 0, i32 3
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i) #14
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %11, i32 0, i32 8
  %32 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %resp.053.i = load ptr, ptr %rq_list.i, align 4
  %cmp4.not54.i = icmp eq ptr %resp.053.i, %rq_list.i
  br i1 %cmp4.not54.i, label %if.end19.sg_get_rq_mark.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end19.sg_get_rq_mark.exit.thread_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_rq_mark.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %req_pack_id.1271)
  %cmp10.i = icmp eq i32 %req_pack_id.1271, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %resp.055.i = phi ptr [ %resp.053.i, %for.body.lr.ph.i ], [ %resp.0.i, %for.inc.i.for.body.i_crit_edge ]
  %done.i = getelementptr inbounds %struct.sg_request, ptr %resp.055.i, i32 0, i32 8
  %33 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp7.i = icmp eq i8 %34, 1
  br i1 %cmp7.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sg_io_owned.i = getelementptr inbounds %struct.sg_request, ptr %resp.055.i, i32 0, i32 7
  %35 = ptrtoint ptr %sg_io_owned.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sg_io_owned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i259 = icmp eq i8 %36, 0
  br i1 %tobool.not.i259, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  br i1 %cmp10.i, label %land.lhs.true9.i.sg_get_rq_mark.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true9.i.sg_get_rq_mark.exit_crit_edge:   ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_rq_mark.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true9.i
  %pack_id12.i = getelementptr inbounds %struct.sg_request, ptr %resp.055.i, i32 0, i32 3, i32 11
  %37 = ptrtoint ptr %pack_id12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pack_id12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %req_pack_id.1271)
  %cmp13.i = icmp eq i32 %38, %req_pack_id.1271
  br i1 %cmp13.i, label %lor.lhs.false.i.sg_get_rq_mark.exit_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i.sg_get_rq_mark.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_rq_mark.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %resp.055.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %resp.0.i = load ptr, ptr %resp.055.i, align 4
  %cmp4.not.i = icmp eq ptr %resp.0.i, %rq_list.i
  br i1 %cmp4.not.i, label %for.inc.i.sg_get_rq_mark.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.sg_get_rq_mark.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_rq_mark.exit.thread

sg_get_rq_mark.exit.thread:                       ; preds = %for.inc.i.sg_get_rq_mark.exit.thread_crit_edge, %if.end19.sg_get_rq_mark.exit.thread_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call.i) #14
  br label %if.then22

sg_get_rq_mark.exit:                              ; preds = %lor.lhs.false.i.sg_get_rq_mark.exit_crit_edge, %land.lhs.true9.i.sg_get_rq_mark.exit_crit_edge
  %done.i.le = getelementptr inbounds %struct.sg_request, ptr %resp.055.i, i32 0, i32 8
  %40 = ptrtoint ptr %done.i.le to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %done.i.le, align 1
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call.i) #14
  %tobool21.not = icmp eq ptr %resp.055.i, null
  br i1 %tobool21.not, label %sg_get_rq_mark.exit.if.then22_crit_edge, label %sg_get_rq_mark.exit.if.end68_crit_edge

sg_get_rq_mark.exit.if.end68_crit_edge:           ; preds = %sg_get_rq_mark.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

sg_get_rq_mark.exit.if.then22_crit_edge:          ; preds = %sg_get_rq_mark.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %sg_get_rq_mark.exit.if.then22_crit_edge, %sg_get_rq_mark.exit.thread
  %detaching = getelementptr inbounds %struct.sg_device, ptr %13, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %41 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool24.not = icmp eq i32 %42, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.cleanup172_crit_edge

if.then22.cleanup172_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end26:                                         ; preds = %if.then22
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %43 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f_flags, align 4
  %and27 = and i32 %44, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup172_crit_edge

if.end26.cleanup172_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end30:                                         ; preds = %if.end26
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 478) #14
  %call.i.i252 = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %45 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool39.not = icmp eq i32 %46, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end30.if.end58_crit_edge

if.end30.if.end58_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

lor.lhs.false40:                                  ; preds = %if.end30
  %call41 = tail call fastcc ptr @sg_get_rq_mark(ptr noundef nonnull %11, i32 noundef %req_pack_id.1271)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then43, label %lor.lhs.false40.if.end58_crit_edge

lor.lhs.false40.if.end58_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then43:                                        ; preds = %lor.lhs.false40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %read_wait = getelementptr inbounds %struct.sg_fd, ptr %11, i32 0, i32 2
  %call45301 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call.i.i253302 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %48 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool48.not303 = icmp eq i32 %49, 0
  br i1 %tobool48.not303, label %if.then43.lor.lhs.false49_crit_edge, label %if.then43.for.end_crit_edge

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then43.lor.lhs.false49_crit_edge:              ; preds = %if.then43
  br label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %cleanup.lor.lhs.false49_crit_edge, %if.then43.lor.lhs.false49_crit_edge
  %call45304 = phi i32 [ %call45, %cleanup.lor.lhs.false49_crit_edge ], [ %call45301, %if.then43.lor.lhs.false49_crit_edge ]
  %call50 = call fastcc ptr @sg_get_rq_mark(ptr noundef nonnull %11, i32 noundef %req_pack_id.1271)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false49.for.end_crit_edge

lor.lhs.false49.for.end_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end53:                                         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45304)
  %tobool54.not = icmp eq i32 %call45304, 0
  br i1 %tobool54.not, label %cleanup, label %if.end53.__out_crit_edge

if.end53.__out_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end53
  call void @schedule() #14
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call.i.i253 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %50 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %detaching, align 4
  %tobool48.not = icmp eq i32 %51, 0
  br i1 %tobool48.not, label %cleanup.lor.lhs.false49_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.lor.lhs.false49_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false49

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false49.for.end_crit_edge, %if.then43.for.end_crit_edge
  %srp.2.ph = phi ptr [ null, %if.then43.for.end_crit_edge ], [ %call50, %lor.lhs.false49.for.end_crit_edge ], [ null, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end53.__out_crit_edge
  %__ret44.1287 = phi i32 [ 0, %for.end ], [ %call45304, %if.end53.__out_crit_edge ]
  %srp.2285 = phi ptr [ %srp.2.ph, %for.end ], [ null, %if.end53.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end58

if.end58:                                         ; preds = %__out, %lor.lhs.false40.if.end58_crit_edge, %if.end30.if.end58_crit_edge
  %srp.3 = phi ptr [ null, %if.end30.if.end58_crit_edge ], [ %call41, %lor.lhs.false40.if.end58_crit_edge ], [ %srp.2285, %__out ]
  %__ret.0 = phi i32 [ 0, %if.end30.if.end58_crit_edge ], [ 0, %lor.lhs.false40.if.end58_crit_edge ], [ %__ret44.1287, %__out ]
  %call.i.i254 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %52 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool62.not = icmp eq i32 %53, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.cleanup172_crit_edge

if.end58.cleanup172_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool65.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.end64.cleanup172_crit_edge

if.end64.cleanup172_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.end68:                                         ; preds = %if.end64.if.end68_crit_edge, %sg_get_rq_mark.exit.if.end68_crit_edge
  %srp.4 = phi ptr [ %resp.055.i, %sg_get_rq_mark.exit.if.end68_crit_edge ], [ %srp.3, %if.end64.if.end68_crit_edge ]
  %header = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3
  %54 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp69.not = icmp eq i32 %55, 0
  br i1 %cmp69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %call71 = call fastcc i32 @sg_new_read(ptr noundef nonnull %11, ptr noundef %buf, i32 noundef %count, ptr noundef %srp.4)
  br label %cleanup172

if.end72:                                         ; preds = %if.end68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 36) #17
  %tobool75.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool75.not, label %if.end72.cleanup172_crit_edge, label %if.end77

if.end72.cleanup172_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup172

if.end77:                                         ; preds = %if.end72
  %timeout = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 9
  %57 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timeout, align 4
  %reply_len = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %reply_len, align 4
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %call7.i.i, align 8
  %pack_id = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 11
  %61 = ptrtoint ptr %pack_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pack_id, align 4
  %pack_id79 = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %pack_id79 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %pack_id79, align 8
  %cmd_opcode = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 2, i32 6
  %64 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cmd_opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %65)
  %cmp80 = icmp ugt i8 %65, -65
  br i1 %cmp80, label %land.rhs, label %if.end77.land.end_crit_edge

if.end77.land.end_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_len = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cmd_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %67)
  %cmp83 = icmp eq i8 %67, 12
  %phi.bo = select i1 %cmp83, i32 -2147483648, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end77.land.end_crit_edge
  %68 = phi i32 [ 0, %if.end77.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %twelve_byte = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %twelve_byte to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load = load i32, ptr %twelve_byte, align 8
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, %68
  store i32 %bf.set, ptr %twelve_byte, align 8
  %masked_status = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 14
  %70 = ptrtoint ptr %masked_status to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %masked_status, align 1
  %72 = and i8 %71, 31
  %bf.value87 = zext i8 %72 to i32
  %bf.shl88 = shl nuw nsw i32 %bf.value87, 26
  %bf.clear89 = and i32 %bf.set, -2080374785
  %bf.set90 = or i32 %bf.shl88, %bf.clear89
  store i32 %bf.set90, ptr %twelve_byte, align 8
  %host_status = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 17
  %73 = ptrtoint ptr %host_status to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %host_status, align 4
  %75 = and i16 %74, 255
  %bf.value94 = zext i16 %75 to i32
  %bf.shl95 = shl nuw nsw i32 %bf.value94, 18
  %bf.clear96 = and i32 %bf.set90, -66846721
  %bf.set97 = or i32 %bf.clear96, %bf.shl95
  store i32 %bf.set97, ptr %twelve_byte, align 8
  %driver_status = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 3, i32 18
  %76 = ptrtoint ptr %driver_status to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %driver_status, align 2
  %78 = and i16 %77, 255
  %bf.value101 = zext i16 %78 to i32
  %bf.shl102 = shl nuw nsw i32 %bf.value101, 10
  %bf.clear103 = and i32 %bf.set97, -261121
  %bf.set104 = or i32 %bf.clear103, %bf.shl102
  store i32 %bf.set104, ptr %twelve_byte, align 8
  %79 = load i8, ptr %masked_status, align 1
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool108.not = icmp eq i8 %80, 0
  br i1 %tobool108.not, label %lor.lhs.false109, label %land.end.if.then114_crit_edge

land.end.if.then114_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

lor.lhs.false109:                                 ; preds = %land.end
  %sense_b = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 4
  %81 = ptrtoint ptr %sense_b to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sense_b, align 4
  %83 = and i8 %82, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %83)
  %cmp112 = icmp eq i8 %83, 112
  br i1 %cmp112, label %lor.lhs.false109.if.then114_crit_edge, label %lor.lhs.false109.if.end122_crit_edge

lor.lhs.false109.if.end122_crit_edge:             ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

lor.lhs.false109.if.then114_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

if.then114:                                       ; preds = %lor.lhs.false109.if.then114_crit_edge, %land.end.if.then114_crit_edge
  %bf.set118 = or i32 %bf.clear103, 8192
  %84 = ptrtoint ptr %twelve_byte to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %bf.set118, ptr %twelve_byte, align 8
  %sense_buffer = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 5
  %sense_b120 = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 4
  %85 = call ptr @memcpy(ptr %sense_buffer, ptr %sense_b120, i32 16)
  br label %if.end122

if.end122:                                        ; preds = %if.then114, %lor.lhs.false109.if.end122_crit_edge
  %86 = ptrtoint ptr %host_status to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %host_status, align 4
  %88 = zext i16 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i16 %87, label %sw.default [
    i16 0, label %if.end122.sw.epilog_crit_edge
    i16 10, label %if.end122.sw.epilog_crit_edge320
    i16 11, label %if.end122.sw.epilog_crit_edge321
    i16 1, label %if.end122.sw.bb125_crit_edge
    i16 2, label %if.end122.sw.bb125_crit_edge322
    i16 3, label %if.end122.sw.bb125_crit_edge323
    i16 4, label %if.end122.sw.bb127_crit_edge
    i16 5, label %if.end122.sw.bb127_crit_edge324
    i16 6, label %if.end122.sw.bb127_crit_edge325
    i16 8, label %if.end122.sw.bb127_crit_edge326
    i16 9, label %if.end122.sw.bb127_crit_edge327
    i16 7, label %sw.bb129
  ]

if.end122.sw.bb127_crit_edge327:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127

if.end122.sw.bb127_crit_edge326:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127

if.end122.sw.bb127_crit_edge325:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127

if.end122.sw.bb127_crit_edge324:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127

if.end122.sw.bb127_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127

if.end122.sw.bb125_crit_edge323:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb125

if.end122.sw.bb125_crit_edge322:                  ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb125

if.end122.sw.bb125_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb125

if.end122.sw.epilog_crit_edge321:                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end122.sw.epilog_crit_edge320:                 ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end122.sw.epilog_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.end122.sw.bb125_crit_edge, %if.end122.sw.bb125_crit_edge322, %if.end122.sw.bb125_crit_edge323
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end122.sw.bb127_crit_edge, %if.end122.sw.bb127_crit_edge324, %if.end122.sw.bb127_crit_edge325, %if.end122.sw.bb127_crit_edge326, %if.end122.sw.bb127_crit_edge327
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end122
  %sense_b130 = getelementptr inbounds %struct.sg_request, ptr %srp.4, i32 0, i32 4
  %89 = ptrtoint ptr %sense_b130 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %sense_b130, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp133 = icmp eq i8 %90, 0
  br i1 %cmp133, label %land.rhs135, label %sw.bb129.sw.epilog_crit_edge

sw.bb129.sw.epilog_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.rhs135:                                      ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %masked_status to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %masked_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp138 = icmp eq i8 %92, 0
  %phi.sel = select i1 %cmp138, i32 0, i32 5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.rhs135, %sw.bb129.sw.epilog_crit_edge, %sw.bb127, %sw.bb125, %if.end122.sw.epilog_crit_edge, %if.end122.sw.epilog_crit_edge320, %if.end122.sw.epilog_crit_edge321
  %.sink = phi i32 [ 5, %sw.default ], [ 5, %sw.bb127 ], [ 16, %sw.bb125 ], [ 0, %if.end122.sw.epilog_crit_edge ], [ 0, %if.end122.sw.epilog_crit_edge320 ], [ 0, %if.end122.sw.epilog_crit_edge321 ], [ 5, %sw.bb129.sw.epilog_crit_edge ], [ %phi.sel, %land.rhs135 ]
  %result143 = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 3
  %93 = ptrtoint ptr %result143 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink, ptr %result143, align 4
  br i1 %cmp.i, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %sw.epilog
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i255 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i255, label %if.end8.i.i.free_old_hdr_crit_edge, label %if.end.i.i

if.end8.i.i.free_old_hdr_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_old_hdr

if.end.i.i:                                       ; preds = %if.end8.i.i
  %94 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 36, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i = extractvalue { i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.free_old_hdr_crit_edge

if.end.i.i.free_old_hdr_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_old_hdr

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef 36) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call7.i.i, i32 noundef 36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool148.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool148.not, label %if.end150, label %copy_to_user.exit.free_old_hdr_crit_edge

copy_to_user.exit.free_old_hdr_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_old_hdr

if.end150:                                        ; preds = %copy_to_user.exit
  %95 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reply_len, align 4
  %97 = call i32 @llvm.umin.i32(i32 %96, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %97)
  %cmp157 = icmp ugt i32 %97, 36
  br i1 %cmp157, label %if.then159, label %if.end150.if.end169_crit_edge

if.end150.if.end169_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169

if.then159:                                       ; preds = %if.end150
  %add.ptr = getelementptr i8, ptr %buf, i32 36
  %sub = add i32 %97, -36
  %call160 = call fastcc i32 @sg_read_oxfer(ptr noundef %srp.4, ptr noundef %add.ptr, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then159.if.end169_crit_edge, label %if.then159.free_old_hdr_crit_edge

if.then159.free_old_hdr_crit_edge:                ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_old_hdr

if.then159.if.end169_crit_edge:                   ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end169

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %result165 = getelementptr inbounds %struct.sg_header, ptr %call7.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %result165 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %result165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp166 = icmp eq i32 %99, 0
  %cond168 = select i1 %cmp166, i32 0, i32 -5
  br label %if.end169

if.end169:                                        ; preds = %if.else, %if.then159.if.end169_crit_edge, %if.end150.if.end169_crit_edge
  %count.addr.1 = phi i32 [ %97, %if.then159.if.end169_crit_edge ], [ %97, %if.end150.if.end169_crit_edge ], [ %cond168, %if.else ]
  %call170 = call fastcc i32 @sg_finish_rem_req(ptr noundef %srp.4)
  call fastcc void @sg_remove_request(ptr noundef nonnull %11, ptr noundef %srp.4)
  br label %free_old_hdr

free_old_hdr:                                     ; preds = %if.end169, %if.then159.free_old_hdr_crit_edge, %copy_to_user.exit.free_old_hdr_crit_edge, %if.end.i.i.free_old_hdr_crit_edge, %if.end8.i.i.free_old_hdr_crit_edge
  %retval1.1 = phi i32 [ %count.addr.1, %if.end169 ], [ -14, %copy_to_user.exit.free_old_hdr_crit_edge ], [ -14, %if.then159.free_old_hdr_crit_edge ], [ -14, %if.end8.i.i.free_old_hdr_crit_edge ], [ -14, %if.end.i.i.free_old_hdr_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup172

cleanup172:                                       ; preds = %free_old_hdr, %if.end72.cleanup172_crit_edge, %if.then70, %if.end64.cleanup172_crit_edge, %if.end58.cleanup172_crit_edge, %if.end26.cleanup172_crit_edge, %if.then22.cleanup172_crit_edge, %if.end16.cleanup172_crit_edge, %if.then.i.cleanup172_crit_edge, %lor.lhs.false.cleanup172_crit_edge, %if.end.cleanup172_crit_edge, %if.then5.i, %land.end.i.cleanup172_crit_edge
  %retval.0 = phi i32 [ %call71, %if.then70 ], [ %retval1.1, %free_old_hdr ], [ -6, %lor.lhs.false.cleanup172_crit_edge ], [ -6, %if.end.cleanup172_crit_edge ], [ %retval1.0, %if.end16.cleanup172_crit_edge ], [ -19, %if.then22.cleanup172_crit_edge ], [ -11, %if.end26.cleanup172_crit_edge ], [ -19, %if.end58.cleanup172_crit_edge ], [ %__ret.0, %if.end64.cleanup172_crit_edge ], [ -12, %if.end72.cleanup172_crit_edge ], [ -1, %if.then5.i ], [ -1, %land.end.i.cleanup172_crit_edge ], [ -14, %if.then.i.cleanup172_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %old_hdr = alloca %struct.sg_header, align 4
  %cmnd = alloca [252 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %old_hdr) #14
  %0 = call ptr @memset(ptr %old_hdr, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %cmnd) #14
  %1 = call ptr @memset(ptr %cmnd, i32 255, i32 252)
  %f_cred.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred.i, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %real_cred.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 98
  %8 = ptrtoint ptr %real_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %real_cred.i, align 4
  %cmp.not.i = icmp eq ptr %3, %9
  br i1 %cmp.not.i, label %if.end, label %land.end.i

land.end.i:                                       ; preds = %entry
  %.b24.i = load i1, ptr @sg_check_file_access.__already_done, align 1
  br i1 %.b24.i, label %land.end.i.cleanup_crit_edge, label %if.then5.i, !prof !337

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sg_check_file_access.__already_done, align 1
  %call.i.i297 = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 1, ptr noundef null) #14
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.sg_write, i32 noundef %call.i.i297, ptr noundef %comm.i) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parentdp, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %16 = load i32, ptr @scsi_logging_level, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %do.body.do.end12_crit_edge, label %do.body9, !prof !337

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %19, ptr noundef %name, ptr noundef nonnull @.str.35, i32 noundef %count) #14
  br label %do.end12

do.end12:                                         ; preds = %do.body9, %do.body.do.end12_crit_edge
  %detaching = getelementptr inbounds %struct.sg_device, ptr %15, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %20 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end16, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and17 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

lor.lhs.false19:                                  ; preds = %if.end16
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 4
  %call21 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false19.cleanup_crit_edge, label %lor.lhs.false19.if.end24_crit_edge

lor.lhs.false19.if.end24_crit_edge:               ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false19.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %count)
  %cmp25 = icmp ult i32 %count, 36
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end8.i.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end24
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #14
  %call.i.i273 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i273, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 36, i32 -1226833920) #19, !srcloc !352
  %asmresult.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !337

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old_hdr, i32 noundef 36) #14
  %27 = call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !345
  %and.i.i.i.i = and i32 %29, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %old_hdr, ptr noundef %buf, i32 noundef 36) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end31, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !337

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i303 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 36, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i303
  %add.ptr.i.i = getelementptr i8, ptr %old_hdr, i32 %sub.i.i
  %30 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i303)
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.i
  %reply_len = getelementptr inbounds %struct.sg_header, ptr %old_hdr, i32 0, i32 1
  %31 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reply_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp37 = icmp slt i32 %32, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = call fastcc i32 @sg_new_write(ptr noundef nonnull %13, ptr noundef %filp, ptr noundef %buf, i32 noundef %count, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %count)
  %cmp41 = icmp ult i32 %count, 42
  br i1 %cmp41, label %if.end40.cleanup_crit_edge, label %if.end43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %add.ptr = getelementptr i8, ptr %buf, i32 36
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 642) #14
  %33 = call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !345
  %and.i = and i32 %35, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %36 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #14, !srcloc !353
  %asmresult = extractvalue { i32, i32 } %36, 0
  %asmresult45 = extractvalue { i32, i32 } %36, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool47.not = icmp eq i32 %asmresult, 0
  br i1 %tobool47.not, label %if.end49, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %call50 = call fastcc ptr @sg_add_request(ptr noundef nonnull %13)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.body53, label %if.end74

do.body53:                                        ; preds = %if.end49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %37 = load i32, ptr @scsi_logging_level, align 4
  %38 = and i32 %37, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp56.not = icmp eq i32 %38, 0
  br i1 %cmp56.not, label %do.body53.cleanup_crit_edge, label %do.body65, !prof !337

do.body53.cleanup_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %15, align 4
  %name67 = getelementptr inbounds %struct.sg_device, ptr %15, i32 0, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %40, ptr noundef %name67, ptr noundef nonnull @.str.36) #14
  br label %cleanup

if.end74:                                         ; preds = %if.end49
  %f_mutex = getelementptr inbounds %struct.sg_fd, ptr %13, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #14
  %next_cmd_len = getelementptr inbounds %struct.sg_fd, ptr %13, i32 0, i32 13
  %41 = ptrtoint ptr %next_cmd_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %next_cmd_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp76.not = icmp eq i8 %42, 0
  br i1 %cmp76.not, label %if.else, label %if.then78

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %next_cmd_len to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %next_cmd_len, align 2
  br label %if.end92

if.else:                                          ; preds = %if.end74
  %conv82 = and i32 %asmresult45, 192
  %44 = lshr i32 %asmresult45, 5
  %and84 = and i32 %44, 7
  %arrayidx = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %and84
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %conv82)
  %cmp87 = icmp eq i32 %conv82, 192
  br i1 %cmp87, label %land.lhs.true, label %if.else.if.end92_crit_edge

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %twelve_byte = getelementptr inbounds %struct.sg_header, ptr %old_hdr, i32 0, i32 4
  %47 = ptrtoint ptr %twelve_byte to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load = load i32, ptr %twelve_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool89.not = icmp sgt i32 %bf.load, -1
  %spec.select = select i1 %tobool89.not, i8 %46, i8 12
  br label %if.end92

if.end92:                                         ; preds = %land.lhs.true, %if.else.if.end92_crit_edge, %if.then78
  %cmd_size.0.shrunk = phi i8 [ %42, %if.then78 ], [ %46, %if.else.if.end92_crit_edge ], [ %spec.select, %land.lhs.true ]
  %cmd_size.0 = zext i8 %cmd_size.0.shrunk to i32
  call void @mutex_unlock(ptr noundef %f_mutex) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %48 = load i32, ptr @scsi_logging_level, align 4
  %49 = and i32 %48, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %49)
  %cmp97 = icmp ugt i32 %49, 32
  br i1 %cmp97, label %do.body106, label %if.end92.do.end115_crit_edge, !prof !354

if.end92.do.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end115

do.body106:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %15, align 4
  %name108 = getelementptr inbounds %struct.sg_device, ptr %15, i32 0, i32 11
  %conv110 = and i32 %asmresult45, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %51, ptr noundef %name108, ptr noundef nonnull @.str.37, i32 noundef %conv110, i32 noundef %cmd_size.0) #14
  br label %do.end115

do.end115:                                        ; preds = %do.body106, %if.end92.do.end115_crit_edge
  %sub = sub i32 %count, %cmd_size.0
  %52 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reply_len, align 4
  %54 = call i32 @llvm.smax.i32(i32 %sub, i32 %53)
  %sub120 = add i32 %54, -36
  %sub121 = add i32 %sub, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub121)
  %cmp122 = icmp slt i32 %sub121, 0
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sg_remove_request(ptr noundef nonnull %13, ptr noundef nonnull %call50)
  br label %cleanup

if.end126:                                        ; preds = %do.end115
  %header = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3
  %55 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %header, align 4
  %cmd_len = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %cmd_len to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %cmd_size.0.shrunk, ptr %cmd_len, align 4
  %iovec_count = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %iovec_count to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %iovec_count, align 2
  %mx_sb_len = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %mx_sb_len to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %mx_sb_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub121)
  %cmp128.not = icmp eq i32 %sub121, 0
  br i1 %cmp128.not, label %if.else135, label %if.then130

if.then130:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %53)
  %cmp132 = icmp ugt i32 %53, 36
  %spec.select311 = select i1 %cmp132, i32 -4, i32 -2
  %59 = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select311, ptr %59, align 4
  %dxfer_len = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 5
  %61 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub120, ptr %dxfer_len, align 4
  %add.ptr149 = getelementptr i8, ptr %add.ptr, i32 %cmd_size.0
  br label %if.end152

if.else135:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub120)
  %cmp136 = icmp sgt i32 %sub120, 0
  %spec.select312 = select i1 %cmp136, i32 -3, i32 -1
  %62 = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select312, ptr %62, align 4
  %dxfer_len310 = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 5
  %64 = ptrtoint ptr %dxfer_len310 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub120, ptr %dxfer_len310, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else135, %if.then130
  %.sink = phi ptr [ null, %if.else135 ], [ %add.ptr149, %if.then130 ]
  %65 = phi ptr [ %62, %if.else135 ], [ %59, %if.then130 ]
  %dxferp151 = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 6
  %66 = ptrtoint ptr %dxferp151 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %.sink, ptr %dxferp151, align 4
  %sbp = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 8
  %67 = ptrtoint ptr %sbp to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %sbp, align 4
  %timeout = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 9
  %68 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %53, ptr %timeout, align 4
  %flags = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 10
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub121, ptr %flags, align 4
  %pack_id = getelementptr inbounds %struct.sg_header, ptr %old_hdr, i32 0, i32 2
  %70 = ptrtoint ptr %pack_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pack_id, align 4
  %pack_id154 = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 11
  %72 = ptrtoint ptr %pack_id154 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pack_id154, align 4
  %usr_ptr = getelementptr inbounds %struct.sg_request, ptr %call50, i32 0, i32 3, i32 12
  %73 = ptrtoint ptr %usr_ptr to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %usr_ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %cmd_size.0.shrunk)
  %cmp1.i.i275 = icmp ugt i8 %cmd_size.0.shrunk, -4
  br i1 %cmp1.i.i275, label %if.then3.i.i, label %if.then.i.i.i, !prof !354

if.then3.i.i:                                     ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.28, i32 noundef 252, i32 noundef %cmd_size.0) #14
  br label %if.then158

if.then.i.i.i:                                    ; preds = %if.end152
  call void @__check_object_size(ptr noundef nonnull %cmnd, i32 noundef %cmd_size.0, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #14
  %call.i.i278 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i278, label %if.then.i.i.i.if.end.i.i291_crit_edge, label %land.lhs.true.i.i281

if.then.i.i.i.if.end.i.i291_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i291

land.lhs.true.i.i281:                             ; preds = %if.then.i.i.i
  %74 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %cmd_size.0, i32 -1226833920) #19, !srcloc !352
  %asmresult.i.i279 = extractvalue { i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i279)
  %cmp.i6.i280 = icmp eq i32 %asmresult.i.i279, 0
  br i1 %cmp.i6.i280, label %if.then.i7.i288, label %land.lhs.true.i.i281.if.end.i.i291_crit_edge, !prof !337

land.lhs.true.i.i281.if.end.i.i291_crit_edge:     ; preds = %land.lhs.true.i.i281
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i291

if.then.i7.i288:                                  ; preds = %land.lhs.true.i.i281
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i282 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmnd, i32 noundef %cmd_size.0) #14
  %75 = call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i.i.i283 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i.i.i283 to ptr
  %cpu_domain.i.i.i.i.i284 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 4
  %77 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i284) #5, !srcloc !345
  %and.i.i.i.i285 = and i32 %77, -13
  %or.i.i.i.i286 = or i32 %and.i.i.i.i285, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i286) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %call1.i.i.i287 = call i32 @arm_copy_from_user(ptr noundef nonnull %cmnd, ptr noundef %add.ptr, i32 noundef %cmd_size.0) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %77) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %if.end.i.i291

if.end.i.i291:                                    ; preds = %if.then.i7.i288, %land.lhs.true.i.i281.if.end.i.i291_crit_edge, %if.then.i.i.i.if.end.i.i291_crit_edge
  %res.0.i.i289 = phi i32 [ %cmd_size.0, %if.then.i.i.i.if.end.i.i291_crit_edge ], [ %call1.i.i.i287, %if.then.i7.i288 ], [ %cmd_size.0, %land.lhs.true.i.i281.if.end.i.i291_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i289)
  %tobool4.not.i.i290 = icmp eq i32 %res.0.i.i289, 0
  br i1 %tobool4.not.i.i290, label %if.end160, label %if.then11.i.i294, !prof !337

if.then11.i.i294:                                 ; preds = %if.end.i.i291
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i292 = sub i32 %cmd_size.0, %res.0.i.i289
  %add.ptr.i.i293 = getelementptr i8, ptr %cmnd, i32 %sub.i.i292
  %78 = call ptr @memset(ptr %add.ptr.i.i293, i32 0, i32 %res.0.i.i289)
  br label %if.then158

if.then158:                                       ; preds = %if.then11.i.i294, %if.then3.i.i
  call fastcc void @sg_remove_request(ptr noundef nonnull %13, ptr noundef nonnull %call50)
  br label %cleanup

if.end160:                                        ; preds = %if.end.i.i291
  %79 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %80)
  %cmp162 = icmp eq i32 %80, -4
  br i1 %cmp162, label %if.then164, label %if.end160.if.end180_crit_edge

if.end160.if.end180_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

if.then164:                                       ; preds = %if.end160
  %call165 = call i32 @___ratelimit(ptr noundef nonnull @sg_write._rs, ptr noundef nonnull @__func__.sg_write) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then164.if.end180_crit_edge, label %do.end170

if.then164.if.end180_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

do.end170:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reply_len, align 4
  %sub173 = add i32 %82, -36
  %83 = ptrtoint ptr %cmnd to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cmnd, align 1
  %conv175 = zext i8 %84 to i32
  %85 = call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i298 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i298 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 101
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %sub173, i32 noundef %sub121, i32 noundef %conv175, ptr noundef %comm) #18
  br label %if.end180

if.end180:                                        ; preds = %do.end170, %if.then164.if.end180_crit_edge, %if.end160.if.end180_crit_edge
  %timeout182 = getelementptr inbounds %struct.sg_fd, ptr %13, i32 0, i32 5
  %89 = ptrtoint ptr %timeout182 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %timeout182, align 4
  %call183 = call fastcc i32 @sg_common_write(ptr noundef nonnull %13, ptr noundef nonnull %call50, ptr noundef nonnull %cmnd, i32 noundef %90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184 = icmp slt i32 %call183, 0
  %call183.count = select i1 %cmp184, i32 %call183, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then158, %if.then124, %do.body65, %do.body53.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then38, %if.then11.i.i, %if.end24.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %do.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then5.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.then38 ], [ -5, %if.then124 ], [ -14, %if.then158 ], [ %call183.count, %if.end180 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -19, %do.end12.cleanup_crit_edge ], [ -6, %lor.lhs.false19.cleanup_crit_edge ], [ -5, %if.end24.cleanup_crit_edge ], [ -5, %if.end40.cleanup_crit_edge ], [ -14, %if.end43.cleanup_crit_edge ], [ -33, %do.body65 ], [ -33, %do.body53.cleanup_crit_edge ], [ -1, %if.then5.i ], [ -1, %land.end.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %cmnd) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %old_hdr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentdp, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %read_wait = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end3.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end3.poll_wait.exit_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end3.poll_wait.exit_crit_edge
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 3
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock) #14
  %rq_list = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %srp.092 = load ptr, ptr %rq_list, align 4
  %cmp7.not93 = icmp eq ptr %srp.092, %rq_list
  br i1 %cmp7.not93, label %poll_wait.exit.do.body23_crit_edge, label %poll_wait.exit.for.body_crit_edge

poll_wait.exit.for.body_crit_edge:                ; preds = %poll_wait.exit
  br label %for.body

poll_wait.exit.do.body23_crit_edge:               ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %poll_wait.exit.for.body_crit_edge
  %srp.096 = phi ptr [ %srp.0, %if.end17.for.body_crit_edge ], [ %srp.092, %poll_wait.exit.for.body_crit_edge ]
  %res.095 = phi i32 [ %res.1, %if.end17.for.body_crit_edge ], [ 0, %poll_wait.exit.for.body_crit_edge ]
  %count.094 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ 0, %poll_wait.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.095)
  %cmp9 = icmp eq i32 %res.095, 0
  br i1 %cmp9, label %land.lhs.true, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true:                                    ; preds = %for.body
  %done = getelementptr inbounds %struct.sg_request, ptr %srp.096, i32 0, i32 8
  %7 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp12 = icmp eq i8 %8, 1
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

land.lhs.true14:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %sg_io_owned = getelementptr inbounds %struct.sg_request, ptr %srp.096, i32 0, i32 7
  %9 = ptrtoint ptr %sg_io_owned to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sg_io_owned, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool15.not, i32 65, i32 0
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true14, %land.lhs.true.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %res.1 = phi i32 [ 0, %land.lhs.true.if.end17_crit_edge ], [ %res.095, %for.body.if.end17_crit_edge ], [ %spec.select, %land.lhs.true14 ]
  %inc = add i32 %count.094, 1
  %11 = ptrtoint ptr %srp.096 to i32
  call void @__asan_load4_noabort(i32 %11)
  %srp.0 = load ptr, ptr %srp.096, align 4
  %cmp7.not = icmp eq ptr %srp.0, %rq_list
  br i1 %cmp7.not, label %if.end17.do.body23_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end17.do.body23_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

do.body23:                                        ; preds = %if.end17.do.body23_crit_edge, %poll_wait.exit.do.body23_crit_edge
  %count.0.lcssa = phi i32 [ 0, %poll_wait.exit.do.body23_crit_edge ], [ %inc, %if.end17.do.body23_crit_edge ]
  %res.0.lcssa = phi i32 [ 0, %poll_wait.exit.do.body23_crit_edge ], [ %res.1, %if.end17.do.body23_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call) #14
  %detaching = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %12 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %res.0.lcssa, 16
  br label %do.body50

if.else:                                          ; preds = %do.body23
  %cmd_q = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %cmd_q to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_q, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool35.not = icmp eq i8 %15, 0
  br i1 %tobool35.not, label %if.then36, label %if.else42

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa)
  %cmp37 = icmp eq i32 %count.0.lcssa, 0
  %or40 = or i32 %res.0.lcssa, 260
  %spec.select90 = select i1 %cmp37, i32 %or40, i32 %res.0.lcssa
  br label %do.body50

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count.0.lcssa)
  %cmp43 = icmp slt i32 %count.0.lcssa, 16
  %or46 = or i32 %res.0.lcssa, 260
  %spec.select91 = select i1 %cmp43, i32 %or46, i32 %res.0.lcssa
  br label %do.body50

do.body50:                                        ; preds = %if.else42, %if.then36, %if.then34
  %res.2 = phi i32 [ %or, %if.then34 ], [ %spec.select90, %if.then36 ], [ %spec.select91, %if.else42 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %16 = load i32, ptr @scsi_logging_level, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp51.not = icmp eq i32 %17, 0
  br i1 %cmp51.not, label %do.body50.cleanup_crit_edge, label %do.body57, !prof !337

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body57:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %19, ptr noundef %name, ptr noundef nonnull @.str.58, i32 noundef %res.2) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body57, %do.body50.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ %res.2, %do.body57 ], [ %res.2, %do.body50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd_in, i32 noundef %arg) #2 align 64 {
entry:
  %srp.i = alloca ptr, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %v.i = alloca %struct.sg_scsi_id, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parentdp, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srp.i) #14
  %5 = ptrtoint ptr %srp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %srp.i, align 4, !annotation !355
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %6 = load i32, ptr @scsi_logging_level, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.do.end4.i_crit_edge, label %do.body2.i, !prof !337

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4.i

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %name.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %9, ptr noundef %name.i, ptr noundef nonnull @.str.59, i32 noundef %cmd_in) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.body2.i, %if.end.do.end4.i_crit_edge
  %f_flags.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags.i, align 4
  %and5.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5.i)
  %cmp6.i = icmp ne i32 %and5.i, 2
  %conv.i = zext i1 %cmp6.i to i32
  %12 = zext i32 %cmd_in to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %cmd_in, label %sw.default.i [
    i32 8837, label %sw.bb.i
    i32 8705, label %sw.bb62.i
    i32 8706, label %sw.bb105.i
    i32 8825, label %do.end4.i.sg_ioctl_common.exit.thread_crit_edge
    i32 8826, label %sw.bb108.i
    i32 8822, label %sw.bb121.i
    i32 8827, label %sw.bb145.i
    i32 8828, label %do.body165.i
    i32 8829, label %do.body243.i
    i32 8831, label %sw.bb306.i
    i32 8821, label %sw.bb322.i
    i32 8818, label %sw.bb365.i
    i32 8817, label %sw.bb393.i
    i32 8816, label %sw.bb412.i
    i32 8839, label %sw.bb430.i
    i32 8840, label %sw.bb447.i
    i32 8835, label %sw.bb465.i
    i32 8834, label %sw.bb492.i
    i32 8841, label %sw.bb508.i
    i32 8838, label %sw.bb527.i
    i32 8707, label %sw.bb555.i
    i32 1, label %sw.bb578.i
    i32 8830, label %sw.bb586.i
    i32 4711, label %sw.bb603.i
    i32 -1069018509, label %sw.bb622.i
    i32 4724, label %sw.bb628.i
    i32 4725, label %sw.bb632.i
    i32 4726, label %sw.bb636.i
    i32 21378, label %do.end4.i.sw.bb640.i_crit_edge
    i32 21382, label %do.end4.i.sw.bb640.i_crit_edge41
    i32 21381, label %do.end4.i.sw.bb640.i_crit_edge42
    i32 8709, label %do.end4.i.sw.bb640.i_crit_edge43
    i32 8836, label %do.end4.i.sw.bb640.i_crit_edge44
  ]

do.end4.i.sw.bb640.i_crit_edge44:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb640.i

do.end4.i.sw.bb640.i_crit_edge43:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb640.i

do.end4.i.sw.bb640.i_crit_edge42:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb640.i

do.end4.i.sw.bb640.i_crit_edge41:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb640.i

do.end4.i.sw.bb640.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb640.i

do.end4.i.sg_ioctl_common.exit.thread_crit_edge:  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

sw.bb.i:                                          ; preds = %do.end4.i
  %detaching.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %detaching.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %detaching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %sw.bb.i.sg_ioctl_common.exit.thread_crit_edge

sw.bb.i.sg_ioctl_common.exit.thread_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end9.i:                                        ; preds = %sw.bb.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %call11.i = tail call i32 @scsi_block_when_processing_errors(ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end9.i.sg_ioctl_common.exit.thread_crit_edge, label %if.end14.i

if.end9.i.sg_ioctl_common.exit.thread_crit_edge:  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = call fastcc i32 @sg_new_write(ptr noundef nonnull %2, ptr noundef %filp, ptr noundef %0, i32 noundef 64, i32 noundef %conv.i, i32 noundef 1, ptr noundef nonnull %srp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.sg_ioctl_common.exit_crit_edge, label %if.end19.i

if.end14.i.sg_ioctl_common.exit_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end19.i:                                       ; preds = %if.end14.i
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 944) #14
  %17 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srp.i, align 4
  %rq_list_lock.i.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 3
  %call.i.i = call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock.i.i) #14
  %done.i.i = getelementptr inbounds %struct.sg_request, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %done.i.i, align 1
  call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock.i.i, i32 noundef %call.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not.i = icmp eq i8 %20, 0
  br i1 %tobool27.not.i, label %lor.lhs.false.i, label %if.end19.i.if.end46.i_crit_edge

if.end19.i.if.end46.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %call.i.i822.i = call zeroext i1 @__kasan_check_read(ptr noundef %detaching.i, i32 noundef 4) #14
  %21 = ptrtoint ptr %detaching.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %detaching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool30.not.i = icmp eq i32 %22, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %lor.lhs.false.i.if.end46.i_crit_edge

lor.lhs.false.i.if.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46.i

if.then31.i:                                      ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  %23 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #14
  %read_wait.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 2
  %call33951.i = call i32 @prepare_to_wait_event(ptr noundef %read_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #14
  %24 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %srp.i, align 4
  %call.i916952.i = call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock.i.i) #14
  %done.i917953.i = getelementptr inbounds %struct.sg_request, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %done.i917953.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %done.i917953.i, align 1
  call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock.i.i, i32 noundef %call.i916952.i) #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool35.not954.i = icmp eq i8 %27, 0
  br i1 %tobool35.not954.i, label %if.then31.i.lor.lhs.false36.i_crit_edge, label %if.then31.i.for.end.i_crit_edge

if.then31.i.for.end.i_crit_edge:                  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.then31.i.lor.lhs.false36.i_crit_edge:          ; preds = %if.then31.i
  br label %lor.lhs.false36.i

lor.lhs.false36.i:                                ; preds = %cleanup.i.lor.lhs.false36.i_crit_edge, %if.then31.i.lor.lhs.false36.i_crit_edge
  %call33955.i = phi i32 [ %call33.i, %cleanup.i.lor.lhs.false36.i_crit_edge ], [ %call33951.i, %if.then31.i.lor.lhs.false36.i_crit_edge ]
  %call.i.i823.i = call zeroext i1 @__kasan_check_read(ptr noundef %detaching.i, i32 noundef 4) #14
  %28 = ptrtoint ptr %detaching.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %detaching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool39.not.i = icmp eq i32 %29, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %lor.lhs.false36.i.for.end.i_crit_edge

lor.lhs.false36.i.for.end.i_crit_edge:            ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end41.i:                                       ; preds = %lor.lhs.false36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33955.i)
  %tobool42.not.i = icmp eq i32 %call33955.i, 0
  br i1 %tobool42.not.i, label %cleanup.i, label %if.end41.i.__out.i_crit_edge

if.end41.i.__out.i_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out.i

cleanup.i:                                        ; preds = %if.end41.i
  call void @schedule() #14
  %call33.i = call i32 @prepare_to_wait_event(ptr noundef %read_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #14
  %30 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srp.i, align 4
  %call.i916.i = call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock.i.i) #14
  %done.i917.i = getelementptr inbounds %struct.sg_request, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %done.i917.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %done.i917.i, align 1
  call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock.i.i, i32 noundef %call.i916.i) #14
  %tobool35.not.i = icmp eq i8 %33, 0
  br i1 %tobool35.not.i, label %cleanup.i.lor.lhs.false36.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

cleanup.i.lor.lhs.false36.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false36.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %lor.lhs.false36.i.for.end.i_crit_edge, %if.then31.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %read_wait.i, ptr noundef nonnull %__wq_entry.i) #14
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end41.i.__out.i_crit_edge
  %__ret32.1929.i = phi i32 [ 0, %for.end.i ], [ %call33955.i, %if.end41.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #14
  br label %if.end46.i

if.end46.i:                                       ; preds = %__out.i, %lor.lhs.false.i.if.end46.i_crit_edge, %if.end19.i.if.end46.i_crit_edge
  %__ret.0.i = phi i32 [ 0, %if.end19.i.if.end46.i_crit_edge ], [ 0, %lor.lhs.false.i.if.end46.i_crit_edge ], [ %__ret32.1929.i, %__out.i ]
  %call.i.i824.i = call zeroext i1 @__kasan_check_read(ptr noundef %detaching.i, i32 noundef 4) #14
  %34 = ptrtoint ptr %detaching.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %detaching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool50.not.i = icmp eq i32 %35, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end46.i.sg_ioctl_common.exit.thread_crit_edge

if.end46.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end52.i:                                       ; preds = %if.end46.i
  call void @_raw_write_lock_irq(ptr noundef %rq_list_lock.i.i) #14
  %36 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %srp.i, align 4
  %done.i = getelementptr inbounds %struct.sg_request, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not.i = icmp eq i8 %39, 0
  br i1 %tobool53.not.i, label %if.end60.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %done.i, align 1
  call void @_raw_write_unlock_irq(ptr noundef %rq_list_lock.i.i) #14
  %41 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %srp.i, align 4
  %call57.i = call fastcc i32 @sg_new_read(ptr noundef %2, ptr noundef %0, i32 noundef 64, ptr noundef %42) #14
  %43 = call i32 @llvm.smin.i32(i32 %call57.i, i32 0) #14
  br label %sg_ioctl_common.exit

if.end60.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  %orphan.i = getelementptr inbounds %struct.sg_request, ptr %37, i32 0, i32 6
  %44 = ptrtoint ptr %orphan.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %orphan.i, align 1
  call void @_raw_write_unlock_irq(ptr noundef %rq_list_lock.i.i) #14
  br label %sg_ioctl_common.exit

sw.bb62.i:                                        ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 958) #14
  %45 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !345
  %and.i.i = and i32 %47, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !356
  %asmresult.i = extractvalue { i32, i32 } %48, 0
  %asmresult65.i = extractvalue { i32, i32 } %48, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool67.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %sw.bb62.i.sg_ioctl_common.exit_crit_edge

sw.bb62.i.sg_ioctl_common.exit_crit_edge:         ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end69.i:                                       ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult65.i)
  %cmp70.i = icmp slt i32 %asmresult65.i, 0
  br i1 %cmp70.i, label %if.end69.i.sg_ioctl_common.exit.thread_crit_edge, label %if.end73.i

if.end69.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end73.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #16
  %timeout_user.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 6
  %49 = ptrtoint ptr %timeout_user.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %asmresult65.i, ptr %timeout_user.i, align 4
  %timeout.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 5
  %50 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %asmresult65.i, ptr %timeout.i, align 4
  br label %sg_ioctl_common.exit.thread

sw.bb105.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %timeout_user106.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 6
  %51 = ptrtoint ptr %timeout_user106.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %timeout_user106.i, align 4
  br label %sg_ioctl_common.exit

sw.bb108.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 981) #14
  %53 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i825.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i825.i to ptr
  %cpu_domain.i.i826.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i826.i) #5, !srcloc !345
  %and.i827.i = and i32 %55, -13
  %or.i828.i = or i32 %and.i827.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i828.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %56 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 0, i32 -1226833921) #14, !srcloc !357
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb121.i:                                       ; preds = %do.end4.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %v.i) #14
  %detaching122.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 7
  %call.i.i829.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching122.i, i32 noundef 4) #14
  %57 = ptrtoint ptr %detaching122.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %detaching122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool124.not.i = icmp eq i32 %58, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %sw.bb121.i.cleanup144.i_crit_edge

sw.bb121.i.cleanup144.i_crit_edge:                ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup144.i

if.end126.i:                                      ; preds = %sw.bb121.i
  %59 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 6
  %60 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 5
  %61 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 4
  %62 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 2
  %64 = getelementptr inbounds %struct.sg_scsi_id, ptr %v.i, i32 0, i32 1
  %65 = getelementptr inbounds i8, ptr %v.i, i32 24
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %65, align 4
  %67 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %4, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %70, i32 0, i32 17
  %71 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %host_no.i, align 4
  %73 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %v.i, align 4
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %68, i32 0, i32 17
  %74 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %channel.i, align 4
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %64, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %68, i32 0, i32 16
  %77 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id.i, align 8
  %79 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %63, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %68, i32 0, i32 18
  %80 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lun.i, align 8
  %conv133.i = trunc i64 %81 to i32
  %82 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv133.i, ptr %62, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %68, i32 0, i32 22
  %83 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %type.i, align 4
  %conv136.i = zext i8 %84 to i32
  %85 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %conv136.i, ptr %61, align 4
  %86 = load ptr, ptr %68, align 8
  %cmd_per_lun.i = getelementptr inbounds %struct.Scsi_Host, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %cmd_per_lun.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %cmd_per_lun.i, align 8
  %89 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %60, align 4
  %queue_depth.i = getelementptr inbounds %struct.scsi_device, ptr %68, i32 0, i32 9
  %90 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %queue_depth.i, align 4
  %92 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %59, align 2
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i830.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i830.i, label %if.end126.i.cleanup144.i_crit_edge, label %if.end.i.i.i

if.end126.i.cleanup144.i_crit_edge:               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup144.i

if.end.i.i.i:                                     ; preds = %if.end126.i
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i.i = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.cleanup144.i_crit_edge

if.end.i.i.i.cleanup144.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup144.i

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v.i, i32 noundef 32) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %v.i, i32 noundef 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool141.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select939.i = select i1 %tobool141.not.i, i32 0, i32 -14
  br label %cleanup144.i

cleanup144.i:                                     ; preds = %copy_to_user.exit.i, %if.end.i.i.i.cleanup144.i_crit_edge, %if.end126.i.cleanup144.i_crit_edge, %sw.bb121.i.cleanup144.i_crit_edge
  %retval.0.i = phi i32 [ -19, %sw.bb121.i.cleanup144.i_crit_edge ], [ -14, %if.end126.i.cleanup144.i_crit_edge ], [ -14, %if.end.i.i.i.cleanup144.i_crit_edge ], [ %spec.select939.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %v.i) #14
  br label %sg_ioctl_common.exit.thread

sw.bb145.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1001) #14
  %94 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i831.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i831.i to ptr
  %cpu_domain.i.i832.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 4
  %96 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i832.i) #5, !srcloc !345
  %and.i833.i = and i32 %96, -13
  %or.i834.i = or i32 %and.i833.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i834.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %97 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !358
  %asmresult155.i = extractvalue { i32, i32 } %97, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult155.i)
  %tobool158.not.i = icmp eq i32 %asmresult155.i, 0
  br i1 %tobool158.not.i, label %if.end160.i, label %sw.bb145.i.sg_ioctl_common.exit_crit_edge

sw.bb145.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end160.i:                                      ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #16
  %asmresult156.i = extractvalue { i32, i32 } %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult156.i)
  %tobool161.not.i = icmp ne i32 %asmresult156.i, 0
  %conv163.i = zext i1 %tobool161.not.i to i8
  %force_packid.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 11
  %98 = ptrtoint ptr %force_packid.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv163.i, ptr %force_packid.i, align 4
  br label %sg_ioctl_common.exit.thread

do.body165.i:                                     ; preds = %do.end4.i
  %rq_list_lock169.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 3
  %call170.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock169.i) #14
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 8
  %99 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %storemerge819948.i = load ptr, ptr %rq_list.i, align 4
  %100 = ptrtoint ptr %srp.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %storemerge819948.i, ptr %srp.i, align 4
  %cmp177.not949.i = icmp eq ptr %storemerge819948.i, %rq_list.i
  br i1 %cmp177.not949.i, label %do.body165.i.do.body218.i_crit_edge, label %do.body165.i.for.body.i_crit_edge

do.body165.i.for.body.i_crit_edge:                ; preds = %do.body165.i
  br label %for.body.i

do.body165.i.do.body218.i_crit_edge:              ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body218.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body165.i.for.body.i_crit_edge
  %storemerge819950.i = phi ptr [ %storemerge819.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge819948.i, %do.body165.i.for.body.i_crit_edge ]
  %done181.i = getelementptr inbounds %struct.sg_request, ptr %storemerge819950.i, i32 0, i32 8
  %101 = ptrtoint ptr %done181.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %done181.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp183.i = icmp eq i8 %102, 1
  br i1 %cmp183.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sg_io_owned.i = getelementptr inbounds %struct.sg_request, ptr %storemerge819950.i, i32 0, i32 7
  %103 = ptrtoint ptr %sg_io_owned.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %sg_io_owned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool185.not.i = icmp eq i8 %104, 0
  br i1 %tobool185.not.i, label %do.body187.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.body187.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock169.i, i32 noundef %call170.i) #14
  %105 = ptrtoint ptr %srp.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %srp.i, align 4
  %pack_id.i = getelementptr inbounds %struct.sg_request, ptr %106, i32 0, i32 3, i32 11
  %107 = ptrtoint ptr %pack_id.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pack_id.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1012) #14
  %109 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i835.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i835.i to ptr
  %cpu_domain.i.i836.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 4
  %111 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i836.i) #5, !srcloc !345
  %and.i837.i = and i32 %111, -13
  %or.i838.i = or i32 %and.i837.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i838.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %112 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %108, i32 -1226833921) #14, !srcloc !359
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %113 = ptrtoint ptr %storemerge819950.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %storemerge819.i = load ptr, ptr %storemerge819950.i, align 4
  %114 = ptrtoint ptr %srp.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %storemerge819.i, ptr %srp.i, align 4
  %cmp177.not.i = icmp eq ptr %storemerge819.i, %rq_list.i
  br i1 %cmp177.not.i, label %for.inc.i.do.body218.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.do.body218.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body218.i

do.body218.i:                                     ; preds = %for.inc.i.do.body218.i_crit_edge, %do.body165.i.do.body218.i_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock169.i, i32 noundef %call170.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1016) #14
  %115 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i839.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i839.i to ptr
  %cpu_domain.i.i840.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 4
  %117 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i840.i) #5, !srcloc !345
  %and.i841.i = and i32 %117, -13
  %or.i842.i = or i32 %and.i841.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i842.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %118 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 -1, i32 -1226833921) #14, !srcloc !360
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

do.body243.i:                                     ; preds = %do.end4.i
  %rq_list_lock249.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 3
  %call250.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock249.i) #14
  %rq_list254.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 8
  %119 = ptrtoint ptr %rq_list254.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %storemerge944.i = load ptr, ptr %rq_list254.i, align 4
  %cmp261.not945.i = icmp eq ptr %storemerge944.i, %rq_list254.i
  br i1 %cmp261.not945.i, label %do.body243.i.do.body282.i_crit_edge, label %do.body243.i.for.body265.i_crit_edge

do.body243.i.for.body265.i_crit_edge:             ; preds = %do.body243.i
  br label %for.body265.i

do.body243.i.do.body282.i_crit_edge:              ; preds = %do.body243.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body282.i

for.body265.i:                                    ; preds = %for.inc275.i.for.body265.i_crit_edge, %do.body243.i.for.body265.i_crit_edge
  %storemerge947.i = phi ptr [ %storemerge.i, %for.inc275.i.for.body265.i_crit_edge ], [ %storemerge944.i, %do.body243.i.for.body265.i_crit_edge ]
  %val.1946.i = phi i32 [ %val.2.i, %for.inc275.i.for.body265.i_crit_edge ], [ 0, %do.body243.i.for.body265.i_crit_edge ]
  %done266.i = getelementptr inbounds %struct.sg_request, ptr %storemerge947.i, i32 0, i32 8
  %120 = ptrtoint ptr %done266.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %done266.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %121)
  %cmp268.i = icmp eq i8 %121, 1
  br i1 %cmp268.i, label %land.lhs.true270.i, label %for.body265.i.for.inc275.i_crit_edge

for.body265.i.for.inc275.i_crit_edge:             ; preds = %for.body265.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc275.i

land.lhs.true270.i:                               ; preds = %for.body265.i
  call void @__sanitizer_cov_trace_pc() #16
  %sg_io_owned271.i = getelementptr inbounds %struct.sg_request, ptr %storemerge947.i, i32 0, i32 7
  %122 = ptrtoint ptr %sg_io_owned271.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %sg_io_owned271.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool272.not.i = icmp eq i8 %123, 0
  %inc.i = zext i1 %tobool272.not.i to i32
  %spec.select820.i = add i32 %val.1946.i, %inc.i
  br label %for.inc275.i

for.inc275.i:                                     ; preds = %land.lhs.true270.i, %for.body265.i.for.inc275.i_crit_edge
  %val.2.i = phi i32 [ %val.1946.i, %for.body265.i.for.inc275.i_crit_edge ], [ %spec.select820.i, %land.lhs.true270.i ]
  %124 = ptrtoint ptr %storemerge947.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %storemerge.i = load ptr, ptr %storemerge947.i, align 4
  %125 = ptrtoint ptr %srp.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %storemerge.i, ptr %srp.i, align 4
  %cmp261.not.i = icmp eq ptr %storemerge.i, %rq_list254.i
  br i1 %cmp261.not.i, label %for.inc275.i.do.body282.i_crit_edge, label %for.inc275.i.for.body265.i_crit_edge

for.inc275.i.for.body265.i_crit_edge:             ; preds = %for.inc275.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body265.i

for.inc275.i.do.body282.i_crit_edge:              ; preds = %for.inc275.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body282.i

do.body282.i:                                     ; preds = %for.inc275.i.do.body282.i_crit_edge, %do.body243.i.do.body282.i_crit_edge
  %val.1.lcssa.i = phi i32 [ 0, %do.body243.i.do.body282.i_crit_edge ], [ %val.2.i, %for.inc275.i.do.body282.i_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock249.i, i32 noundef %call250.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1025) #14
  %126 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i843.i = and i32 %126, -16384
  %127 = inttoptr i32 %and.i.i.i843.i to ptr
  %cpu_domain.i.i844.i = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 4
  %128 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i844.i) #5, !srcloc !345
  %and.i845.i = and i32 %128, -13
  %or.i846.i = or i32 %and.i845.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i846.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %129 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %val.1.lcssa.i, i32 -1226833921) #14, !srcloc !361
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %128) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb306.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %sg_tablesize.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 3
  %130 = ptrtoint ptr %sg_tablesize.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sg_tablesize.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1027) #14
  %132 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i847.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i847.i to ptr
  %cpu_domain.i.i848.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 4
  %134 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i848.i) #5, !srcloc !345
  %and.i849.i = and i32 %134, -13
  %or.i850.i = or i32 %and.i849.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i850.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %135 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %131, i32 -1226833921) #14, !srcloc !362
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb322.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1029) #14
  %136 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i851.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i851.i to ptr
  %cpu_domain.i.i852.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 4
  %138 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i852.i) #5, !srcloc !345
  %and.i853.i = and i32 %138, -13
  %or.i854.i = or i32 %and.i853.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i854.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %139 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !363
  %asmresult332.i = extractvalue { i32, i32 } %139, 0
  %asmresult333.i = extractvalue { i32, i32 } %139, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult332.i)
  %tobool335.not.i = icmp eq i32 %asmresult332.i, 0
  br i1 %tobool335.not.i, label %if.end337.i, label %sw.bb322.i.sg_ioctl_common.exit_crit_edge

sw.bb322.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb322.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end337.i:                                      ; preds = %sw.bb322.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult333.i)
  %cmp338.i = icmp slt i32 %asmresult333.i, 0
  br i1 %cmp338.i, label %if.end337.i.sg_ioctl_common.exit.thread_crit_edge, label %if.end341.i

if.end337.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %if.end337.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end341.i:                                      ; preds = %if.end337.i
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %4, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %request_queue.i, align 4
  %max_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %143, i32 0, i32 37, i32 6
  %144 = ptrtoint ptr %max_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %max_sectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %145)
  %cmp.i.i = icmp ult i32 %145, 4194303
  %phi.bo.i.i = shl i32 %145, 9
  %cond.i.i = select i1 %cmp.i.i, i32 %phi.bo.i.i, i32 2147483136
  %146 = tail call i32 @llvm.smin.i32(i32 %asmresult333.i, i32 %cond.i.i) #14
  %f_mutex.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %f_mutex.i, i32 noundef 0) #14
  %reserve.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 7
  %bufflen.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 7, i32 2
  %147 = ptrtoint ptr %bufflen.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bufflen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp351.not.i = icmp eq i32 %146, %148
  br i1 %cmp351.not.i, label %if.end341.i.if.end363.i_crit_edge, label %if.then353.i

if.end341.i.if.end363.i_crit_edge:                ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end363.i

if.then353.i:                                     ; preds = %if.end341.i
  %mmap_called.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 15
  %149 = ptrtoint ptr %mmap_called.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %mmap_called.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool355.not.i = icmp eq i8 %150, 0
  br i1 %tobool355.not.i, label %lor.lhs.false356.i, label %if.then353.i.if.then359.i_crit_edge

if.then353.i.if.then359.i_crit_edge:              ; preds = %if.then353.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then359.i

lor.lhs.false356.i:                               ; preds = %if.then353.i
  %res_in_use.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 16
  %151 = ptrtoint ptr %res_in_use.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %res_in_use.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool358.not.i = icmp eq i8 %152, 0
  br i1 %tobool358.not.i, label %if.end361.i, label %lor.lhs.false356.i.if.then359.i_crit_edge

lor.lhs.false356.i.if.then359.i_crit_edge:        ; preds = %lor.lhs.false356.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then359.i

if.then359.i:                                     ; preds = %lor.lhs.false356.i.if.then359.i_crit_edge, %if.then353.i.if.then359.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %f_mutex.i) #14
  br label %sg_ioctl_common.exit.thread

if.end361.i:                                      ; preds = %lor.lhs.false356.i
  tail call fastcc void @sg_remove_scat(ptr noundef nonnull %2, ptr noundef %reserve.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %153 = load i32, ptr @scsi_logging_level, align 4
  %154 = and i32 %153, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %154)
  %cmp.i = icmp ugt i32 %154, 32
  br i1 %cmp.i, label %do.body2.i26, label %if.end361.i.do.body6.i.preheader_crit_edge, !prof !354

if.end361.i.do.body6.i.preheader_crit_edge:       ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i.preheader

do.body2.i26:                                     ; preds = %if.end361.i
  call void @__sanitizer_cov_trace_pc() #16
  %155 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %parentdp, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %name.i25 = getelementptr inbounds %struct.sg_device, ptr %156, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %158, ptr noundef %name.i25, ptr noundef nonnull @.str.60, i32 noundef %146) #14
  br label %do.body6.i.preheader

do.body6.i.preheader:                             ; preds = %do.body2.i26, %if.end361.i.do.body6.i.preheader_crit_edge
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.else.i28.do.body6.i_crit_edge, %do.body6.i.preheader
  %req_size.addr.0.i = phi i32 [ %shr13.i, %if.else.i28.do.body6.i_crit_edge ], [ %146, %do.body6.i.preheader ]
  %159 = tail call i32 @llvm.umax.i32(i32 %req_size.addr.0.i, i32 4096) #14
  %call.i27 = tail call fastcc i32 @sg_build_indirect(ptr noundef %reserve.i, ptr noundef %2, i32 noundef %159) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp10.i = icmp eq i32 %call.i27, 0
  br i1 %cmp10.i, label %do.body6.i.if.end363.i_crit_edge, label %if.else.i28

do.body6.i.if.end363.i_crit_edge:                 ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end363.i

if.else.i28:                                      ; preds = %do.body6.i
  tail call fastcc void @sg_remove_scat(ptr noundef %2, ptr noundef %reserve.i) #14
  %shr13.i = ashr i32 %159, 1
  %cmp15.i = icmp ugt i32 %159, 4097
  br i1 %cmp15.i, label %if.else.i28.do.body6.i_crit_edge, label %if.else.i28.if.end363.i_crit_edge

if.else.i28.if.end363.i_crit_edge:                ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end363.i

if.else.i28.do.body6.i_crit_edge:                 ; preds = %if.else.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

if.end363.i:                                      ; preds = %if.else.i28.if.end363.i_crit_edge, %do.body6.i.if.end363.i_crit_edge, %if.end341.i.if.end363.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %f_mutex.i) #14
  br label %sg_ioctl_common.exit.thread

sw.bb365.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %bufflen367.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 7, i32 2
  %160 = ptrtoint ptr %bufflen367.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %bufflen367.i, align 4
  %162 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %4, align 4
  %request_queue369.i = getelementptr inbounds %struct.scsi_device, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %request_queue369.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %request_queue369.i, align 4
  %max_sectors.i.i919.i = getelementptr inbounds %struct.request_queue, ptr %165, i32 0, i32 37, i32 6
  %166 = ptrtoint ptr %max_sectors.i.i919.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %max_sectors.i.i919.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %167)
  %cmp.i920.i = icmp ult i32 %167, 4194303
  %phi.bo.i921.i = shl i32 %167, 9
  %cond.i922.i = select i1 %cmp.i920.i, i32 %phi.bo.i921.i, i32 2147483136
  %168 = tail call i32 @llvm.smin.i32(i32 %161, i32 %cond.i922.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1052) #14
  %169 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i855.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i855.i to ptr
  %cpu_domain.i.i856.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i856.i) #5, !srcloc !345
  %and.i857.i = and i32 %171, -13
  %or.i858.i = or i32 %and.i857.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i858.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %172 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %168, i32 -1226833921) #14, !srcloc !364
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb393.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1054) #14
  %173 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i859.i = and i32 %173, -16384
  %174 = inttoptr i32 %and.i.i.i859.i to ptr
  %cpu_domain.i.i860.i = getelementptr inbounds %struct.thread_info, ptr %174, i32 0, i32 4
  %175 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i860.i) #5, !srcloc !345
  %and.i861.i = and i32 %175, -13
  %or.i862.i = or i32 %and.i861.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i862.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %176 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !365
  %asmresult403.i = extractvalue { i32, i32 } %176, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult403.i)
  %tobool406.not.i = icmp eq i32 %asmresult403.i, 0
  br i1 %tobool406.not.i, label %if.end408.i, label %sw.bb393.i.sg_ioctl_common.exit_crit_edge

sw.bb393.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb393.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end408.i:                                      ; preds = %sw.bb393.i
  call void @__sanitizer_cov_trace_pc() #16
  %asmresult404.i = extractvalue { i32, i32 } %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult404.i)
  %tobool409.not.i = icmp ne i32 %asmresult404.i, 0
  %conv411.i = zext i1 %tobool409.not.i to i8
  %cmd_q.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 12
  %177 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv411.i, ptr %cmd_q.i, align 1
  br label %sg_ioctl_common.exit.thread

sw.bb412.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmd_q417.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 12
  %178 = ptrtoint ptr %cmd_q417.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %cmd_q417.i, align 1
  %conv418.i = zext i8 %179 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1060) #14
  %180 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i863.i = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i863.i to ptr
  %cpu_domain.i.i864.i = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 4
  %182 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i864.i) #5, !srcloc !345
  %and.i865.i = and i32 %182, -13
  %or.i866.i = or i32 %and.i865.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i866.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %183 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %conv418.i, i32 -1226833921) #14, !srcloc !366
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %182) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb430.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1062) #14
  %184 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i867.i = and i32 %184, -16384
  %185 = inttoptr i32 %and.i.i.i867.i to ptr
  %cpu_domain.i.i868.i = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 4
  %186 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i868.i) #5, !srcloc !345
  %and.i869.i = and i32 %186, -13
  %or.i870.i = or i32 %and.i869.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i870.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %187 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !367
  %asmresult440.i = extractvalue { i32, i32 } %187, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %186) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult440.i)
  %tobool443.not.i = icmp eq i32 %asmresult440.i, 0
  br i1 %tobool443.not.i, label %if.end445.i, label %sw.bb430.i.sg_ioctl_common.exit_crit_edge

sw.bb430.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb430.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end445.i:                                      ; preds = %sw.bb430.i
  call void @__sanitizer_cov_trace_pc() #16
  %asmresult441.i = extractvalue { i32, i32 } %187, 1
  %conv446.i = trunc i32 %asmresult441.i to i8
  %keep_orphan.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 14
  %188 = ptrtoint ptr %keep_orphan.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv446.i, ptr %keep_orphan.i, align 1
  br label %sg_ioctl_common.exit.thread

sw.bb447.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %keep_orphan452.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 14
  %189 = ptrtoint ptr %keep_orphan452.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %keep_orphan452.i, align 1
  %conv453.i = zext i8 %190 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1068) #14
  %191 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i871.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i871.i to ptr
  %cpu_domain.i.i872.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 4
  %193 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i872.i) #5, !srcloc !345
  %and.i873.i = and i32 %193, -13
  %or.i874.i = or i32 %and.i873.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i874.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %194 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %conv453.i, i32 -1226833921) #14, !srcloc !368
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %193) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb465.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1070) #14
  %195 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i875.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i875.i to ptr
  %cpu_domain.i.i876.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 4
  %197 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i876.i) #5, !srcloc !345
  %and.i877.i = and i32 %197, -13
  %or.i878.i = or i32 %and.i877.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i878.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %198 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !369
  %asmresult475.i = extractvalue { i32, i32 } %198, 0
  %asmresult476.i = extractvalue { i32, i32 } %198, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %197) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult475.i)
  %tobool478.not.i = icmp eq i32 %asmresult475.i, 0
  br i1 %tobool478.not.i, label %if.end480.i, label %sw.bb465.i.sg_ioctl_common.exit_crit_edge

sw.bb465.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb465.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end480.i:                                      ; preds = %sw.bb465.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %asmresult476.i)
  %cmp481.i = icmp sgt i32 %asmresult476.i, 252
  br i1 %cmp481.i, label %if.end480.i.sg_ioctl_common.exit.thread_crit_edge, label %if.end484.i

if.end480.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end484.i:                                      ; preds = %if.end480.i
  call void @__sanitizer_cov_trace_pc() #16
  %199 = tail call i32 @llvm.smax.i32(i32 %asmresult476.i, i32 0) #14
  %200 = trunc i32 %199 to i8
  %next_cmd_len.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 13
  %201 = ptrtoint ptr %next_cmd_len.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %next_cmd_len.i, align 2
  br label %sg_ioctl_common.exit.thread

sw.bb492.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1078) #14
  %202 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i879.i = and i32 %202, -16384
  %203 = inttoptr i32 %and.i.i.i879.i to ptr
  %cpu_domain.i.i880.i = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 4
  %204 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i880.i) #5, !srcloc !345
  %and.i881.i = and i32 %204, -13
  %or.i882.i = or i32 %and.i881.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i882.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %205 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 30536, i32 -1226833921) #14, !srcloc !370
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %204) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb508.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %206 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %4, align 4
  %tobool510.not.i = icmp ne ptr %207, null
  %cond511.i = zext i1 %tobool510.not.i to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1082) #14
  %208 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i883.i = and i32 %208, -16384
  %209 = inttoptr i32 %and.i.i.i883.i to ptr
  %cpu_domain.i.i884.i = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 4
  %210 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i884.i) #5, !srcloc !345
  %and.i885.i = and i32 %210, -13
  %or.i886.i = or i32 %and.i885.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i886.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %211 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %cond511.i, i32 -1226833921) #14, !srcloc !371
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %210) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb527.i:                                       ; preds = %do.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %212 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %212, i32 noundef 3520, i32 noundef 320) #17
  %tobool529.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool529.not.i, label %sw.bb527.i.sg_ioctl_common.exit.thread_crit_edge, label %do.body532.i

sw.bb527.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %sw.bb527.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

do.body532.i:                                     ; preds = %sw.bb527.i
  %rq_list_lock538.i = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 3
  %call539.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rq_list_lock538.i) #14
  %rq_list.i16 = getelementptr inbounds %struct.sg_fd, ptr %2, i32 0, i32 8
  %213 = ptrtoint ptr %rq_list.i16 to i32
  call void @__asan_load4_noabort(i32 %213)
  %srp.073.i = load ptr, ptr %rq_list.i16, align 4
  %cmp.not74.i = icmp eq ptr %srp.073.i, %rq_list.i16
  br i1 %cmp.not74.i, label %do.body532.i.sg_fill_request_table.exit_crit_edge, label %do.body532.i.if.end.i_crit_edge

do.body532.i.if.end.i_crit_edge:                  ; preds = %do.body532.i
  br label %if.end.i

do.body532.i.sg_fill_request_table.exit_crit_edge: ; preds = %do.body532.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_fill_request_table.exit

if.end.i:                                         ; preds = %if.end26.i.if.end.i_crit_edge, %do.body532.i.if.end.i_crit_edge
  %srp.077.i = phi ptr [ %srp.0.i, %if.end26.i.if.end.i_crit_edge ], [ %srp.073.i, %do.body532.i.if.end.i_crit_edge ]
  %val.075.i = phi i32 [ %inc.i21, %if.end26.i.if.end.i_crit_edge ], [ 0, %do.body532.i.if.end.i_crit_edge ]
  %done.i17 = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 8
  %214 = ptrtoint ptr %done.i17 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %done.i17, align 1
  %add.i = add i8 %215, 1
  %arrayidx.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i
  %216 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %add.i, ptr %arrayidx.i, align 4
  %masked_status.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 14
  %217 = ptrtoint ptr %masked_status.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %masked_status.i, align 1
  %host_status.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 17
  %219 = ptrtoint ptr %host_status.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %host_status.i, align 4
  %conv7.i = trunc i16 %220 to i8
  %and.i = and i8 %218, %conv7.i
  %driver_status.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 18
  %221 = ptrtoint ptr %driver_status.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %driver_status.i, align 2
  %conv9.i = trunc i16 %222 to i8
  %and10.i = and i8 %and.i, %conv9.i
  %problem.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 3
  %223 = ptrtoint ptr %problem.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %and10.i, ptr %problem.i, align 1
  %224 = load i8, ptr %done.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i = icmp eq i8 %224, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %duration.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 20
  %225 = ptrtoint ptr %duration.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %duration.i, align 4
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %227) #14
  %duration19.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 20
  %228 = ptrtoint ptr %duration19.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %duration19.i, align 4
  %230 = tail call i32 @llvm.usub.sat.i32(i32 %call.i, i32 %229) #14
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.then14.i
  %.sink.i = phi i32 [ %230, %if.else.i ], [ %226, %if.then14.i ]
  %231 = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 6
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %.sink.i, ptr %231, align 4
  %orphan.i18 = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 6
  %233 = ptrtoint ptr %orphan.i18 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %orphan.i18, align 1
  %orphan28.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 1
  %235 = ptrtoint ptr %orphan28.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %orphan28.i, align 1
  %sg_io_owned.i19 = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 7
  %236 = ptrtoint ptr %sg_io_owned.i19 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %sg_io_owned.i19, align 2
  %sg_io_owned30.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 2
  %238 = ptrtoint ptr %sg_io_owned30.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %sg_io_owned30.i, align 2
  %pack_id.i20 = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 11
  %239 = ptrtoint ptr %pack_id.i20 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %pack_id.i20, align 4
  %pack_id33.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 4
  %241 = ptrtoint ptr %pack_id33.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %pack_id33.i, align 4
  %usr_ptr.i = getelementptr inbounds %struct.sg_request, ptr %srp.077.i, i32 0, i32 3, i32 12
  %242 = ptrtoint ptr %usr_ptr.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %usr_ptr.i, align 4
  %usr_ptr36.i = getelementptr %struct.sg_req_info, ptr %call7.i.i.i.i, i32 %val.075.i, i32 5
  %244 = ptrtoint ptr %usr_ptr36.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %243, ptr %usr_ptr36.i, align 4
  %inc.i21 = add nuw nsw i32 %val.075.i, 1
  %245 = ptrtoint ptr %srp.077.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %srp.0.i = load ptr, ptr %srp.077.i, align 4
  %cmp.not.i22 = icmp eq ptr %srp.0.i, %rq_list.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %val.075.i)
  %cmp3.i = icmp ugt i32 %val.075.i, 14
  %or.cond.i = select i1 %cmp.not.i22, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %if.end26.i.sg_fill_request_table.exit_crit_edge, label %if.end26.i.if.end.i_crit_edge

if.end26.i.if.end.i_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end26.i.sg_fill_request_table.exit_crit_edge:  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_fill_request_table.exit

sg_fill_request_table.exit:                       ; preds = %if.end26.i.sg_fill_request_table.exit_crit_edge, %do.body532.i.sg_fill_request_table.exit_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rq_list_lock538.i, i32 noundef %call539.i) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i891.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i891.i, label %sg_fill_request_table.exit.copy_to_user.exit899.thread.i_crit_edge, label %if.end.i.i894.i

sg_fill_request_table.exit.copy_to_user.exit899.thread.i_crit_edge: ; preds = %sg_fill_request_table.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit899.thread.i

if.end.i.i894.i:                                  ; preds = %sg_fill_request_table.exit
  %246 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 320, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i892.i = extractvalue { i32, i32 } %246, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i892.i)
  %cmp.i6.i893.i = icmp eq i32 %asmresult.i.i892.i, 0
  br i1 %cmp.i6.i893.i, label %copy_to_user.exit899.i, label %if.end.i.i894.i.copy_to_user.exit899.thread.i_crit_edge

if.end.i.i894.i.copy_to_user.exit899.thread.i_crit_edge: ; preds = %if.end.i.i894.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit899.thread.i

copy_to_user.exit899.i:                           ; preds = %if.end.i.i894.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i895.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 320) #14
  %call.i12.i.i896.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 320) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i896.i)
  %tobool552.not.i = icmp eq i32 %call.i12.i.i896.i, 0
  %spec.select940.i = select i1 %tobool552.not.i, i32 0, i32 -14
  br label %copy_to_user.exit899.thread.i

copy_to_user.exit899.thread.i:                    ; preds = %copy_to_user.exit899.i, %if.end.i.i894.i.copy_to_user.exit899.thread.i_crit_edge, %sg_fill_request_table.exit.copy_to_user.exit899.thread.i_crit_edge
  %247 = phi i32 [ -14, %sg_fill_request_table.exit.copy_to_user.exit899.thread.i_crit_edge ], [ -14, %if.end.i.i894.i.copy_to_user.exit899.thread.i_crit_edge ], [ %spec.select940.i, %copy_to_user.exit899.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #14
  br label %sg_ioctl_common.exit.thread

sw.bb555.i:                                       ; preds = %do.end4.i
  %detaching556.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 7
  %call.i.i900.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching556.i, i32 noundef 4) #14
  %248 = ptrtoint ptr %detaching556.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %detaching556.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool558.not.i = icmp eq i32 %249, 0
  br i1 %tobool558.not.i, label %if.end560.i, label %sw.bb555.i.sg_ioctl_common.exit.thread_crit_edge

sw.bb555.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %sw.bb555.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end560.i:                                      ; preds = %sw.bb555.i
  call void @__sanitizer_cov_trace_pc() #16
  %250 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %4, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %251, align 8
  %hostt.i = getelementptr inbounds %struct.Scsi_Host, ptr %253, i32 0, i32 11
  %254 = ptrtoint ptr %hostt.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hostt.i, align 8
  %emulated.i = getelementptr inbounds %struct.scsi_host_template, ptr %255, i32 0, i32 45
  %256 = ptrtoint ptr %emulated.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %bf.load.i = load i8, ptr %emulated.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 1
  %bf.cast.i = zext i8 %bf.clear.i to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1108) #14
  %257 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i901.i = and i32 %257, -16384
  %258 = inttoptr i32 %and.i.i.i901.i to ptr
  %cpu_domain.i.i902.i = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 4
  %259 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i902.i) #5, !srcloc !345
  %and.i903.i = and i32 %259, -13
  %or.i904.i = or i32 %and.i903.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i904.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %260 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %bf.cast.i, i32 -1226833921) #14, !srcloc !372
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %259) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb578.i:                                       ; preds = %do.end4.i
  %detaching579.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 7
  %call.i.i905.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching579.i, i32 noundef 4) #14
  %261 = ptrtoint ptr %detaching579.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load volatile i32, ptr %detaching579.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool581.not.i = icmp eq i32 %262, 0
  br i1 %tobool581.not.i, label %if.end583.i, label %sw.bb578.i.sg_ioctl_common.exit.thread_crit_edge

sw.bb578.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %sw.bb578.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

if.end583.i:                                      ; preds = %sw.bb578.i
  call void @__sanitizer_cov_trace_pc() #16
  %263 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %4, align 4
  %f_mode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %265 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %f_mode.i, align 8
  %call585.i = tail call i32 @scsi_ioctl(ptr noundef %264, i32 noundef %266, i32 noundef 1, ptr noundef %0) #14
  br label %sg_ioctl_common.exit

sw.bb586.i:                                       ; preds = %do.end4.i
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1114) #14
  %267 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i906.i = and i32 %267, -16384
  %268 = inttoptr i32 %and.i.i.i906.i to ptr
  %cpu_domain.i.i907.i = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 4
  %269 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i907.i) #5, !srcloc !345
  %and.i908.i = and i32 %269, -13
  %or.i909.i = or i32 %and.i908.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i909.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %270 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #14, !srcloc !373
  %asmresult596.i = extractvalue { i32, i32 } %270, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %269) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult596.i)
  %tobool599.not.i = icmp eq i32 %asmresult596.i, 0
  br i1 %tobool599.not.i, label %if.end601.i, label %sw.bb586.i.sg_ioctl_common.exit_crit_edge

sw.bb586.i.sg_ioctl_common.exit_crit_edge:        ; preds = %sw.bb586.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

if.end601.i:                                      ; preds = %sw.bb586.i
  call void @__sanitizer_cov_trace_pc() #16
  %asmresult597.i = extractvalue { i32, i32 } %270, 1
  %conv602.i = trunc i32 %asmresult597.i to i8
  %sgdebug.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 10
  %271 = ptrtoint ptr %sgdebug.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv602.i, ptr %sgdebug.i, align 4
  br label %sg_ioctl_common.exit.thread

sw.bb603.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %272 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %4, align 4
  %request_queue609.i = getelementptr inbounds %struct.scsi_device, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %request_queue609.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %request_queue609.i, align 4
  %max_sectors.i.i923.i = getelementptr inbounds %struct.request_queue, ptr %275, i32 0, i32 37, i32 6
  %276 = ptrtoint ptr %max_sectors.i.i923.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %max_sectors.i.i923.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %277)
  %cmp.i924.i = icmp ult i32 %277, 4194303
  %phi.bo.i925.i = shl i32 %277, 9
  %cond.i926.i = select i1 %cmp.i924.i, i32 %phi.bo.i925.i, i32 2147483136
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 1121) #14
  %278 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i910.i = and i32 %278, -16384
  %279 = inttoptr i32 %and.i.i.i910.i to ptr
  %cpu_domain.i.i911.i = getelementptr inbounds %struct.thread_info, ptr %279, i32 0, i32 4
  %280 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i911.i) #5, !srcloc !345
  %and.i912.i = and i32 %280, -13
  %or.i913.i = or i32 %and.i912.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i913.i) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %281 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %cond.i926.i, i32 -1226833921) #14, !srcloc !374
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %280) #14, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %sg_ioctl_common.exit

sw.bb622.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %282 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %4, align 4
  %request_queue624.i = getelementptr inbounds %struct.scsi_device, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %request_queue624.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %request_queue624.i, align 4
  %name625.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 11
  %index.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 4
  %286 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %index.i, align 4
  %or.i = or i32 %287, 22020096
  %call627.i = tail call i32 @blk_trace_setup(ptr noundef %285, ptr noundef %name625.i, i32 noundef %or.i, ptr noundef null, ptr noundef %0) #14
  br label %sg_ioctl_common.exit

sw.bb628.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %288 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %4, align 4
  %request_queue630.i = getelementptr inbounds %struct.scsi_device, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %request_queue630.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %request_queue630.i, align 4
  %call631.i = tail call i32 @blk_trace_startstop(ptr noundef %291, i32 noundef 1) #14
  br label %sg_ioctl_common.exit

sw.bb632.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %292 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %4, align 4
  %request_queue634.i = getelementptr inbounds %struct.scsi_device, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %request_queue634.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %request_queue634.i, align 4
  %call635.i = tail call i32 @blk_trace_startstop(ptr noundef %295, i32 noundef 0) #14
  br label %sg_ioctl_common.exit

sw.bb636.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  %296 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %4, align 4
  %request_queue638.i = getelementptr inbounds %struct.scsi_device, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %request_queue638.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %request_queue638.i, align 4
  %call639.i = tail call i32 @blk_trace_remove(ptr noundef %299) #14
  br label %sg_ioctl_common.exit

sw.bb640.i:                                       ; preds = %do.end4.i.sw.bb640.i_crit_edge, %do.end4.i.sw.bb640.i_crit_edge41, %do.end4.i.sw.bb640.i_crit_edge42, %do.end4.i.sw.bb640.i_crit_edge43, %do.end4.i.sw.bb640.i_crit_edge44
  %detaching641.i = getelementptr inbounds %struct.sg_device, ptr %4, i32 0, i32 7
  %call.i.i914.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching641.i, i32 noundef 4) #14
  %300 = ptrtoint ptr %detaching641.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile i32, ptr %detaching641.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool643.not.i = icmp eq i32 %301, 0
  br i1 %tobool643.not.i, label %sw.bb640.i.sw.epilog.i_crit_edge, label %sw.bb640.i.sg_ioctl_common.exit.thread_crit_edge

sw.bb640.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %sw.bb640.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

sw.bb640.i.sw.epilog.i_crit_edge:                 ; preds = %sw.bb640.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %do.end4.i
  br i1 %cmp6.i, label %sw.default.i.sg_ioctl_common.exit.thread_crit_edge, label %sw.default.i.sw.epilog.i_crit_edge

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.default.i.sg_ioctl_common.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit.thread

sw.epilog.i:                                      ; preds = %sw.default.i.sw.epilog.i_crit_edge, %sw.bb640.i.sw.epilog.i_crit_edge
  %302 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %4, align 4
  %304 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %f_flags.i, align 4
  %and651.i = and i32 %305, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and651.i)
  %tobool652.i = icmp ne i32 %and651.i, 0
  %call653.i = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %303, i32 noundef %cmd_in, i1 noundef zeroext %tobool652.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call653.i)
  %tobool654.not.i = icmp eq i32 %call653.i, 0
  br i1 %tobool654.not.i, label %sg_ioctl_common.exit.thread32, label %sw.epilog.i.sg_ioctl_common.exit_crit_edge

sw.epilog.i.sg_ioctl_common.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_ioctl_common.exit

sg_ioctl_common.exit.thread32:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srp.i) #14
  br label %if.end3

sg_ioctl_common.exit.thread:                      ; preds = %sw.default.i.sg_ioctl_common.exit.thread_crit_edge, %sw.bb640.i.sg_ioctl_common.exit.thread_crit_edge, %if.end601.i, %sw.bb578.i.sg_ioctl_common.exit.thread_crit_edge, %sw.bb555.i.sg_ioctl_common.exit.thread_crit_edge, %copy_to_user.exit899.thread.i, %sw.bb527.i.sg_ioctl_common.exit.thread_crit_edge, %if.end484.i, %if.end480.i.sg_ioctl_common.exit.thread_crit_edge, %if.end445.i, %if.end408.i, %if.end363.i, %if.then359.i, %if.end337.i.sg_ioctl_common.exit.thread_crit_edge, %if.end160.i, %cleanup144.i, %if.end73.i, %if.end69.i.sg_ioctl_common.exit.thread_crit_edge, %if.end46.i.sg_ioctl_common.exit.thread_crit_edge, %if.end9.i.sg_ioctl_common.exit.thread_crit_edge, %sw.bb.i.sg_ioctl_common.exit.thread_crit_edge, %do.end4.i.sg_ioctl_common.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -1, %sw.default.i.sg_ioctl_common.exit.thread_crit_edge ], [ -19, %sw.bb640.i.sg_ioctl_common.exit.thread_crit_edge ], [ -19, %sw.bb578.i.sg_ioctl_common.exit.thread_crit_edge ], [ -19, %sw.bb555.i.sg_ioctl_common.exit.thread_crit_edge ], [ -12, %sw.bb527.i.sg_ioctl_common.exit.thread_crit_edge ], [ %247, %copy_to_user.exit899.thread.i ], [ -12, %if.end480.i.sg_ioctl_common.exit.thread_crit_edge ], [ -22, %if.end337.i.sg_ioctl_common.exit.thread_crit_edge ], [ 0, %do.end4.i.sg_ioctl_common.exit.thread_crit_edge ], [ -5, %if.end69.i.sg_ioctl_common.exit.thread_crit_edge ], [ -19, %if.end46.i.sg_ioctl_common.exit.thread_crit_edge ], [ -6, %if.end9.i.sg_ioctl_common.exit.thread_crit_edge ], [ -19, %sw.bb.i.sg_ioctl_common.exit.thread_crit_edge ], [ 0, %if.end73.i ], [ %retval.0.i, %cleanup144.i ], [ 0, %if.end160.i ], [ 0, %if.end363.i ], [ -16, %if.then359.i ], [ 0, %if.end408.i ], [ 0, %if.end445.i ], [ 0, %if.end484.i ], [ 0, %if.end601.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srp.i) #14
  br label %cleanup

sg_ioctl_common.exit:                             ; preds = %sw.epilog.i.sg_ioctl_common.exit_crit_edge, %sw.bb636.i, %sw.bb632.i, %sw.bb628.i, %sw.bb622.i, %sw.bb603.i, %sw.bb586.i.sg_ioctl_common.exit_crit_edge, %if.end583.i, %if.end560.i, %sw.bb508.i, %sw.bb492.i, %sw.bb465.i.sg_ioctl_common.exit_crit_edge, %sw.bb447.i, %sw.bb430.i.sg_ioctl_common.exit_crit_edge, %sw.bb412.i, %sw.bb393.i.sg_ioctl_common.exit_crit_edge, %sw.bb365.i, %sw.bb322.i.sg_ioctl_common.exit_crit_edge, %sw.bb306.i, %do.body282.i, %do.body218.i, %do.body187.i, %sw.bb145.i.sg_ioctl_common.exit_crit_edge, %sw.bb108.i, %sw.bb105.i, %sw.bb62.i.sg_ioctl_common.exit_crit_edge, %if.end60.i, %if.then54.i, %if.end14.i.sg_ioctl_common.exit_crit_edge
  %retval.2.i = phi i32 [ %call639.i, %sw.bb636.i ], [ %call635.i, %sw.bb632.i ], [ %call631.i, %sw.bb628.i ], [ %call627.i, %sw.bb622.i ], [ %281, %sw.bb603.i ], [ %call585.i, %if.end583.i ], [ %260, %if.end560.i ], [ %211, %sw.bb508.i ], [ %205, %sw.bb492.i ], [ %194, %sw.bb447.i ], [ %183, %sw.bb412.i ], [ %172, %sw.bb365.i ], [ %135, %sw.bb306.i ], [ %129, %do.body282.i ], [ %112, %do.body187.i ], [ %118, %do.body218.i ], [ %56, %sw.bb108.i ], [ %52, %sw.bb105.i ], [ %43, %if.then54.i ], [ %__ret.0.i, %if.end60.i ], [ %call15.i, %if.end14.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult.i, %sw.bb62.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult155.i, %sw.bb145.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult332.i, %sw.bb322.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult403.i, %sw.bb393.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult440.i, %sw.bb430.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult475.i, %sw.bb465.i.sg_ioctl_common.exit_crit_edge ], [ %asmresult596.i, %sw.bb586.i.sg_ioctl_common.exit_crit_edge ], [ %call653.i, %sw.epilog.i.sg_ioctl_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %retval.2.i)
  %cmp.not = icmp eq i32 %retval.2.i, -515
  br i1 %cmp.not, label %sg_ioctl_common.exit.if.end3_crit_edge, label %sg_ioctl_common.exit.cleanup_crit_edge

sg_ioctl_common.exit.cleanup_crit_edge:           ; preds = %sg_ioctl_common.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sg_ioctl_common.exit.if.end3_crit_edge:           ; preds = %sg_ioctl_common.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.end3:                                          ; preds = %sg_ioctl_common.exit.if.end3_crit_edge, %sg_ioctl_common.exit.thread32
  %306 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %4, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %308 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %f_mode, align 8
  %call4 = call i32 @scsi_ioctl(ptr noundef %307, i32 noundef %309, i32 noundef %cmd_in, ptr noundef %0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sg_ioctl_common.exit.cleanup_crit_edge, %sg_ioctl_common.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ %retval.2.i, %sg_ioctl_common.exit.cleanup_crit_edge ], [ %retval.2.i.ph, %sg_ioctl_common.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_mmap(ptr noundef readonly %filp, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %filp, null
  %tobool1.not = icmp eq ptr %vma, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %6 = load i32, ptr @scsi_logging_level, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end.do.end12_crit_edge, label %do.body7, !prof !337

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parentdp, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %9, i32 0, i32 11
  %12 = inttoptr i32 %5 to ptr
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %11, ptr noundef %name, ptr noundef nonnull @.str.61, ptr noundef %12, i32 noundef %sub) #14
  br label %do.end12

do.end12:                                         ; preds = %do.body7, %if.end.do.end12_crit_edge
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %13 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.end15, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %do.end12
  %f_mutex = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %f_mutex, i32 noundef 0) #14
  %bufflen = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bufflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %16)
  %cmp16 = icmp ugt i32 %sub, %16
  br i1 %cmp16, label %if.end15.out_crit_edge, label %for.end

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.end:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %mmap_called = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %mmap_called to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %mmap_called, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %18 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_flags, align 4
  %or = or i32 %19, 67387392
  store i32 %or, ptr %vm_flags, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %20 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %vm_private_data, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %21 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sg_mmap_vm_ops, ptr %vm_ops, align 4
  br label %out

out:                                              ; preds = %for.end, %if.end15.out_crit_edge
  %ret.0 = phi i32 [ 0, %for.end ], [ -12, %if.end15.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %f_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end12.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -6, %lor.lhs.false2.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -22, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %call2 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #14
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and3 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 1048575
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %call.i.i = tail call ptr @idr_find(ptr noundef nonnull @sg_index_idr, i32 noundef %and.i) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.sg_get_dev.exit.thread_crit_edge, label %if.else.i

if.end.sg_get_dev.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_dev.exit.thread

if.else.i:                                        ; preds = %if.end
  %detaching.i = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %detaching.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %detaching.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %if.else7.i, label %if.else.i.sg_get_dev.exit.thread_crit_edge

if.else.i.sg_get_dev.exit.thread_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_dev.exit.thread

if.else7.i:                                       ; preds = %if.else.i
  %d_ref.i = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %d_ref.i, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %d_ref.i, ptr %d_ref.i, i32 1, ptr elementtype(i32) %d_ref.i) #14, !srcloc !375
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else7.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !354

if.else7.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else7.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sg_get_dev.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !337

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sg_get_dev.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_get_dev.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else7.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else7.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %d_ref.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %sg_get_dev.exit

sg_get_dev.exit.thread:                           ; preds = %if.else.i.sg_get_dev.exit.thread_crit_edge, %if.end.sg_get_dev.exit.thread_crit_edge
  %sdp.0.i.ph = phi ptr [ inttoptr (i32 -19 to ptr), %if.else.i.sg_get_dev.exit.thread_crit_edge ], [ inttoptr (i32 -6 to ptr), %if.end.sg_get_dev.exit.thread_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i) #14
  br label %if.then6

sg_get_dev.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sg_get_dev.exit_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i) #14
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sg_get_dev.exit.if.then6_crit_edge, label %do.body

sg_get_dev.exit.if.then6_crit_edge:               ; preds = %sg_get_dev.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6

if.then6:                                         ; preds = %sg_get_dev.exit.if.then6_crit_edge, %sg_get_dev.exit.thread
  %sdp.0.i135 = phi ptr [ %sdp.0.i.ph, %sg_get_dev.exit.thread ], [ %call.i.i, %sg_get_dev.exit.if.then6_crit_edge ]
  %8 = ptrtoint ptr %sdp.0.i135 to i32
  br label %cleanup

do.body:                                          ; preds = %sg_get_dev.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %9 = load i32, ptr @scsi_logging_level, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %do.body.do.end17_crit_edge, label %do.body14, !prof !337

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end17

do.body14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %12, ptr noundef %name, ptr noundef nonnull @.str.64, i32 noundef %3) #14
  br label %do.end17

do.end17:                                         ; preds = %do.body14, %do.body.do.end17_crit_edge
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i.i, align 4
  %call19 = tail call i32 @scsi_device_get(ptr noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end17.sg_put_crit_edge

do.end17.sg_put_crit_edge:                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_put

if.end22:                                         ; preds = %do.end17
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i.i, align 4
  %call24 = tail call i32 @scsi_autopm_get_device(ptr noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.sdp_put_crit_edge

if.end22.sdp_put_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %sdp_put

if.end27:                                         ; preds = %if.end22
  %and28 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.then37

lor.lhs.false:                                    ; preds = %if.end27
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i.i, align 4
  %call31 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false.error_out_crit_edge, label %if.else48

lor.lhs.false.error_out_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_out

if.then37:                                        ; preds = %if.end27
  %open_rel_lock = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %open_rel_lock, i32 noundef 0) #14
  br i1 %tobool.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then37
  %open_cnt = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %open_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp41 = icmp sgt i32 %20, 0
  br i1 %cmp41, label %if.then40.error_mutex_locked_crit_edge, label %if.then40.if.then56_crit_edge

if.then40.if.then56_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.then40.error_mutex_locked_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_mutex_locked

if.else:                                          ; preds = %if.then37
  %exclude = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %exclude, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool44.not = icmp eq i8 %22, 0
  br i1 %tobool44.not, label %if.else.if.end58_crit_edge, label %if.else.error_mutex_locked_crit_edge

if.else.error_mutex_locked_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_mutex_locked

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.else48:                                        ; preds = %lor.lhs.false
  %open_rel_lock137 = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %open_rel_lock137, i32 noundef 0) #14
  %call49 = tail call fastcc i32 @open_wait(ptr noundef nonnull %call.i.i, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end53, label %if.else48.error_mutex_locked_crit_edge

if.else48.error_mutex_locked_crit_edge:           ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_mutex_locked

if.end53:                                         ; preds = %if.else48
  br i1 %tobool.not, label %if.end53.if.end58_crit_edge, label %if.end53.if.then56_crit_edge

if.end53.if.then56_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then56:                                        ; preds = %if.end53.if.then56_crit_edge, %if.then40.if.then56_crit_edge
  %open_rel_lock141151 = phi ptr [ %open_rel_lock137, %if.end53.if.then56_crit_edge ], [ %open_rel_lock, %if.then40.if.then56_crit_edge ]
  %exclude57 = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %exclude57 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %exclude57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge, %if.else.if.end58_crit_edge
  %open_rel_lock141146 = phi ptr [ %open_rel_lock141151, %if.then56 ], [ %open_rel_lock137, %if.end53.if.end58_crit_edge ], [ %open_rel_lock, %if.else.if.end58_crit_edge ]
  %open_cnt59 = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %open_cnt59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %open_cnt59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp60 = icmp slt i32 %25, 1
  br i1 %cmp60, label %if.then61, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %sgdebug = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %sgdebug to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %sgdebug, align 4
  %27 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i.i, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %request_queue, align 4
  %max_segments.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 37, i32 21
  %31 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_segments.i, align 4
  %conv = zext i16 %32 to i32
  %sg_tablesize = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv, ptr %sg_tablesize, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58.if.end64_crit_edge
  %call65 = tail call fastcc ptr @sg_add_sfp(ptr noundef nonnull %call.i.i)
  %cmp.i126 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  %34 = ptrtoint ptr %call65 to i32
  br i1 %tobool.not, label %if.then67.error_mutex_locked_crit_edge, label %if.then75

if.then67.error_mutex_locked_crit_edge:           ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_mutex_locked

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call65, ptr %private_data, align 4
  %36 = ptrtoint ptr %open_cnt59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %open_cnt59, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %open_cnt59, align 4
  tail call void @mutex_unlock(ptr noundef %open_rel_lock141146) #14
  br label %sg_put

sg_put:                                           ; preds = %sdp_put, %if.end69, %do.end17.sg_put_crit_edge
  %retval1.0 = phi i32 [ %call19, %do.end17.sg_put_crit_edge ], [ %retval1.3, %sdp_put ], [ 0, %if.end69 ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %d_ref.i, i32 1, i32 3, i32 1) #14
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %d_ref.i, ptr %d_ref.i, i32 1, ptr elementtype(i32) %d_ref.i) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i127 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i127)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i127, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sg_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i127)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i127, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %d_ref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %sg_put
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  %call.i128 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %index.i = getelementptr %struct.sg_device, ptr %call.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i, align 4
  %call2.i = tail call ptr @idr_remove(ptr noundef nonnull @sg_index_idr, i32 noundef %40) #14
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i128) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %41 = load i32, ptr @scsi_logging_level, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp12.not.i = icmp eq i32 %42, 0
  br i1 %cmp12.not.i, label %if.then.i.sg_device_destroy.exit_crit_edge, label %do.body15.i, !prof !337

if.then.i.sg_device_destroy.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_device_destroy.exit

do.body15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i.i, align 4
  %name.i = getelementptr %struct.sg_device, ptr %call.i.i, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %44, ptr noundef %name.i, ptr noundef nonnull @.str.57) #14
  br label %sg_device_destroy.exit

sg_device_destroy.exit:                           ; preds = %do.body15.i, %if.then.i.sg_device_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i) #14
  br label %cleanup

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  %exclude76 = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %exclude76 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %exclude76, align 4
  %open_wait = getelementptr inbounds %struct.sg_device, ptr %call.i.i, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %error_mutex_locked

error_mutex_locked:                               ; preds = %if.then75, %if.then67.error_mutex_locked_crit_edge, %if.else48.error_mutex_locked_crit_edge, %if.else.error_mutex_locked_crit_edge, %if.then40.error_mutex_locked_crit_edge
  %open_rel_lock142 = phi ptr [ %open_rel_lock141146, %if.then75 ], [ %open_rel_lock141146, %if.then67.error_mutex_locked_crit_edge ], [ %open_rel_lock137, %if.else48.error_mutex_locked_crit_edge ], [ %open_rel_lock, %if.then40.error_mutex_locked_crit_edge ], [ %open_rel_lock, %if.else.error_mutex_locked_crit_edge ]
  %retval1.1 = phi i32 [ %34, %if.then75 ], [ %34, %if.then67.error_mutex_locked_crit_edge ], [ %call49, %if.else48.error_mutex_locked_crit_edge ], [ -16, %if.then40.error_mutex_locked_crit_edge ], [ -16, %if.else.error_mutex_locked_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_rel_lock142) #14
  br label %error_out

error_out:                                        ; preds = %error_mutex_locked, %lor.lhs.false.error_out_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %error_mutex_locked ], [ -6, %lor.lhs.false.error_out_crit_edge ]
  %46 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i.i, align 4
  tail call void @scsi_autopm_put_device(ptr noundef %47) #14
  br label %sdp_put

sdp_put:                                          ; preds = %error_out, %if.end22.sdp_put_crit_edge
  %retval1.3 = phi i32 [ %call24, %if.end22.sdp_put_crit_edge ], [ %retval1.2, %error_out ]
  %48 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i.i, align 4
  tail call void @scsi_device_put(ptr noundef %49) #14
  br label %sg_put

cleanup:                                          ; preds = %sg_device_destroy.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then6 ], [ -1, %entry.cleanup_crit_edge ], [ %retval1.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval1.0, %if.then10.i.i.i.i ], [ %retval1.0, %sg_device_destroy.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentdp, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %4 = load i32, ptr @scsi_logging_level, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body.do.end8_crit_edge, label %do.body5, !prof !337

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.72) #14
  br label %do.end8

do.end8:                                          ; preds = %do.body5, %do.body.do.end8_crit_edge
  %open_rel_lock = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %open_rel_lock, i32 noundef 0) #14
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @scsi_autopm_put_device(ptr noundef %9) #14
  %f_ref = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %f_ref, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_ref, ptr %f_ref, i32 1, ptr elementtype(i32) %f_ref) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %f_ref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  tail call fastcc void @sg_remove_sfp(ptr noundef %f_ref) #14, !callees !377
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %open_cnt = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %open_cnt, align 4
  %exclude = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %exclude, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %exclude to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %exclude, align 4
  br label %if.end18.sink.split

if.else:                                          ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp14 = icmp eq i32 %dec, 0
  br i1 %cmp14, label %if.else.if.end18.sink.split_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else.if.end18.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else.if.end18.sink.split_crit_edge, %if.then11
  %.sink = phi i32 [ 0, %if.then11 ], [ 1, %if.else.if.end18.sink.split_crit_edge ]
  %open_wait16 = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %open_wait16, i32 noundef 1, i32 noundef %.sink, ptr noundef null) #14
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.else.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_rel_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentdp, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %4 = load i32, ptr @scsi_logging_level, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %do.body.do.end8_crit_edge, label %do.body5, !prof !337

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.73, i32 noundef %mode) #14
  br label %do.end8

do.end8:                                          ; preds = %do.body5, %do.body.do.end8_crit_edge
  %async_qp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 9
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %mode, ptr noundef %async_qp) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end8 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sg_get_rq_mark(ptr noundef %sfp, i32 noundef %pack_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock) #14
  %rq_list = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %0 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %resp.053 = load ptr, ptr %rq_list, align 4
  %cmp4.not54 = icmp eq ptr %resp.053, %rq_list
  br i1 %cmp4.not54, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pack_id)
  %cmp10 = icmp eq i32 %pack_id, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %resp.055 = phi ptr [ %resp.053, %for.body.lr.ph ], [ %resp.0, %for.inc.for.body_crit_edge ]
  %done = getelementptr inbounds %struct.sg_request, ptr %resp.055, i32 0, i32 8
  %1 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp7 = icmp eq i8 %2, 1
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %sg_io_owned = getelementptr inbounds %struct.sg_request, ptr %resp.055, i32 0, i32 7
  %3 = ptrtoint ptr %sg_io_owned to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sg_io_owned, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  br i1 %cmp10, label %land.lhs.true9.if.then_crit_edge, label %lor.lhs.false

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %pack_id12 = getelementptr inbounds %struct.sg_request, ptr %resp.055, i32 0, i32 3, i32 11
  %5 = ptrtoint ptr %pack_id12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pack_id12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pack_id)
  %cmp13 = icmp eq i32 %6, %pack_id
  br i1 %cmp13, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true9.if.then_crit_edge
  %done.le = getelementptr inbounds %struct.sg_request, ptr %resp.055, i32 0, i32 8
  %7 = ptrtoint ptr %done.le to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %done.le, align 1
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %resp.055 to i32
  call void @__asan_load4_noabort(i32 %8)
  %resp.0 = load ptr, ptr %resp.055, align 4
  %cmp4.not = icmp eq ptr %resp.0, %rq_list
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %resp.055, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_new_read(ptr noundef %sfp, ptr noundef %buf, i32 noundef %count, ptr noundef %srp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %header = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp2 = icmp ult i32 %count, 64
  br i1 %cmp2, label %entry.err_out_crit_edge, label %if.end5

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end5:                                          ; preds = %entry
  %sb_len_wr = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %sb_len_wr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sb_len_wr, align 1
  %mx_sb_len = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %mx_sb_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mx_sb_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp6.not = icmp eq i8 %2, 0
  br i1 %cmp6.not, label %if.end5.if.end40_crit_edge, label %land.lhs.true

if.end5.if.end40_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end5
  %sbp = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %sbp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sbp, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.if.end40_crit_edge, label %if.then8

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then8:                                         ; preds = %land.lhs.true
  %masked_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 14
  %5 = ptrtoint ptr %masked_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %masked_status, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then8.if.then15_crit_edge

if.then8.if.then15_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.then8
  %sense_b = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 4
  %8 = ptrtoint ptr %sense_b to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sense_b, align 4
  %10 = and i8 %9, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %10)
  %cmp13 = icmp eq i8 %10, 112
  br i1 %cmp13, label %lor.lhs.false.if.then15_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.then8.if.then15_crit_edge
  %11 = tail call i8 @llvm.umin.i8(i8 %2, i8 96)
  %cond = zext i8 %11 to i32
  %sense_b22 = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 4
  %arrayidx23 = getelementptr %struct.sg_request, ptr %srp, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv24, 8
  %14 = tail call i32 @llvm.umin.i32(i32 %add, i32 %cond)
  tail call void @__check_object_size(ptr noundef %sense_b22, i32 noundef %14, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then15.err_out_crit_edge, label %if.end.i.i

if.then15.err_out_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end.i.i:                                       ; preds = %if.then15
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 %14, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.err_out_crit_edge

if.end.i.i.err_out_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sense_b22, i32 noundef %14) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef %sense_b22, i32 noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool34.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool34.not, label %cleanup, label %copy_to_user.exit.err_out_crit_edge

copy_to_user.exit.err_out_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

cleanup:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %driver_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 18
  %16 = ptrtoint ptr %driver_status to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %driver_status, align 2
  %conv37 = trunc i32 %14 to i8
  %17 = ptrtoint ptr %sb_len_wr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv37, ptr %sb_len_wr, align 1
  br label %if.end40

if.end40:                                         ; preds = %cleanup, %lor.lhs.false.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end5.if.end40_crit_edge
  %masked_status41 = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 14
  %18 = ptrtoint ptr %masked_status41 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %masked_status41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not = icmp eq i8 %19, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.end40.if.then51_crit_edge

if.end40.if.then51_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

lor.lhs.false44:                                  ; preds = %if.end40
  %host_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 17
  %20 = ptrtoint ptr %host_status to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %host_status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool46.not = icmp eq i16 %21, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %lor.lhs.false44.if.then51_crit_edge

lor.lhs.false44.if.then51_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %driver_status48 = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 18
  %22 = ptrtoint ptr %driver_status48 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %driver_status48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool50.not = icmp eq i16 %23, 0
  br i1 %tobool50.not, label %lor.lhs.false47.if.end52_crit_edge, label %lor.lhs.false47.if.then51_crit_edge

lor.lhs.false47.if.then51_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51

lor.lhs.false47.if.end52_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then51:                                        ; preds = %lor.lhs.false47.if.then51_crit_edge, %lor.lhs.false44.if.then51_crit_edge, %if.end40.if.then51_crit_edge
  %info = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 21
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %info, align 4
  %or = or i32 %25, 1
  store i32 %or, ptr %info, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false47.if.end52_crit_edge
  %call53 = tail call i32 @put_sg_io_hdr(ptr noundef %header, ptr noundef %buf) #14
  br label %err_out

err_out:                                          ; preds = %if.end52, %copy_to_user.exit.err_out_crit_edge, %if.end.i.i.err_out_crit_edge, %if.then15.err_out_crit_edge, %entry.err_out_crit_edge
  %err.1 = phi i32 [ %call53, %if.end52 ], [ -22, %entry.err_out_crit_edge ], [ -14, %copy_to_user.exit.err_out_crit_edge ], [ -14, %if.then15.err_out_crit_edge ], [ -14, %if.end.i.i.err_out_crit_edge ]
  %call54 = tail call fastcc i32 @sg_finish_rem_req(ptr noundef %srp)
  %tobool.not.i = icmp eq ptr %sfp, null
  %tobool1.not.i = icmp eq ptr %srp, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %err_out.sg_remove_request.exit_crit_edge, label %lor.lhs.false2.i

err_out.sg_remove_request.exit_crit_edge:         ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_remove_request.exit

lor.lhs.false2.i:                                 ; preds = %err_out
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %26 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %rq_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false2.i.sg_remove_request.exit_crit_edge, label %do.body.i

lor.lhs.false2.i.sg_remove_request.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_remove_request.exit

do.body.i:                                        ; preds = %lor.lhs.false2.i
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i) #14
  %28 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %srp, align 4
  %cmp.i1.not.i = icmp eq ptr %29, %srp
  br i1 %cmp.i1.not.i, label %do.body.i.do.body11.i_crit_edge, label %if.then8.i

do.body.i.do.body11.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then8.i:                                       ; preds = %do.body.i
  %call.i.i.i97 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %srp) #14
  br i1 %call.i.i.i97, label %if.end.i.i.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %srp, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then8.i.list_del.exit.i_crit_edge
  %36 = ptrtoint ptr %srp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %srp, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %parentfp.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %38 = ptrtoint ptr %parentfp.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %parentfp.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %list_del.exit.i, %do.body.i.do.body11.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call4.i) #14
  br label %sg_remove_request.exit

sg_remove_request.exit:                           ; preds = %do.body11.i, %lor.lhs.false2.i.sg_remove_request.exit_crit_edge, %err_out.sg_remove_request.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool56.not = icmp eq i32 %err.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool59.not = icmp eq i32 %call54, 0
  %spec.select = select i1 %tobool59.not, i32 %count, i32 %call54
  %cond65 = select i1 %tobool56.not, i32 %spec.select, i32 %err.1
  ret i32 %cond65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_read_oxfer(ptr nocapture noundef readonly %srp, ptr noundef %outp, i32 noundef %num_read_xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %0 = load i32, ptr @scsi_logging_level, align 4
  %1 = and i32 %0, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %do.body2, label %entry.do.end6_crit_edge, !prof !354

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parentfp = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %2 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentfp, align 4
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parentdp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.30, i32 noundef %num_read_xfer) #14
  br label %do.end6

do.end6:                                          ; preds = %do.body2, %entry.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %outp, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_read_xfer)
  %cmp8 = icmp slt i32 %num_read_xfer, 1
  %or.cond = or i1 %tobool7.not, %cmp8
  br i1 %or.cond, label %do.end6.cleanup_crit_edge, label %if.end10

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end6
  %page_order = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %page_order to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %page_order, align 4
  %add = add i32 %9, 12
  %shl = shl nuw i32 1, %add
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp11100.not = icmp eq i16 %11, 0
  br i1 %cmp11100.not, label %if.end10.for.end_crit_edge, label %land.rhs.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end10
  %pages = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add)
  %cmp9.i.i64 = icmp eq i32 %add, 31
  br label %land.rhs

land.rhs:                                         ; preds = %if.end33.land.rhs_crit_edge, %land.rhs.lr.ph
  %k.0103 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end33.land.rhs_crit_edge ]
  %num_read_xfer.addr.0102 = phi i32 [ %num_read_xfer, %land.rhs.lr.ph ], [ %sub, %if.end33.land.rhs_crit_edge ]
  %outp.addr.0101 = phi ptr [ %outp, %land.rhs.lr.ph ], [ %add.ptr, %if.end33.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %k.0103
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_cmp4(i32 %num_read_xfer.addr.0102, i32 %shl)
  %cmp14 = icmp slt i32 %num_read_xfer.addr.0102, %shl
  %call = tail call ptr @page_address(ptr noundef nonnull %15) #14
  br i1 %cmp14, label %if.then.i.i.i, label %if.end8.i.i65

if.then.i.i.i:                                    ; preds = %for.body
  tail call void @__check_object_size(ptr noundef %call, i32 noundef %num_read_xfer.addr.0102, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %outp.addr.0101, i32 %num_read_xfer.addr.0102, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef %num_read_xfer.addr.0102) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %outp.addr.0101, ptr noundef %call, i32 noundef %num_read_xfer.addr.0102) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool20.not, label %copy_to_user.exit.for.end_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit.for.end_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end8.i.i65:                                    ; preds = %for.body
  br i1 %cmp9.i.i64, label %land.rhs16.i.i67, label %if.then.i.i.i70

land.rhs16.i.i67:                                 ; preds = %if.end8.i.i65
  %.b71.i.i66 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i66, label %land.rhs16.i.i67.cleanup_crit_edge, label %if.then27.i.i68, !prof !337

land.rhs16.i.i67.cleanup_crit_edge:               ; preds = %land.rhs16.i.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i68:                                  ; preds = %land.rhs16.i.i67
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i70:                                  ; preds = %if.end8.i.i65
  tail call void @__check_object_size(ptr noundef %call, i32 noundef %shl, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #14
  %call.i.i71 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i71, label %if.then.i.i.i70.cleanup_crit_edge, label %if.end.i.i75

if.then.i.i.i70.cleanup_crit_edge:                ; preds = %if.then.i.i.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i75:                                     ; preds = %if.then.i.i.i70
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %outp.addr.0101, i32 %shl, i32 -1226833920) #19, !srcloc !351
  %asmresult.i.i73 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i73)
  %cmp.i6.i74 = icmp eq i32 %asmresult.i.i73, 0
  br i1 %cmp.i6.i74, label %copy_to_user.exit80, label %if.end.i.i75.cleanup_crit_edge

if.end.i.i75.cleanup_crit_edge:                   ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit80:                              ; preds = %if.end.i.i75
  %call.i.i.i76 = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef %shl) #14
  %call.i12.i.i77 = tail call i32 @arm_copy_to_user(ptr noundef %outp.addr.0101, ptr noundef %call, i32 noundef %shl) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i77)
  %tobool27.not = icmp eq i32 %call.i12.i.i77, 0
  br i1 %tobool27.not, label %if.end29, label %copy_to_user.exit80.cleanup_crit_edge

copy_to_user.exit80.cleanup_crit_edge:            ; preds = %copy_to_user.exit80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %copy_to_user.exit80
  %sub = sub nsw i32 %num_read_xfer.addr.0102, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 1
  br i1 %cmp30, label %if.end29.for.end_crit_edge, label %if.end33

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end33:                                         ; preds = %if.end29
  %add.ptr = getelementptr i8, ptr %outp.addr.0101, i32 %shl
  %inc = add nuw nsw i32 %k.0103, 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data, align 4
  %conv = zext i16 %19 to i32
  %cmp11 = icmp ult i32 %inc, %conv
  br i1 %cmp11, label %if.end33.land.rhs_crit_edge, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end33.land.rhs_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.end:                                          ; preds = %if.end33.for.end_crit_edge, %if.end29.for.end_crit_edge, %copy_to_user.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end10.for.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end, %copy_to_user.exit80.cleanup_crit_edge, %if.end.i.i75.cleanup_crit_edge, %if.then.i.i.i70.cleanup_crit_edge, %if.then27.i.i68, %land.rhs16.i.i67.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %do.end6.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i68 ], [ -14, %land.rhs16.i.i67.cleanup_crit_edge ], [ -14, %copy_to_user.exit80.cleanup_crit_edge ], [ -14, %if.then.i.i.i70.cleanup_crit_edge ], [ -14, %if.end.i.i75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_finish_rem_req(ptr nocapture noundef %srp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parentfp = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %0 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentfp, align 4
  %data = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %2 = load i32, ptr @scsi_logging_level, align 4
  %3 = and i32 %2, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %do.body2, label %entry.do.end5_crit_edge, !prof !354

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parentdp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %5, i32 0, i32 11
  %res_used = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 5
  %8 = ptrtoint ptr %res_used to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %res_used, align 4
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef %conv) #14
  br label %do.end5

do.end5:                                          ; preds = %do.body2, %entry.do.end5_crit_edge
  %bio = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 10
  %10 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end5.if.end9_crit_edge, label %if.then7

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @blk_rq_unmap_user(ptr noundef nonnull %11) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end5.if.end9_crit_edge
  %ret.0 = phi i32 [ %call, %if.then7 ], [ 0, %do.end5.if.end9_crit_edge ]
  %rq = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 9
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  %add.ptr.i.i = getelementptr %struct.request, ptr %13, i32 1
  %cmd.i = getelementptr %struct.request, ptr %13, i32 1, i32 4
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd.i, align 4
  %cmp.not.i = icmp eq ptr %15, %add.ptr.i.i
  br i1 %cmp.not.i, label %if.then11.scsi_req_free_cmd.exit_crit_edge, label %if.then.i

if.then11.scsi_req_free_cmd.exit_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_req_free_cmd.exit

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %15) #14
  br label %scsi_req_free_cmd.exit

scsi_req_free_cmd.exit:                           ; preds = %if.then.i, %if.then11.scsi_req_free_cmd.exit_crit_edge
  %16 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq, align 4
  tail call void @blk_mq_free_request(ptr noundef %17) #14
  br label %if.end15

if.end15:                                         ; preds = %scsi_req_free_cmd.exit, %if.end9.if.end15_crit_edge
  %res_used16 = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 5
  %18 = ptrtoint ptr %res_used16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %res_used16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %20 = load i32, ptr @scsi_logging_level, align 4
  %21 = and i32 %20, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp.i = icmp ugt i32 %21, 32
  br i1 %cmp.i, label %do.body2.i, label %if.then18.sg_unlink_reserve.exit_crit_edge, !prof !354

if.then18.sg_unlink_reserve.exit_crit_edge:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_unlink_reserve.exit

do.body2.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parentfp, align 4
  %parentdp.i = getelementptr inbounds %struct.sg_fd, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %parentdp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parentdp.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %name.i = getelementptr inbounds %struct.sg_device, ptr %25, i32 0, i32 11
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data, align 4
  %conv.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %27, ptr noundef %name.i, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #14
  br label %sg_unlink_reserve.exit

sg_unlink_reserve.exit:                           ; preds = %do.body2.i, %if.then18.sg_unlink_reserve.exit_crit_edge
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %data, align 4
  %sglist_len.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %res_used16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %res_used16, align 4
  %res_in_use.i = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 16
  %32 = call ptr @memset(ptr %sglist_len.i, i32 0, i32 16)
  %33 = ptrtoint ptr %res_in_use.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %res_in_use.i, align 1
  br label %if.end19

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sg_remove_scat(ptr noundef %1, ptr noundef %data)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %sg_unlink_reserve.exit
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef %srp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sfp, null
  %tobool1.not = icmp eq ptr %srp, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %rq_list = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %0 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rq_list, align 4
  %cmp.i.not = icmp eq ptr %1, %rq_list
  br i1 %cmp.i.not, label %lor.lhs.false2.cleanup_crit_edge, label %do.body

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false2
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock) #14
  %2 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %srp, align 4
  %cmp.i1.not = icmp eq ptr %3, %srp
  br i1 %cmp.i1.not, label %do.body.do.body11_crit_edge, label %if.then8

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11

if.then8:                                         ; preds = %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %srp) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del.exit_crit_edge

if.then8.list_del.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then8.list_del.exit_crit_edge
  %10 = ptrtoint ptr %srp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %srp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %parentfp = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %12 = ptrtoint ptr %parentfp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %parentfp, align 4
  br label %do.body11

do.body11:                                        ; preds = %list_del.exit, %do.body.do.body11_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call4) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_sg_io_hdr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_unmap_user(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_remove_scat(ptr nocapture noundef readonly %sfp, ptr nocapture noundef %schp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %0 = load i32, ptr @scsi_logging_level, align 4
  %1 = and i32 %0, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %do.body2, label %entry.do.end4_crit_edge, !prof !354

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 1
  %2 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentdp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %schp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %schp, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %5, ptr noundef %name, ptr noundef nonnull @.str.33, i32 noundef %conv) #14
  br label %do.end4

do.end4:                                          ; preds = %do.body2, %entry.do.end4_crit_edge
  %pages = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 3
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end4.if.end45_crit_edge, label %land.lhs.true

do.end4.if.end45_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true:                                    ; preds = %do.end4
  %sglist_len = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 1
  %10 = ptrtoint ptr %sglist_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sglist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not = icmp eq i32 %11, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end45_crit_edge, label %if.then8

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then8:                                         ; preds = %land.lhs.true
  %dio_in_use = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 5
  %12 = ptrtoint ptr %dio_in_use to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dio_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.then8.if.end45_crit_edge

if.then8.if.end45_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.cond.preheader:                               ; preds = %if.then8
  %14 = ptrtoint ptr %schp to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %schp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp1365.not = icmp eq i16 %15, 0
  br i1 %cmp1365.not, label %for.cond.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond.preheader
  %parentdp30 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 1
  %page_order = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end40.land.rhs_crit_edge, %land.rhs.lr.ph
  %k.066 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %do.end40.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %k.066
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %land.rhs.for.end_crit_edge, label %do.body17

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.body17:                                        ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %20 = load i32, ptr @scsi_logging_level, align 4
  %21 = and i32 %20, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %21)
  %cmp20 = icmp eq i32 %21, 48
  br i1 %cmp20, label %do.body29, label %do.body17.do.end40_crit_edge, !prof !354

do.body17.do.end40_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end40

do.body29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %parentdp30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parentdp30, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %name33 = getelementptr inbounds %struct.sg_device, ptr %23, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %25, ptr noundef %name33, ptr noundef nonnull @.str.34, i32 noundef %k.066, ptr noundef nonnull %19) #14
  br label %do.end40

do.end40:                                         ; preds = %do.body29, %do.body17.do.end40_crit_edge
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 4
  %arrayidx42 = getelementptr ptr, ptr %27, i32 %k.066
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx42, align 4
  %30 = ptrtoint ptr %page_order to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_order, align 4
  tail call void @__free_pages(ptr noundef %29, i32 noundef %31) #14
  %inc = add nuw nsw i32 %k.066, 1
  %32 = ptrtoint ptr %schp to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %schp, align 4
  %conv12 = zext i16 %33 to i32
  %cmp13 = icmp ult i32 %inc, %conv12
  br i1 %cmp13, label %do.end40.land.rhs_crit_edge, label %do.end40.for.end_crit_edge

do.end40.for.end_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end40.land.rhs_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.end:                                          ; preds = %do.end40.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %34 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %35) #14
  br label %if.end45

if.end45:                                         ; preds = %for.end, %if.then8.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %do.end4.if.end45_crit_edge
  %36 = call ptr @memset(ptr %schp, i32 0, i32 24)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_new_write(ptr noundef %sfp, ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, i32 noundef %read_only, i32 noundef %sg_io_owned, ptr noundef writeonly %o_srp) unnamed_addr #2 align 64 {
entry:
  %cmnd = alloca [252 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 252, ptr nonnull %cmnd) #14
  %0 = call ptr @memset(ptr %cmnd, i32 255, i32 252)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp = icmp ult i32 %count, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_q = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 12
  %1 = ptrtoint ptr %cmd_q to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %cmd_q, align 1
  %call = tail call fastcc ptr @sg_add_request(ptr noundef %sfp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %2 = load i32, ptr @scsi_logging_level, align 4
  %3 = and i32 %2, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %do.body.cleanup_crit_edge, label %do.body6, !prof !337

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 1
  %4 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parentdp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %conv = trunc i32 %sg_io_owned to i8
  %sg_io_owned12 = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %sg_io_owned12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %sg_io_owned12, align 2
  %header = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3
  %call13 = tail call i32 @get_sg_io_hdr(ptr noundef %header, ptr noundef %buf) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  %tobool.not.i = icmp eq ptr %sfp, null
  br i1 %tobool.not.i, label %if.then15.cleanup_crit_edge, label %lor.lhs.false2.i

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %if.then15
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %9 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %rq_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %do.body.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i:                                        ; preds = %lor.lhs.false2.i
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i) #14
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %call, align 4
  %cmp.i1.not.i = icmp eq ptr %12, %call
  br i1 %cmp.i1.not.i, label %do.body.i.do.body11.i_crit_edge, label %if.then8.i

do.body.i.do.body11.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then8.i:                                       ; preds = %do.body.i
  %call.i.i.i4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #14
  br i1 %call.i.i.i4, label %if.end.i.i.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then8.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %parentfp.i = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %parentfp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %parentfp.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %list_del.exit.i, %do.body.i.do.body11.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call4.i) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %23)
  %cmp18.not = icmp eq i32 %23, 83
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  %tobool.not.i5 = icmp eq ptr %sfp, null
  br i1 %tobool.not.i5, label %if.then20.cleanup_crit_edge, label %lor.lhs.false2.i10

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i10:                               ; preds = %if.then20
  %rq_list.i8 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %24 = ptrtoint ptr %rq_list.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %rq_list.i8, align 4
  %cmp.i.not.i9 = icmp eq ptr %25, %rq_list.i8
  br i1 %cmp.i.not.i9, label %lor.lhs.false2.i10.cleanup_crit_edge, label %do.body.i14

lor.lhs.false2.i10.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i14:                                      ; preds = %lor.lhs.false2.i10
  %rq_list_lock.i11 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i12 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i11) #14
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %call, align 4
  %cmp.i1.not.i13 = icmp eq ptr %27, %call
  br i1 %cmp.i1.not.i13, label %do.body.i14.do.body11.i23_crit_edge, label %if.then8.i16

do.body.i14.do.body11.i23_crit_edge:              ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i23

if.then8.i16:                                     ; preds = %do.body.i14
  %call.i.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #14
  br i1 %call.i.i.i15, label %if.end.i.i.i19, label %if.then8.i16.list_del.exit.i22_crit_edge

if.then8.i16.list_del.exit.i22_crit_edge:         ; preds = %if.then8.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i22

if.end.i.i.i19:                                   ; preds = %if.then8.i16
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i17, align 4
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  %prev1.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i18, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i22

list_del.exit.i22:                                ; preds = %if.end.i.i.i19, %if.then8.i16.list_del.exit.i22_crit_edge
  %34 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i20, align 4
  %parentfp.i21 = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 1
  %36 = ptrtoint ptr %parentfp.i21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %parentfp.i21, align 4
  br label %do.body11.i23

do.body11.i23:                                    ; preds = %list_del.exit.i22, %do.body.i14.do.body11.i23_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i11, i32 noundef %call4.i12) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %flags = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3, i32 10
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags, align 4
  %and23 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.msecs_to_jiffies.exit_crit_edge, label %if.then25

if.end22.msecs_to_jiffies.exit_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %msecs_to_jiffies.exit

if.then25:                                        ; preds = %if.end22
  %dxfer_len = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dxfer_len, align 4
  %bufflen = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 7, i32 2
  %41 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bufflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp26 = icmp ugt i32 %40, %42
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef nonnull %call)
  br label %cleanup

if.end30:                                         ; preds = %if.then25
  %and32 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef nonnull %call)
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %res_in_use = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 16
  %43 = ptrtoint ptr %res_in_use to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %res_in_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool37.not = icmp eq i8 %44, 0
  br i1 %tobool37.not, label %if.end36.msecs_to_jiffies.exit_crit_edge, label %if.then38

if.end36.msecs_to_jiffies.exit_crit_edge:         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %msecs_to_jiffies.exit

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef nonnull %call)
  br label %cleanup

msecs_to_jiffies.exit:                            ; preds = %if.end36.msecs_to_jiffies.exit_crit_edge, %if.end22.msecs_to_jiffies.exit_crit_edge
  %timeout43 = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3, i32 9
  %45 = ptrtoint ptr %timeout43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timeout43, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %46) #14
  %47 = call i32 @llvm.umin.i32(i32 %call2.i, i32 2147483647)
  %cmdp = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %cmdp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cmdp, align 4
  %tobool47.not = icmp eq ptr %49, null
  br i1 %tobool47.not, label %msecs_to_jiffies.exit.if.then56_crit_edge, label %lor.lhs.false

msecs_to_jiffies.exit.if.then56_crit_edge:        ; preds = %msecs_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false:                                    ; preds = %msecs_to_jiffies.exit
  %cmd_len = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cmd_len, align 4
  %conv48 = zext i8 %51 to i32
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %51, label %if.then.i.i.i [
    i8 -1, label %lor.lhs.false.if.then56_crit_edge
    i8 -2, label %lor.lhs.false.if.then56_crit_edge50
    i8 -3, label %lor.lhs.false.if.then56_crit_edge51
    i8 5, label %lor.lhs.false.if.then56_crit_edge52
    i8 4, label %lor.lhs.false.if.then56_crit_edge53
    i8 3, label %lor.lhs.false.if.then56_crit_edge54
    i8 2, label %lor.lhs.false.if.then56_crit_edge55
    i8 1, label %lor.lhs.false.if.then56_crit_edge56
    i8 0, label %lor.lhs.false.if.then56_crit_edge57
  ]

lor.lhs.false.if.then56_crit_edge57:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge56:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge55:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge54:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge53:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge52:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge51:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge50:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %lor.lhs.false.if.then56_crit_edge50, %lor.lhs.false.if.then56_crit_edge51, %lor.lhs.false.if.then56_crit_edge52, %lor.lhs.false.if.then56_crit_edge53, %lor.lhs.false.if.then56_crit_edge54, %lor.lhs.false.if.then56_crit_edge55, %lor.lhs.false.if.then56_crit_edge56, %lor.lhs.false.if.then56_crit_edge57, %msecs_to_jiffies.exit.if.then56_crit_edge
  %tobool.not.i25 = icmp eq ptr %sfp, null
  br i1 %tobool.not.i25, label %if.then56.cleanup_crit_edge, label %lor.lhs.false2.i30

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i30:                               ; preds = %if.then56
  %rq_list.i28 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %53 = ptrtoint ptr %rq_list.i28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %rq_list.i28, align 4
  %cmp.i.not.i29 = icmp eq ptr %54, %rq_list.i28
  br i1 %cmp.i.not.i29, label %lor.lhs.false2.i30.cleanup_crit_edge, label %do.body.i34

lor.lhs.false2.i30.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i34:                                      ; preds = %lor.lhs.false2.i30
  %rq_list_lock.i31 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i32 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i31) #14
  %55 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %call, align 4
  %cmp.i1.not.i33 = icmp eq ptr %56, %call
  br i1 %cmp.i1.not.i33, label %do.body.i34.do.body11.i43_crit_edge, label %if.then8.i36

do.body.i34.do.body11.i43_crit_edge:              ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i43

if.then8.i36:                                     ; preds = %do.body.i34
  %call.i.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #14
  br i1 %call.i.i.i35, label %if.end.i.i.i39, label %if.then8.i36.list_del.exit.i42_crit_edge

if.then8.i36.list_del.exit.i42_crit_edge:         ; preds = %if.then8.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i42

if.end.i.i.i39:                                   ; preds = %if.then8.i36
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i37 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i37, align 4
  %59 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call, align 4
  %prev1.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i.i38, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del.exit.i42

list_del.exit.i42:                                ; preds = %if.end.i.i.i39, %if.then8.i36.list_del.exit.i42_crit_edge
  %63 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 256 to ptr), ptr %call, align 4
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i40, align 4
  %parentfp.i41 = getelementptr inbounds %struct.sg_request, ptr %call, i32 0, i32 1
  %65 = ptrtoint ptr %parentfp.i41 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %parentfp.i41, align 4
  br label %do.body11.i43

do.body11.i43:                                    ; preds = %list_del.exit.i42, %do.body.i34.do.body11.i43_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i31, i32 noundef %call4.i32) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %lor.lhs.false
  call void @__check_object_size(ptr noundef nonnull %cmnd, i32 noundef %conv48, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %66 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %49, i32 %conv48, i32 -1226833920) #19, !srcloc !352
  %asmresult.i.i = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !337

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmnd, i32 noundef %conv48) #14
  %67 = call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !345
  %and.i.i.i.i = and i32 %69, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmnd, ptr noundef nonnull %49, i32 noundef %conv48) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #14, !srcloc !346
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !347
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv48, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv48, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end67, label %if.then65, !prof !337

if.then65:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i2 = sub i32 %conv48, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cmnd, i32 %sub.i.i2
  %70 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  call fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef nonnull %call)
  br label %cleanup

if.end67:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_only)
  %tobool68.not = icmp eq i32 %read_only, 0
  br i1 %tobool68.not, label %if.end67.if.end74_crit_edge, label %land.lhs.true

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

land.lhs.true:                                    ; preds = %if.end67
  %call70 = call fastcc i32 @sg_allow_access(ptr noundef %file, ptr noundef nonnull %cmnd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true.if.end74_crit_edge, label %if.then72

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sg_remove_request(ptr noundef %sfp, ptr noundef nonnull %call)
  br label %cleanup

if.end74:                                         ; preds = %land.lhs.true.if.end74_crit_edge, %if.end67.if.end74_crit_edge
  %call76 = call fastcc i32 @sg_common_write(ptr noundef %sfp, ptr noundef nonnull %call, ptr noundef nonnull %cmnd, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end74.cleanup_crit_edge, label %if.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  %tobool81.not = icmp eq ptr %o_srp, null
  br i1 %tobool81.not, label %if.end80.cleanup_crit_edge, label %if.then82

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %o_srp to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call, ptr %o_srp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %if.end80.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.then72, %if.then65, %do.body11.i43, %lor.lhs.false2.i30.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then38, %if.then34, %if.then28, %do.body11.i23, %lor.lhs.false2.i10.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %do.body11.i, %lor.lhs.false2.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %do.body6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then28 ], [ -22, %if.then34 ], [ -16, %if.then38 ], [ -14, %if.then65 ], [ -1, %if.then72 ], [ -22, %entry.cleanup_crit_edge ], [ -33, %do.body6 ], [ -33, %do.body.cleanup_crit_edge ], [ %call76, %if.end74.cleanup_crit_edge ], [ %count, %if.then82 ], [ %count, %if.end80.cleanup_crit_edge ], [ -14, %if.then15.cleanup_crit_edge ], [ -14, %lor.lhs.false2.i.cleanup_crit_edge ], [ -14, %do.body11.i ], [ -38, %if.then20.cleanup_crit_edge ], [ -38, %lor.lhs.false2.i10.cleanup_crit_edge ], [ -38, %do.body11.i23 ], [ -90, %if.then56.cleanup_crit_edge ], [ -90, %lor.lhs.false2.i30.cleanup_crit_edge ], [ -90, %do.body11.i43 ]
  call void @llvm.lifetime.end.p0(i64 252, ptr nonnull %cmnd) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sg_add_request(ptr noundef %sfp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %req_arr = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 10
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock) #14
  %rq_list = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %0 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rq_list, align 4
  %cmp.i.not = icmp eq ptr %1, %rq_list
  br i1 %cmp.i.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then:                                          ; preds = %entry
  %cmd_q = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 12
  %2 = ptrtoint ptr %cmd_q to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd_q, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %for.body.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %if.then
  %parentfp = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 0, i32 1
  %4 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parentfp, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.preheader.if.end13_crit_edge, label %for.inc

for.body.preheader.if.end13_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc:                                          ; preds = %for.body.preheader
  %incdec.ptr = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 1
  %parentfp.1 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 1, i32 1
  %6 = ptrtoint ptr %parentfp.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parentfp.1, align 4
  %tobool6.not.1 = icmp eq ptr %7, null
  br i1 %tobool6.not.1, label %for.inc.if.end13_crit_edge, label %for.inc.1

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.1:                                        ; preds = %for.inc
  %incdec.ptr.1 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 2
  %parentfp.2 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 2, i32 1
  %8 = ptrtoint ptr %parentfp.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parentfp.2, align 4
  %tobool6.not.2 = icmp eq ptr %9, null
  br i1 %tobool6.not.2, label %for.inc.1.if.end13_crit_edge, label %for.inc.2

for.inc.1.if.end13_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.2:                                        ; preds = %for.inc.1
  %incdec.ptr.2 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 3
  %parentfp.3 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 3, i32 1
  %10 = ptrtoint ptr %parentfp.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parentfp.3, align 4
  %tobool6.not.3 = icmp eq ptr %11, null
  br i1 %tobool6.not.3, label %for.inc.2.if.end13_crit_edge, label %for.inc.3

for.inc.2.if.end13_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.3:                                        ; preds = %for.inc.2
  %incdec.ptr.3 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 4
  %parentfp.4 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 4, i32 1
  %12 = ptrtoint ptr %parentfp.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parentfp.4, align 4
  %tobool6.not.4 = icmp eq ptr %13, null
  br i1 %tobool6.not.4, label %for.inc.3.if.end13_crit_edge, label %for.inc.4

for.inc.3.if.end13_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.4:                                        ; preds = %for.inc.3
  %incdec.ptr.4 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 5
  %parentfp.5 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 5, i32 1
  %14 = ptrtoint ptr %parentfp.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parentfp.5, align 4
  %tobool6.not.5 = icmp eq ptr %15, null
  br i1 %tobool6.not.5, label %for.inc.4.if.end13_crit_edge, label %for.inc.5

for.inc.4.if.end13_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.5:                                        ; preds = %for.inc.4
  %incdec.ptr.5 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 6
  %parentfp.6 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 6, i32 1
  %16 = ptrtoint ptr %parentfp.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parentfp.6, align 4
  %tobool6.not.6 = icmp eq ptr %17, null
  br i1 %tobool6.not.6, label %for.inc.5.if.end13_crit_edge, label %for.inc.6

for.inc.5.if.end13_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.6:                                        ; preds = %for.inc.5
  %incdec.ptr.6 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 7
  %parentfp.7 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 7, i32 1
  %18 = ptrtoint ptr %parentfp.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parentfp.7, align 4
  %tobool6.not.7 = icmp eq ptr %19, null
  br i1 %tobool6.not.7, label %for.inc.6.if.end13_crit_edge, label %for.inc.7

for.inc.6.if.end13_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.7:                                        ; preds = %for.inc.6
  %incdec.ptr.7 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 8
  %parentfp.8 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 8, i32 1
  %20 = ptrtoint ptr %parentfp.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parentfp.8, align 4
  %tobool6.not.8 = icmp eq ptr %21, null
  br i1 %tobool6.not.8, label %for.inc.7.if.end13_crit_edge, label %for.inc.8

for.inc.7.if.end13_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.8:                                        ; preds = %for.inc.7
  %incdec.ptr.8 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 9
  %parentfp.9 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 9, i32 1
  %22 = ptrtoint ptr %parentfp.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parentfp.9, align 4
  %tobool6.not.9 = icmp eq ptr %23, null
  br i1 %tobool6.not.9, label %for.inc.8.if.end13_crit_edge, label %for.inc.9

for.inc.8.if.end13_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.9:                                        ; preds = %for.inc.8
  %incdec.ptr.9 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 10
  %parentfp.10 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 10, i32 1
  %24 = ptrtoint ptr %parentfp.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parentfp.10, align 4
  %tobool6.not.10 = icmp eq ptr %25, null
  br i1 %tobool6.not.10, label %for.inc.9.if.end13_crit_edge, label %for.inc.10

for.inc.9.if.end13_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.10:                                       ; preds = %for.inc.9
  %incdec.ptr.10 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 11
  %parentfp.11 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 11, i32 1
  %26 = ptrtoint ptr %parentfp.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parentfp.11, align 4
  %tobool6.not.11 = icmp eq ptr %27, null
  br i1 %tobool6.not.11, label %for.inc.10.if.end13_crit_edge, label %for.inc.11

for.inc.10.if.end13_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.11:                                       ; preds = %for.inc.10
  %incdec.ptr.11 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 12
  %parentfp.12 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 12, i32 1
  %28 = ptrtoint ptr %parentfp.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parentfp.12, align 4
  %tobool6.not.12 = icmp eq ptr %29, null
  br i1 %tobool6.not.12, label %for.inc.11.if.end13_crit_edge, label %for.inc.12

for.inc.11.if.end13_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.12:                                       ; preds = %for.inc.11
  %incdec.ptr.12 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 13
  %parentfp.13 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 13, i32 1
  %30 = ptrtoint ptr %parentfp.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parentfp.13, align 4
  %tobool6.not.13 = icmp eq ptr %31, null
  br i1 %tobool6.not.13, label %for.inc.12.if.end13_crit_edge, label %for.inc.13

for.inc.12.if.end13_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.13:                                       ; preds = %for.inc.12
  %incdec.ptr.13 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 14
  %parentfp.14 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 14, i32 1
  %32 = ptrtoint ptr %parentfp.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parentfp.14, align 4
  %tobool6.not.14 = icmp eq ptr %33, null
  br i1 %tobool6.not.14, label %for.inc.13.if.end13_crit_edge, label %for.inc.14

for.inc.13.if.end13_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.14:                                       ; preds = %for.inc.13
  %incdec.ptr.14 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 15
  %parentfp.15 = getelementptr %struct.sg_fd, ptr %sfp, i32 0, i32 10, i32 15, i32 1
  %34 = ptrtoint ptr %parentfp.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parentfp.15, align 4
  %tobool6.not.15 = icmp eq ptr %35, null
  br i1 %tobool6.not.15, label %for.inc.14.if.end13_crit_edge, label %for.inc.14.cleanup_crit_edge

for.inc.14.cleanup_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.14.if.end13_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end13:                                         ; preds = %for.inc.14.if.end13_crit_edge, %for.inc.13.if.end13_crit_edge, %for.inc.12.if.end13_crit_edge, %for.inc.11.if.end13_crit_edge, %for.inc.10.if.end13_crit_edge, %for.inc.9.if.end13_crit_edge, %for.inc.8.if.end13_crit_edge, %for.inc.7.if.end13_crit_edge, %for.inc.6.if.end13_crit_edge, %for.inc.5.if.end13_crit_edge, %for.inc.4.if.end13_crit_edge, %for.inc.3.if.end13_crit_edge, %for.inc.2.if.end13_crit_edge, %for.inc.1.if.end13_crit_edge, %for.inc.if.end13_crit_edge, %for.body.preheader.if.end13_crit_edge, %entry.if.end13_crit_edge
  %rp.1 = phi ptr [ %req_arr, %entry.if.end13_crit_edge ], [ %req_arr, %for.body.preheader.if.end13_crit_edge ], [ %incdec.ptr, %for.inc.if.end13_crit_edge ], [ %incdec.ptr.1, %for.inc.1.if.end13_crit_edge ], [ %incdec.ptr.2, %for.inc.2.if.end13_crit_edge ], [ %incdec.ptr.3, %for.inc.3.if.end13_crit_edge ], [ %incdec.ptr.4, %for.inc.4.if.end13_crit_edge ], [ %incdec.ptr.5, %for.inc.5.if.end13_crit_edge ], [ %incdec.ptr.6, %for.inc.6.if.end13_crit_edge ], [ %incdec.ptr.7, %for.inc.7.if.end13_crit_edge ], [ %incdec.ptr.8, %for.inc.8.if.end13_crit_edge ], [ %incdec.ptr.9, %for.inc.9.if.end13_crit_edge ], [ %incdec.ptr.10, %for.inc.10.if.end13_crit_edge ], [ %incdec.ptr.11, %for.inc.11.if.end13_crit_edge ], [ %incdec.ptr.12, %for.inc.12.if.end13_crit_edge ], [ %incdec.ptr.13, %for.inc.13.if.end13_crit_edge ], [ %incdec.ptr.14, %for.inc.14.if.end13_crit_edge ]
  %36 = call ptr @memset(ptr %rp.1, i32 0, i32 252)
  %parentfp14 = getelementptr inbounds %struct.sg_request, ptr %rp.1, i32 0, i32 1
  %37 = ptrtoint ptr %parentfp14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sfp, ptr %parentfp14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %call15 = tail call i32 @jiffies_to_msecs(i32 noundef %38) #14
  %duration = getelementptr inbounds %struct.sg_request, ptr %rp.1, i32 0, i32 3, i32 20
  %39 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call15, ptr %duration, align 4
  %prev.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rp.1, ptr noundef %41, ptr noundef %rq_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rp.1, ptr %prev.i, align 4
  %43 = ptrtoint ptr %rp.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rq_list, ptr %rp.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %rp.1, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %rp.1, ptr %41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end13.cleanup_crit_edge, %for.inc.14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %rp.1, %if.end13.cleanup_crit_edge ], [ %rp.1, %if.end.i.i ], [ null, %for.inc.14.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_common_write(ptr noundef %sfp, ptr noundef %srp, ptr nocapture noundef readonly %cmnd, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %map_data.i = alloca %struct.rq_map_data, align 4
  %iov.i = alloca ptr, align 4
  %i.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 1
  %0 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentdp, align 4
  %header = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmnd, align 1
  %cmd_opcode = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %cmd_opcode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %cmd_opcode, align 1
  %status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 13
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %status, align 4
  %masked_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 14
  %6 = ptrtoint ptr %masked_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %masked_status, align 1
  %msg_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 15
  %7 = ptrtoint ptr %msg_status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %msg_status, align 2
  %info = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 21
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %info, align 4
  %host_status = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 17
  %9 = ptrtoint ptr %host_status to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %host_status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %10 = load i32, ptr @scsi_logging_level, align 4
  %11 = and i32 %10, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp = icmp ugt i32 %11, 32
  br i1 %cmp, label %do.body2, label %entry.do.end8_crit_edge, !prof !354

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parentdp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %13, i32 0, i32 11
  %16 = ptrtoint ptr %cmnd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmnd, align 1
  %conv = zext i8 %17 to i32
  %cmd_len = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %cmd_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd_len, align 4
  %conv6 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %15, ptr noundef %name, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv6) #14
  br label %do.end8

do.end8:                                          ; preds = %do.body2, %entry.do.end8_crit_edge
  %dxfer_len = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dxfer_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %21)
  %cmp9 = icmp ugt i32 %21, 268435455
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end8
  %tobool.not.i = icmp eq ptr %sfp, null
  %tobool1.not.i = icmp eq ptr %srp, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.then11.cleanup_crit_edge, label %lor.lhs.false2.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %if.then11
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %22 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %rq_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %do.body.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i:                                        ; preds = %lor.lhs.false2.i
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i) #14
  %24 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %srp, align 4
  %cmp.i1.not.i = icmp eq ptr %25, %srp
  br i1 %cmp.i1.not.i, label %do.body.i.do.body11.i_crit_edge, label %if.then8.i

do.body.i.do.body11.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then8.i:                                       ; preds = %do.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %srp) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srp, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then8.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %srp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %srp, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %parentfp.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %34 = ptrtoint ptr %parentfp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %parentfp.i, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %list_del.exit.i, %do.body.i.do.body11.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call4.i) #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %parentfp.i1 = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 1
  %35 = ptrtoint ptr %parentfp.i1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parentfp.i1, align 4
  %dxfer_direction.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %dxfer_direction.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dxfer_direction.i, align 4
  %iovec_count.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %iovec_count.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %iovec_count.i, align 2
  %conv.i = zext i16 %40 to i32
  %data.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2
  %parentdp.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %parentdp.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parentdp.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %request_queue.i = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %request_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map_data.i) #14
  %47 = getelementptr inbounds %struct.rq_map_data, ptr %map_data.i, i32 0, i32 1
  %48 = getelementptr inbounds %struct.rq_map_data, ptr %map_data.i, i32 0, i32 2
  %49 = getelementptr inbounds %struct.rq_map_data, ptr %map_data.i, i32 0, i32 3
  %50 = getelementptr inbounds %struct.rq_map_data, ptr %map_data.i, i32 0, i32 4
  %51 = getelementptr inbounds %struct.rq_map_data, ptr %map_data.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %38)
  %cmp.i = icmp eq i32 %38, -2
  %cond.i = zext i1 %cmp.i to i32
  %52 = call ptr @memset(ptr %map_data.i, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %53 = load i32, ptr @scsi_logging_level, align 4
  %54 = and i32 %53, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %54)
  %cmp4.i = icmp ugt i32 %54, 32
  br i1 %cmp4.i, label %do.body7.i, label %if.end12.do.end12.i_crit_edge, !prof !354

if.end12.do.end12.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i

do.body7.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %parentdp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %parentdp.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %name.i = getelementptr inbounds %struct.sg_device, ptr %56, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %58, ptr noundef %name.i, ptr noundef nonnull @.str.43, i32 noundef %21) #14
  br label %do.end12.i

do.end12.i:                                       ; preds = %do.body7.i, %if.end12.do.end12.i_crit_edge
  %cmd_len.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %cmd_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %60)
  %cmp14.i = icmp ugt i8 %60, 16
  br i1 %cmp14.i, label %if.end8.i.i.i, label %do.end12.i.if.end22.i_crit_edge

do.end12.i.if.end22.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end8.i.i.i:                                    ; preds = %do.end12.i
  %conv13.i = zext i8 %60 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv13.i, i32 noundef 3520) #20
  %tobool19.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool19.not.i, label %if.end8.i.i.i.sg_start_req.exit.thread_crit_edge, label %if.end8.i.i.i.if.end22.i_crit_edge

if.end8.i.i.i.if.end22.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.end8.i.i.i.sg_start_req.exit.thread_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_start_req.exit.thread

if.end22.i:                                       ; preds = %if.end8.i.i.i.if.end22.i_crit_edge, %do.end12.i.if.end22.i_crit_edge
  %long_cmdp.0.i = phi ptr [ %call9.i.i.i, %if.end8.i.i.i.if.end22.i_crit_edge ], [ null, %do.end12.i.if.end22.i_crit_edge ]
  %61 = ptrtoint ptr %dxfer_direction.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dxfer_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %62)
  %cmp24.i = icmp eq i32 %62, -2
  %cond26.i = select i1 %cmp24.i, i32 35, i32 34
  %call27.i = tail call ptr @scsi_alloc_request(ptr noundef %46, i32 noundef %cond26.i, i32 noundef 0) #14
  %cmp.i.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sg_start_req.exit, label %if.end31.i

if.end31.i:                                       ; preds = %if.end22.i
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %call27.i, i32 1
  %63 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cmd_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %64)
  %cmp35.i = icmp ugt i8 %64, 16
  br i1 %cmp35.i, label %if.then37.i, label %if.end31.i.if.end39.i_crit_edge

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %cmd38.i = getelementptr %struct.request, ptr %call27.i, i32 1, i32 4
  %65 = ptrtoint ptr %cmd38.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %long_cmdp.0.i, ptr %cmd38.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end31.i.if.end39.i_crit_edge
  %cmd40.i = getelementptr %struct.request, ptr %call27.i, i32 1, i32 4
  %66 = ptrtoint ptr %cmd40.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cmd40.i, align 4
  %68 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cmd_len.i, align 4
  %conv42.i = zext i8 %69 to i32
  %70 = call ptr @memcpy(ptr %67, ptr %cmnd, i32 %conv42.i)
  %71 = load i8, ptr %cmd_len.i, align 4
  %conv44.i = zext i8 %71 to i16
  %cmd_len45.i = getelementptr %struct.request, ptr %call27.i, i32 1, i32 5
  %72 = ptrtoint ptr %cmd_len45.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv44.i, ptr %cmd_len45.i, align 4
  %rq46.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 9
  %73 = ptrtoint ptr %rq46.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call27.i, ptr %rq46.i, align 4
  %end_io_data.i = getelementptr inbounds %struct.request, ptr %call27.i, i32 0, i32 33
  %74 = ptrtoint ptr %end_io_data.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %srp, ptr %end_io_data.i, align 4
  %retries.i = getelementptr inbounds %struct.scsi_request, ptr %add.ptr.i.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %retries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp47.i = icmp eq i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp49.i = icmp eq i32 %38, -1
  %or.cond.i2 = select i1 %cmp47.i, i1 true, i1 %cmp49.i
  br i1 %or.cond.i2, label %if.end39.i.sg_start_req.exit.thread48_crit_edge, label %if.end52.i

if.end39.i.sg_start_req.exit.thread48_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_start_req.exit.thread48

if.end52.i:                                       ; preds = %if.end39.i
  %76 = load i32, ptr @sg_allow_dio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool53.not.i = icmp eq i32 %76, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.then67.i_crit_edge, label %land.lhs.true.i

if.end52.i.if.then67.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67.i

land.lhs.true.i:                                  ; preds = %if.end52.i
  %flags.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 10
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 4
  %and54.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp ne i32 %and54.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %38)
  %cmp57.not.i = icmp ne i32 %38, -5
  %or.cond233.i = select i1 %tobool55.not.i, i1 %cmp57.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool60.not.i = icmp eq i16 %40, 0
  %or.cond234.i = select i1 %or.cond233.i, i1 %tobool60.not.i, i1 false
  br i1 %or.cond234.i, label %land.lhs.true61.i, label %land.lhs.true.i.if.then67.i_crit_edge

land.lhs.true.i.if.then67.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67.i

land.lhs.true61.i:                                ; preds = %land.lhs.true.i
  %dxferp.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 6
  %79 = ptrtoint ptr %dxferp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dxferp.i, align 4
  %81 = ptrtoint ptr %80 to i32
  %tobool.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i, label %land.lhs.true61.i.blk_rq_aligned.exit.i_crit_edge, label %cond.true.i.i.i

land.lhs.true61.i.blk_rq_aligned.exit.i_crit_edge: ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blk_rq_aligned.exit.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #16
  %dma_alignment.i.i.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 23
  %82 = ptrtoint ptr %dma_alignment.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_alignment.i.i.i, align 8
  br label %blk_rq_aligned.exit.i

blk_rq_aligned.exit.i:                            ; preds = %cond.true.i.i.i, %land.lhs.true61.i.blk_rq_aligned.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %83, %cond.true.i.i.i ], [ 511, %land.lhs.true61.i.blk_rq_aligned.exit.i_crit_edge ]
  %dma_pad_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 22
  %84 = ptrtoint ptr %dma_pad_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_pad_mask.i.i, align 4
  %or.i.i = or i32 %85, %cond.i.i.i
  %86 = or i32 %21, %81
  %87 = and i32 %or.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %.not.i = icmp eq i32 %87, 0
  br i1 %.not.i, label %blk_rq_aligned.exit.i.if.end127.i_crit_edge, label %blk_rq_aligned.exit.i.if.then67.i_crit_edge

blk_rq_aligned.exit.i.if.then67.i_crit_edge:      ; preds = %blk_rq_aligned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then67.i

blk_rq_aligned.exit.i.if.end127.i_crit_edge:      ; preds = %blk_rq_aligned.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127.i

if.then67.i:                                      ; preds = %blk_rq_aligned.exit.i.if.then67.i_crit_edge, %land.lhs.true.i.if.then67.i_crit_edge, %if.end52.i.if.then67.i_crit_edge
  %f_mutex.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %f_mutex.i, i32 noundef 0) #14
  %bufflen.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 7, i32 2
  %88 = ptrtoint ptr %bufflen.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bufflen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %89)
  %cmp68.not.i = icmp ugt i32 %21, %89
  br i1 %cmp68.not.i, label %if.then67.i.if.else74.i_crit_edge, label %land.lhs.true70.i

if.then67.i.if.else74.i_crit_edge:                ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else74.i

land.lhs.true70.i:                                ; preds = %if.then67.i
  %res_in_use.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 16
  %90 = ptrtoint ptr %res_in_use.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %res_in_use.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool71.not.i = icmp eq i8 %91, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %land.lhs.true70.i.if.else74.i_crit_edge

land.lhs.true70.i.if.else74.i_crit_edge:          ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else74.i

if.then72.i:                                      ; preds = %land.lhs.true70.i
  %92 = ptrtoint ptr %res_in_use.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %res_in_use.i, align 1
  %reserve.i.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 7
  %res_used.i.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 5
  %93 = ptrtoint ptr %res_used.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %res_used.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %94 = load i32, ptr @scsi_logging_level, align 4
  %95 = and i32 %94, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %95)
  %cmp.i235.i = icmp ugt i32 %95, 32
  br i1 %cmp.i235.i, label %do.body2.i.i, label %if.then72.i.do.end5.i.i_crit_edge, !prof !354

if.then72.i.do.end5.i.i_crit_edge:                ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5.i.i

do.body2.i.i:                                     ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #16
  %96 = ptrtoint ptr %parentdp.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parentdp.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %name.i.i = getelementptr inbounds %struct.sg_device, ptr %97, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %99, ptr noundef %name.i.i, ptr noundef nonnull @.str.44, i32 noundef %21) #14
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.body2.i.i, %if.then72.i.do.end5.i.i_crit_edge
  %page_order.i.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 7, i32 4
  %100 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %page_order.i.i, align 4
  %add.i.i = add i32 %101, 12
  %shl.i.i = shl nuw i32 1, %add.i.i
  %102 = ptrtoint ptr %reserve.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %reserve.i.i, align 4
  %conv.i.i = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp671.not.i.i = icmp eq i16 %103, 0
  br i1 %cmp671.not.i.i, label %do.end5.i.i.for.end.i.i_crit_edge, label %do.end5.i.i.for.body.i.i_crit_edge

do.end5.i.i.for.body.i.i_crit_edge:               ; preds = %do.end5.i.i
  br label %for.body.i.i

do.end5.i.i.for.end.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.else.i.i.for.body.i.i_crit_edge, %do.end5.i.i.for.body.i.i_crit_edge
  %rem.073.i.i = phi i32 [ %sub.i.i, %if.else.i.i.for.body.i.i_crit_edge ], [ %21, %do.end5.i.i.for.body.i.i_crit_edge ]
  %k.072.i.i = phi i32 [ %inc.i.i, %if.else.i.i.for.body.i.i_crit_edge ], [ 0, %do.end5.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.073.i.i, i32 %shl.i.i)
  %cmp8.not.i.i = icmp sgt i32 %rem.073.i.i, %shl.i.i
  br i1 %cmp8.not.i.i, label %if.else.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %104 = trunc i32 %k.072.i.i to i16
  %conv12.i.i = add i16 %104, 1
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv12.i.i, ptr %data.i, align 4
  %sglist_len.i.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 7, i32 1
  %106 = ptrtoint ptr %sglist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sglist_len.i.i, align 4
  %sglist_len14.i.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %sglist_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %sglist_len14.i.i, align 4
  %pages.i.i = getelementptr inbounds %struct.sg_fd, ptr %36, i32 0, i32 7, i32 3
  %109 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pages.i.i, align 4
  %pages15.i.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 3
  %111 = ptrtoint ptr %pages15.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %110, ptr %pages15.i.i, align 4
  %bufflen.i.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %bufflen.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %21, ptr %bufflen.i.i, align 4
  %113 = ptrtoint ptr %page_order.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %page_order.i.i, align 4
  %page_order17.i.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 4
  %115 = ptrtoint ptr %page_order17.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %page_order17.i.i, align 4
  br label %for.end.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = sub i32 %rem.073.i.i, %shl.i.i
  %inc.i.i = add nuw nsw i32 %k.072.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.else.i.i.for.end.i.i_crit_edge, label %if.else.i.i.for.body.i.i_crit_edge

if.else.i.i.for.body.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.else.i.i.for.end.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.else.i.i.for.end.i.i_crit_edge, %if.then10.i.i, %do.end5.i.i.for.end.i.i_crit_edge
  %k.070.i.i = phi i32 [ %k.072.i.i, %if.then10.i.i ], [ 0, %do.end5.i.i.for.end.i.i_crit_edge ], [ %conv.i.i, %if.else.i.i.for.end.i.i_crit_edge ]
  %116 = ptrtoint ptr %reserve.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %reserve.i.i, align 4
  %conv20.i.i = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %k.070.i.i, i32 %conv20.i.i)
  %cmp21.not.i.i = icmp ult i32 %k.070.i.i, %conv20.i.i
  br i1 %cmp21.not.i.i, label %for.end.i.i.if.end92.i_crit_edge, label %do.body24.i.i

for.end.i.i.if.end92.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

do.body24.i.i:                                    ; preds = %for.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %118 = load i32, ptr @scsi_logging_level, align 4
  %119 = and i32 %118, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp27.not.i.i = icmp eq i32 %119, 0
  br i1 %cmp27.not.i.i, label %do.body24.i.i.if.end92.i_crit_edge, label %do.body36.i.i, !prof !337

do.body24.i.i.if.end92.i_crit_edge:               ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

do.body36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %parentdp.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %parentdp.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %name40.i.i = getelementptr inbounds %struct.sg_device, ptr %121, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %123, ptr noundef %name40.i.i, ptr noundef nonnull @.str.45) #14
  br label %if.end92.i

if.else74.i:                                      ; preds = %land.lhs.true70.i.if.else74.i_crit_edge, %if.then67.i.if.else74.i_crit_edge
  %flags75.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 10
  %124 = ptrtoint ptr %flags75.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags75.i, align 4
  %and76.i = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.else85.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #16
  %spec.store.select.i = select i1 %cmp68.not.i, i32 -12, i32 -16
  tail call void @mutex_unlock(ptr noundef %f_mutex.i) #14
  br label %sg_start_req.exit.thread

if.else85.i:                                      ; preds = %if.else74.i
  %call86.i = tail call fastcc i32 @sg_build_indirect(ptr noundef %data.i, ptr noundef %36, i32 noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.else85.i.if.end92.i_crit_edge, label %if.then88.i

if.else85.i.if.end92.i_crit_edge:                 ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92.i

if.then88.i:                                      ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %f_mutex.i) #14
  br label %sg_start_req.exit.thread

if.end92.i:                                       ; preds = %if.else85.i.if.end92.i_crit_edge, %do.body36.i.i, %do.body24.i.i.if.end92.i_crit_edge, %for.end.i.i.if.end92.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %f_mutex.i) #14
  %pages.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 3
  %126 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pages.i, align 4
  %128 = ptrtoint ptr %map_data.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %map_data.i, align 4
  %page_order.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 4
  %129 = ptrtoint ptr %page_order.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %page_order.i, align 4
  %131 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %47, align 4
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %data.i, align 4
  %conv96.i = zext i16 %133 to i32
  %134 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv96.i, ptr %48, align 4
  %135 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %49, align 4
  %dxferp97.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 6
  %136 = ptrtoint ptr %dxferp97.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dxferp97.i, align 4
  %tobool98.not.i = icmp eq ptr %137, null
  %cond99.i = zext i1 %tobool98.not.i to i32
  %138 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %cond99.i, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %38)
  %cmp100.i = icmp eq i32 %38, -4
  %spec.select261.i = zext i1 %cmp100.i to i32
  %139 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %spec.select261.i, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool107.not.i = icmp eq i16 %40, 0
  br i1 %tobool107.not.i, label %if.end92.i.if.end127.i_crit_edge, label %if.then108.i

if.end92.i.if.end127.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127.i

if.then108.i:                                     ; preds = %if.end92.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov.i) #14
  %140 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %iov.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i.i) #14
  %141 = call ptr @memset(ptr %i.i, i32 255, i32 24)
  %call110.i = call i32 @import_iovec(i32 noundef %cond.i, ptr noundef %137, i32 noundef %conv.i, i32 noundef 0, ptr noundef nonnull %iov.i, ptr noundef nonnull %i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %cmp111.i = icmp slt i32 %call110.i, 0
  br i1 %cmp111.i, label %if.then108.i.cleanup.thread.i_crit_edge, label %if.end114.i

if.then108.i.cleanup.thread.i_crit_edge:          ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end114.i:                                      ; preds = %if.then108.i
  %142 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dxfer_len, align 4
  %count1.i.i = getelementptr inbounds %struct.iov_iter, ptr %i.i, i32 0, i32 4
  %144 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %143)
  %cmp.i237.i = icmp ugt i32 %145, %143
  br i1 %cmp.i237.i, label %if.then.i.i, label %if.end114.i.iov_iter_truncate.exit.i_crit_edge

if.end114.i.iov_iter_truncate.exit.i_crit_edge:   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %iov_iter_truncate.exit.i

if.then.i.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #16
  %146 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %143, ptr %count1.i.i, align 8
  br label %iov_iter_truncate.exit.i

iov_iter_truncate.exit.i:                         ; preds = %if.then.i.i, %if.end114.i.iov_iter_truncate.exit.i_crit_edge
  %147 = phi i32 [ %145, %if.end114.i.iov_iter_truncate.exit.i_crit_edge ], [ %143, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool118.not.i = icmp eq i32 %147, 0
  br i1 %tobool118.not.i, label %if.then119.i, label %if.end127.thread.i

if.then119.i:                                     ; preds = %iov_iter_truncate.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %149) #14
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then119.i, %if.then108.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call110.i, %if.then108.i.cleanup.thread.i_crit_edge ], [ -22, %if.then119.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #14
  br label %sg_start_req.exit.thread

if.end127.i:                                      ; preds = %if.end92.i.if.end127.i_crit_edge, %blk_rq_aligned.exit.i.if.end127.i_crit_edge
  %md.0240247.i = phi ptr [ %map_data.i, %if.end92.i.if.end127.i_crit_edge ], [ null, %blk_rq_aligned.exit.i.if.end127.i_crit_edge ]
  %tobool66.not241246.i = phi i1 [ false, %if.end92.i.if.end127.i_crit_edge ], [ true, %blk_rq_aligned.exit.i.if.end127.i_crit_edge ]
  %dxferp124.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 6
  %150 = ptrtoint ptr %dxferp124.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dxferp124.i, align 4
  %152 = ptrtoint ptr %dxfer_len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %dxfer_len, align 4
  %call126.i = call i32 @blk_rq_map_user(ptr noundef %46, ptr noundef %call27.i, ptr noundef %md.0240247.i, ptr noundef %151, i32 noundef %153, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool128.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool128.not.i, label %if.then129.i, label %if.end127.i.sg_start_req.exit.thread_crit_edge

if.end127.i.sg_start_req.exit.thread_crit_edge:   ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_start_req.exit.thread

if.end127.thread.i:                               ; preds = %iov_iter_truncate.exit.i
  %call121.i = call i32 @blk_rq_map_user_iov(ptr noundef %46, ptr noundef %call27.i, ptr noundef nonnull %map_data.i, ptr noundef nonnull %i.i, i32 noundef 2592) #14
  %154 = ptrtoint ptr %iov.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %iov.i, align 4
  call void @kfree(ptr noundef %155) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool128.not255.i = icmp eq i32 %call121.i, 0
  br i1 %tobool128.not255.i, label %if.then129.thread.i, label %if.end127.thread.i.sg_start_req.exit.thread_crit_edge

if.end127.thread.i.sg_start_req.exit.thread_crit_edge: ; preds = %if.end127.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_start_req.exit.thread

if.then129.thread.i:                              ; preds = %if.end127.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %bio258.i = getelementptr inbounds %struct.request, ptr %call27.i, i32 0, i32 10
  %156 = ptrtoint ptr %bio258.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bio258.i, align 8
  %bio130259.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 10
  %158 = ptrtoint ptr %bio130259.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %bio130259.i, align 4
  br label %sg_start_req.exit.thread48

if.then129.i:                                     ; preds = %if.end127.i
  %bio.i = getelementptr inbounds %struct.request, ptr %call27.i, i32 0, i32 10
  %159 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bio.i, align 8
  %bio130.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 10
  %161 = ptrtoint ptr %bio130.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %bio130.i, align 4
  br i1 %tobool66.not241246.i, label %if.then132.i, label %if.then129.i.sg_start_req.exit.thread48_crit_edge

if.then129.i.sg_start_req.exit.thread48_crit_edge: ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_start_req.exit.thread48

if.then132.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #16
  %dio_in_use.i = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 2, i32 5
  %162 = ptrtoint ptr %dio_in_use.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %dio_in_use.i, align 4
  %163 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %info, align 4
  %or.i = or i32 %164, 2
  store i32 %or.i, ptr %info, align 4
  br label %sg_start_req.exit.thread48

sg_start_req.exit.thread:                         ; preds = %if.end127.thread.i.sg_start_req.exit.thread_crit_edge, %if.end127.i.sg_start_req.exit.thread_crit_edge, %cleanup.thread.i, %if.then88.i, %if.then78.i, %if.end8.i.i.i.sg_start_req.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ %call121.i, %if.end127.thread.i.sg_start_req.exit.thread_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call126.i, %if.end127.i.sg_start_req.exit.thread_crit_edge ], [ -12, %if.end8.i.i.i.sg_start_req.exit.thread_crit_edge ], [ %call86.i, %if.then88.i ], [ %spec.store.select.i, %if.then78.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map_data.i) #14
  br label %do.body16

sg_start_req.exit.thread48:                       ; preds = %if.then132.i, %if.then129.i.sg_start_req.exit.thread48_crit_edge, %if.then129.thread.i, %if.end39.i.sg_start_req.exit.thread48_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map_data.i) #14
  %detaching = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %165 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool43.not = icmp eq i32 %166, 0
  br i1 %tobool43.not, label %if.end53, label %if.then44

sg_start_req.exit:                                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %long_cmdp.0.i) #14
  %167 = ptrtoint ptr %call27.i to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map_data.i) #14
  br label %do.body16

do.body16:                                        ; preds = %sg_start_req.exit, %sg_start_req.exit.thread
  %retval.1.i45 = phi i32 [ %retval.1.i.ph, %sg_start_req.exit.thread ], [ %167, %sg_start_req.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %168 = load i32, ptr @scsi_logging_level, align 4
  %169 = and i32 %168, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp19.not = icmp eq i32 %169, 0
  br i1 %cmp19.not, label %do.body16.do.end38_crit_edge, label %do.body28, !prof !337

do.body16.do.end38_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38

do.body28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %170 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %parentdp, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %name32 = getelementptr inbounds %struct.sg_device, ptr %171, i32 0, i32 11
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %173, ptr noundef %name32, ptr noundef nonnull @.str.42, i32 noundef %retval.1.i45) #14
  br label %do.end38

do.end38:                                         ; preds = %do.body28, %do.body16.do.end38_crit_edge
  %call39 = call fastcc i32 @sg_finish_rem_req(ptr noundef %srp)
  %tobool.not.i3 = icmp eq ptr %sfp, null
  %tobool1.not.i4 = icmp eq ptr %srp, null
  %or.cond.i5 = or i1 %tobool.not.i3, %tobool1.not.i4
  br i1 %or.cond.i5, label %do.end38.cleanup_crit_edge, label %lor.lhs.false2.i8

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i8:                                ; preds = %do.end38
  %rq_list.i6 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %174 = ptrtoint ptr %rq_list.i6 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile ptr, ptr %rq_list.i6, align 4
  %cmp.i.not.i7 = icmp eq ptr %175, %rq_list.i6
  br i1 %cmp.i.not.i7, label %lor.lhs.false2.i8.cleanup_crit_edge, label %do.body.i12

lor.lhs.false2.i8.cleanup_crit_edge:              ; preds = %lor.lhs.false2.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i12:                                      ; preds = %lor.lhs.false2.i8
  %rq_list_lock.i9 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i10 = call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i9) #14
  %176 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile ptr, ptr %srp, align 4
  %cmp.i1.not.i11 = icmp eq ptr %177, %srp
  br i1 %cmp.i1.not.i11, label %do.body.i12.do.body11.i21_crit_edge, label %if.then8.i14

do.body.i12.do.body11.i21_crit_edge:              ; preds = %do.body.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i21

if.then8.i14:                                     ; preds = %do.body.i12
  %call.i.i.i13 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %srp) #14
  br i1 %call.i.i.i13, label %if.end.i.i.i17, label %if.then8.i14.list_del.exit.i20_crit_edge

if.then8.i14.list_del.exit.i20_crit_edge:         ; preds = %if.then8.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i20

if.end.i.i.i17:                                   ; preds = %if.then8.i14
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prev.i.i.i15, align 4
  %180 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %srp, align 4
  %prev1.i.i.i.i16 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %prev1.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev1.i.i.i.i16, align 4
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %181, ptr %179, align 4
  br label %list_del.exit.i20

list_del.exit.i20:                                ; preds = %if.end.i.i.i17, %if.then8.i14.list_del.exit.i20_crit_edge
  %184 = ptrtoint ptr %srp to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 256 to ptr), ptr %srp, align 4
  %prev.i.i18 = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %185 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i18, align 4
  %186 = ptrtoint ptr %parentfp.i1 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %parentfp.i1, align 4
  br label %do.body11.i21

do.body11.i21:                                    ; preds = %list_del.exit.i20, %do.body.i12.do.body11.i21_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i9, i32 noundef %call4.i10) #14
  br label %cleanup

if.then44:                                        ; preds = %sg_start_req.exit.thread48
  %bio = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 10
  %187 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bio, align 4
  %tobool45.not = icmp eq ptr %188, null
  br i1 %tobool45.not, label %if.then44.if.end50_crit_edge, label %if.then46

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then46:                                        ; preds = %if.then44
  %189 = ptrtoint ptr %rq46.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rq46.i, align 4
  %add.ptr.i.i = getelementptr %struct.request, ptr %190, i32 1
  %cmd.i = getelementptr %struct.request, ptr %190, i32 1, i32 4
  %191 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cmd.i, align 4
  %cmp.not.i = icmp eq ptr %192, %add.ptr.i.i
  br i1 %cmp.not.i, label %if.then46.scsi_req_free_cmd.exit_crit_edge, label %if.then.i

if.then46.scsi_req_free_cmd.exit_crit_edge:       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_req_free_cmd.exit

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %192) #14
  br label %scsi_req_free_cmd.exit

scsi_req_free_cmd.exit:                           ; preds = %if.then.i, %if.then46.scsi_req_free_cmd.exit_crit_edge
  %193 = ptrtoint ptr %rq46.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rq46.i, align 4
  call void @blk_mq_free_request(ptr noundef %194) #14
  %195 = ptrtoint ptr %rq46.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %rq46.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %scsi_req_free_cmd.exit, %if.then44.if.end50_crit_edge
  %call51 = call fastcc i32 @sg_finish_rem_req(ptr noundef %srp)
  %tobool.not.i23 = icmp eq ptr %sfp, null
  %tobool1.not.i24 = icmp eq ptr %srp, null
  %or.cond.i25 = or i1 %tobool.not.i23, %tobool1.not.i24
  br i1 %or.cond.i25, label %if.end50.cleanup_crit_edge, label %lor.lhs.false2.i28

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false2.i28:                               ; preds = %if.end50
  %rq_list.i26 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 8
  %196 = ptrtoint ptr %rq_list.i26 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile ptr, ptr %rq_list.i26, align 4
  %cmp.i.not.i27 = icmp eq ptr %197, %rq_list.i26
  br i1 %cmp.i.not.i27, label %lor.lhs.false2.i28.cleanup_crit_edge, label %do.body.i32

lor.lhs.false2.i28.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i32:                                      ; preds = %lor.lhs.false2.i28
  %rq_list_lock.i29 = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 3
  %call4.i30 = call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i29) #14
  %198 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile ptr, ptr %srp, align 4
  %cmp.i1.not.i31 = icmp eq ptr %199, %srp
  br i1 %cmp.i1.not.i31, label %do.body.i32.do.body11.i41_crit_edge, label %if.then8.i34

do.body.i32.do.body11.i41_crit_edge:              ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i41

if.then8.i34:                                     ; preds = %do.body.i32
  %call.i.i.i33 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %srp) #14
  br i1 %call.i.i.i33, label %if.end.i.i.i37, label %if.then8.i34.list_del.exit.i40_crit_edge

if.then8.i34.list_del.exit.i40_crit_edge:         ; preds = %if.then8.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i40

if.end.i.i.i37:                                   ; preds = %if.then8.i34
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %200 = ptrtoint ptr %prev.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i.i.i35, align 4
  %202 = ptrtoint ptr %srp to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %srp, align 4
  %prev1.i.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %prev1.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev1.i.i.i.i36, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %203, ptr %201, align 4
  br label %list_del.exit.i40

list_del.exit.i40:                                ; preds = %if.end.i.i.i37, %if.then8.i34.list_del.exit.i40_crit_edge
  %206 = ptrtoint ptr %srp to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr inttoptr (i32 256 to ptr), ptr %srp, align 4
  %prev.i.i38 = getelementptr inbounds %struct.list_head, ptr %srp, i32 0, i32 1
  %207 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i38, align 4
  %208 = ptrtoint ptr %parentfp.i1 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %parentfp.i1, align 4
  br label %do.body11.i41

do.body11.i41:                                    ; preds = %list_del.exit.i40, %do.body.i32.do.body11.i41_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i29, i32 noundef %call4.i30) #14
  br label %cleanup

if.end53:                                         ; preds = %sg_start_req.exit.thread48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %209 = load volatile i32, ptr @jiffies, align 128
  %call54 = call i32 @jiffies_to_msecs(i32 noundef %209) #14
  %duration = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 20
  %210 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %call54, ptr %duration, align 4
  %211 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp55.not = icmp eq i32 %212, 0
  br i1 %cmp55.not, label %if.end53.if.else_crit_edge, label %land.lhs.true

if.end53.if.else_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end53
  %flags = getelementptr inbounds %struct.sg_request, ptr %srp, i32 0, i32 3, i32 10
  %213 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %flags, align 4
  %and57 = and i32 %214, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end53.if.else_crit_edge
  br label %if.end60

if.end60:                                         ; preds = %if.else, %land.lhs.true.if.end60_crit_edge
  %tobool64 = phi i1 [ true, %if.else ], [ false, %land.lhs.true.if.end60_crit_edge ]
  %215 = ptrtoint ptr %rq46.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rq46.i, align 4
  %timeout62 = getelementptr inbounds %struct.request, ptr %216, i32 0, i32 7
  %217 = ptrtoint ptr %timeout62 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %timeout, ptr %timeout62, align 4
  %f_ref = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %f_ref, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %f_ref, i32 1, i32 3, i32 1) #14
  %218 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_ref, ptr %f_ref, i32 1, ptr elementtype(i32) %f_ref) #14, !srcloc !375
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %218, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end60.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !354

if.end60.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end60
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %219 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %219)
  %.not.i.i.i.i = icmp sgt i32 %219, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !337

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end60.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end60.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %f_ref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %220 = ptrtoint ptr %rq46.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rq46.i, align 4
  call void @blk_execute_rq_nowait(ptr noundef %221, i1 noundef zeroext %tobool64, ptr noundef nonnull @sg_rq_end_io) #14
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %do.body11.i41, %lor.lhs.false2.i28.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.body11.i21, %lor.lhs.false2.i8.cleanup_crit_edge, %do.end38.cleanup_crit_edge, %do.body11.i, %lor.lhs.false2.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kref_get.exit ], [ -22, %if.then11.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %do.body11.i ], [ %retval.1.i45, %do.end38.cleanup_crit_edge ], [ %retval.1.i45, %lor.lhs.false2.i8.cleanup_crit_edge ], [ %retval.1.i45, %do.body11.i21 ], [ -19, %if.end50.cleanup_crit_edge ], [ -19, %lor.lhs.false2.i28.cleanup_crit_edge ], [ -19, %do.body11.i41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_sg_io_hdr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_allow_access(ptr nocapture noundef readonly %filp, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parentdp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %type = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp eq i8 %7, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %8 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_mode, align 8
  %call = tail call zeroext i1 @scsi_cmd_allowed(ptr noundef %cmd, i32 noundef %9) #14
  %not.call = xor i1 %call, true
  %. = sext i1 %not.call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_cmd_allowed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_rq_end_io(ptr noundef %rq, i8 noundef zeroext %status) #2 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %add.ptr.i.i = getelementptr %struct.request, ptr %rq, i32 1
  %done1 = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %done1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end23, label %do.end, !prof !337

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1332, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  %parentfp = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parentfp, align 4
  %cmp25 = icmp eq ptr %5, null
  br i1 %cmp25, label %do.end42, label %if.end58, !prof !354

do.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1336, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end58:                                         ; preds = %if.end23
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parentdp, align 4
  %detaching = getelementptr inbounds %struct.sg_device, ptr %7, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %8 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool60.not = icmp eq i32 %9, 0
  br i1 %tobool60.not, label %if.end58.if.end73_crit_edge, label %do.end70, !prof !337

if.end58.if.end73_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.end70:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #18
  br label %if.end73

if.end73:                                         ; preds = %do.end70, %if.end58.if.end73_crit_edge
  %sense74 = getelementptr %struct.request, ptr %rq, i32 1, i32 9
  %10 = ptrtoint ptr %sense74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sense74, align 4
  %result75 = getelementptr %struct.request, ptr %rq, i32 1, i32 6
  %12 = ptrtoint ptr %result75 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %result75, align 4
  %resid_len = getelementptr %struct.request, ptr %rq, i32 1, i32 8
  %14 = ptrtoint ptr %resid_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resid_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %16 = load i32, ptr @scsi_logging_level, align 4
  %17 = and i32 %16, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp77 = icmp ugt i32 %17, 32
  br i1 %cmp77, label %do.body86, label %if.end73.do.end91_crit_edge, !prof !354

if.end73.do.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end91

do.body86:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %7, i32 0, i32 11
  %pack_id = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 11
  %20 = ptrtoint ptr %pack_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pack_id, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %19, ptr noundef %name, ptr noundef nonnull @.str.52, i32 noundef %21, i32 noundef %13) #14
  br label %do.end91

do.end91:                                         ; preds = %do.body86, %if.end73.do.end91_crit_edge
  %resid93 = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 19
  %22 = ptrtoint ptr %resid93 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %15, ptr %resid93, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %call94 = tail call i32 @jiffies_to_msecs(i32 noundef %23) #14
  %duration = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 20
  %24 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %duration, align 4
  %26 = tail call i32 @llvm.usub.sat.i32(i32 %call94, i32 %25)
  %27 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp102.not = icmp eq i32 %13, 0
  br i1 %cmp102.not, label %do.end91.if.end158_crit_edge, label %if.then104

do.end91.if.end158_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then104:                                       ; preds = %do.end91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #14
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %conv106 = trunc i32 %13 to i8
  %status108 = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 13
  %29 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %sshdr, align 8
  %30 = ptrtoint ptr %status108 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv106, ptr %status108, align 4
  %31 = lshr i8 %conv106, 1
  %masked_status = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 14
  %32 = ptrtoint ptr %masked_status to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %masked_status, align 1
  %msg_status = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 15
  %33 = ptrtoint ptr %msg_status to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %msg_status, align 2
  %34 = lshr i32 %13, 16
  %35 = trunc i32 %34 to i16
  %conv116 = and i16 %35, 255
  %host_status = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 17
  %36 = ptrtoint ptr %host_status to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv116, ptr %host_status, align 4
  %37 = lshr i32 %13, 24
  %conv120 = trunc i32 %37 to i16
  %driver_status = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 3, i32 18
  %38 = ptrtoint ptr %driver_status to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv120, ptr %driver_status, align 2
  %sgdebug = getelementptr inbounds %struct.sg_device, ptr %7, i32 0, i32 10
  %39 = ptrtoint ptr %sgdebug to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sgdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp123.not = icmp eq i8 %40, 0
  br i1 %cmp123.not, label %if.then104.if.end137_crit_edge, label %land.lhs.true

if.then104.if.end137_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

land.lhs.true:                                    ; preds = %if.then104
  %trunc = trunc i8 %31 to i7
  %41 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.129)
  switch i7 %trunc, label %land.lhs.true.if.end137_crit_edge [
    i7 1, label %land.lhs.true.if.then135_crit_edge
    i7 17, label %land.lhs.true.if.then135_crit_edge292
  ]

land.lhs.true.if.then135_crit_edge292:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then135

land.lhs.true.if.then135_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then135

land.lhs.true.if.end137_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then135:                                       ; preds = %land.lhs.true.if.then135_crit_edge, %land.lhs.true.if.then135_crit_edge292
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  tail call void @__scsi_print_sense(ptr noundef %43, ptr noundef nonnull @.str.51, ptr noundef %11, i32 noundef 96) #14
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %land.lhs.true.if.end137_crit_edge, %if.then104.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %13)
  %cmp140.not = icmp ult i32 %13, 16777216
  br i1 %cmp140.not, label %if.end137.if.end157_crit_edge, label %land.lhs.true142

if.end137.if.end157_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

land.lhs.true142:                                 ; preds = %if.end137
  %call143 = call zeroext i1 @scsi_normalize_sense(ptr noundef %11, i32 noundef 96, ptr noundef nonnull %sshdr) #14
  br i1 %call143, label %land.lhs.true145, label %land.lhs.true142.if.end157_crit_edge

land.lhs.true142.if.end157_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

land.lhs.true145:                                 ; preds = %land.lhs.true142
  %44 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sshdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %45)
  %cmp.i = icmp ugt i8 %45, 111
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i = icmp ne i8 %46, 0
  %47 = and i1 %cmp.i, %tobool.i
  br i1 %47, label %land.lhs.true145.if.end157_crit_edge, label %land.lhs.true147

land.lhs.true145.if.end157_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

land.lhs.true147:                                 ; preds = %land.lhs.true145
  %48 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %cmp149 = icmp eq i8 %49, 6
  br i1 %cmp149, label %land.lhs.true151, label %land.lhs.true147.if.end157_crit_edge

land.lhs.true147.if.end157_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

land.lhs.true151:                                 ; preds = %land.lhs.true147
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %removable = getelementptr inbounds %struct.scsi_device, ptr %51, i32 0, i32 41
  %52 = ptrtoint ptr %removable to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %bf.load = load i64, ptr %removable, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool153.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool153.not, label %land.lhs.true151.if.end157_crit_edge, label %if.then154

land.lhs.true151.if.end157_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.then154:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  %bf.set = or i64 %bf.load, 4611686018427387904
  %53 = ptrtoint ptr %removable to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %bf.set, ptr %removable, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %land.lhs.true151.if.end157_crit_edge, %land.lhs.true147.if.end157_crit_edge, %land.lhs.true145.if.end157_crit_edge, %land.lhs.true142.if.end157_crit_edge, %if.end137.if.end157_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #14
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %do.end91.if.end158_crit_edge
  %sense_len = getelementptr %struct.request, ptr %rq, i32 1, i32 7
  %54 = ptrtoint ptr %sense_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sense_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool159.not = icmp eq i32 %55, 0
  br i1 %tobool159.not, label %if.end158.if.end163_crit_edge, label %if.then160

if.end158.if.end163_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  %sense_b = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %sense74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sense74, align 4
  %58 = call ptr @memcpy(ptr %sense_b, ptr %57, i32 96)
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end158.if.end163_crit_edge
  %rq164 = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %rq164 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %rq164, align 4
  %cmd.i = getelementptr %struct.request, ptr %rq, i32 1, i32 4
  %60 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmd.i, align 4
  %cmp.not.i = icmp eq ptr %61, %add.ptr.i.i
  br i1 %cmp.not.i, label %if.end163.scsi_req_free_cmd.exit_crit_edge, label %if.then.i

if.end163.scsi_req_free_cmd.exit_crit_edge:       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %scsi_req_free_cmd.exit

if.then.i:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %61) #14
  br label %scsi_req_free_cmd.exit

scsi_req_free_cmd.exit:                           ; preds = %if.then.i, %if.end163.scsi_req_free_cmd.exit_crit_edge
  call void @blk_mq_free_request(ptr noundef %rq) #14
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 3
  %call170 = call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock) #14
  %orphan = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %orphan to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %orphan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool173.not = icmp eq i8 %63, 0
  br i1 %tobool173.not, label %scsi_req_free_cmd.exit.if.then203_crit_edge, label %if.then180, !prof !337

scsi_req_free_cmd.exit.if.then203_crit_edge:      ; preds = %scsi_req_free_cmd.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then203

if.then180:                                       ; preds = %scsi_req_free_cmd.exit
  %keep_orphan = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 14
  %64 = ptrtoint ptr %keep_orphan to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %keep_orphan, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool181.not = icmp eq i8 %65, 0
  br i1 %tobool181.not, label %if.end184, label %if.then182

if.then182:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  %sg_io_owned = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %sg_io_owned to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %sg_io_owned, align 2
  br label %if.then203

if.end184:                                        ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %done1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %done1, align 1
  call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call170) #14
  %ew = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 11
  call void @__init_work(ptr noundef %ew, i32 noundef 0) #14
  %68 = ptrtoint ptr %ew to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %ew, align 4
  %lockdep_map = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 11, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.53, ptr noundef nonnull @sg_rq_end_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry213 = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 11, i32 0, i32 1
  %69 = ptrtoint ptr %entry213 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry213, ptr %entry213, align 4
  %prev.i = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 11, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry213, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sg_request, ptr %1, i32 0, i32 11, i32 0, i32 2
  %71 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sg_rq_end_io_usercontext, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %72 = load ptr, ptr @system_wq, align 4
  %call.i.i290 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %ew) #14
  br label %cleanup

if.then203:                                       ; preds = %if.then182, %scsi_req_free_cmd.exit.if.then203_crit_edge
  %73 = ptrtoint ptr %done1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %done1, align 1
  call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call170) #14
  %read_wait = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 2
  call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %async_qp = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 9
  call void @kill_fasync(ptr noundef %async_qp, i32 noundef 29, i32 noundef 1) #14
  %f_ref = getelementptr inbounds %struct.sg_fd, ptr %5, i32 0, i32 17
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %f_ref, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  call void @llvm.prefetch.p0(ptr %f_ref, i32 1, i32 3, i32 1) #14
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_ref, ptr %f_ref, i32 1, ptr elementtype(i32) %f_ref) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i291, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %f_ref, i32 noundef 3) #14
  br label %cleanup

if.then.i291:                                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  call fastcc void @sg_remove_sfp(ptr noundef %f_ref) #14, !callees !377
  br label %cleanup

cleanup:                                          ; preds = %if.then.i291, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end184, %do.end42, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_build_indirect(ptr nocapture noundef %schp, ptr nocapture noundef readonly %sfp, i32 noundef %buff_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %sfp, i32 0, i32 1
  %0 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentdp, align 4
  %sg_tablesize1 = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sg_tablesize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_tablesize1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buff_size)
  %cmp = icmp slt i32 %buff_size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buff_size)
  %cmp2 = icmp eq i32 %buff_size, 0
  %buff_size.op = add nuw i32 %buff_size, 511
  %buff_size.op.op = and i32 %buff_size.op, -512
  %and = select i1 %cmp2, i32 512, i32 %buff_size.op.op
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %4 = load i32, ptr @scsi_logging_level, align 4
  %5 = and i32 %4, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp6 = icmp ugt i32 %5, 32
  br i1 %cmp6, label %do.body9, label %if.end.do.end14_crit_edge, !prof !354

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end14

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %name, ptr noundef nonnull @.str.46, i32 noundef %buff_size, i32 noundef %and) #14
  br label %do.end14

do.end14:                                         ; preds = %do.body9, %if.end.do.end14_crit_edge
  %mul.i = shl i32 %3, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 11040) #20
  %pages.i = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 3
  %8 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i.i, ptr %pages.i, align 4
  %tobool.not.i177 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i177, label %do.end14.cleanup_crit_edge, label %sg_build_sgat.exit

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sg_build_sgat.exit:                               ; preds = %do.end14
  %sglist_len.i = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 1
  %9 = ptrtoint ptr %sglist_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.i, ptr %sglist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp slt i32 %3, 0
  br i1 %cmp15, label %sg_build_sgat.exit.cleanup_crit_edge, label %if.end17

sg_build_sgat.exit.cleanup_crit_edge:             ; preds = %sg_build_sgat.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %sg_build_sgat.exit
  %10 = load i32, ptr @scatter_elem_sz, align 4
  %11 = load i32, ptr @scatter_elem_sz_prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp18.not = icmp eq i32 %10, %11
  br i1 %cmp18.not, label %if.end17.if.end14.i_crit_edge, label %if.then25, !prof !337

if.end17.if.end14.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14.i

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %cmp26 = icmp ult i32 %10, 4096
  br i1 %cmp26, label %if.then27, label %if.then25.if.end29.sink.split_crit_edge

if.then25.if.end29.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.sink.split

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  store i32 4096, ptr @scatter_elem_sz, align 4
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then27, %if.then25.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ 4096, %if.then27 ], [ %10, %if.then25.if.end29.sink.split_crit_edge ]
  store i32 %.sink, ptr @scatter_elem_sz_prev, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end29.sink.split, %if.end17.if.end14.i_crit_edge
  %dec.i = add i32 %10, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %12 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #14, !range !378
  %sub.i.i = sub nuw nsw i32 32, %12
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp32186 = icmp sgt i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33187 = icmp ne i32 %3, 0
  %or.cond188 = select i1 %cmp32186, i1 %cmp33187, i1 false
  %pages = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %for.end111.retry_crit_edge, %if.end14.i
  %order.0 = phi i32 [ %cond.i.i, %if.end14.i ], [ %dec, %for.end111.retry_crit_edge ]
  %add31 = add nsw i32 %order.0, 12
  %shl = shl nuw i32 1, %add31
  br i1 %or.cond188, label %retry.for.body_crit_edge, label %retry.for.end_crit_edge

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %rem_sz.0191 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %and, %retry.for.body_crit_edge ]
  %k.0189 = phi i32 [ %inc75, %for.inc.for.body_crit_edge ], [ 0, %retry.for.body_crit_edge ]
  %13 = load i32, ptr @scatter_elem_sz_prev, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %rem_sz.0191, i32 %13)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 273184, i32 noundef %order.0, i32 noundef 0, ptr noundef null) #14
  %15 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %k.0189
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %18 = load ptr, ptr %pages, align 4
  %arrayidx37 = getelementptr ptr, ptr %18, i32 %k.0189
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %20, null
  br i1 %tobool38.not, label %for.cond103.preheader, label %if.end40

for.cond103.preheader:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0189)
  %cmp104199.not = icmp eq i32 %k.0189, 0
  br i1 %cmp104199.not, label %for.cond103.preheader.for.end111_crit_edge, label %for.cond103.preheader.for.body106_crit_edge

for.cond103.preheader.for.body106_crit_edge:      ; preds = %for.cond103.preheader
  br label %for.body106

for.cond103.preheader.for.end111_crit_edge:       ; preds = %for.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end111

if.end40:                                         ; preds = %for.body
  %21 = load i32, ptr @scatter_elem_sz_prev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %21)
  %cmp41 = icmp eq i32 %14, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %21)
  %cmp43 = icmp sgt i32 %shl, %21
  %or.cond176 = select i1 %cmp41, i1 %cmp43, i1 false
  br i1 %or.cond176, label %if.then50, label %if.end40.do.body53_crit_edge, !prof !379

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body53

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %shl, ptr @scatter_elem_sz, align 4
  store i32 %shl, ptr @scatter_elem_sz_prev, align 4
  br label %do.body53

do.body53:                                        ; preds = %if.then50, %if.end40.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %22 = load i32, ptr @scsi_logging_level, align 4
  %23 = and i32 %22, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %23)
  %cmp56 = icmp eq i32 %23, 48
  br i1 %cmp56, label %do.body64, label %do.body53.for.inc_crit_edge, !prof !354

do.body53.for.inc_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

do.body64:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parentdp, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %name68 = getelementptr inbounds %struct.sg_device, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %27, ptr noundef %name68, ptr noundef nonnull @.str.47, i32 noundef %k.0189, i32 noundef %14, i32 noundef %shl) #14
  br label %for.inc

for.inc:                                          ; preds = %do.body64, %do.body53.for.inc_crit_edge
  %inc75 = add nuw nsw i32 %k.0189, 1
  %sub = sub i32 %rem_sz.0191, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp32 = icmp sgt i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc75, i32 %3)
  %cmp33 = icmp slt i32 %inc75, %3
  %or.cond = select i1 %cmp32, i1 %cmp33, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %retry.for.end_crit_edge
  %order.0206 = phi i32 [ %order.0, %for.inc.for.end_crit_edge ], [ %cond.i.i, %retry.for.end_crit_edge ]
  %k.0.lcssa = phi i32 [ %inc75, %for.inc.for.end_crit_edge ], [ 0, %retry.for.end_crit_edge ]
  %rem_sz.0.lcssa = phi i32 [ %sub, %for.inc.for.end_crit_edge ], [ %and, %retry.for.end_crit_edge ]
  %cmp32.lcssa = phi i1 [ %cmp32, %for.inc.for.end_crit_edge ], [ %cmp32186, %retry.for.end_crit_edge ]
  %page_order = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 4
  %28 = ptrtoint ptr %page_order to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %order.0206, ptr %page_order, align 4
  %conv = trunc i32 %k.0.lcssa to i16
  %29 = ptrtoint ptr %schp to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %schp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %30 = load i32, ptr @scsi_logging_level, align 4
  %31 = and i32 %30, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %31)
  %cmp79 = icmp eq i32 %31, 48
  br i1 %cmp79, label %do.body88, label %for.end.do.end98_crit_edge, !prof !354

for.end.do.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end98

do.body88:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parentdp, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %name92 = getelementptr inbounds %struct.sg_device, ptr %33, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %35, ptr noundef %name92, ptr noundef nonnull @.str.48, i32 noundef %k.0.lcssa, i32 noundef %rem_sz.0.lcssa) #14
  br label %do.end98

do.end98:                                         ; preds = %do.body88, %for.end.do.end98_crit_edge
  %bufflen = getelementptr inbounds %struct.sg_scatter_hold, ptr %schp, i32 0, i32 2
  %36 = ptrtoint ptr %bufflen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %bufflen, align 4
  %. = select i1 %cmp32.lcssa, i32 -12, i32 0
  br label %cleanup

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.cond103.preheader.for.body106_crit_edge
  %i.0200 = phi i32 [ %inc110, %for.body106.for.body106_crit_edge ], [ 0, %for.cond103.preheader.for.body106_crit_edge ]
  %37 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages, align 4
  %arrayidx108 = getelementptr ptr, ptr %38, i32 %i.0200
  %39 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx108, align 4
  tail call void @__free_pages(ptr noundef %40, i32 noundef %order.0) #14
  %inc110 = add nuw nsw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc110, %k.0189
  br i1 %exitcond.not, label %for.body106.for.end111_crit_edge, label %for.body106.for.body106_crit_edge

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body106

for.body106.for.end111_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end111

for.end111:                                       ; preds = %for.body106.for.end111_crit_edge, %for.cond103.preheader.for.end111_crit_edge
  %dec = add nsw i32 %order.0, -1
  %cmp112 = icmp sgt i32 %order.0, 0
  br i1 %cmp112, label %for.end111.retry_crit_edge, label %for.end111.cleanup_crit_edge

for.end111.cleanup_crit_edge:                     ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end111.retry_crit_edge:                       ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

cleanup:                                          ; preds = %for.end111.cleanup_crit_edge, %do.end98, %sg_build_sgat.exit.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ %3, %sg_build_sgat.exit.cleanup_crit_edge ], [ %., %do.end98 ], [ -12, %do.end14.cleanup_crit_edge ], [ -12, %for.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user_iov(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_map_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scsi_print_sense(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_remove_sfp(ptr noundef %kref) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -4284
  %parentdp = getelementptr i8, ptr %kref, i32 -4276
  %0 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentdp, align 4
  %sfd_lock = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 6
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %sfd_lock) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr i8, ptr %kref, i32 -4280
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %kref, i32 -4280
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %sfd_lock, i32 noundef %call) #14
  %ew = getelementptr i8, ptr %kref, i32 4
  tail call void @__init_work(ptr noundef %ew, i32 noundef 0) #14
  %10 = ptrtoint ptr %ew to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %ew, align 4
  %lockdep_map = getelementptr i8, ptr %kref, i32 20
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.54, ptr noundef nonnull @sg_remove_sfp.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry18 = getelementptr i8, ptr %kref, i32 8
  %11 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i34 = getelementptr i8, ptr %kref, i32 12
  %12 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry18, ptr %prev.i34, align 4
  %func = getelementptr i8, ptr %kref, i32 16
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sg_remove_sfp_usercontext, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i35 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %ew) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_rq_end_io_usercontext(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -208
  %parentfp = getelementptr i8, ptr %work, i32 -200
  %0 = ptrtoint ptr %parentfp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentfp, align 4
  %call = tail call fastcc i32 @sg_finish_rem_req(ptr noundef %add.ptr)
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %add.ptr, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.sg_remove_request.exit_crit_edge, label %lor.lhs.false2.i

entry.sg_remove_request.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_remove_request.exit

lor.lhs.false2.i:                                 ; preds = %entry
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %rq_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false2.i.sg_remove_request.exit_crit_edge, label %do.body.i

lor.lhs.false2.i.sg_remove_request.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_remove_request.exit

do.body.i:                                        ; preds = %lor.lhs.false2.i
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 3
  %call4.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock.i) #14
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i1.not.i = icmp eq ptr %5, %add.ptr
  br i1 %cmp.i1.not.i, label %do.body.i.do.body11.i_crit_edge, label %if.then8.i

do.body.i.do.body11.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body11.i

if.then8.i:                                       ; preds = %do.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %add.ptr) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.list_del.exit.i_crit_edge

if.then8.i.list_del.exit.i_crit_edge:             ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -204
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then8.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 -204
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %parentfp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parentfp, align 4
  br label %do.body11.i

do.body11.i:                                      ; preds = %list_del.exit.i, %do.body.i.do.body11.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock.i, i32 noundef %call4.i) #14
  br label %sg_remove_request.exit

sg_remove_request.exit:                           ; preds = %do.body11.i, %lor.lhs.false2.i.sg_remove_request.exit_crit_edge, %entry.sg_remove_request.exit_crit_edge
  %f_ref = getelementptr inbounds %struct.sg_fd, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %f_ref, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_ref, ptr %f_ref, i32 1, ptr elementtype(i32) %f_ref) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sg_remove_request.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %f_ref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %sg_remove_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  tail call fastcc void @sg_remove_sfp(ptr noundef %f_ref) #14, !callees !377
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_remove_sfp_usercontext(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4288
  %parentdp = getelementptr i8, ptr %work, i32 -4280
  %0 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parentdp, align 4
  %rq_list_lock = getelementptr i8, ptr %work, i32 -4224
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rq_list_lock) #14
  %rq_list = getelementptr i8, ptr %work, i32 -4056
  %2 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rq_list, align 4
  %cmp.i.not79 = icmp eq ptr %3, %rq_list
  br i1 %cmp.i.not79, label %entry.do.body9_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %15, %list_del.exit.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %call7 = tail call fastcc i32 @sg_finish_rem_req(ptr noundef %4)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %parentfp = getelementptr inbounds %struct.sg_request, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %parentfp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %parentfp, align 4
  %14 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %rq_list, align 4
  %cmp.i.not = icmp eq ptr %15, %rq_list
  br i1 %cmp.i.not, label %list_del.exit.do.body9_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_del.exit.do.body9_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body9

do.body9:                                         ; preds = %list_del.exit.do.body9_crit_edge, %entry.do.body9_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rq_list_lock, i32 noundef %call) #14
  %reserve = getelementptr i8, ptr %work, i32 -4080
  %bufflen = getelementptr i8, ptr %work, i32 -4072
  %16 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufflen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp18.not = icmp eq i32 %17, 0
  br i1 %cmp18.not, label %do.body9.do.body38_crit_edge, label %do.body20

do.body9.do.body38_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body38

do.body20:                                        ; preds = %do.body9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %18 = load i32, ptr @scsi_logging_level, align 4
  %19 = and i32 %18, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %19)
  %cmp21 = icmp eq i32 %19, 56
  br i1 %cmp21, label %do.body27, label %do.body20.do.end35_crit_edge, !prof !354

do.body20.do.end35_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end35

do.body27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %reserve to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %reserve, align 4
  %conv31 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %21, ptr noundef %name, ptr noundef nonnull @.str.55, i32 noundef %17, i32 noundef %conv31) #14
  br label %do.end35

do.end35:                                         ; preds = %do.body27, %do.body20.do.end35_crit_edge
  tail call fastcc void @sg_remove_scat(ptr noundef %add.ptr, ptr noundef %reserve)
  br label %do.body38

do.body38:                                        ; preds = %do.end35, %do.body9.do.body38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %24 = load i32, ptr @scsi_logging_level, align 4
  %25 = and i32 %24, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %25)
  %cmp41 = icmp eq i32 %25, 56
  br i1 %cmp41, label %do.body50, label %do.body38.do.end58_crit_edge, !prof !354

do.body38.do.end58_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end58

do.body50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %name52 = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %27, ptr noundef %name52, ptr noundef nonnull @.str.56, ptr noundef %add.ptr) #14
  br label %do.end58

do.end58:                                         ; preds = %do.body50, %do.body38.do.end58_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call void @scsi_device_put(ptr noundef %29) #14
  %d_ref = getelementptr inbounds %struct.sg_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !342
  tail call void @llvm.prefetch.p0(ptr %d_ref, i32 1, i32 3, i32 1) #14
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %d_ref, ptr %d_ref, i32 1, ptr elementtype(i32) %d_ref) #14, !srcloc !343
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !337

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %d_ref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !344
  %call.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %index.i = getelementptr %struct.sg_device, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i, align 4
  %call2.i = tail call ptr @idr_remove(ptr noundef nonnull @sg_index_idr, i32 noundef %32) #14
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %33 = load i32, ptr @scsi_logging_level, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp12.not.i = icmp eq i32 %34, 0
  br i1 %cmp12.not.i, label %if.then.i.sg_device_destroy.exit_crit_edge, label %do.body15.i, !prof !337

if.then.i.sg_device_destroy.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_device_destroy.exit

do.body15.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %name.i = getelementptr %struct.sg_device, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %36, ptr noundef %name.i, ptr noundef nonnull @.str.57) #14
  br label %sg_device_destroy.exit

sg_device_destroy.exit:                           ; preds = %do.body15.i, %if.then.i.sg_device_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %sg_device_destroy.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @module_put(ptr noundef null) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_trace_setup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_trace_startstop(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_trace_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_vma_fault(ptr nocapture noundef %vmf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %reserve = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 7
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %5, 12
  %bufflen = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %bufflen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bufflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %7)
  %cmp2.not = icmp ult i32 %shl, %7
  br i1 %cmp2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %8 = load i32, ptr @scsi_logging_level, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not = icmp eq i32 %9, 0
  br i1 %cmp5.not, label %do.body.do.end13_crit_edge, label %do.body9, !prof !337

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parentdp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %reserve to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reserve, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %13, ptr noundef %name, ptr noundef nonnull @.str.62, i32 noundef %shl, i32 noundef %conv) #14
  br label %do.end13

do.end13:                                         ; preds = %do.body9, %do.body.do.end13_crit_edge
  %page_order = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %page_order to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_order, align 4
  %add = add i32 %17, 12
  %shl14 = shl nuw i32 1, %add
  %18 = ptrtoint ptr %reserve to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reserve, align 4
  %conv16 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp1769.not = icmp eq i16 %19, 0
  br i1 %cmp1769.not, label %do.end13.cleanup_crit_edge, label %land.rhs.lr.ph

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %do.end13
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_end, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end29.land.rhs_crit_edge, %land.rhs.lr.ph
  %k.072 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end29.land.rhs_crit_edge ]
  %sa.071 = phi i32 [ %21, %land.rhs.lr.ph ], [ %add30, %if.end29.land.rhs_crit_edge ]
  %offset.070 = phi i32 [ %shl, %land.rhs.lr.ph ], [ %sub31, %if.end29.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sa.071)
  %cmp19 = icmp ugt i32 %23, %sa.071
  br i1 %cmp19, label %for.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %sub = sub i32 %23, %sa.071
  %24 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %shl14)
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.070, i32 %24)
  %cmp24 = icmp ult i32 %offset.070, %24
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %for.body
  %pages = getelementptr inbounds %struct.sg_fd, ptr %3, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %k.072
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %shr27 = lshr i32 %offset.070, 12
  %add.ptr = getelementptr %struct.page, ptr %28, i32 %shr27
  %29 = getelementptr %struct.page, ptr %28, i32 %shr27, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !337

if.then.i.i:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %add.ptr to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  %34 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %35, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !354

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.63) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #14, !srcloc !380
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #14
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #14, !srcloc !381
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@sg_vma_fault, %if.then.i.i.i.i)) #14
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !382

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__page_ref_mod(ptr noundef %33, i32 noundef 1) #14
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page28 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %37 = ptrtoint ptr %page28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %page28, align 4
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %add30 = add i32 %24, %sa.071
  %sub31 = sub i32 %offset.070, %24
  %inc = add nuw nsw i32 %k.072, 1
  %exitcond.not = icmp eq i32 %inc, %conv16
  br i1 %exitcond.not, label %if.end29.cleanup_crit_edge, label %if.end29.land.rhs_crit_edge

if.end29.land.rhs_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %get_page.exit, %land.rhs.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %lor.lhs.false.cleanup_crit_edge ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 2, %do.end13.cleanup_crit_edge ], [ 2, %land.rhs.cleanup_crit_edge ], [ 2, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_wait(ptr noundef %sdp, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry51 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.cond33.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %open_cnt = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 9
  %open_rel_lock = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 2
  %detaching = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 7
  %open_wait = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 1
  br label %while.cond

while.cond33.preheader:                           ; preds = %entry
  %exclude = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 8
  %open_rel_lock36 = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 2
  %detaching44 = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 7
  %open_wait55 = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 1
  br label %while.cond33

while.cond:                                       ; preds = %if.end27.while.cond_crit_edge, %while.cond.preheader
  %0 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup88_crit_edge

while.cond.cleanup88_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

while.body:                                       ; preds = %while.cond
  call void @mutex_unlock(ptr noundef %open_rel_lock) #14
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 256) #14
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %2 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %while.body.if.end27_crit_edge

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

lor.lhs.false:                                    ; preds = %while.body
  %4 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end27_crit_edge, label %if.then8

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then8:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %call10150 = call i32 @prepare_to_wait_event(ptr noundef %open_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call.i.i115151 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %7 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not152 = icmp eq i32 %8, 0
  br i1 %tobool13.not152, label %if.then8.lor.lhs.false14_crit_edge, label %if.then8.if.end22.thread129_crit_edge

if.then8.if.end22.thread129_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread129

if.then8.lor.lhs.false14_crit_edge:               ; preds = %if.then8
  br label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %cleanup.lor.lhs.false14_crit_edge, %if.then8.lor.lhs.false14_crit_edge
  %call10153 = phi i32 [ %call10, %cleanup.lor.lhs.false14_crit_edge ], [ %call10150, %if.then8.lor.lhs.false14_crit_edge ]
  %9 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %lor.lhs.false14.if.end22.thread129_crit_edge, label %if.end

lor.lhs.false14.if.end22.thread129_crit_edge:     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread129

if.end:                                           ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10153)
  %tobool18.not = icmp eq i32 %call10153, 0
  br i1 %tobool18.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end
  call void @schedule() #14
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %open_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %call.i.i115 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %11 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %detaching, align 4
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %cleanup.lor.lhs.false14_crit_edge, label %cleanup.if.end22.thread129_crit_edge

cleanup.if.end22.thread129_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.thread129

cleanup.lor.lhs.false14_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false14

if.end22.thread129:                               ; preds = %cleanup.if.end22.thread129_crit_edge, %lor.lhs.false14.if.end22.thread129_crit_edge, %if.then8.if.end22.thread129_crit_edge
  call void @finish_wait(ptr noundef %open_wait, ptr noundef nonnull %__wq_entry) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end27

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %cleanup88.sink.split

if.end27:                                         ; preds = %if.end22.thread129, %lor.lhs.false.if.end27_crit_edge, %while.body.if.end27_crit_edge
  call void @mutex_lock_nested(ptr noundef %open_rel_lock, i32 noundef 0) #14
  %call.i.i116 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %13 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %detaching, align 4
  %tobool30.not = icmp eq i32 %14, 0
  br i1 %tobool30.not, label %if.end27.while.cond_crit_edge, label %if.end27.cleanup88_crit_edge

if.end27.cleanup88_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

if.end27.while.cond_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

while.cond33:                                     ; preds = %if.end80.while.cond33_crit_edge, %while.cond33.preheader
  %15 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %exclude, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool34.not = icmp eq i8 %16, 0
  br i1 %tobool34.not, label %while.cond33.cleanup88_crit_edge, label %while.body35

while.cond33.cleanup88_crit_edge:                 ; preds = %while.cond33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

while.body35:                                     ; preds = %while.cond33
  call void @mutex_unlock(ptr noundef %open_rel_lock36) #14
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 269) #14
  %call.i.i117 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching44, i32 noundef 4) #14
  %17 = ptrtoint ptr %detaching44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %detaching44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not = icmp eq i32 %18, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %while.body35.if.end80_crit_edge

while.body35.if.end80_crit_edge:                  ; preds = %while.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

lor.lhs.false47:                                  ; preds = %while.body35
  %19 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %exclude, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool49.not = icmp eq i8 %20, 0
  br i1 %tobool49.not, label %lor.lhs.false47.if.end80_crit_edge, label %if.then50

lor.lhs.false47.if.end80_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then50:                                        ; preds = %lor.lhs.false47
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry51) #14
  %21 = call ptr @memset(ptr %__wq_entry51, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry51, i32 noundef 0) #14
  %call56155 = call i32 @prepare_to_wait_event(ptr noundef %open_wait55, ptr noundef nonnull %__wq_entry51, i32 noundef 1) #14
  %call.i.i118156 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching44, i32 noundef 4) #14
  %22 = ptrtoint ptr %detaching44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %detaching44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool59.not157 = icmp eq i32 %23, 0
  br i1 %tobool59.not157, label %if.then50.lor.lhs.false60_crit_edge, label %if.then50.if.end75.thread141_crit_edge

if.then50.if.end75.thread141_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.thread141

if.then50.lor.lhs.false60_crit_edge:              ; preds = %if.then50
  br label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %cleanup68.lor.lhs.false60_crit_edge, %if.then50.lor.lhs.false60_crit_edge
  %call56158 = phi i32 [ %call56, %cleanup68.lor.lhs.false60_crit_edge ], [ %call56155, %if.then50.lor.lhs.false60_crit_edge ]
  %24 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %exclude, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool62.not = icmp eq i8 %25, 0
  br i1 %tobool62.not, label %lor.lhs.false60.if.end75.thread141_crit_edge, label %if.end64

lor.lhs.false60.if.end75.thread141_crit_edge:     ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.thread141

if.end64:                                         ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56158)
  %tobool65.not = icmp eq i32 %call56158, 0
  br i1 %tobool65.not, label %cleanup68, label %if.end75

cleanup68:                                        ; preds = %if.end64
  call void @schedule() #14
  %call56 = call i32 @prepare_to_wait_event(ptr noundef %open_wait55, ptr noundef nonnull %__wq_entry51, i32 noundef 1) #14
  %call.i.i118 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching44, i32 noundef 4) #14
  %26 = ptrtoint ptr %detaching44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %detaching44, align 4
  %tobool59.not = icmp eq i32 %27, 0
  br i1 %tobool59.not, label %cleanup68.lor.lhs.false60_crit_edge, label %cleanup68.if.end75.thread141_crit_edge

cleanup68.if.end75.thread141_crit_edge:           ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.thread141

cleanup68.lor.lhs.false60_crit_edge:              ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false60

if.end75.thread141:                               ; preds = %cleanup68.if.end75.thread141_crit_edge, %lor.lhs.false60.if.end75.thread141_crit_edge, %if.then50.if.end75.thread141_crit_edge
  call void @finish_wait(ptr noundef %open_wait55, ptr noundef nonnull %__wq_entry51) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry51) #14
  br label %if.end80

if.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry51) #14
  br label %cleanup88.sink.split

if.end80:                                         ; preds = %if.end75.thread141, %lor.lhs.false47.if.end80_crit_edge, %while.body35.if.end80_crit_edge
  call void @mutex_lock_nested(ptr noundef %open_rel_lock36, i32 noundef 0) #14
  %call.i.i119 = call zeroext i1 @__kasan_check_read(ptr noundef %detaching44, i32 noundef 4) #14
  %28 = ptrtoint ptr %detaching44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %detaching44, align 4
  %tobool83.not = icmp eq i32 %29, 0
  br i1 %tobool83.not, label %if.end80.while.cond33_crit_edge, label %if.end80.cleanup88_crit_edge

if.end80.cleanup88_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup88

if.end80.while.cond33_crit_edge:                  ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond33

cleanup88.sink.split:                             ; preds = %if.end75, %if.end22
  %open_rel_lock36.sink = phi ptr [ %open_rel_lock36, %if.end75 ], [ %open_rel_lock, %if.end22 ]
  %retval.0.ph = phi i32 [ %call56158, %if.end75 ], [ %call10153, %if.end22 ]
  call void @mutex_lock_nested(ptr noundef %open_rel_lock36.sink, i32 noundef 0) #14
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup88.sink.split, %if.end80.cleanup88_crit_edge, %while.cond33.cleanup88_crit_edge, %if.end27.cleanup88_crit_edge, %while.cond.cleanup88_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup88.sink.split ], [ 0, %while.cond33.cleanup88_crit_edge ], [ -19, %if.end80.cleanup88_crit_edge ], [ 0, %while.cond.cleanup88_crit_edge ], [ -19, %if.end27.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sg_add_sfp(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 11040, i32 noundef 4332) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %read_wait = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.65, ptr noundef nonnull @sg_add_sfp.__key) #14
  %rq_list_lock = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 3
  tail call void @__rwlock_init(ptr noundef %rq_list_lock, ptr noundef nonnull @.str.67, ptr noundef nonnull @sg_add_sfp.__key.66) #14
  %rq_list = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %rq_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rq_list, ptr %rq_list, align 8
  %prev.i = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rq_list, ptr %prev.i, align 4
  %f_ref = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_ref, i32 noundef 4) #14
  %3 = ptrtoint ptr %f_ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %f_ref, align 4
  %f_mutex = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %f_mutex, ptr noundef nonnull @.str.69, ptr noundef nonnull @sg_add_sfp.__key.68) #14
  %timeout = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6000, ptr %timeout, align 8
  %timeout_user = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %timeout_user to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6000, ptr %timeout_user, align 4
  %force_packid = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %force_packid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %force_packid, align 4
  %cmd_q = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %cmd_q to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cmd_q, align 1
  %keep_orphan = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %keep_orphan to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %keep_orphan, align 1
  %parentdp = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %parentdp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sdp, ptr %parentdp, align 8
  %sfd_lock = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 6
  %call11 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %sfd_lock) #14
  %detaching = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %10 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.end27, label %do.body17

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %sfd_lock, i32 noundef %call11) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end27:                                         ; preds = %do.body
  %sfds = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 5
  %prev.i123 = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i123, align 4
  %call.i.i124 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef %sfds) #14
  br i1 %call.i.i124, label %if.end.i.i, label %if.end27.list_add_tail.exit_crit_edge

if.end27.list_add_tail.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev.i123, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sfds, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end27.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %sfd_lock, i32 noundef %call11) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %18 = load i32, ptr @scsi_logging_level, align 4
  %19 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp38.not = icmp eq i32 %19, 0
  br i1 %cmp38.not, label %list_add_tail.exit.do.end48_crit_edge, label %do.body43, !prof !337

list_add_tail.exit.do.end48_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end48

do.body43:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdp, align 4
  %name = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %21, ptr noundef %name, ptr noundef nonnull @.str.70, ptr noundef nonnull %call7.i.i) #14
  br label %do.end48

do.end48:                                         ; preds = %do.body43, %list_add_tail.exit.do.end48_crit_edge
  %22 = load i32, ptr @sg_big_buff, align 4
  %23 = load i32, ptr @def_reserved_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp49.not = icmp eq i32 %22, %23
  br i1 %cmp49.not, label %do.end48.if.end58_crit_edge, label %if.then57, !prof !337

do.end48.if.end58_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then57:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %23, ptr @sg_big_buff, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %do.end48.if.end58_crit_edge
  %24 = load i32, ptr @sg_big_buff, align 4
  %25 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdp, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_queue, align 4
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %28, i32 0, i32 37, i32 6
  %29 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %30)
  %cmp.i = icmp ult i32 %30, 4194303
  %phi.bo.i = shl i32 %30, 9
  %cond.i = select i1 %cmp.i, i32 %phi.bo.i, i32 2147483136
  %31 = tail call i32 @llvm.smin.i32(i32 %24, i32 %cond.i)
  %reserve.i = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %32 = load i32, ptr @scsi_logging_level, align 4
  %33 = and i32 %32, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %33)
  %cmp.i125 = icmp ugt i32 %33, 32
  br i1 %cmp.i125, label %do.body2.i, label %if.end58.do.body6.i.preheader_crit_edge, !prof !354

if.end58.do.body6.i.preheader_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i.preheader

do.body2.i:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %parentdp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parentdp, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %name.i = getelementptr inbounds %struct.sg_device, ptr %35, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %37, ptr noundef %name.i, ptr noundef nonnull @.str.60, i32 noundef %31) #14
  br label %do.body6.i.preheader

do.body6.i.preheader:                             ; preds = %do.body2.i, %if.end58.do.body6.i.preheader_crit_edge
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.else.i.do.body6.i_crit_edge, %do.body6.i.preheader
  %req_size.addr.0.i = phi i32 [ %shr13.i, %if.else.i.do.body6.i_crit_edge ], [ %31, %do.body6.i.preheader ]
  %38 = tail call i32 @llvm.umax.i32(i32 %req_size.addr.0.i, i32 4096) #14
  %call.i = tail call fastcc i32 @sg_build_indirect(ptr noundef %reserve.i, ptr noundef nonnull %call7.i.i, i32 noundef %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp eq i32 %call.i, 0
  br i1 %cmp10.i, label %do.body6.i.sg_build_reserve.exit_crit_edge, label %if.else.i

do.body6.i.sg_build_reserve.exit_crit_edge:       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_build_reserve.exit

if.else.i:                                        ; preds = %do.body6.i
  tail call fastcc void @sg_remove_scat(ptr noundef nonnull %call7.i.i, ptr noundef %reserve.i) #14
  %shr13.i = ashr i32 %38, 1
  %cmp15.i = icmp ugt i32 %38, 4097
  br i1 %cmp15.i, label %if.else.i.do.body6.i_crit_edge, label %if.else.i.sg_build_reserve.exit_crit_edge

if.else.i.sg_build_reserve.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sg_build_reserve.exit

if.else.i.do.body6.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

sg_build_reserve.exit:                            ; preds = %if.else.i.sg_build_reserve.exit_crit_edge, %do.body6.i.sg_build_reserve.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @scsi_logging_level to i32))
  %39 = load i32, ptr @scsi_logging_level, align 4
  %40 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp67.not = icmp eq i32 %40, 0
  br i1 %cmp67.not, label %sg_build_reserve.exit.do.end87_crit_edge, label %do.body76, !prof !337

sg_build_reserve.exit.do.end87_crit_edge:         ; preds = %sg_build_reserve.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87

do.body76:                                        ; preds = %sg_build_reserve.exit
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdp, align 4
  %name78 = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 11
  %bufflen80 = getelementptr inbounds %struct.sg_fd, ptr %call7.i.i, i32 0, i32 7, i32 2
  %43 = ptrtoint ptr %bufflen80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bufflen80, align 8
  %45 = ptrtoint ptr %reserve.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reserve.i, align 8
  %conv82 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.23, ptr noundef %42, ptr noundef %name78, ptr noundef nonnull @.str.71, i32 noundef %44, i32 noundef %conv82) #14
  br label %do.end87

do.end87:                                         ; preds = %do.body76, %sg_build_reserve.exit.do.end87_crit_edge
  %d_ref = getelementptr inbounds %struct.sg_device, ptr %sdp, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %d_ref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %d_ref, i32 1, i32 3, i32 1) #14
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %d_ref, ptr %d_ref, i32 1, ptr elementtype(i32) %d_ref) #14, !srcloc !375
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end87.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !354

do.end87.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end87
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !337

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end87.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end87.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %d_ref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @__module_get(ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %kref_get.exit, %do.body17, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.body17 ], [ %call7.i.i, %kref_get.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !327) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !337

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_chrdev_region(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_interface(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_devhdr(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.118) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_version(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.123, i32 noundef 30536, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.124) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_single_open_adio(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sg_proc_seq_show_int, ptr noundef nonnull @sg_allow_dio) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_write_adio(ptr nocapture noundef readnone %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #14
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !355
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #14
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @kstrtoul_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %num) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool5.not to i32
  store i32 %cond, ptr @sg_allow_dio, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_int(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.98, i32 noundef %3) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dev_seq_start(ptr nocapture noundef writeonly %s, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  %k.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #17
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %private, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %call7.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k.i) #14
  %5 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %k.i, align 4
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %call1.i = call i32 @idr_for_each(ptr noundef nonnull @sg_index_idr, ptr noundef nonnull @sg_idr_max_id, ptr noundef nonnull %k.i) #14
  call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call.i) #14
  %6 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %k.i, align 4
  %add.i = add i32 %7, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.i) #14
  %max = getelementptr inbounds %struct.sg_proc_deviter, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %max, align 8
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %call7.i, align 8
  %conv = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp.not = icmp slt i64 %10, %conv
  %call. = select i1 %cmp.not, ptr %call7.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call., %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_seq_stop(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @dev_seq_next(ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %v, ptr nocapture noundef writeonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %1, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inc, ptr %pos, align 8
  %5 = load i64, ptr %1, align 8
  %max = getelementptr inbounds %struct.sg_proc_deviter, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max, align 8
  %conv = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp = icmp slt i64 %5, %conv
  %spec.select = select i1 %cmp, ptr %1, ptr null
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_debug(ptr noundef %s, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %cond.end.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %max = getelementptr inbounds %struct.sg_proc_deviter, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 8
  %4 = load i32, ptr @sg_big_buff, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.99, i32 noundef %3, i32 noundef %4) #14
  br label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  br label %do.body26

cond.end:                                         ; preds = %if.then, %land.lhs.true.cond.end_crit_edge
  %call60 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %v, align 8
  %conv4 = trunc i64 %6 to i32
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @sg_index_idr, i32 noundef %conv4) #14
  %cmp6 = icmp eq ptr %call.i, null
  br i1 %cmp6, label %cond.end.do.body26_crit_edge, label %if.end9

cond.end.do.body26_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

if.end9:                                          ; preds = %cond.end
  %sfd_lock = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 6
  tail call void @_raw_read_lock(ptr noundef %sfd_lock) #14
  %sfds = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %sfds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sfds, align 4
  %cmp.i.not = icmp eq ptr %8, %sfds
  br i1 %cmp.i.not, label %if.end9.if.end24_crit_edge, label %if.then12

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then12:                                        ; preds = %if.end9
  %name = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.100, ptr noundef %name) #14
  %detaching = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %9 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.101) #14
  br label %if.end21

if.else:                                          ; preds = %if.then12
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.else.if.end21_crit_edge, label %if.then17

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 17
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 16
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 18
  %21 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %lun, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 11
  %23 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hostt, align 8
  %emulated = getelementptr inbounds %struct.scsi_host_template, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %emulated to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %emulated, align 4
  %bf.lshr = lshr i8 %bf.load, 4
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.102, i32 noundef %16, i32 noundef %18, i32 noundef %20, i64 noundef %22, i32 noundef %bf.cast) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else.if.end21_crit_edge, %if.then15
  %sg_tablesize = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_tablesize, align 4
  %exclude = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 8
  %28 = ptrtoint ptr %exclude to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %exclude, align 4, !range !376
  %30 = zext i8 %29 to i32
  %open_cnt = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %open_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %open_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.103, i32 noundef %27, i32 noundef %30, i32 noundef %32) #14
  %33 = ptrtoint ptr %sfds to i32
  call void @__asan_load4_noabort(i32 %33)
  %fp.0128.i = load ptr, ptr %sfds, align 4
  %cmp.not129.i = icmp eq ptr %fp.0128.i, %sfds
  br i1 %cmp.not129.i, label %if.end21.if.end24_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

for.body.i:                                       ; preds = %if.end75.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %fp.0131.i = phi ptr [ %fp.0.i, %if.end75.i.for.body.i_crit_edge ], [ %fp.0128.i, %if.end21.for.body.i_crit_edge ]
  %k.0130.i = phi i32 [ %inc.i, %if.end75.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %inc.i = add i32 %k.0130.i, 1
  %rq_list_lock.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 3
  tail call void @_raw_read_lock(ptr noundef %rq_list_lock.i) #14
  %timeout.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 5
  %34 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout.i, align 4
  %call.i58 = tail call i32 @jiffies_to_msecs(i32 noundef %35) #14
  %reserve.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 7
  %bufflen.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %bufflen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufflen.i, align 4
  %38 = ptrtoint ptr %reserve.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %reserve.i, align 4
  %conv.i59 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.104, i32 noundef %inc.i, i32 noundef %call.i58, i32 noundef %37, i32 noundef %conv.i59, i32 noundef 0) #14
  %cmd_q.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 12
  %40 = ptrtoint ptr %cmd_q.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cmd_q.i, align 1
  %conv3.i = zext i8 %41 to i32
  %force_packid.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 11
  %42 = ptrtoint ptr %force_packid.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %force_packid.i, align 4
  %conv4.i = zext i8 %43 to i32
  %keep_orphan.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 14
  %44 = ptrtoint ptr %keep_orphan.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %keep_orphan.i, align 1
  %conv5.i = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.105, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %conv5.i) #14
  %rq_list.i = getelementptr inbounds %struct.sg_fd, ptr %fp.0131.i, i32 0, i32 8
  %46 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %srp.0125.i = load ptr, ptr %rq_list.i, align 4
  %cmp13.not126.i = icmp eq ptr %srp.0125.i, %rq_list.i
  br i1 %cmp13.not126.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body16.i_crit_edge

for.body.i.for.body16.i_crit_edge:                ; preds = %for.body.i
  br label %for.body16.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body16.i:                                     ; preds = %if.end63.i.for.body16.i_crit_edge, %for.body.i.for.body16.i_crit_edge
  %srp.0127.i = phi ptr [ %srp.0.i, %if.end63.i.for.body16.i_crit_edge ], [ %srp.0125.i, %for.body.i.for.body16.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3
  %47 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %header.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp17.not.i = icmp eq i32 %48, 0
  %res_used.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 5
  %49 = ptrtoint ptr %res_used.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %res_used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.else22.i, label %if.then.i

if.then.i:                                        ; preds = %for.body16.i
  br i1 %cmp17.not.i, label %if.then.i.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %flags.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 10
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  br label %if.end28.i

if.else22.i:                                      ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #16
  %info.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 21
  %53 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %info.i, align 4
  %and23.i = and i32 %54, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %.str.109..str.108.i = select i1 %tobool24.not.i, ptr @.str.109, ptr @.str.108
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else22.i, %if.else.i, %land.lhs.true.i.if.end28.i_crit_edge
  %cp.0.i = phi ptr [ @.str.107, %if.else.i ], [ @.str.106, %land.lhs.true.i.if.end28.i_crit_edge ], [ %.str.109..str.108.i, %if.else22.i ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cp.0.i) #14
  %data.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 2
  %bufflen29.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 2, i32 2
  %55 = ptrtoint ptr %bufflen29.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bufflen29.i, align 4
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data.i, align 4
  %conv32.i = zext i16 %58 to i32
  %done.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 8
  %59 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool34.not.i = icmp eq i8 %60, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp37.i = icmp eq i8 %60, 1
  %cond39.i = select i1 %cmp37.i, ptr @.str.110, ptr @.str.111
  %cond40.i = select i1 %tobool34.not.i, ptr @.str.112, ptr %cond39.i
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond40.i) #14
  %pack_id.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 11
  %61 = ptrtoint ptr %pack_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pack_id.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.113, i32 noundef %62, i32 noundef %56) #14
  %63 = ptrtoint ptr %done.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %done.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool43.not.i = icmp eq i8 %64, 0
  br i1 %tobool43.not.i, label %if.else45.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %duration.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 20
  %65 = ptrtoint ptr %duration.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %duration.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.114, i32 noundef %66) #14
  br label %if.end63.i

if.else45.i:                                      ; preds = %if.end28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %call46.i = tail call i32 @jiffies_to_msecs(i32 noundef %67) #14
  br i1 %cmp17.not.i, label %cond.false50.i, label %cond.true48.i

cond.true48.i:                                    ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #16
  %timeout49.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 9
  %68 = ptrtoint ptr %timeout49.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %timeout49.i, align 4
  br label %cond.end53.i

cond.false50.i:                                   ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %timeout.i, align 4
  %call52.i = tail call i32 @jiffies_to_msecs(i32 noundef %71) #14
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false50.i, %cond.true48.i
  %cond54.i = phi i32 [ %69, %cond.true48.i ], [ %call52.i, %cond.false50.i ]
  %duration55.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 3, i32 20
  %72 = ptrtoint ptr %duration55.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %duration55.i, align 4
  %74 = tail call i32 @llvm.usub.sat.i32(i32 %call46.i, i32 %73) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.115, i32 noundef %cond54.i, i32 noundef %74) #14
  br label %if.end63.i

if.end63.i:                                       ; preds = %cond.end53.i, %if.then44.i
  %cmd_opcode.i = getelementptr inbounds %struct.sg_request, ptr %srp.0127.i, i32 0, i32 2, i32 6
  %75 = ptrtoint ptr %cmd_opcode.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %cmd_opcode.i, align 1
  %conv65.i = zext i8 %76 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.116, i32 noundef %conv32.i, i32 noundef %conv65.i) #14
  %77 = ptrtoint ptr %srp.0127.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %srp.0.i = load ptr, ptr %srp.0127.i, align 4
  %cmp13.not.i = icmp eq ptr %srp.0.i, %rq_list.i
  br i1 %cmp13.not.i, label %if.end63.i.for.end.i_crit_edge, label %if.end63.i.for.body16.i_crit_edge

if.end63.i.for.body16.i_crit_edge:                ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i

if.end63.i.for.end.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %if.end63.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %78 = ptrtoint ptr %rq_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %rq_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %79, %rq_list.i
  br i1 %cmp.i.not.i, label %if.then74.i, label %for.end.i.if.end75.i_crit_edge

for.end.i.if.end75.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end75.i

if.then74.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.117) #14
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %for.end.i.if.end75.i_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %rq_list_lock.i) #14
  %80 = ptrtoint ptr %fp.0131.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %fp.0.i = load ptr, ptr %fp.0131.i, align 4
  %cmp.not.i = icmp eq ptr %fp.0.i, %sfds
  br i1 %cmp.not.i, label %if.end75.i.if.end24_crit_edge, label %if.end75.i.for.body.i_crit_edge

if.end75.i.for.body.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end75.i.if.end24_crit_edge:                    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %if.end75.i.if.end24_crit_edge, %if.end21.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %sfd_lock) #14
  br label %do.body26

do.body26:                                        ; preds = %if.end24, %cond.end.do.body26_crit_edge, %cond.end.thread
  %call6266 = phi i32 [ %call, %cond.end.thread ], [ %call60, %if.end24 ], [ %call60, %cond.end.do.body26_crit_edge ]
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call6266) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sg_idr_max_id(i32 noundef %id, ptr nocapture noundef readnone %p, ptr nocapture noundef %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp = icmp slt i32 %1, %id
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_single_open_dressz(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sg_proc_seq_show_int, ptr noundef nonnull @sg_big_buff) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_write_dressz(ptr nocapture noundef readnone %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  %k = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #14
  %0 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %k, align 4
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #14
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 @kstrtoul_from_user(ptr noundef %buffer, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %k) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %k, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048577, i32 %2)
  %cmp = icmp ult i32 %2, 1048577
  br i1 %cmp, label %if.then5, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %2, ptr @sg_big_buff, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then5 ], [ -13, %lor.lhs.false.cleanup_crit_edge ], [ -13, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -34, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_dev(ptr noundef %s, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %cond.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv1 = trunc i64 %1 to i32
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @sg_index_idr, i32 noundef %conv1) #14
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %cond.end.if.then_crit_edge, label %lor.lhs.false

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %cond.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %detaching = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %4 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.else, label %lor.lhs.false7.if.then_crit_edge

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.119) #14
  br label %do.body15

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no, align 4
  %channel = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 17
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 16
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  %lun = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %type = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 22
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 4
  %conv11 = zext i8 %19 to i32
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 9
  %20 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %queue_depth, align 4
  %conv12 = zext i16 %21 to i32
  %budget_map.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 4
  %call.i35 = tail call i32 @sbitmap_weight(ptr noundef %budget_map.i) #14
  %sdev_state.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 69
  %22 = ptrtoint ptr %sdev_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sdev_state.i, align 4
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %switch.i = icmp ne i32 %24, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp4.i = icmp ne i32 %23, 4
  %narrow.i = and i1 %cmp4.i, %switch.i
  %25 = zext i1 %narrow.i to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.120, i32 noundef %11, i32 noundef %13, i32 noundef %15, i64 noundef %17, i32 noundef %conv11, i32 noundef 1, i32 noundef %conv12, i32 noundef %call.i35, i32 noundef %25) #14
  br label %do.body15

do.body15:                                        ; preds = %if.else, %if.then
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_weight(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sg_proc_seq_show_devstrs(ptr noundef %s, ptr noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @sg_index_lock) #14
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %cond.end

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv1 = trunc i64 %1 to i32
  %call.i = tail call ptr @idr_find(ptr noundef nonnull @sg_index_idr, i32 noundef %conv1) #14
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %cond.end.if.else_crit_edge, label %cond.end6

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

cond.end6:                                        ; preds = %cond.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %cond.end6.if.else_crit_edge, label %land.lhs.true10

cond.end6.if.else_crit_edge:                      ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true10:                                  ; preds = %cond.end6
  %detaching = getelementptr inbounds %struct.sg_device, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %detaching, i32 noundef 4) #14
  %4 = ptrtoint ptr %detaching to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %detaching, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not = icmp eq i32 %5, 0
  br i1 %tobool12.not, label %if.then, label %land.lhs.true10.if.else_crit_edge

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vendor, align 4
  %model = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %model, align 8
  %rev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 32
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rev, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.121, ptr noundef %7, ptr noundef %9, ptr noundef %11) #14
  br label %do.body13

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %cond.end6.if.else_crit_edge, %cond.end.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.122) #14
  br label %do.body13

do.body13:                                        ; preds = %if.else, %if.then
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @sg_index_lock, i32 noundef %call) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !87, !89, !91, !92, !93, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !190, !191, !193, !194, !196, !198, !200, !202, !204, !206, !207, !208, !210, !212, !214, !216, !218, !219, !221, !222, !224, !225, !227, !228, !229, !231, !232, !234, !235, !237, !239, !240, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325}
!llvm.named.register.sp = !{!327}
!llvm.module.flags = !{!328, !329, !330, !331, !332, !333, !334, !335}
!llvm.ident = !{!336}

!0 = !{ptr @__param_scatter_elem_sz, !1, !"__param_scatter_elem_sz", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sg.c", i32 1621, i32 1}
!2 = !{ptr @__UNIQUE_ID_scatter_elem_sztype291, !1, !"__UNIQUE_ID_scatter_elem_sztype291", i1 false, i1 false}
!3 = !{ptr @__param_def_reserved_size, !4, !"__param_def_reserved_size", i1 false, i1 false}
!4 = !{!"../drivers/scsi/sg.c", i32 1622, i32 1}
!5 = !{ptr @__UNIQUE_ID_def_reserved_sizetype292, !4, !"__UNIQUE_ID_def_reserved_sizetype292", i1 false, i1 false}
!6 = !{ptr @__param_allow_dio, !7, !"__param_allow_dio", i1 false, i1 false}
!7 = !{!"../drivers/scsi/sg.c", i32 1624, i32 1}
!8 = !{ptr @__UNIQUE_ID_allow_diotype293, !7, !"__UNIQUE_ID_allow_diotype293", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author294, !10, !"__UNIQUE_ID_author294", i1 false, i1 false}
!10 = !{!"../drivers/scsi/sg.c", i32 1626, i32 1}
!11 = !{ptr @__UNIQUE_ID_description295, !12, !"__UNIQUE_ID_description295", i1 false, i1 false}
!12 = !{!"../drivers/scsi/sg.c", i32 1627, i32 1}
!13 = !{ptr @__UNIQUE_ID_file296, !14, !"__UNIQUE_ID_file296", i1 false, i1 false}
!14 = !{!"../drivers/scsi/sg.c", i32 1628, i32 1}
!15 = !{ptr @__UNIQUE_ID_license297, !14, !"__UNIQUE_ID_license297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_version298, !17, !"__UNIQUE_ID_version298", i1 false, i1 false}
!17 = !{!"../drivers/scsi/sg.c", i32 1629, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_alias299, !23, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!23 = !{!"../drivers/scsi/sg.c", i32 1630, i32 1}
!24 = !{ptr @__UNIQUE_ID_scatter_elem_sz300, !25, !"__UNIQUE_ID_scatter_elem_sz300", i1 false, i1 false}
!25 = !{!"../drivers/scsi/sg.c", i32 1632, i32 1}
!26 = !{ptr @__UNIQUE_ID_def_reserved_size301, !27, !"__UNIQUE_ID_def_reserved_size301", i1 false, i1 false}
!27 = !{!"../drivers/scsi/sg.c", i32 1634, i32 1}
!28 = !{ptr @__UNIQUE_ID_allow_dio302, !29, !"__UNIQUE_ID_allow_dio302", i1 false, i1 false}
!29 = !{!"../drivers/scsi/sg.c", i32 1635, i32 1}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/sg.c", i32 1711, i32 22}
!32 = !{ptr @__initcall__kmod_sg__305_2632_init_sg6, !33, !"__initcall__kmod_sg__305_2632_init_sg6", i1 false, i1 false}
!33 = !{!"../drivers/scsi/sg.c", i32 2632, i32 1}
!34 = !{ptr @__exitcall_exit_sg, !35, !"__exitcall_exit_sg", i1 false, i1 false}
!35 = !{!"../drivers/scsi/sg.c", i32 2633, i32 1}
!36 = !{ptr @sg_sysfs_class, !37, !"sg_sysfs_class", i1 false, i1 false}
!37 = !{!"../drivers/scsi/sg.c", i32 1432, i32 22}
!38 = !{ptr @__param_str_scatter_elem_sz, !1, !"__param_str_scatter_elem_sz", i1 false, i1 false}
!39 = !{ptr @scatter_elem_sz, !40, !"scatter_elem_sz", i1 false, i1 false}
!40 = !{!"../drivers/scsi/sg.c", i32 90, i32 12}
!41 = !{ptr @__param_str_def_reserved_size, !4, !"__param_str_def_reserved_size", i1 false, i1 false}
!42 = !{ptr @def_reserved_size, !43, !"def_reserved_size", i1 false, i1 false}
!43 = !{!"../drivers/scsi/sg.c", i32 87, i32 12}
!44 = !{ptr @__param_str_allow_dio, !7, !"__param_str_allow_dio", i1 false, i1 false}
!45 = !{ptr @sg_allow_dio, !46, !"sg_allow_dio", i1 false, i1 false}
!46 = !{!"../drivers/scsi/sg.c", i32 88, i32 12}
!47 = !{ptr @hdr, !48, !"hdr", i1 false, i1 false}
!48 = !{!"../drivers/scsi/sg.c", i32 1651, i32 33}
!49 = !{ptr @sg_interface, !50, !"sg_interface", i1 false, i1 false}
!50 = !{!"../drivers/scsi/sg.c", i32 102, i32 31}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/sg.c", i32 1508, i32 3}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.6, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sg_add_device._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @sg_add_device._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/sg.c", i32 1516, i32 3}
!59 = !{ptr @sg_add_device._entry.7, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sg_add_device._entry_ptr.9, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/sg.c", i32 1532, i32 12}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/sg.c", i32 1534, i32 4}
!65 = !{ptr @sg_add_device._entry.11, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sg_add_device._entry_ptr.13, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/sg.c", i32 1539, i32 32}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/sg.c", i32 1541, i32 4}
!71 = !{ptr @sg_add_device._entry.15, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sg_add_device._entry_ptr.17, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/sg.c", i32 1544, i32 3}
!75 = !{ptr @sg_add_device._entry.18, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sg_add_device._entry_ptr.20, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/sg.c", i32 1546, i32 2}
!79 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sg_fops, !81, !"sg_fops", i1 false, i1 false}
!81 = !{!"../drivers/scsi/sg.c", i32 1418, i32 37}
!82 = !{ptr @__func__.sg_read, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/sg.c", i32 456, i32 38}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/sg.c", i32 462, i32 2}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../drivers/scsi/sg.c", i32 222, i32 22}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/scsi/sg.c", i32 223, i32 3}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sg_check_file_access._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @sg_check_file_access._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!97 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/sg.c", i32 1997, i32 2}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/sg.c", i32 1858, i32 2}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/sg.c", i32 2078, i32 2}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/sg.c", i32 1971, i32 2}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/sg.c", i32 1978, i32 5}
!112 = !{ptr @__func__.sg_write, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/sg.c", i32 616, i32 38}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/sg.c", i32 622, i32 2}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/sg.c", i32 646, i32 3}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/sg.c", i32 660, i32 2}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/sg.c", i32 702, i32 3}
!122 = !{ptr @sg_write._rs, !121, !"_rs", i1 false, i1 false}
!123 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sg_write._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @sg_write._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/sg.c", i32 732, i32 3}
!128 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/sg.c", i32 798, i32 2}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/sg.c", i32 809, i32 3}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/sg.c", i32 1739, i32 2}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/sg.c", i32 2050, i32 2}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/sg.c", i32 2069, i32 3}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/sg.c", i32 1904, i32 2}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/sg.c", i32 1943, i32 3}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/sg.c", i32 1950, i32 2}
!144 = !{ptr @scatter_elem_sz_prev, !145, !"scatter_elem_sz_prev", i1 false, i1 false}
!145 = !{!"../drivers/scsi/sg.c", i32 91, i32 12}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/sg.c", i32 1341, i32 3}
!150 = !{ptr @.str.51, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @sg_rq_end_io._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @sg_rq_end_io._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/sg.c", i32 1347, i32 2}
!155 = !{ptr @sg_rq_end_io.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/scsi/sg.c", i32 1413, i32 3}
!157 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sg_remove_sfp.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/scsi/sg.c", i32 2255, i32 2}
!160 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/sg.c", i32 2228, i32 3}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/sg.c", i32 2235, i32 2}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/sg.c", i32 1580, i32 2}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/sg.c", i32 1204, i32 2}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/sg.c", i32 929, i32 2}
!171 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/sg.c", i32 2029, i32 2}
!173 = distinct !{null, !174, !"sg_version_num", i1 false, i1 false}
!174 = !{!"../drivers/scsi/sg.c", i32 14, i32 12}
!175 = !{ptr @.str.61, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/sg.c", i32 1276, i32 2}
!177 = !{ptr @sg_mmap_vm_ops, !178, !"sg_mmap_vm_ops", i1 false, i1 false}
!178 = !{!"../drivers/scsi/sg.c", i32 1260, i32 42}
!179 = !{ptr @.str.62, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/sg.c", i32 1238, i32 2}
!181 = !{ptr @.str.63, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!183 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/sg.c", i32 300, i32 2}
!185 = !{ptr @sg_add_sfp.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/scsi/sg.c", i32 2172, i32 2}
!187 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @sg_add_sfp.__key.66, !189, !"__key", i1 false, i1 false}
!189 = !{!"../drivers/scsi/sg.c", i32 2173, i32 2}
!190 = !{ptr @.str.67, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @sg_add_sfp.__key.68, !192, !"__key", i1 false, i1 false}
!192 = !{!"../drivers/scsi/sg.c", i32 2176, i32 2}
!193 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/sg.c", i32 2191, i32 2}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/sg.c", i32 2199, i32 2}
!198 = !{ptr @sg_big_buff, !199, !"sg_big_buff", i1 false, i1 false}
!199 = !{!"../drivers/scsi/sg.c", i32 80, i32 12}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/sg.c", i32 390, i32 2}
!202 = !{ptr @.str.73, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/sg.c", i32 1217, i32 2}
!204 = !{ptr @.str.74, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/sg.c", i32 1447, i32 3}
!206 = !{ptr @.str.75, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @__func__.sg_alloc, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/sg.c", i32 1458, i32 4}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/sg.c", i32 1463, i32 4}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/sg.c", i32 1471, i32 2}
!214 = !{ptr @.str.79, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/sg.c", i32 1473, i32 21}
!216 = !{ptr @sg_alloc.__key, !217, !"__key", i1 false, i1 false}
!217 = !{!"../drivers/scsi/sg.c", i32 1475, i32 2}
!218 = !{ptr @.str.80, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @sg_alloc.__key.81, !220, !"__key", i1 false, i1 false}
!220 = !{!"../drivers/scsi/sg.c", i32 1477, i32 2}
!221 = !{ptr @.str.82, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @sg_alloc.__key.83, !223, !"__key", i1 false, i1 false}
!223 = !{!"../drivers/scsi/sg.c", i32 1479, i32 2}
!224 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.85, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!227 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.87, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.88, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/sg.c", i32 99, i32 8}
!231 = !{ptr @sg_index_lock, !230, !"sg_index_lock", i1 false, i1 false}
!232 = !{ptr @.str.89, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/sg.c", i32 1602, i32 2}
!234 = !{ptr @__func__.sg_remove_device, !233, !"<string literal>", i1 false, i1 false}
!235 = distinct !{null, !236, !"sg_sysfs_valid", i1 false, i1 false}
!236 = !{!"../drivers/scsi/sg.c", i32 1434, i32 12}
!237 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/sg.c", i32 98, i32 8}
!239 = !{ptr @sg_index_idr, !238, !"sg_index_idr", i1 false, i1 false}
!240 = !{ptr @init_sg.__key, !241, !"__key", i1 false, i1 false}
!241 = !{!"../drivers/scsi/sg.c", i32 1686, i32 26}
!242 = !{ptr @.str.91, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.92, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/sg.c", i32 2375, i32 14}
!245 = !{ptr @.str.93, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/sg.c", i32 2376, i32 2}
!247 = !{ptr @.str.94, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/sg.c", i32 2377, i32 14}
!249 = !{ptr @.str.95, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/sg.c", i32 2378, i32 2}
!251 = !{ptr @.str.96, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/sg.c", i32 2379, i32 2}
!253 = !{ptr @.str.97, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/sg.c", i32 2380, i32 2}
!255 = !{ptr @adio_proc_ops, !256, !"adio_proc_ops", i1 false, i1 false}
!256 = !{!"../drivers/scsi/sg.c", i32 2318, i32 30}
!257 = !{ptr @.str.98, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/sg.c", i32 2388, i32 16}
!259 = !{ptr @debug_seq_ops, !260, !"debug_seq_ops", i1 false, i1 false}
!260 = !{!"../drivers/scsi/sg.c", i32 2359, i32 36}
!261 = !{ptr @.str.99, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/sg.c", i32 2599, i32 17}
!263 = !{ptr @.str.100, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/sg.c", i32 2608, i32 17}
!265 = !{ptr @.str.101, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/sg.c", i32 2610, i32 16}
!267 = !{ptr @.str.102, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/sg.c", i32 2614, i32 18}
!269 = !{ptr @.str.103, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/sg.c", i32 2620, i32 17}
!271 = !{ptr @.str.104, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/sg.c", i32 2543, i32 17}
!273 = !{ptr @.str.105, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/sg.c", i32 2548, i32 17}
!275 = !{ptr @.str.106, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/sg.c", i32 2557, i32 11}
!277 = !{ptr @.str.107, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/sg.c", i32 2559, i32 11}
!279 = !{ptr @.str.108, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/sg.c", i32 2562, i32 11}
!281 = !{ptr @.str.109, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/sg.c", i32 2564, i32 11}
!283 = !{ptr @.str.110, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/sg.c", i32 2570, i32 27}
!285 = !{ptr @.str.111, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/sg.c", i32 2570, i32 36}
!287 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/sg.c", i32 2571, i32 9}
!289 = !{ptr @.str.113, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/sg.c", i32 2572, i32 18}
!291 = !{ptr @.str.114, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/sg.c", i32 2575, i32 19}
!293 = !{ptr @.str.115, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/sg.c", i32 2578, i32 19}
!295 = !{ptr @.str.116, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/sg.c", i32 2583, i32 18}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/sg.c", i32 2587, i32 16}
!299 = !{ptr @dressz_proc_ops, !300, !"dressz_proc_ops", i1 false, i1 false}
!300 = !{!"../drivers/scsi/sg.c", i32 2329, i32 30}
!301 = !{ptr @.str.118, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/sg.c", i32 2447, i32 14}
!303 = !{ptr @dev_seq_ops, !304, !"dev_seq_ops", i1 false, i1 false}
!304 = !{!"../drivers/scsi/sg.c", i32 2343, i32 36}
!305 = !{ptr @.str.119, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/sg.c", i32 2495, i32 15}
!307 = !{ptr @.str.120, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/sg.c", i32 2498, i32 17}
!309 = !{ptr @devstrs_seq_ops, !310, !"devstrs_seq_ops", i1 false, i1 false}
!310 = !{!"../drivers/scsi/sg.c", i32 2351, i32 36}
!311 = !{ptr @.str.121, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/sg.c", i32 2521, i32 17}
!313 = !{ptr @.str.122, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/sg.c", i32 2524, i32 15}
!315 = !{ptr @.str.123, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/sg.c", i32 2440, i32 16}
!317 = !{ptr @.str.124, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/sg.c", i32 63, i32 32}
!319 = distinct !{null, !320, !"sg_version_date", i1 false, i1 false}
!320 = !{!"../drivers/scsi/sg.c", i32 63, i32 14}
!321 = !{ptr @.str.125, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/sg.c", i32 1655, i32 25}
!323 = !{ptr @.str.126, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/sg.c", i32 1642, i32 15}
!325 = !{ptr @sg_sysctls, !326, !"sg_sysctls", i1 false, i1 false}
!326 = !{!"../drivers/scsi/sg.c", i32 1640, i32 25}
!327 = !{!"sp"}
!328 = !{i32 1, !"wchar_size", i32 2}
!329 = !{i32 1, !"min_enum_size", i32 4}
!330 = !{i32 8, !"branch-target-enforcement", i32 0}
!331 = !{i32 8, !"sign-return-address", i32 0}
!332 = !{i32 8, !"sign-return-address-all", i32 0}
!333 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!334 = !{i32 7, !"uwtable", i32 1}
!335 = !{i32 7, !"frame-pointer", i32 2}
!336 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!337 = !{!"branch_weights", i32 2000, i32 1}
!338 = !{i64 2151509571}
!339 = !{i64 2148495771}
!340 = !{i64 2148411056, i64 2148411088, i64 2148411117, i64 2148411151, i64 2148411182, i64 2148411205}
!341 = !{i64 2148496000}
!342 = !{i64 2148499891}
!343 = !{i64 2148414331, i64 2148414363, i64 2148414392, i64 2148414426, i64 2148414457, i64 2148414480}
!344 = !{i64 2149376005}
!345 = !{i64 4970508}
!346 = !{i64 4970705}
!347 = !{i64 2152455938}
!348 = !{i64 2154898027, i64 2154898307, i64 2154898641, i64 2154898975}
!349 = !{i64 2154910274, i64 2154910554, i64 2154910888, i64 2154911222}
!350 = !{i64 2154934740, i64 2154935020, i64 2154935354, i64 2154935688}
!351 = !{i64 2152475634, i64 2152475659}
!352 = !{i64 2152474953, i64 2152474978}
!353 = !{i64 2154945416, i64 2154945696, i64 2154946030, i64 2154946364}
!354 = !{!"branch_weights", i32 1, i32 2000}
!355 = !{!"auto-init"}
!356 = !{i64 2154979135, i64 2154979415, i64 2154979749, i64 2154980083}
!357 = !{i64 2154994341, i64 2154994621, i64 2154994955, i64 2154995289}
!358 = !{i64 2155005823, i64 2155006103, i64 2155006437, i64 2155006771}
!359 = !{i64 2155019044, i64 2155019324, i64 2155019658, i64 2155019992}
!360 = !{i64 2155028054, i64 2155028334, i64 2155028668, i64 2155029002}
!361 = !{i64 2155044621, i64 2155044901, i64 2155045235, i64 2155045569}
!362 = !{i64 2155053417, i64 2155053697, i64 2155054031, i64 2155054365}
!363 = !{i64 2155064886, i64 2155065166, i64 2155065500, i64 2155065834}
!364 = !{i64 2155078781, i64 2155079061, i64 2155079395, i64 2155079729}
!365 = !{i64 2155090250, i64 2155090530, i64 2155090864, i64 2155091198}
!366 = !{i64 2155099727, i64 2155100007, i64 2155100341, i64 2155100675}
!367 = !{i64 2155111196, i64 2155111476, i64 2155111810, i64 2155112144}
!368 = !{i64 2155120685, i64 2155120965, i64 2155121299, i64 2155121633}
!369 = !{i64 2155132154, i64 2155132434, i64 2155132768, i64 2155133102}
!370 = !{i64 2155141634, i64 2155141914, i64 2155142248, i64 2155142582}
!371 = !{i64 2155150402, i64 2155150682, i64 2155151016, i64 2155151350}
!372 = !{i64 2155159975, i64 2155160255, i64 2155160589, i64 2155160923}
!373 = !{i64 2155171449, i64 2155171729, i64 2155172063, i64 2155172397}
!374 = !{i64 2155181375, i64 2155181655, i64 2155181989, i64 2155182323}
!375 = !{i64 2148411866, i64 2148411898, i64 2148411927, i64 2148411961, i64 2148411992, i64 2148412015}
!376 = !{i8 0, i8 2}
!377 = distinct !{null, ptr @sg_remove_sfp}
!378 = !{i32 0, i32 33}
!379 = !{!"branch_weights", i32 1, i32 4001}
!380 = !{i64 2153407115, i64 2153407599, i64 2153407152, i64 2153407208, i64 2153407242, i64 2153407266, i64 2153407307, i64 2153407328, i64 2153407356, i64 2153407390}
!381 = !{i64 2148410336, i64 2148410362, i64 2148410391, i64 2148410425, i64 2148410456, i64 2148410479}
!382 = !{i64 2149023713, i64 2149023718, i64 2149023731, i64 2149023775, i64 2149023809, i64 2149023830}
