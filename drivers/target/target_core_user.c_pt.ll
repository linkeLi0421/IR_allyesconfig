; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_user.c_pt.bc'
source_filename = "../drivers/target/target_core_user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.95 }
%union.anon.95 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.96 }
%union.anon.96 = type { i32 }
%struct.match_token = type { i32, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.101 }
%union.anon.101 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.tcmu_dev = type { %struct.list_head, %struct.kref, %struct.se_device, %struct.se_dev_plug, ptr, ptr, i32, %struct.uio_info, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.xarray, i32, i32, %struct.xarray, %struct.timer_list, i32, %struct.list_head, %struct.timer_list, i32, %struct.list_head, %struct.tcmu_nl_cmd, [256 x i8], i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.se_dev_plug = type { ptr }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tcmu_nl_cmd = type { %struct.completion, %struct.list_head, ptr, i32, i32 }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.tcmu_mailbox = type { i16, i16, i32, i32, i32, [48 x i8], i32, [60 x i8] }
%struct.substring_t = type { ptr, ptr }
%struct.tcmu_cmd = type { ptr, ptr, %struct.list_head, i16, i32, i32, i32, ptr, i32, i32, i32 }
%struct.tcmu_tmr = type { %struct.list_head, i8, i32, [0 x i16] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.tcmu_cmd_entry_hdr = type { i32, i16, i8, i8 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.tcmu_cmd_entry = type { %struct.tcmu_cmd_entry_hdr, %union.anon.105 }
%union.anon.105 = type { %struct.anon.106, [64 x i8] }
%struct.anon.106 = type { i32, i32, i32, i64, i64, i64, [0 x %struct.iovec] }
%struct.iovec = type { ptr, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
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
%struct.kuid_t = type { i32 }
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
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tcmu_tmr_entry = type { %struct.tcmu_cmd_entry_hdr, i8, i8, i16, i32, i64, i64, [0 x i16] }
%struct.scsi_varlen_cdb_hdr = type { i8, i8, [5 x i8], i8, i16 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.108, [64 x ptr], %union.anon.109 }
%union.anon.108 = type { %struct.list_head }
%union.anon.109 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.93, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.93 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.uio_device = type { ptr, %struct.device, i32, %struct.atomic_t, ptr, %struct.wait_queue_head, ptr, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.97, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.98, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.99, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.97 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.98 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.99 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.100 = type { ptr }

@__param_str_global_max_data_area_mb = internal constant [41 x i8] c"target_core_user.global_max_data_area_mb\00", align 1
@tcmu_global_max_data_area_op = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @tcmu_set_global_max_data_area, ptr @tcmu_get_global_max_data_area, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_global_max_data_area_mb = internal constant %struct.kernel_param { ptr @__param_str_global_max_data_area_mb, ptr null, ptr @tcmu_global_max_data_area_op, i16 420, i8 -1, i8 0, %union.anon.95 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_global_max_data_area_mb286 = internal constant [115 x i8] c"target_core_user.parm=global_max_data_area_mb:Max MBs allowed to be allocated to all the tcmu device's data areas.\00", section ".modinfo", align 1
@__param_str_block_netlink = internal constant [31 x i8] c"target_core_user.block_netlink\00", align 1
@tcmu_block_netlink_op = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @tcmu_set_block_netlink, ptr @tcmu_get_block_netlink, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_block_netlink = internal constant %struct.kernel_param { ptr @__param_str_block_netlink, ptr null, ptr @tcmu_block_netlink_op, i16 420, i8 -1, i8 0, %union.anon.95 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_block_netlink287 = internal constant [64 x i8] c"target_core_user.parm=block_netlink:Block new netlink commands.\00", section ".modinfo", align 1
@__param_str_reset_netlink = internal constant [31 x i8] c"target_core_user.reset_netlink\00", align 1
@tcmu_reset_netlink_op = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @tcmu_set_reset_netlink, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_reset_netlink = internal constant %struct.kernel_param { ptr @__param_str_reset_netlink, ptr null, ptr @tcmu_reset_netlink_op, i16 128, i8 -1, i8 0, %union.anon.95 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_reset_netlink289 = internal constant [60 x i8] c"target_core_user.parm=reset_netlink:Reset netlink commands.\00", section ".modinfo", align 1
@tcmu_unmap_work = internal global { %struct.delayed_work, [60 x i8] } zeroinitializer, align 32
@tcmu_ops = internal global { %struct.target_backend_ops, [44 x i8] } { %struct.target_backend_ops { [16 x i8] c"user\00\00\00\00\00\00\00\00\00\00\00\00", [16 x i8] zeroinitializer, [4 x i8] zeroinitializer, ptr null, i8 1, i8 6, ptr @tcmu_attach_hba, ptr @tcmu_detach_hba, ptr null, ptr @tcmu_alloc_device, ptr @tcmu_configure_device, ptr @tcmu_destroy_device, ptr @tcmu_free_device, ptr @tcmu_plug_device, ptr @tcmu_unplug_device, ptr @tcmu_set_configfs_dev_params, ptr @tcmu_show_configfs_dev_params, ptr @tcmu_parse_cdb, ptr @tcmu_tmr_notify, ptr @sbc_get_device_type, ptr @tcmu_get_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcmu_action_attrs }, [44 x i8] zeroinitializer }, align 32
@tcmu_attrs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcmu_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"TCM-USER\00\00\00\00\00\00\00\00", i32 2, i32 9, i32 0, i8 -128, i8 0, i8 4, i8 1, ptr @tcmu_attr_policy, ptr null, ptr null, ptr null, ptr @tcmu_genl_ops, ptr @tcmu_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@tcmu_root_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tcmu_cmd_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_description346 = internal constant [55 x i8] c"target_core_user.description=TCM USER subsystem plugin\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [53 x i8] c"target_core_user.author=Shaohua Li <shli@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [57 x i8] c"target_core_user.author=Andy Grover <agrover@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [54 x i8] c"target_core_user.file=drivers/target/target_core_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [29 x i8] c"target_core_user.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_target_core_user__351_3303_tcmu_module_init6 = internal global ptr @tcmu_module_init, section ".initcall6.init", align 4
@__exitcall_tcmu_module_exit = internal global ptr @tcmu_module_exit, section ".exitcall.exit", align 4
@tcmu_set_global_max_data_area._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013global_max_data_area must be larger than 0.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tcmu_set_global_max_data_area\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/target/target_core_user.c\00", [62 x i8] zeroinitializer }, align 32
@tcmu_set_global_max_data_area._entry_ptr = internal global ptr @tcmu_set_global_max_data_area._entry, section ".printk_index", align 4
@tcmu_global_max_pages = internal global { i32, [28 x i8] } { i32 524288, [28 x i8] zeroinitializer }, align 32
@global_page_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@tcmu_set_block_netlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Invalid block netlink value %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcmu_set_block_netlink\00", [41 x i8] zeroinitializer }, align 32
@tcmu_set_block_netlink._entry_ptr = internal global ptr @tcmu_set_block_netlink._entry, section ".printk_index", align 4
@tcmu_netlink_blocked = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blocked\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unblocked\00", [22 x i8] zeroinitializer }, align 32
@tcmu_set_reset_netlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Invalid reset netlink value %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcmu_set_reset_netlink\00", [41 x i8] zeroinitializer }, align 32
@tcmu_set_reset_netlink._entry_ptr = internal global ptr @tcmu_set_reset_netlink._entry, section ".printk_index", align 4
@tcmu_nl_cmd_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tcmu_nl_cmd_mutex, i64 52), ptr getelementptr (i8, ptr @tcmu_nl_cmd_mutex, i64 52) }, ptr @tcmu_nl_cmd_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tcmu_nl_cmd_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tcmu_nl_cmd_list, ptr @tcmu_nl_cmd_list }, [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tcmu_nl_cmd_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcmu_nl_cmd_mutex\00", [46 x i8] zeroinitializer }, align 32
@tcmu_fail_netlink_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Could not reset device's netlink interface. Netlink is not blocked.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcmu_fail_netlink_cmd\00", [42 x i8] zeroinitializer }, align 32
@tcmu_fail_netlink_cmd._entry_ptr = internal global ptr @tcmu_fail_netlink_cmd._entry, section ".printk_index", align 4
@tcmu_fail_netlink_cmd.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"target_core_user\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Aborting nl cmd %d on %s\0A\00", [38 x i8] zeroinitializer }, align 32
@tcmu_action_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @tcmu_attr_block_dev, ptr @tcmu_attr_reset_ring, ptr @tcmu_attr_free_kept_buf, ptr null], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcmu_alloc_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&udev->cmdr_lock\00", [47 x i8] zeroinitializer }, align 32
@tcmu_alloc_device.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&udev->qfull_timer)\00", [43 x i8] zeroinitializer }, align 32
@tcmu_alloc_device.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&udev->cmd_timer)\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@tcmu_qfull_timedout.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcmu_qfull_timedout\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s qfull timeout has expired\0A\00", [34 x i8] zeroinitializer }, align 32
@timed_out_udevs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@timed_out_udevs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @timed_out_udevs, ptr @timed_out_udevs }, [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"timed_out_udevs_lock\00", [43 x i8] zeroinitializer }, align 32
@tcmu_cmd_timedout.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcmu_cmd_timedout\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s cmd timeout has expired\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tcm-user command & data buffer\00", [33 x i8] zeroinitializer }, align 32
@tcmu_kern_cmd_reply_supported = internal global { i8, [31 x i8] } zeroinitializer, align 32
@root_udev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.102, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @root_udev_mutex, i64 52), ptr getelementptr (i8, ptr @root_udev_mutex, i64 52) }, ptr @root_udev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.103, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@root_udev = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @root_udev, ptr @root_udev }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tcm-user/%u/%s/%s\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcm-user/%u/%s\00", [17 x i8] zeroinitializer }, align 32
@tcmu_handle_completions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ring broken, not handling completions\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcmu_handle_completions\00", [40 x i8] zeroinitializer }, align 32
@tcmu_handle_completions._entry_ptr = internal global ptr @tcmu_handle_completions._entry, section ".printk_index", align 4
@tcmu_handle_completions._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cmd_id %u not found, ring is broken\0A\00", [57 x i8] zeroinitializer }, align 32
@tcmu_handle_completions._entry_ptr.36 = internal global ptr @tcmu_handle_completions._entry.34, section ".printk_index", align 4
@tcmu_handle_completion.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcmu_handle_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cmd_id %u already completed with KEEP_BUF, ring is broken\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcmu_handle_completion\00", [41 x i8] zeroinitializer }, align 32
@tcmu_handle_completion._entry_ptr = internal global ptr @tcmu_handle_completion._entry, section ".printk_index", align 4
@tcmu_handle_completion._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014TCMU: Userspace set UNKNOWN_OP flag on se_cmd %p\0A\00", [44 x i8] zeroinitializer }, align 32
@tcmu_handle_completion._entry_ptr.41 = internal global ptr @tcmu_handle_completion._entry.39, section ".printk_index", align 4
@tcmu_handle_completion._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 1378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014TCMU: data direction was %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@tcmu_handle_completion._entry_ptr.44 = internal global ptr @tcmu_handle_completion._entry.42, section ".printk_index", align 4
@tcmu_handle_completion.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.38, ptr @.str.2, ptr @.str.45, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_len = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@tcmu_copy_data.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcmu_copy_data\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: aborting data copy due to exhausted sg_list\0A\00", [47 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@tcmu_run_tmr_queue.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcmu_run_tmr_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"running %s's tmr queue\0A\00", [40 x i8] zeroinitializer }, align 32
@tcmu_run_tmr_queue.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"removing tmr %p on dev %s from queue\0A\00", [58 x i8] zeroinitializer }, align 32
@tcmu_run_tmr_queue.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 1, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ran out of space during tmr queue run\0A\00", [57 x i8] zeroinitializer }, align 32
@queue_tmr_ring.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"queue_tmr_ring\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"adding tmr %p on dev %s to TMR ring space wait queue\0A\00", [42 x i8] zeroinitializer }, align 32
@is_ring_space_avail.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is_ring_space_avail\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no cmd space: %u %u %u\0A\00", [40 x i8] zeroinitializer }, align 32
@run_qfull_queue.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 -78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"run_qfull_queue\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"running %s's cmdr queue forcefail %d\0A\00", [58 x i8] zeroinitializer }, align 32
@run_qfull_queue.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 1, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"removing cmd %p on dev %s from queue\0A\00", [58 x i8] zeroinitializer }, align 32
@run_qfull_queue.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.56, ptr @.str.2, ptr @.str.59, i8 1, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cmd %p on dev %s failed with %u\0A\00", [63 x i8] zeroinitializer }, align 32
@run_qfull_queue.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.56, ptr @.str.2, ptr @.str.60, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ran out of space during cmdr queue run\0A\00", [56 x i8] zeroinitializer }, align 32
@queue_cmd_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014TCMU: Request of size %zu is too big for %zu data area\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"queue_cmd_ring\00", [17 x i8] zeroinitializer }, align 32
@queue_cmd_ring._entry_ptr = internal global ptr @queue_cmd_ring._entry, section ".printk_index", align 4
@queue_cmd_ring._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014TCMU: Request of size %zu is too big for %u cmd ring\0A\00", [40 x i8] zeroinitializer }, align 32
@queue_cmd_ring._entry_ptr.65 = internal global ptr @queue_cmd_ring._entry.63, section ".printk_index", align 4
@queue_cmd_ring._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013tcmu: Could not allocate cmd id.\0A\00", [60 x i8] zeroinitializer }, align 32
@queue_cmd_ring._entry_ptr.68 = internal global ptr @queue_cmd_ring._entry.66, section ".printk_index", align 4
@queue_cmd_ring.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.62, ptr @.str.2, ptr @.str.69, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"allocated cmd id %u for cmd %p dev %s\0A\00", [57 x i8] zeroinitializer }, align 32
@tcmu_alloc_data_space.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcmu_alloc_data_space\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"no data space: only %lu available, but ask for %u\0A\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcmu_setup_cmd_timer\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Timeout set up for cmd %p, dev = %s, tmo = %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@add_to_qfull_queue.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.80, ptr @.str.2, ptr @.str.81, i8 0, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"add_to_qfull_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"adding cmd %p on dev %s to ring space wait queue\0A\00", [46 x i8] zeroinitializer }, align 32
@tcmu_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @tcmu_vma_open, ptr @tcmu_vma_close, ptr null, ptr null, ptr null, ptr @tcmu_vma_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcmu_vma_close.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 1, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcmu_vma_close\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vma_close\0A\00", [21 x i8] zeroinitializer }, align 32
@tcmu_try_get_data_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Invalid addr to data page mapping (dpi %u) on device %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcmu_try_get_data_page\00", [41 x i8] zeroinitializer }, align 32
@tcmu_try_get_data_page._entry_ptr = internal global ptr @tcmu_try_get_data_page._entry, section ".printk_index", align 4
@.str.86 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@tcmu_vma_open.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 1, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcmu_vma_open\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vma_open\0A\00", [22 x i8] zeroinitializer }, align 32
@tcmu_open.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 1, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tcmu_open\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"open\0A\00", [26 x i8] zeroinitializer }, align 32
@tcmu_release.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcmu_release\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"removing KEEP_BUF cmd %u on dev %s from ring\0A\00", [50 x i8] zeroinitializer }, align 32
@tcmu_release.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 1, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"close\0A\00", [25 x i8] zeroinitializer }, align 32
@tcmu_init_genl_cmd_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Failing nl cmd %d on %s. Interface is blocked.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcmu_init_genl_cmd_reply\00", [39 x i8] zeroinitializer }, align 32
@tcmu_init_genl_cmd_reply._entry_ptr = internal global ptr @tcmu_init_genl_cmd_reply._entry, section ".printk_index", align 4
@tcmu_init_genl_cmd_reply._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014netlink cmd %d already executing on %s\0A\00", [54 x i8] zeroinitializer }, align 32
@tcmu_init_genl_cmd_reply._entry_ptr.98 = internal global ptr @tcmu_init_genl_cmd_reply._entry.96, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tcmu_wait_genl_cmd_reply.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 1, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcmu_wait_genl_cmd_reply\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sleeping for nl reply\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"root_udev_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"root_udev_mutex\00", [16 x i8] zeroinitializer }, align 32
@tcmu_dev_kref_release.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 1, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcmu_dev_kref_release\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dev_kref_release\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@tokens = internal global { [8 x %struct.match_token], [32 x i8] } { [8 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.113 }, %struct.match_token { i32 1, ptr @.str.114 }, %struct.match_token { i32 2, ptr @.str.115 }, %struct.match_token { i32 3, ptr @.str.116 }, %struct.match_token { i32 4, ptr @.str.117 }, %struct.match_token { i32 5, ptr @.str.118 }, %struct.match_token { i32 6, ptr @.str.119 }, %struct.match_token { i32 7, ptr null }], [32 x i8] zeroinitializer }, align 32
@tcmu_set_configfs_dev_params.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 2, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tcmu_set_configfs_dev_params\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TCMU: Referencing Path: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@tcmu_set_configfs_dev_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 2544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013match_u64() failed for dev_size=. Error %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@tcmu_set_configfs_dev_params._entry_ptr = internal global ptr @tcmu_set_configfs_dev_params._entry, section ".printk_index", align 4
@tcmu_set_configfs_dev_params._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.107, ptr @.str.2, i32 2558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013match_int() failed for nl_reply_supported=. Error %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@tcmu_set_configfs_dev_params._entry_ptr.112 = internal global ptr @tcmu_set_configfs_dev_params._entry.110, section ".printk_index", align 4
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dev_config=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev_size=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw_block_size=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw_max_sectors=%d\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nl_reply_supported=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max_data_area_mb=%d\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"data_pages_per_blk=%d\00", [42 x i8] zeroinitializer }, align 32
@tcmu_set_dev_attrib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013match_int() failed for dev attrib. Error %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcmu_set_dev_attrib\00", [44 x i8] zeroinitializer }, align 32
@tcmu_set_dev_attrib._entry_ptr = internal global ptr @tcmu_set_dev_attrib._entry, section ".printk_index", align 4
@tcmu_set_dev_attrib._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 2431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Invalid dev attrib value %d. Must be greater than zero.\0A\00", [37 x i8] zeroinitializer }, align 32
@tcmu_set_dev_attrib._entry_ptr.124 = internal global ptr @tcmu_set_dev_attrib._entry.122, section ".printk_index", align 4
@tcmu_set_max_blocks_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 2446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013match_int() failed for max_data_area_mb=. Error %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcmu_set_max_blocks_param\00", [38 x i8] zeroinitializer }, align 32
@tcmu_set_max_blocks_param._entry_ptr = internal global ptr @tcmu_set_max_blocks_param._entry, section ".printk_index", align 4
@tcmu_set_max_blocks_param._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.2, i32 2450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Invalid max_data_area %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@tcmu_set_max_blocks_param._entry_ptr.129 = internal global ptr @tcmu_set_max_blocks_param._entry.127, section ".printk_index", align 4
@tcmu_set_max_blocks_param._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.2, i32 2455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013%d is too large. Adjusting max_data_area_mb to global limit of %u\0A\00", [59 x i8] zeroinitializer }, align 32
@tcmu_set_max_blocks_param._entry_ptr.132 = internal global ptr @tcmu_set_max_blocks_param._entry.130, section ".printk_index", align 4
@tcmu_set_max_blocks_param._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.2, i32 2460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013Invalid max_data_area %d (%zu pages): smaller than data_pages_per_blk (%u pages).\0A\00", [43 x i8] zeroinitializer }, align 32
@tcmu_set_max_blocks_param._entry_ptr.135 = internal global ptr @tcmu_set_max_blocks_param._entry.133, section ".printk_index", align 4
@tcmu_set_max_blocks_param._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.2, i32 2466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Cannot set max_data_area_mb after it has been enabled.\0A\00", [38 x i8] zeroinitializer }, align 32
@tcmu_set_max_blocks_param._entry_ptr.138 = internal global ptr @tcmu_set_max_blocks_param._entry.136, section ".printk_index", align 4
@tcmu_set_data_pages_per_blk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013match_int() failed for data_pages_per_blk=. Error %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tcmu_set_data_pages_per_blk\00", [36 x i8] zeroinitializer }, align 32
@tcmu_set_data_pages_per_blk._entry_ptr = internal global ptr @tcmu_set_data_pages_per_blk._entry, section ".printk_index", align 4
@tcmu_set_data_pages_per_blk._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013Invalid data_pages_per_blk %d: greater than max_data_area_mb %d -> %zd pages).\0A\00", [46 x i8] zeroinitializer }, align 32
@tcmu_set_data_pages_per_blk._entry_ptr.143 = internal global ptr @tcmu_set_data_pages_per_blk._entry.141, section ".printk_index", align 4
@tcmu_set_data_pages_per_blk._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Cannot set data_pages_per_blk after it has been enabled.\0A\00", [36 x i8] zeroinitializer }, align 32
@tcmu_set_data_pages_per_blk._entry_ptr.146 = internal global ptr @tcmu_set_data_pages_per_blk._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Config: %s \00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Size: %llu \00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MaxDataAreaMB: %u \00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DataPagesPerBlk: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@tcmu_tmr_notify.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.152, ptr @.str.2, ptr @.str.153, i8 1, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcmu_tmr_notify\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Removing aborted command %p from queue on dev %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@tcmu_tmr_notify.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.152, ptr @.str.2, ptr @.str.154, i8 1, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"TMR event %d on dev %s, aborted cmds %d, afflicted cmd_ids %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tcmu_attr_block_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.155, ptr null, i16 420, ptr @tcmu_block_dev_show, ptr @tcmu_block_dev_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_reset_ring = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.161, ptr null, i16 128, ptr null, ptr @tcmu_reset_ring_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_free_kept_buf = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.172, ptr null, i16 128, ptr null, ptr @tcmu_free_kept_buf_store }, [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"block_dev\00", [22 x i8] zeroinitializer }, align 32
@tcmu_block_dev_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.2, i32 2953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Device is not configured.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcmu_block_dev_store\00", [43 x i8] zeroinitializer }, align 32
@tcmu_block_dev_store._entry_ptr = internal global ptr @tcmu_block_dev_store._entry, section ".printk_index", align 4
@tcmu_block_dev_store._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.2, i32 2962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Invalid block value %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tcmu_block_dev_store._entry_ptr.160 = internal global ptr @tcmu_block_dev_store._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_ring\00", [21 x i8] zeroinitializer }, align 32
@tcmu_reset_ring_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.162, ptr @.str.2, i32 2985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcmu_reset_ring_store\00", [42 x i8] zeroinitializer }, align 32
@tcmu_reset_ring_store._entry_ptr = internal global ptr @tcmu_reset_ring_store._entry, section ".printk_index", align 4
@tcmu_reset_ring_store._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 2994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Invalid reset ring value %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tcmu_reset_ring_store._entry_ptr.165 = internal global ptr @tcmu_reset_ring_store._entry.163, section ".printk_index", align 4
@tcmu_reset_ring.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.166, ptr @.str.2, ptr @.str.167, i8 2, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcmu_reset_ring\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"removing cmd %u on dev %s from ring %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(is expired)\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(is keep buffer)\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tcmu_reset_ring.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.166, ptr @.str.2, ptr @.str.171, i8 2, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.171 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mb last %u head %u tail %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_kept_buf\00", [18 x i8] zeroinitializer }, align 32
@tcmu_free_kept_buf_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.173, ptr @.str.2, i32 3015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tcmu_free_kept_buf_store\00", [39 x i8] zeroinitializer }, align 32
@tcmu_free_kept_buf_store._entry_ptr = internal global ptr @tcmu_free_kept_buf_store._entry, section ".printk_index", align 4
@tcmu_free_kept_buf_store._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.2, i32 3031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013free_kept_buf: cmd_id %d not found\0A\00", [58 x i8] zeroinitializer }, align 32
@tcmu_free_kept_buf_store._entry_ptr.176 = internal global ptr @tcmu_free_kept_buf_store._entry.174, section ".printk_index", align 4
@tcmu_free_kept_buf_store._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.2, i32 3038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013free_kept_buf: cmd_id %d was not completed with KEEP_BUF\0A\00", [36 x i8] zeroinitializer }, align 32
@tcmu_free_kept_buf_store._entry_ptr.179 = internal global ptr @tcmu_free_kept_buf_store._entry.177, section ".printk_index", align 4
@tcmu_attr_policy = internal global { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 0, %union.anon.101 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.101 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.101 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.101 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.101 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@tcmu_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @tcmu_genl_set_features, ptr null, i8 7, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @tcmu_genl_add_dev_done, ptr null, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @tcmu_genl_rm_dev_done, ptr null, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @tcmu_genl_reconfig_dev_done, ptr null, i8 6, i8 0, i8 1, i8 3 }], [48 x i8] zeroinitializer }, align 32
@tcmu_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"config\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@tcmu_genl_set_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016tcmu daemon: command reply support %u.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tcmu_genl_set_features\00", [41 x i8] zeroinitializer }, align 32
@tcmu_genl_set_features._entry_ptr = internal global ptr @tcmu_genl_set_features._entry, section ".printk_index", align 4
@tcmu_genl_cmd_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013TCMU_ATTR_CMD_STATUS or TCMU_ATTR_DEVICE_ID not set, doing nothing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcmu_genl_cmd_done\00", [45 x i8] zeroinitializer }, align 32
@tcmu_genl_cmd_done._entry_ptr = internal global ptr @tcmu_genl_cmd_done._entry, section ".printk_index", align 4
@tcmu_genl_cmd_done._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013tcmu nl cmd %u/%d completion could not find device with dev id %u.\0A\00", [58 x i8] zeroinitializer }, align 32
@tcmu_genl_cmd_done._entry_ptr.186 = internal global ptr @tcmu_genl_cmd_done._entry.184, section ".printk_index", align 4
@tcmu_genl_cmd_done.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.183, ptr @.str.2, ptr @.str.187, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s genl cmd done got id %d curr %d done %d rc %d stat %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tcmu_genl_cmd_done._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.183, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Mismatched commands on %s (Expecting reply for %d. Current %d).\0A\00", [61 x i8] zeroinitializer }, align 32
@tcmu_genl_cmd_done._entry_ptr.190 = internal global ptr @tcmu_genl_cmd_done._entry.188, section ".printk_index", align 4
@tcmu_module_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.191 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&tcmu_unmap_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@tcmu_module_init.__key.192 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.193 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&tcmu_unmap_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcmu_cmd_cache\00", [17 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcm_user\00", [23 x i8] zeroinitializer }, align 32
@passthrough_attrib_attrs = external dso_local local_unnamed_addr global [0 x ptr], align 4
@passthrough_pr_attrib_attrs = external dso_local local_unnamed_addr global [0 x ptr], align 4
@tcmu_attrib_attrs = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @tcmu_attr_cmd_time_out, ptr @tcmu_attr_qfull_time_out, ptr @tcmu_attr_max_data_area_mb, ptr @tcmu_attr_data_pages_per_blk, ptr @tcmu_attr_dev_config, ptr @tcmu_attr_dev_size, ptr @tcmu_attr_emulate_write_cache, ptr @tcmu_attr_tmr_notification, ptr @tcmu_attr_nl_reply_supported, ptr null], [56 x i8] zeroinitializer }, align 32
@tcmu_check_expired_ring_cmd.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.196, ptr @.str.2, ptr @.str.197, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tcmu_check_expired_ring_cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timing out inflight cmd %u on dev %s.\0A\00", [57 x i8] zeroinitializer }, align 32
@tcmu_check_expired_queue_cmd.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.198, ptr @.str.2, ptr @.str.199, i8 1, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tcmu_check_expired_queue_cmd\00", [35 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timing out queued cmd %p on dev %s.\0A\00", [59 x i8] zeroinitializer }, align 32
@find_free_blocks.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.200, ptr @.str.2, ptr @.str.201, i8 3, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"find_free_blocks\00", [47 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Freed %u pages (total %u) from %u blocks (total %u) from %s.\0A\00", [34 x i8] zeroinitializer }, align 32
@tcmu_attr_cmd_time_out = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.202, ptr null, i16 420, ptr @tcmu_cmd_time_out_show, ptr @tcmu_cmd_time_out_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_qfull_time_out = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.206, ptr null, i16 420, ptr @tcmu_qfull_time_out_show, ptr @tcmu_qfull_time_out_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_max_data_area_mb = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.210, ptr null, i16 292, ptr @tcmu_max_data_area_mb_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_data_pages_per_blk = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.212, ptr null, i16 292, ptr @tcmu_data_pages_per_blk_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_dev_config = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.213, ptr null, i16 420, ptr @tcmu_dev_config_show, ptr @tcmu_dev_config_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_dev_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.216, ptr null, i16 420, ptr @tcmu_dev_size_show, ptr @tcmu_dev_size_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_emulate_write_cache = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.219, ptr null, i16 420, ptr @tcmu_emulate_write_cache_show, ptr @tcmu_emulate_write_cache_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_tmr_notification = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.222, ptr null, i16 420, ptr @tcmu_tmr_notification_show, ptr @tcmu_tmr_notification_store }, [44 x i8] zeroinitializer }, align 32
@tcmu_attr_nl_reply_supported = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.223, ptr null, i16 420, ptr @tcmu_nl_reply_supported_show, ptr @tcmu_nl_reply_supported_store }, [44 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmd_time_out\00", [19 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@tcmu_cmd_time_out_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Unable to set tcmu cmd_time_out while exports exist\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tcmu_cmd_time_out_store\00", [40 x i8] zeroinitializer }, align 32
@tcmu_cmd_time_out_store._entry_ptr = internal global ptr @tcmu_cmd_time_out_store._entry, section ".printk_index", align 4
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qfull_time_out\00", [17 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@tcmu_qfull_time_out_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 2668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Invalid qfull timeout value %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tcmu_qfull_time_out_store\00", [38 x i8] zeroinitializer }, align 32
@tcmu_qfull_time_out_store._entry_ptr = internal global ptr @tcmu_qfull_time_out_store._entry, section ".printk_index", align 4
@.str.210 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_data_area_mb\00", [47 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"data_pages_per_blk\00", [45 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dev_config\00", [21 x i8] zeroinitializer }, align 32
@tcmu_dev_config_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 2742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to reconfigure device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tcmu_dev_config_store\00", [42 x i8] zeroinitializer }, align 32
@tcmu_dev_config_store._entry_ptr = internal global ptr @tcmu_dev_config_store._entry, section ".printk_index", align 4
@.str.216 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_size\00", [23 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@tcmu_dev_size_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.218, ptr @.str.2, i32 2804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tcmu_dev_size_store\00", [44 x i8] zeroinitializer }, align 32
@tcmu_dev_size_store._entry_ptr = internal global ptr @tcmu_dev_size_store._entry, section ".printk_index", align 4
@.str.219 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emulate_write_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@tcmu_emulate_write_cache_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.221, ptr @.str.2, i32 2886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tcmu_emulate_write_cache_store\00", [33 x i8] zeroinitializer }, align 32
@tcmu_emulate_write_cache_store._entry_ptr = internal global ptr @tcmu_emulate_write_cache_store._entry, section ".printk_index", align 4
@.str.222 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tmr_notification\00", [47 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nl_reply_supported\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.224 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 128]
@__sancov_gen_cov_switch_values.225 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 128]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"tcmu_global_max_data_area_op\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 257, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"tcmu_block_netlink_op\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 294, i32 38 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"tcmu_reset_netlink_op\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 347, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"tcmu_unmap_work\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 225, i32 28 }
@___asan_gen_.241 = private unnamed_addr constant [9 x i8] c"tcmu_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3084, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant [11 x i8] c"tcmu_attrs\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3075, i32 36 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"tcmu_root_device\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 88, i32 23 }
@___asan_gen_.250 = private unnamed_addr constant [15 x i8] c"tcmu_cmd_cache\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 222, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 238, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [22 x i8] c"tcmu_global_max_pages\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 226, i32 12 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"global_page_count\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 224, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 254, i32 25 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 286, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"tcmu_netlink_blocked\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 86, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 271, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 272, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 272, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 332, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"tcmu_nl_cmd_mutex\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"tcmu_nl_cmd_list\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 97, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 96, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 307, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 312, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [18 x i8] c"tcmu_action_attrs\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3077, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1622, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1631, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1632, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 378, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1575, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"timed_out_udevs_lock\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [16 x i8] c"timed_out_udevs\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 220, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 219, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1567, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2220, i32 18 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2222, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant [30 x i8] c"tcmu_kern_cmd_reply_supported\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 85, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"root_udev_mutex\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [10 x i8] c"root_udev\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 217, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2155, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2158, i32 31 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1448, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1486, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1336, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1348, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1377, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1384, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 745, i32 6 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1417, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1424, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1428, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1173, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 839, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1737, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1744, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1763, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1774, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1041, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1059, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1075, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1083, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 867, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 695, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1182, i32 9 }
@___asan_gen_.527 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.527, i32 723, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 923, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 948, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [12 x i8] c"tcmu_vm_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1894, i32 42 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1851, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1831, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.560, i32 1160, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1842, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1928, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1952, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1971, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1990, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1997, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 87, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2043, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 216, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1722, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2526, i32 30 }
@___asan_gen_.625 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2407, i32 22 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2538, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2543, i32 5 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2557, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2408, i32 19 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2409, i32 17 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2410, i32 22 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2411, i32 23 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2412, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2413, i32 25 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2414, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2424, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2430, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2445, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2450, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2454, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2459, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2466, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2485, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2491, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2499, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2583, i32 23 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2584, i32 49 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2585, i32 24 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2586, i32 24 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2587, i32 24 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1276, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1291, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [20 x i8] c"tcmu_attr_block_dev\00", align 1
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c"tcmu_attr_reset_ring\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [24 x i8] c"tcmu_attr_free_kept_buf\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2972, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2953, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2962, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3001, i32 1 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2985, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2994, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2345, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2376, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3060, i32 1 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3015, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3031, i32 4 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3037, i32 4 }
@___asan_gen_.841 = private unnamed_addr constant [17 x i8] c"tcmu_attr_policy\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 363, i32 26 }
@___asan_gen_.844 = private unnamed_addr constant [14 x i8] c"tcmu_genl_ops\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 448, i32 36 }
@___asan_gen_.847 = private unnamed_addr constant [12 x i8] c"tcmu_mcgrps\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 359, i32 42 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 441, i32 3 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 379, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 395, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 402, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 407, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3228, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3230, i32 37 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3237, i32 21 }
@___asan_gen_.901 = private unnamed_addr constant [18 x i8] c"tcmu_attrib_attrs\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3062, i32 35 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1529, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 1542, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 3164, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant [23 x i8] c"tcmu_attr_cmd_time_out\00", align 1
@___asan_gen_.925 = private unnamed_addr constant [25 x i8] c"tcmu_attr_qfull_time_out\00", align 1
@___asan_gen_.928 = private unnamed_addr constant [27 x i8] c"tcmu_attr_max_data_area_mb\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [29 x i8] c"tcmu_attr_data_pages_per_blk\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c"tcmu_attr_dev_config\00", align 1
@___asan_gen_.937 = private unnamed_addr constant [19 x i8] c"tcmu_attr_dev_size\00", align 1
@___asan_gen_.940 = private unnamed_addr constant [30 x i8] c"tcmu_attr_emulate_write_cache\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [27 x i8] c"tcmu_attr_tmr_notification\00", align 1
@___asan_gen_.946 = private unnamed_addr constant [29 x i8] c"tcmu_attr_nl_reply_supported\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2637, i32 1 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2612, i32 35 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2626, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2673, i32 1 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2645, i32 35 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2668, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2683, i32 1 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2681, i32 35 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2694, i32 1 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2756, i32 1 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2742, i32 4 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2811, i32 1 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2764, i32 35 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2804, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2894, i32 1 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2847, i32 35 }
@___asan_gen_.1018 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2886, i32 4 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2927, i32 1 }
@___asan_gen_.1027 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1028 = private constant [37 x i8] c"../drivers/target/target_core_user.c\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1028, i32 2839, i32 1 }
@llvm.compiler.used = appending global [324 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_block_netlink287, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_global_max_data_area_mb286, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_reset_netlink289, ptr @__exitcall_tcmu_module_exit, ptr @__initcall__kmod_target_core_user__351_3303_tcmu_module_init6, ptr @__param_block_netlink, ptr @__param_global_max_data_area_mb, ptr @__param_reset_netlink, ptr @queue_cmd_ring._entry, ptr @queue_cmd_ring._entry.63, ptr @queue_cmd_ring._entry.66, ptr @queue_cmd_ring._entry_ptr, ptr @queue_cmd_ring._entry_ptr.65, ptr @queue_cmd_ring._entry_ptr.68, ptr @tcmu_block_dev_store._entry, ptr @tcmu_block_dev_store._entry.158, ptr @tcmu_block_dev_store._entry_ptr, ptr @tcmu_block_dev_store._entry_ptr.160, ptr @tcmu_cmd_time_out_store._entry, ptr @tcmu_cmd_time_out_store._entry_ptr, ptr @tcmu_dev_config_store._entry, ptr @tcmu_dev_config_store._entry_ptr, ptr @tcmu_dev_size_store._entry, ptr @tcmu_dev_size_store._entry_ptr, ptr @tcmu_emulate_write_cache_store._entry, ptr @tcmu_emulate_write_cache_store._entry_ptr, ptr @tcmu_fail_netlink_cmd._entry, ptr @tcmu_fail_netlink_cmd._entry_ptr, ptr @tcmu_free_kept_buf_store._entry, ptr @tcmu_free_kept_buf_store._entry.174, ptr @tcmu_free_kept_buf_store._entry.177, ptr @tcmu_free_kept_buf_store._entry_ptr, ptr @tcmu_free_kept_buf_store._entry_ptr.176, ptr @tcmu_free_kept_buf_store._entry_ptr.179, ptr @tcmu_genl_cmd_done._entry, ptr @tcmu_genl_cmd_done._entry.184, ptr @tcmu_genl_cmd_done._entry.188, ptr @tcmu_genl_cmd_done._entry_ptr, ptr @tcmu_genl_cmd_done._entry_ptr.186, ptr @tcmu_genl_cmd_done._entry_ptr.190, ptr @tcmu_genl_set_features._entry, ptr @tcmu_genl_set_features._entry_ptr, ptr @tcmu_handle_completion._entry, ptr @tcmu_handle_completion._entry.39, ptr @tcmu_handle_completion._entry.42, ptr @tcmu_handle_completion._entry_ptr, ptr @tcmu_handle_completion._entry_ptr.41, ptr @tcmu_handle_completion._entry_ptr.44, ptr @tcmu_handle_completions._entry, ptr @tcmu_handle_completions._entry.34, ptr @tcmu_handle_completions._entry_ptr, ptr @tcmu_handle_completions._entry_ptr.36, ptr @tcmu_init_genl_cmd_reply._entry, ptr @tcmu_init_genl_cmd_reply._entry.96, ptr @tcmu_init_genl_cmd_reply._entry_ptr, ptr @tcmu_init_genl_cmd_reply._entry_ptr.98, ptr @tcmu_module_exit, ptr @tcmu_qfull_time_out_store._entry, ptr @tcmu_qfull_time_out_store._entry_ptr, ptr @tcmu_reset_ring_store._entry, ptr @tcmu_reset_ring_store._entry.163, ptr @tcmu_reset_ring_store._entry_ptr, ptr @tcmu_reset_ring_store._entry_ptr.165, ptr @tcmu_set_block_netlink._entry, ptr @tcmu_set_block_netlink._entry_ptr, ptr @tcmu_set_configfs_dev_params._entry, ptr @tcmu_set_configfs_dev_params._entry.110, ptr @tcmu_set_configfs_dev_params._entry_ptr, ptr @tcmu_set_configfs_dev_params._entry_ptr.112, ptr @tcmu_set_data_pages_per_blk._entry, ptr @tcmu_set_data_pages_per_blk._entry.141, ptr @tcmu_set_data_pages_per_blk._entry.144, ptr @tcmu_set_data_pages_per_blk._entry_ptr, ptr @tcmu_set_data_pages_per_blk._entry_ptr.143, ptr @tcmu_set_data_pages_per_blk._entry_ptr.146, ptr @tcmu_set_dev_attrib._entry, ptr @tcmu_set_dev_attrib._entry.122, ptr @tcmu_set_dev_attrib._entry_ptr, ptr @tcmu_set_dev_attrib._entry_ptr.124, ptr @tcmu_set_global_max_data_area._entry, ptr @tcmu_set_global_max_data_area._entry_ptr, ptr @tcmu_set_max_blocks_param._entry, ptr @tcmu_set_max_blocks_param._entry.127, ptr @tcmu_set_max_blocks_param._entry.130, ptr @tcmu_set_max_blocks_param._entry.133, ptr @tcmu_set_max_blocks_param._entry.136, ptr @tcmu_set_max_blocks_param._entry_ptr, ptr @tcmu_set_max_blocks_param._entry_ptr.129, ptr @tcmu_set_max_blocks_param._entry_ptr.132, ptr @tcmu_set_max_blocks_param._entry_ptr.135, ptr @tcmu_set_max_blocks_param._entry_ptr.138, ptr @tcmu_set_reset_netlink._entry, ptr @tcmu_set_reset_netlink._entry_ptr, ptr @tcmu_try_get_data_page._entry, ptr @tcmu_try_get_data_page._entry_ptr, ptr @tcmu_global_max_data_area_op, ptr @tcmu_block_netlink_op, ptr @tcmu_reset_netlink_op, ptr @tcmu_unmap_work, ptr @tcmu_ops, ptr @tcmu_attrs, ptr @tcmu_root_device, ptr @tcmu_cmd_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tcmu_global_max_pages, ptr @global_page_count, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tcmu_netlink_blocked, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tcmu_nl_cmd_mutex, ptr @tcmu_nl_cmd_list, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tcmu_action_attrs, ptr @tcmu_alloc_device.__key, ptr @.str.17, ptr @tcmu_alloc_device.__key.18, ptr @.str.19, ptr @tcmu_alloc_device.__key.20, ptr @.str.21, ptr @xa_init_flags.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @timed_out_udevs_lock, ptr @timed_out_udevs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @tcmu_kern_cmd_reply_supported, ptr @root_udev_mutex, ptr @root_udev, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @tcmu_vm_ops, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @init_completion.__key, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @tokens, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @tcmu_attr_block_dev, ptr @tcmu_attr_reset_ring, ptr @tcmu_attr_free_kept_buf, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @tcmu_attr_policy, ptr @tcmu_genl_ops, ptr @tcmu_mcgrps, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @tcmu_module_init.__key, ptr @.str.191, ptr @tcmu_module_init.__key.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @tcmu_attrib_attrs, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @tcmu_attr_cmd_time_out, ptr @tcmu_attr_qfull_time_out, ptr @tcmu_attr_max_data_area_mb, ptr @tcmu_attr_data_pages_per_blk, ptr @tcmu_attr_dev_config, ptr @tcmu_attr_dev_size, ptr @tcmu_attr_emulate_write_cache, ptr @tcmu_attr_tmr_notification, ptr @tcmu_attr_nl_reply_supported, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223], section "llvm.metadata"
@0 = internal global [267 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_global_max_data_area_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_block_netlink_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_reset_netlink_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_unmap_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_root_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_cmd_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_global_max_data_area._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_global_max_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_page_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_block_netlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_netlink_blocked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_reset_netlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_nl_cmd_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_nl_cmd_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_fail_netlink_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_action_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_alloc_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_alloc_device.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_alloc_device.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timed_out_udevs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timed_out_udevs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_kern_cmd_reply_supported to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_udev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_udev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_handle_completions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_handle_completions._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_handle_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_handle_completion._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_handle_completion._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_cmd_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_cmd_ring._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_cmd_ring._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_try_get_data_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_init_genl_cmd_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_init_genl_cmd_reply._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_configfs_dev_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_configfs_dev_params._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_dev_attrib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_dev_attrib._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_max_blocks_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_max_blocks_param._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_max_blocks_param._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_max_blocks_param._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_max_blocks_param._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_data_pages_per_blk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_data_pages_per_blk._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_set_data_pages_per_blk._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_block_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_reset_ring to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_free_kept_buf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_block_dev_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_block_dev_store._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_reset_ring_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_reset_ring_store._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_free_kept_buf_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_free_kept_buf_store._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_free_kept_buf_store._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_genl_set_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_genl_cmd_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_genl_cmd_done._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_genl_cmd_done._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_module_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_module_init.__key.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attrib_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_cmd_time_out to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_qfull_time_out to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_max_data_area_mb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_data_pages_per_blk to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_dev_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_dev_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_emulate_write_cache to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_tmr_notification to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_attr_nl_reply_supported to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_cmd_time_out_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_qfull_time_out_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_dev_config_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_dev_size_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcmu_emulate_write_cache_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @tcmu_unmap_work) #17
  tail call void @target_backend_unregister(ptr noundef nonnull @tcmu_ops) #17
  %0 = load ptr, ptr @tcmu_attrs, align 4
  tail call void @kfree(ptr noundef %0) #17
  %call1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @tcmu_genl_family) #17
  %1 = load ptr, ptr @tcmu_root_device, align 4
  tail call void @root_device_unregister(ptr noundef %1) #17
  %2 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_backend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @root_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_work(ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  store i32 -64, ptr @tcmu_unmap_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 3), ptr noundef nonnull @.str.191, ptr noundef nonnull @tcmu_module_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  store volatile ptr getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 1), ptr getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 1, i32 1), align 4
  store ptr @tcmu_unmap_work_fn, ptr getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 0, i32 2), align 4
  tail call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.delayed_work, ptr @tcmu_unmap_work, i32 0, i32 1), ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.193, ptr noundef nonnull @tcmu_module_init.__key.192) #17
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.194, i32 noundef 48, i32 noundef 4, i32 noundef 0, ptr noundef null) #17
  store ptr %call, ptr @tcmu_cmd_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call10 = tail call ptr @__root_device_register(ptr noundef nonnull @.str.195, ptr noundef null) #17
  store ptr %call10, ptr @tcmu_root_device, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %call10 to i32
  br label %out_free_cache

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @genl_register_family(ptr noundef nonnull @tcmu_genl_family) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.out_unreg_device_crit_edge, label %for.cond.preheader

if.end14.out_unreg_device_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unreg_device

for.cond.preheader:                               ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @passthrough_attrib_attrs to i32))
  %1 = load ptr, ptr @passthrough_attrib_attrs, align 4
  %cmp18.not101 = icmp eq ptr %1, null
  br i1 %cmp18.not101, label %for.cond.preheader.for.cond19.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.body.for.cond19.preheader_crit_edge, %for.cond.preheader.for.cond19.preheader_crit_edge
  %len.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.cond19.preheader_crit_edge ], [ %add, %for.body.for.cond19.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @passthrough_pr_attrib_attrs to i32))
  %2 = load ptr, ptr @passthrough_pr_attrib_attrs, align 4
  %cmp21.not104 = icmp eq ptr %2, null
  br i1 %cmp21.not104, label %for.cond19.preheader.if.end8.i.i_crit_edge, label %for.cond19.preheader.for.body22_crit_edge

for.cond19.preheader.for.body22_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body22

for.cond19.preheader.if.end8.i.i_crit_edge:       ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %len.0103 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %len.0103, 4
  %inc = add i32 %i.0102, 1
  %arrayidx = getelementptr [0 x ptr], ptr @passthrough_attrib_attrs, i32 0, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp18.not = icmp eq ptr %4, null
  br i1 %cmp18.not, label %for.body.for.cond19.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.cond19.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond19.preheader

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond19.preheader.for.body22_crit_edge
  %len.1106 = phi i32 [ %add23, %for.body22.for.body22_crit_edge ], [ %len.0.lcssa, %for.cond19.preheader.for.body22_crit_edge ]
  %i.1105 = phi i32 [ %inc25, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader.for.body22_crit_edge ]
  %add23 = add i32 %len.1106, 4
  %inc25 = add i32 %i.1105, 1
  %arrayidx20 = getelementptr [0 x ptr], ptr @passthrough_pr_attrib_attrs, i32 0, i32 %inc25
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx20, align 4
  %cmp21.not = icmp eq ptr %6, null
  br i1 %cmp21.not, label %for.body22.if.end8.i.i_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body22

for.body22.if.end8.i.i_crit_edge:                 ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body22.if.end8.i.i_crit_edge, %for.cond19.preheader.if.end8.i.i_crit_edge
  %len.1.lcssa = phi i32 [ %len.0.lcssa, %for.cond19.preheader.if.end8.i.i_crit_edge ], [ %add23, %for.body22.if.end8.i.i_crit_edge ]
  %add35 = add i32 %len.1.lcssa, 40
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add35, i32 noundef 3520) #20
  store ptr %call9.i.i, ptr @tcmu_attrs, align 4
  %tobool37.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool37.not, label %if.end8.i.i.out_unreg_genl_crit_edge, label %for.cond40.preheader

if.end8.i.i.out_unreg_genl_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unreg_genl

for.cond40.preheader:                             ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @passthrough_attrib_attrs to i32))
  %7 = load ptr, ptr @passthrough_attrib_attrs, align 4
  %cmp42.not110 = icmp eq ptr %7, null
  br i1 %cmp42.not110, label %for.cond40.preheader.for.cond49.preheader_crit_edge, label %for.cond40.preheader.for.body43_crit_edge

for.cond40.preheader.for.body43_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body43

for.cond40.preheader.for.cond49.preheader_crit_edge: ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.body43.for.cond49.preheader_crit_edge, %for.cond40.preheader.for.cond49.preheader_crit_edge
  %i.3.lcssa = phi i32 [ 0, %for.cond40.preheader.for.cond49.preheader_crit_edge ], [ %inc47, %for.body43.for.cond49.preheader_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @passthrough_pr_attrib_attrs to i32))
  %8 = load ptr, ptr @passthrough_pr_attrib_attrs, align 4
  %cmp51.not113 = icmp eq ptr %8, null
  br i1 %cmp51.not113, label %for.cond49.preheader.for.body62.preheader_crit_edge, label %for.cond49.preheader.for.body52_crit_edge

for.cond49.preheader.for.body52_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body52

for.cond49.preheader.for.body62.preheader_crit_edge: ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body62.preheader

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.cond40.preheader.for.body43_crit_edge
  %9 = phi ptr [ %12, %for.body43.for.body43_crit_edge ], [ %7, %for.cond40.preheader.for.body43_crit_edge ]
  %i.3111 = phi i32 [ %inc47, %for.body43.for.body43_crit_edge ], [ 0, %for.cond40.preheader.for.body43_crit_edge ]
  %arrayidx45 = getelementptr ptr, ptr %call9.i.i, i32 %i.3111
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx45, align 4
  %inc47 = add i32 %i.3111, 1
  %arrayidx41 = getelementptr [0 x ptr], ptr @passthrough_attrib_attrs, i32 0, i32 %inc47
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx41, align 4
  %cmp42.not = icmp eq ptr %12, null
  br i1 %cmp42.not, label %for.body43.for.cond49.preheader_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body43

for.body43.for.cond49.preheader_crit_edge:        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond49.preheader

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.cond49.preheader.for.body52_crit_edge
  %13 = phi ptr [ %16, %for.body52.for.body52_crit_edge ], [ %8, %for.cond49.preheader.for.body52_crit_edge ]
  %k.0115 = phi i32 [ %inc57, %for.body52.for.body52_crit_edge ], [ 0, %for.cond49.preheader.for.body52_crit_edge ]
  %i.4114 = phi i32 [ %inc54, %for.body52.for.body52_crit_edge ], [ %i.3.lcssa, %for.cond49.preheader.for.body52_crit_edge ]
  %inc54 = add i32 %i.4114, 1
  %arrayidx55 = getelementptr ptr, ptr %call9.i.i, i32 %i.4114
  %14 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx55, align 4
  %inc57 = add i32 %k.0115, 1
  %arrayidx50 = getelementptr [0 x ptr], ptr @passthrough_pr_attrib_attrs, i32 0, i32 %inc57
  %15 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx50, align 4
  %cmp51.not = icmp eq ptr %16, null
  br i1 %cmp51.not, label %for.body52.for.body62.preheader_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body52

for.body52.for.body62.preheader_crit_edge:        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body62.preheader

for.body62.preheader:                             ; preds = %for.body52.for.body62.preheader_crit_edge, %for.cond49.preheader.for.body62.preheader_crit_edge
  %i.5117.ph = phi i32 [ %i.3.lcssa, %for.cond49.preheader.for.body62.preheader_crit_edge ], [ %inc54, %for.body52.for.body62.preheader_crit_edge ]
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.body62.preheader
  %k.1118 = phi i32 [ %inc67, %for.body62.for.body62_crit_edge ], [ 0, %for.body62.preheader ]
  %i.5117 = phi i32 [ %inc64, %for.body62.for.body62_crit_edge ], [ %i.5117.ph, %for.body62.preheader ]
  %arrayidx60 = getelementptr [10 x ptr], ptr @tcmu_attrib_attrs, i32 0, i32 %k.1118
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx60, align 4
  %inc64 = add i32 %i.5117, 1
  %arrayidx65 = getelementptr ptr, ptr %call9.i.i, i32 %i.5117
  %19 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %arrayidx65, align 4
  %inc67 = add nuw nsw i32 %k.1118, 1
  %exitcond = icmp eq i32 %inc67, 9
  br i1 %exitcond, label %for.end68, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body62

for.end68:                                        ; preds = %for.body62
  store ptr %call9.i.i, ptr getelementptr inbounds (%struct.target_backend_ops, ptr @tcmu_ops, i32 0, i32 30), align 4
  %call69 = tail call i32 @transport_backend_register(ptr noundef nonnull @tcmu_ops) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %for.end68.cleanup_crit_edge, label %out_attrs

for.end68.cleanup_crit_edge:                      ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

out_attrs:                                        ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #19
  %20 = load ptr, ptr @tcmu_attrs, align 4
  tail call void @kfree(ptr noundef %20) #17
  br label %out_unreg_genl

out_unreg_genl:                                   ; preds = %out_attrs, %if.end8.i.i.out_unreg_genl_crit_edge
  %ret.0 = phi i32 [ %call69, %out_attrs ], [ -12, %if.end8.i.i.out_unreg_genl_crit_edge ]
  %call73 = tail call i32 @genl_unregister_family(ptr noundef nonnull @tcmu_genl_family) #17
  br label %out_unreg_device

out_unreg_device:                                 ; preds = %out_unreg_genl, %if.end14.out_unreg_device_crit_edge
  %ret.1 = phi i32 [ %call15, %if.end14.out_unreg_device_crit_edge ], [ %ret.0, %out_unreg_genl ]
  %21 = load ptr, ptr @tcmu_root_device, align 4
  tail call void @root_device_unregister(ptr noundef %21) #17
  br label %out_free_cache

out_free_cache:                                   ; preds = %out_unreg_device, %if.then12
  %ret.2 = phi i32 [ %0, %if.then12 ], [ %ret.1, %out_unreg_device ]
  %22 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %22) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free_cache, %for.end68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free_cache ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_set_global_max_data_area(ptr noundef %str, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %max_area_mb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_area_mb) #17
  %0 = ptrtoint ptr %max_area_mb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_area_mb, align 4, !annotation !543
  %call = call i32 @kstrtoint(ptr noundef %str, i32 noundef 10, ptr noundef nonnull %max_area_mb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %max_area_mb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_area_mb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shl = shl i32 %2, 8
  store i32 %shl, ptr @tcmu_global_max_pages, align 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  %3 = load volatile i32, ptr @global_page_count, align 4
  %4 = load i32, ptr @tcmu_global_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp5 = icmp sgt i32 %3, %4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i11 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %call8 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @tcmu_unmap_work) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_area_mb) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_get_global_max_data_area(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tcmu_global_max_pages, align 4
  %shr = ashr i32 %0, 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.3, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_set_block_netlink(ptr noundef %str, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !543
  %call = call i32 @kstrtou8(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp1 = icmp ugt i8 %2, 1
  br i1 %cmp1, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %2 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  store i8 %2, ptr @tcmu_netlink_blocked, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_get_block_netlink(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @tcmu_netlink_blocked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_set_reset_netlink(ptr noundef %str, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !543
  %call = call i32 @kstrtou8(ptr noundef %str, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp1.not = icmp eq i8 %2, 1
  br i1 %cmp1.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %2 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv) #21
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @tcmu_nl_cmd_mutex, i32 noundef 0) #17
  %3 = load ptr, ptr @tcmu_nl_cmd_list, align 4
  %cmp12.not36 = icmp eq ptr %3, @tcmu_nl_cmd_list
  br i1 %cmp12.not36, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %tcmu_fail_netlink_cmd.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn39, %tcmu_fail_netlink_cmd.exit.for.body_crit_edge ], [ %3, %if.end6.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load ptr, ptr %.pn.in37, align 4
  %nl_cmd.0 = getelementptr i8, ptr %.pn.in37, i32 -56
  %udev1.i = getelementptr i8, ptr %.pn.in37, i32 8
  %5 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev1.i, align 4
  %7 = load i8, ptr @tcmu_netlink_blocked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %tcmu_fail_netlink_cmd.exit.thread, label %if.end.i

tcmu_fail_netlink_cmd.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %cmd.i = getelementptr i8, ptr %.pn.in37, i32 12
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i.tcmu_fail_netlink_cmd.exit_crit_edge, label %do.body3.i

if.end.i.tcmu_fail_netlink_cmd.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_fail_netlink_cmd.exit

do.body3.i:                                       ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_fail_netlink_cmd.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_set_reset_netlink, %if.then9.i)) #17
          to label %do.end13.i [label %if.then9.i], !srcloc !544

if.then9.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd.i, align 4
  %name.i = getelementptr inbounds %struct.tcmu_dev, ptr %6, i32 0, i32 4
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_fail_netlink_cmd.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.16, i32 noundef %11, ptr noundef %13) #17
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then9.i, %do.body3.i
  %status.i = getelementptr i8, ptr %.pn.in37, i32 16
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -4, ptr %status.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in37) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end13.i.list_del.exit.i_crit_edge

do.end13.i.list_del.exit.i_crit_edge:             ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr i8, ptr %.pn.in37, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in37, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end13.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in37, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in37, i32 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @complete(ptr noundef %nl_cmd.0) #17
  br label %tcmu_fail_netlink_cmd.exit

tcmu_fail_netlink_cmd.exit:                       ; preds = %list_del.exit.i, %if.end.i.tcmu_fail_netlink_cmd.exit_crit_edge
  %cmp12.not = icmp eq ptr %.pn39, @tcmu_nl_cmd_list
  br i1 %cmp12.not, label %tcmu_fail_netlink_cmd.exit.for.end_crit_edge, label %tcmu_fail_netlink_cmd.exit.for.body_crit_edge

tcmu_fail_netlink_cmd.exit.for.body_crit_edge:    ; preds = %tcmu_fail_netlink_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

tcmu_fail_netlink_cmd.exit.for.end_crit_edge:     ; preds = %tcmu_fail_netlink_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %tcmu_fail_netlink_cmd.exit.for.end_crit_edge, %tcmu_fail_netlink_cmd.exit.thread, %if.end6.for.end_crit_edge
  %ret.1 = phi i32 [ -16, %tcmu_fail_netlink_cmd.exit.thread ], [ %call, %if.end6.for.end_crit_edge ], [ 0, %tcmu_fail_netlink_cmd.exit.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_attach_hba(ptr nocapture noundef writeonly %hba, i32 noundef %host_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %host_id, ptr %call7.i.i, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hba_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_detach_hba(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  tail call void @kfree(ptr noundef %1) #17
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hba_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcmu_alloc_device(ptr noundef %hba, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4840) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  %1 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %kref, align 8
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #17
  %name2 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %name2, align 4
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %hba7 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %hba7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hba, ptr %hba7, align 8
  %cmd_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 29
  %4 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 30000, ptr %cmd_time_out, align 8
  %qfull_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 32
  %5 = ptrtoint ptr %qfull_time_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %qfull_time_out, align 4
  %data_pages_per_blk = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 25
  %6 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %data_pages_per_blk, align 4
  %max_blocks = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %max_blocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262144, ptr %max_blocks, align 8
  %data_area_mb = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %data_area_mb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1024, ptr %data_area_mb, align 4
  %cmdr_lock = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %cmdr_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @tcmu_alloc_device.__key) #17
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %timedout_entry = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 33
  %11 = ptrtoint ptr %timedout_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %timedout_entry, ptr %timedout_entry, align 8
  %prev.i37 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 33, i32 1
  %12 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %timedout_entry, ptr %prev.i37, align 4
  %qfull_queue = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %qfull_queue, ptr %qfull_queue, align 4
  %prev.i38 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %qfull_queue, ptr %prev.i38, align 8
  %tmr_queue = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tmr_queue, ptr %tmr_queue, align 4
  %prev.i39 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tmr_queue, ptr %prev.i39, align 8
  %inflight_queue = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 30
  %17 = ptrtoint ptr %inflight_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %inflight_queue, ptr %inflight_queue, align 4
  %prev.i40 = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 30, i32 1
  %18 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %inflight_queue, ptr %prev.i40, align 8
  %commands = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %commands, ptr noundef nonnull @.str.22, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 27, i32 1
  %19 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %xa_flags.i, align 8
  %xa_head.i = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 27, i32 2
  %20 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %xa_head.i, align 4
  %qfull_timer = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 31
  tail call void @init_timer_key(ptr noundef %qfull_timer, ptr noundef nonnull @tcmu_qfull_timedout, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @tcmu_alloc_device.__key.18) #17
  %cmd_timer = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 28
  tail call void @init_timer_key(ptr noundef %cmd_timer, ptr noundef nonnull @tcmu_cmd_timedout, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @tcmu_alloc_device.__key.20) #17
  %data_pages = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %data_pages, ptr noundef nonnull @.str.22, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #17
  %xa_flags.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 24, i32 1
  %21 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 24, i32 2
  %22 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %xa_head.i.i, align 8
  %se_dev = getelementptr inbounds %struct.tcmu_dev, ptr %call7.i.i, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %se_dev, %if.end6 ], [ null, %if.then5 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_configure_device(ptr noundef %dev) #2 align 64 {
entry:
  %skb.i = alloca ptr, align 4
  %msg_header.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %hba1.i = getelementptr i8, ptr %dev, i32 3800
  %0 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba1.i, align 8
  %hba_ptr.i = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr.i, align 4
  %dev_config.i = getelementptr i8, ptr %dev, i32 4564
  %4 = ptrtoint ptr %dev_config.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %name4.i = getelementptr i8, ptr %dev, i32 3796
  %8 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name4.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.30, i32 noundef %7, ptr noundef %9, ptr noundef %dev_config.i) #17
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, i32 noundef %7, ptr noundef %9) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %str.0.i = phi ptr [ %call.i, %if.then.i ], [ %call5.i, %if.else.i ]
  %tobool6.not.i = icmp eq ptr %str.0.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %name9.i = getelementptr i8, ptr %dev, i32 3812
  %10 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name9.i, align 4
  tail call void @kfree(ptr noundef %11) #17
  %12 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %str.0.i, ptr %name9.i, align 4
  %uio_info = getelementptr i8, ptr %dev, i32 3808
  %cmdr_lock = getelementptr i8, ptr %dev, i32 4136
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %max_blocks = getelementptr i8, ptr %dev, i32 4128
  %13 = ptrtoint ptr %max_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_blocks, align 8
  %call1 = tail call ptr @bitmap_zalloc(i32 noundef %14, i32 noundef 3264) #17
  %data_bitmap = getelementptr i8, ptr %dev, i32 4252
  %15 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %data_bitmap, align 4
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  %16 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_bitmap, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.err_bitmap_alloc_crit_edge, label %if.end6

if.end.err_bitmap_alloc_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_bitmap_alloc

if.end6:                                          ; preds = %if.end
  %call7 = tail call noalias ptr @vzalloc(i32 noundef 8388608) #20
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.err_vzalloc_crit_edge, label %if.end62

if.end6.err_vzalloc_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_vzalloc

if.end62:                                         ; preds = %if.end6
  %mb_addr = getelementptr i8, ptr %dev, i32 4104
  %18 = ptrtoint ptr %mb_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %mb_addr, align 8
  %add.ptr11 = getelementptr i8, ptr %call7, i32 128
  %cmdr = getelementptr i8, ptr %dev, i32 4108
  %19 = ptrtoint ptr %cmdr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr11, ptr %cmdr, align 4
  %cmdr_size = getelementptr i8, ptr %dev, i32 4112
  %20 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8388480, ptr %cmdr_size, align 8
  %data_off = getelementptr i8, ptr %dev, i32 4120
  %21 = ptrtoint ptr %data_off to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8388608, ptr %data_off, align 8
  %data_area_mb = getelementptr i8, ptr %dev, i32 4124
  %22 = ptrtoint ptr %data_area_mb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_area_mb, align 4
  %shl = shl i32 %23, 20
  %add = add i32 %shl, 8388608
  %shr = lshr exact i32 %add, 12
  %mmap_pages = getelementptr i8, ptr %dev, i32 4132
  %24 = ptrtoint ptr %mmap_pages to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr, ptr %mmap_pages, align 4
  %data_pages_per_blk = getelementptr i8, ptr %dev, i32 4308
  %25 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_pages_per_blk, align 4
  %mul = shl i32 %26, 12
  %data_blk_size = getelementptr i8, ptr %dev, i32 4312
  %27 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %data_blk_size, align 8
  %dbi_thresh = getelementptr i8, ptr %dev, i32 4248
  %28 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dbi_thresh, align 8
  %29 = ptrtoint ptr %call7 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %call7, align 64
  %flags = getelementptr inbounds %struct.tcmu_mailbox, ptr %call7, i32 0, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 15, ptr %flags, align 2
  %cmdr_off = getelementptr inbounds %struct.tcmu_mailbox, ptr %call7, i32 0, i32 2
  %31 = ptrtoint ptr %cmdr_off to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %cmdr_off, align 4
  %cmdr_size14 = getelementptr inbounds %struct.tcmu_mailbox, ptr %call7, i32 0, i32 3
  %32 = ptrtoint ptr %cmdr_size14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8388480, ptr %cmdr_size14, align 8
  %version70 = getelementptr i8, ptr %dev, i32 3816
  %33 = ptrtoint ptr %version70 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.28, ptr %version70, align 4
  %mem = getelementptr i8, ptr %dev, i32 3820
  %34 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.29, ptr %mem, align 4
  %35 = ptrtoint ptr %call7 to i32
  %addr = getelementptr i8, ptr %dev, i32 3824
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %addr, align 4
  %size = getelementptr i8, ptr %dev, i32 3832
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %size, align 4
  %memtype = getelementptr i8, ptr %dev, i32 3836
  %38 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %memtype, align 4
  %irqcontrol = getelementptr i8, ptr %dev, i32 4088
  %39 = ptrtoint ptr %irqcontrol to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tcmu_irqcontrol, ptr %irqcontrol, align 4
  %irq = getelementptr i8, ptr %dev, i32 4060
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %irq, align 4
  %mmap = getelementptr i8, ptr %dev, i32 4076
  %41 = ptrtoint ptr %mmap to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tcmu_mmap, ptr %mmap, align 4
  %open = getelementptr i8, ptr %dev, i32 4080
  %42 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tcmu_open, ptr %open, align 4
  %release = getelementptr i8, ptr %dev, i32 4084
  %43 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tcmu_release, ptr %release, align 4
  %44 = load ptr, ptr @tcmu_root_device, align 4
  %call79 = tail call i32 @__uio_register_device(ptr noundef null, ptr noundef %44, ptr noundef %uio_info) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end62.err_register_crit_edge

if.end62.err_register_crit_edge:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_register

if.end82:                                         ; preds = %if.end62
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %45 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hw_block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp83 = icmp eq i32 %46, 0
  br i1 %cmp83, label %if.then84, label %if.end82.if.end87_crit_edge

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 512, ptr %hw_block_size, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82.if.end87_crit_edge
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %48 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_max_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool89.not = icmp eq i32 %49, 0
  br i1 %tobool89.not, label %if.then90, label %if.end87.if.end93_crit_edge

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %hw_max_sectors, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end87.if.end93_crit_edge
  %emulate_write_cache = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 4
  %51 = ptrtoint ptr %emulate_write_cache to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %emulate_write_cache, align 4, !range !545
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool95.not = icmp eq i8 %52, 0
  br i1 %tobool95.not, label %if.then96, label %if.end93.if.end99_crit_edge

if.end93.if.end99_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end99

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %emulate_write_cache to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %emulate_write_cache, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end93.if.end99_crit_edge
  %hw_queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 24
  %54 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 128, ptr %hw_queue_depth, align 4
  %nl_reply_supported = getelementptr i8, ptr %dev, i32 4820
  %55 = ptrtoint ptr %nl_reply_supported to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nl_reply_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp101 = icmp sgt i32 %56, -1
  br i1 %cmp101, label %if.then102, label %if.end99.if.end104_crit_edge

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end104

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  %57 = load i8, ptr @tcmu_kern_cmd_reply_supported, align 1
  %conv = zext i8 %57 to i32
  %58 = ptrtoint ptr %nl_reply_supported to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv, ptr %nl_reply_supported, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end99.if.end104_crit_edge
  %kref = getelementptr i8, ptr %dev, i32 -8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !546
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end104.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !547

if.end104.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end104
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !548

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end104.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end104.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #17
  %61 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_header.i) #17
  %62 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %msg_header.i, align 4
  %call.i184 = call fastcc i32 @tcmu_netlink_event_init(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %skb.i, ptr noundef nonnull %msg_header.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %cmp.i = icmp slt i32 %call.i184, 0
  br i1 %cmp.i, label %tcmu_send_dev_add_event.exit.thread, label %tcmu_send_dev_add_event.exit

tcmu_send_dev_add_event.exit.thread:              ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  br label %err_netlink

tcmu_send_dev_add_event.exit:                     ; preds = %kref_get.exit
  %63 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %skb.i, align 4
  %65 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %msg_header.i, align 4
  %call1.i = tail call fastcc i32 @tcmu_netlink_event_send(ptr noundef %add.ptr, i32 noundef 1, ptr noundef %64, ptr noundef %66) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool106.not = icmp eq i32 %call1.i, 0
  br i1 %tobool106.not, label %if.end108, label %tcmu_send_dev_add_event.exit.err_netlink_crit_edge

tcmu_send_dev_add_event.exit.err_netlink_crit_edge: ; preds = %tcmu_send_dev_add_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_netlink

if.end108:                                        ; preds = %tcmu_send_dev_add_event.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @root_udev_mutex, i32 noundef 0) #17
  %67 = load ptr, ptr @root_udev, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef nonnull @root_udev, ptr noundef %67) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end108.list_add.exit_crit_edge

if.end108.list_add.exit_crit_edge:                ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr, ptr %prev1.i.i, align 4
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %67, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %dev, i32 -12
  %70 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @root_udev, ptr %prev3.i.i, align 4
  store volatile ptr %add.ptr, ptr @root_udev, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end108.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @root_udev_mutex) #17
  br label %cleanup

err_netlink:                                      ; preds = %tcmu_send_dev_add_event.exit.err_netlink_crit_edge, %tcmu_send_dev_add_event.exit.thread
  %retval.0.i186194 = phi i32 [ %call.i184, %tcmu_send_dev_add_event.exit.thread ], [ %call1.i, %tcmu_send_dev_add_event.exit.err_netlink_crit_edge ]
  %call.i.i.i.i.i.i187 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !549
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !550
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i189, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %err_netlink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i188 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i188, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !548

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i189:                                     ; preds = %err_netlink
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !551
  tail call fastcc void @tcmu_dev_kref_release(ptr noundef %kref) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i189, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @uio_unregister_device(ptr noundef %uio_info) #17
  br label %err_register

err_register:                                     ; preds = %kref_put.exit, %if.end62.err_register_crit_edge
  %ret.0 = phi i32 [ %call79, %if.end62.err_register_crit_edge ], [ %retval.0.i186194, %kref_put.exit ]
  %72 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mb_addr, align 8
  tail call void @vfree(ptr noundef %73) #17
  %74 = ptrtoint ptr %mb_addr to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %mb_addr, align 8
  br label %err_vzalloc

err_vzalloc:                                      ; preds = %err_register, %if.end6.err_vzalloc_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_register ], [ -12, %if.end6.err_vzalloc_crit_edge ]
  %75 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data_bitmap, align 4
  tail call void @bitmap_free(ptr noundef %76) #17
  %77 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %data_bitmap, align 4
  br label %err_bitmap_alloc

err_bitmap_alloc:                                 ; preds = %err_vzalloc, %if.end.err_bitmap_alloc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_vzalloc ], [ -12, %if.end.err_bitmap_alloc_crit_edge ]
  %78 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name9.i, align 4
  tail call void @kfree(ptr noundef %79) #17
  %80 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %name9.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_bitmap_alloc, %list_add.exit, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_bitmap_alloc ], [ 0, %list_add.exit ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_destroy_device(ptr noundef %dev) #2 align 64 {
entry:
  %skb.i = alloca ptr, align 4
  %msg_header.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %cmd_timer = getelementptr i8, ptr %dev, i32 4368
  %call = tail call i32 @del_timer_sync(ptr noundef %cmd_timer) #17
  %qfull_timer = getelementptr i8, ptr %dev, i32 4428
  %call1 = tail call i32 @del_timer_sync(ptr noundef %qfull_timer) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @root_udev_mutex, i32 noundef 0) #17
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #17
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 -12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @root_udev_mutex) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #17
  %8 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_header.i) #17
  %9 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %msg_header.i, align 4
  %call.i = call fastcc i32 @tcmu_netlink_event_init(ptr noundef %add.ptr, i32 noundef 2, ptr noundef nonnull %skb.i, ptr noundef nonnull %msg_header.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %list_del.exit.tcmu_send_dev_remove_event.exit_crit_edge, label %if.end.i

list_del.exit.tcmu_send_dev_remove_event.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_send_dev_remove_event.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb.i, align 4
  %12 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_header.i, align 4
  %call1.i = tail call fastcc i32 @tcmu_netlink_event_send(ptr noundef %add.ptr, i32 noundef 2, ptr noundef %11, ptr noundef %13) #17
  br label %tcmu_send_dev_remove_event.exit

tcmu_send_dev_remove_event.exit:                  ; preds = %if.end.i, %list_del.exit.tcmu_send_dev_remove_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  %uio_info = getelementptr i8, ptr %dev, i32 3808
  tail call void @uio_unregister_device(ptr noundef %uio_info) #17
  %kref = getelementptr i8, ptr %dev, i32 -8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !549
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !550
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tcmu_send_dev_remove_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !548

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %tcmu_send_dev_remove_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !551
  tail call fastcc void @tcmu_dev_kref_release(ptr noundef %kref) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_free_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr i8, ptr %dev, i32 -8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !549
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !550
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !548

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !551
  tail call fastcc void @tcmu_dev_kref_release(ptr noundef %kref) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcmu_plug_device(ptr noundef %se_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %se_dev, i32 3804
  %call = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %se_plug = getelementptr i8, ptr %se_dev, i32 3792
  %retval.0 = select i1 %tobool.not, ptr %se_plug, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_unplug_device(ptr nocapture noundef readonly %se_plug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %se_plug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_plug, align 4
  %flags = getelementptr i8, ptr %1, i32 3804
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #17
  %uio_info = getelementptr i8, ptr %1, i32 3808
  tail call void @uio_event_notify(ptr noundef %uio_info) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_set_configfs_dev_params(ptr noundef %dev, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val.i103 = alloca i32, align 4
  %val.i92 = alloca i32, align 4
  %val.i80 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %opts = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #17
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  %call = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #17
  %1 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call1128 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.106) #17
  %cmp.not129 = icmp eq ptr %call1128, null
  br i1 %cmp.not129, label %while.cond.preheader.cleanup.sink.split_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data_area_mb.i108 = getelementptr i8, ptr %dev, i32 4124
  %cmdr_lock.i113 = getelementptr i8, ptr %dev, i32 4136
  %data_bitmap.i114 = getelementptr i8, ptr %dev, i32 4252
  %data_pages_per_blk.i116 = getelementptr i8, ptr %dev, i32 4308
  %max_blocks.i118 = getelementptr i8, ptr %dev, i32 4128
  %nl_reply_supported = getelementptr i8, ptr %dev, i32 4820
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %dev_size = getelementptr i8, ptr %dev, i32 4096
  %dev_config = getelementptr i8, ptr %dev, i32 4564
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call1130 = phi ptr [ %call1128, %while.body.lr.ph ], [ %call1, %while.cond.backedge.while.body_crit_edge ]
  %2 = ptrtoint ptr %call1130 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call1130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %while.body.while.cond.backedge_crit_edge, label %if.end4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog.while.cond.backedge_crit_edge, %if.then16, %if.end4.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call1 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.106) #17
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup.sink.split_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.backedge.cleanup.sink.split_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end4:                                          ; preds = %while.body
  %call5 = call i32 @match_token(ptr noundef nonnull %call1130, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #17
  %4 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.end4.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb31
    i32 3, label %sw.bb34
    i32 4, label %sw.bb38
    i32 5, label %sw.bb49
    i32 6, label %sw.bb52
  ]

if.end4.while.cond.backedge_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end4
  %call7 = call i32 @match_strlcpy(ptr noundef %dev_config, ptr noundef nonnull %args, i32 noundef 256) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %sw.bb.cleanup.sink.split_crit_edge, label %do.body

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_set_configfs_dev_params.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_set_configfs_dev_params, %if.then16)) #17
          to label %sw.epilog [label %if.then16], !srcloc !544

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_set_configfs_dev_params.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.108, ptr noundef %dev_config) #17
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %if.end4
  %call22 = call i32 @match_u64(ptr noundef nonnull %args, ptr noundef %dev_size) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.end27:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #19
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %call22) #21
  br label %cleanup.sink.split

sw.bb31:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #17
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !543
  %call.i = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %val.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %call.i) #21
  br label %tcmu_set_dev_attrib.exit

if.end.i:                                         ; preds = %sw.bb31
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2.i = icmp slt i32 %7, 1
  br i1 %cmp2.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %7) #21
  br label %tcmu_set_dev_attrib.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hw_block_size, align 4
  br label %tcmu_set_dev_attrib.exit

tcmu_set_dev_attrib.exit:                         ; preds = %if.end9.i, %do.end6.i, %do.end.i
  %retval.0.i79 = phi i32 [ %call.i, %do.end.i ], [ -22, %do.end6.i ], [ 0, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #17
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i80) #17
  %9 = ptrtoint ptr %val.i80 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i80, align 4, !annotation !543
  %call.i81 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %val.i80) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %do.end.i84, label %if.end.i86

do.end.i84:                                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %call.i81) #21
  br label %tcmu_set_dev_attrib.exit91

if.end.i86:                                       ; preds = %sw.bb34
  %10 = ptrtoint ptr %val.i80 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2.i85 = icmp slt i32 %11, 1
  br i1 %cmp2.i85, label %do.end6.i88, label %if.end9.i89

do.end6.i88:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %11) #21
  br label %tcmu_set_dev_attrib.exit91

if.end9.i89:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hw_max_sectors, align 4
  br label %tcmu_set_dev_attrib.exit91

tcmu_set_dev_attrib.exit91:                       ; preds = %if.end9.i89, %do.end6.i88, %do.end.i84
  %retval.0.i90 = phi i32 [ %call.i81, %do.end.i84 ], [ -22, %do.end6.i88 ], [ 0, %if.end9.i89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i80) #17
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %call40 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef %nl_reply_supported) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end45, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.end45:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #19
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %call40) #21
  br label %cleanup.sink.split

sw.bb49:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i92) #17
  %13 = ptrtoint ptr %val.i92 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i92, align 4, !annotation !543
  %14 = ptrtoint ptr %data_pages_per_blk.i116 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_pages_per_blk.i116, align 4
  %call.i93 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %val.i92) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %do.end.i96, label %if.end.i98

do.end.i96:                                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %call.i93) #21
  br label %tcmu_set_max_blocks_param.exit

if.end.i98:                                       ; preds = %sw.bb49
  %16 = ptrtoint ptr %val.i92 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2.i97 = icmp slt i32 %17, 1
  br i1 %cmp2.i97, label %do.end6.i100, label %if.end9.i101

do.end6.i100:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, i32 noundef %17) #21
  br label %tcmu_set_max_blocks_param.exit

if.end9.i101:                                     ; preds = %if.end.i98
  %18 = load i32, ptr @tcmu_global_max_pages, align 4
  %shr.i = ashr i32 %18, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %shr.i)
  %cmp10.i = icmp sgt i32 %17, %shr.i
  br i1 %cmp10.i, label %do.end14.i, label %if.end9.i101.if.end19.i_crit_edge

if.end9.i101.if.end19.i_crit_edge:                ; preds = %if.end9.i101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19.i

do.end14.i:                                       ; preds = %if.end9.i101
  call void @__sanitizer_cov_trace_pc() #19
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %17, i32 noundef %shr.i) #21
  %19 = load i32, ptr @tcmu_global_max_pages, align 4
  %shr18.i = ashr i32 %19, 8
  %20 = ptrtoint ptr %val.i92 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr18.i, ptr %val.i92, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end14.i, %if.end9.i101.if.end19.i_crit_edge
  %21 = ptrtoint ptr %val.i92 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i92, align 4
  %shl.i = shl i32 %22, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %15)
  %cmp20.i = icmp ult i32 %shl.i, %15
  br i1 %cmp20.i, label %do.end24.i, label %if.end28.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %22, i32 noundef %shl.i, i32 noundef %15) #21
  br label %tcmu_set_max_blocks_param.exit

if.end28.i:                                       ; preds = %if.end19.i
  call void @mutex_lock_nested(ptr noundef %cmdr_lock.i113, i32 noundef 0) #17
  %23 = ptrtoint ptr %data_bitmap.i114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data_bitmap.i114, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end35.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #21
  br label %unlock.i

if.end35.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %val.i92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i92, align 4
  %27 = ptrtoint ptr %data_area_mb.i108 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %data_area_mb.i108, align 4
  %shl36.i = shl i32 %26, 8
  %div.i = udiv i32 %shl36.i, %15
  %28 = ptrtoint ptr %max_blocks.i118 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %max_blocks.i118, align 8
  br label %unlock.i

unlock.i:                                         ; preds = %if.end35.i, %do.end32.i
  %ret.0.i = phi i32 [ -22, %do.end32.i ], [ %call.i93, %if.end35.i ]
  call void @mutex_unlock(ptr noundef %cmdr_lock.i113) #17
  br label %tcmu_set_max_blocks_param.exit

tcmu_set_max_blocks_param.exit:                   ; preds = %unlock.i, %do.end24.i, %do.end6.i100, %do.end.i96
  %retval.0.i102 = phi i32 [ %call.i93, %do.end.i96 ], [ -22, %do.end6.i100 ], [ -22, %do.end24.i ], [ %ret.0.i, %unlock.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i92) #17
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i103) #17
  %29 = ptrtoint ptr %val.i103 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i103, align 4, !annotation !543
  %call.i104 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %val.i103) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %do.end.i107, label %if.end.i111

do.end.i107:                                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call.i104) #21
  br label %tcmu_set_data_pages_per_blk.exit

if.end.i111:                                      ; preds = %sw.bb52
  %30 = ptrtoint ptr %val.i103 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i103, align 4
  %32 = ptrtoint ptr %data_area_mb.i108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_area_mb.i108, align 4
  %shl.i109 = shl i32 %33, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %shl.i109)
  %cmp2.i110 = icmp ugt i32 %31, %shl.i109
  br i1 %cmp2.i110, label %do.end6.i112, label %if.end12.i

do.end6.i112:                                     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #19
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %31, i32 noundef %33, i32 noundef %shl.i109) #21
  br label %tcmu_set_data_pages_per_blk.exit

if.end12.i:                                       ; preds = %if.end.i111
  call void @mutex_lock_nested(ptr noundef %cmdr_lock.i113, i32 noundef 0) #17
  %34 = ptrtoint ptr %data_bitmap.i114 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data_bitmap.i114, align 4
  %tobool.not.i115 = icmp eq ptr %35, null
  br i1 %tobool.not.i115, label %if.end19.i119, label %do.end16.i

do.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #21
  br label %unlock.i121

if.end19.i119:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %val.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i103, align 4
  %38 = ptrtoint ptr %data_pages_per_blk.i116 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %data_pages_per_blk.i116, align 4
  %39 = ptrtoint ptr %data_area_mb.i108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_area_mb.i108, align 4
  %shl21.i = shl i32 %40, 8
  %div.i117 = udiv i32 %shl21.i, %37
  %41 = ptrtoint ptr %max_blocks.i118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div.i117, ptr %max_blocks.i118, align 8
  br label %unlock.i121

unlock.i121:                                      ; preds = %if.end19.i119, %do.end16.i
  %ret.0.i120 = phi i32 [ -22, %do.end16.i ], [ %call.i104, %if.end19.i119 ]
  call void @mutex_unlock(ptr noundef %cmdr_lock.i113) #17
  br label %tcmu_set_data_pages_per_blk.exit

tcmu_set_data_pages_per_blk.exit:                 ; preds = %unlock.i121, %do.end6.i112, %do.end.i107
  %retval.0.i122 = phi i32 [ %call.i104, %do.end.i107 ], [ -22, %do.end6.i112 ], [ %ret.0.i120, %unlock.i121 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i103) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %tcmu_set_data_pages_per_blk.exit, %tcmu_set_max_blocks_param.exit, %sw.bb38.sw.epilog_crit_edge, %tcmu_set_dev_attrib.exit91, %tcmu_set_dev_attrib.exit, %sw.bb20.sw.epilog_crit_edge, %do.body
  %ret.1 = phi i32 [ %retval.0.i122, %tcmu_set_data_pages_per_blk.exit ], [ %retval.0.i102, %tcmu_set_max_blocks_param.exit ], [ %call40, %sw.bb38.sw.epilog_crit_edge ], [ %retval.0.i90, %tcmu_set_dev_attrib.exit91 ], [ %retval.0.i79, %tcmu_set_dev_attrib.exit ], [ %call22, %sw.bb20.sw.epilog_crit_edge ], [ 0, %do.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool55.not = icmp eq i32 %ret.1, 0
  br i1 %tobool55.not, label %sw.epilog.while.cond.backedge_crit_edge, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

sw.epilog.while.cond.backedge_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.backedge

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %do.end45, %do.end27, %sw.bb.cleanup.sink.split_crit_edge, %while.cond.backedge.cleanup.sink.split_crit_edge, %while.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call22, %do.end27 ], [ %call40, %do.end45 ], [ %count, %while.cond.preheader.cleanup.sink.split_crit_edge ], [ -22, %sw.bb.cleanup.sink.split_crit_edge ], [ %ret.1, %sw.epilog.cleanup.sink.split_crit_edge ], [ %count, %while.cond.backedge.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_show_configfs_dev_params(ptr noundef %dev, ptr nocapture noundef writeonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_config = getelementptr i8, ptr %dev, i32 4564
  %0 = ptrtoint ptr %dev_config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, ptr @.str.148, ptr %dev_config
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.147, ptr noundef %spec.select)
  %add.ptr3 = getelementptr i8, ptr %b, i32 %call
  %dev_size = getelementptr i8, ptr %dev, i32 4096
  %2 = ptrtoint ptr %dev_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dev_size, align 8
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr3, ptr noundef nonnull @.str.149, i64 noundef %3)
  %add = add i32 %call4, %call
  %add.ptr5 = getelementptr i8, ptr %b, i32 %add
  %data_area_mb = getelementptr i8, ptr %dev, i32 4124
  %4 = ptrtoint ptr %data_area_mb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_area_mb, align 4
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.150, i32 noundef %5)
  %add7 = add i32 %call6, %add
  %add.ptr8 = getelementptr i8, ptr %b, i32 %add7
  %data_pages_per_blk = getelementptr i8, ptr %dev, i32 4308
  %6 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_pages_per_blk, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr8, ptr noundef nonnull @.str.151, i32 noundef %7)
  %add10 = add i32 %call9, %add7
  ret i32 %add10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_parse_cdb(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @passthrough_parse_cdb(ptr noundef %cmd, ptr noundef nonnull @tcmu_queue_cmd) #17
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_tmr_notify(ptr noundef %se_dev, i32 noundef %tmf, ptr noundef readonly %cmd_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_dev, i32 -16
  %cmdr_lock = getelementptr i8, ptr %se_dev, i32 4136
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %0 = ptrtoint ptr %cmd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn148 = load ptr, ptr %cmd_list, align 4
  %cmp.not150 = icmp eq ptr %.pn148, %cmd_list
  br i1 %cmp.not150, label %entry.if.end24_crit_edge, label %for.body.lr.ph

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr i8, ptr %se_dev, i32 3796
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn154 = phi ptr [ %.pn148, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %cmd_cnt.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd_cnt.1, %for.inc.for.body_crit_edge ]
  %unqueued.0.off0151 = phi i1 [ false, %for.body.lr.ph ], [ %unqueued.1.off0, %for.inc.for.body_crit_edge ]
  %se_cmd.0155 = getelementptr i8, ptr %.pn154, i32 -380
  %inc = add i32 %i.0153, 1
  %priv = getelementptr i8, ptr %.pn154, i32 8
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cmd_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %inc7 = add i32 %cmd_cnt.0152, 1
  br label %for.inc

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_tmr_notify.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_tmr_notify, %if.then14)) #17
          to label %do.end [label %if.then14], !srcloc !544

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_tmr_notify.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.153, ptr noundef nonnull %2, ptr noundef %6) #17
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %2, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_entry) #17
  br i1 %call.i.i, label %if.end.i.i131, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i131:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %2, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i131, %do.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue_entry, ptr %queue_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.tcmu_cmd, ptr %2, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue_entry, ptr %prev.i3.i, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dbi.i, align 4
  tail call void @kfree(ptr noundef %16) #17
  %17 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %2) #17
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %priv, align 4
  tail call void @target_complete_cmd(ptr noundef %se_cmd.0155, i8 noundef zeroext 64) #17
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %if.then6, %for.body.for.inc_crit_edge
  %unqueued.1.off0 = phi i1 [ %unqueued.0.off0151, %if.then6 ], [ true, %list_del_init.exit ], [ %unqueued.0.off0151, %for.body.for.inc_crit_edge ]
  %cmd_cnt.1 = phi i32 [ %inc7, %if.then6 ], [ %cmd_cnt.0152, %list_del_init.exit ], [ %cmd_cnt.0152, %for.body.for.inc_crit_edge ]
  %19 = ptrtoint ptr %.pn154 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn154, align 4
  %cmp.not = icmp eq ptr %.pn, %cmd_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %unqueued.1.off0, label %if.then23, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then23:                                        ; preds = %for.end
  %qfull_queue = getelementptr i8, ptr %se_dev, i32 4228
  %qfull_timer = getelementptr i8, ptr %se_dev, i32 4428
  %20 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i.not.i = icmp eq ptr %21, %qfull_queue
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i132

if.then.i132:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %deadline.i = getelementptr i8, ptr %21, i32 32
  %22 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %deadline.i, align 4
  %call1.i = tail call i32 @mod_timer(ptr noundef %qfull_timer, i32 noundef %23) #17
  br label %if.end24

if.else.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = tail call i32 @del_timer(ptr noundef %qfull_timer) #17
  br label %if.end24

if.end24:                                         ; preds = %if.else.i, %if.then.i132, %for.end.if.end24_crit_edge, %entry.if.end24_crit_edge
  %i.0.lcssa166 = phi i32 [ %inc, %if.else.i ], [ %inc, %if.then.i132 ], [ %inc, %for.end.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ]
  %cmd_cnt.0.lcssa165 = phi i32 [ %cmd_cnt.1, %if.else.i ], [ %cmd_cnt.1, %if.then.i132 ], [ %cmd_cnt.1, %for.end.if.end24_crit_edge ], [ 0, %entry.if.end24_crit_edge ]
  %flags = getelementptr i8, ptr %se_dev, i32 3804
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool26.not = icmp eq i32 %26, 0
  br i1 %tobool26.not, label %if.end24.unlock_crit_edge, label %do.body29

if.end24.unlock_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

do.body29:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_tmr_notify.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_tmr_notify, %if.then41)) #17
          to label %if.end8.i [label %if.then41], !srcloc !544

if.then41:                                        ; preds = %do.body29
  %27 = zext i32 %tmf to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %tmf, label %sw.default.i [
    i32 1, label %if.then41.tcmu_tmr_type.exit_crit_edge
    i32 2, label %if.then41.tcmu_tmr_type.exit_crit_edge167
    i32 3, label %if.then41.tcmu_tmr_type.exit_crit_edge168
    i32 4, label %if.then41.tcmu_tmr_type.exit_crit_edge169
    i32 5, label %if.then41.tcmu_tmr_type.exit_crit_edge170
    i32 6, label %if.then41.tcmu_tmr_type.exit_crit_edge171
    i32 7, label %if.then41.tcmu_tmr_type.exit_crit_edge172
    i32 128, label %if.then41.tcmu_tmr_type.exit_crit_edge173
  ]

if.then41.tcmu_tmr_type.exit_crit_edge173:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge172:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge171:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge170:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge169:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge168:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge167:        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

if.then41.tcmu_tmr_type.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

sw.default.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit

tcmu_tmr_type.exit:                               ; preds = %sw.default.i, %if.then41.tcmu_tmr_type.exit_crit_edge, %if.then41.tcmu_tmr_type.exit_crit_edge167, %if.then41.tcmu_tmr_type.exit_crit_edge168, %if.then41.tcmu_tmr_type.exit_crit_edge169, %if.then41.tcmu_tmr_type.exit_crit_edge170, %if.then41.tcmu_tmr_type.exit_crit_edge171, %if.then41.tcmu_tmr_type.exit_crit_edge172, %if.then41.tcmu_tmr_type.exit_crit_edge173
  %retval.0.i134 = phi i32 [ 0, %sw.default.i ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge167 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge168 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge169 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge170 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge171 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge172 ], [ %tmf, %if.then41.tcmu_tmr_type.exit_crit_edge173 ]
  %name43 = getelementptr i8, ptr %se_dev, i32 3796
  %28 = ptrtoint ptr %name43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_tmr_notify.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.154, i32 noundef %retval.0.i134, ptr noundef %29, i32 noundef %i.0.lcssa166, i32 noundef %cmd_cnt.0.lcssa165) #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %tcmu_tmr_type.exit, %do.body29
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cmd_cnt.0.lcssa165, i32 2) #17
  %31 = extractvalue { i32, i1 } %30, 1
  %32 = extractvalue { i32, i1 } %30, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %32, i32 16) #17
  %retval.0.i135 = select i1 %31, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i135, i32 noundef 3072) #20
  %tobool49.not = icmp eq ptr %call9.i, null
  br i1 %tobool49.not, label %if.end8.i.unlock_crit_edge, label %if.end51

if.end8.i.unlock_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock

if.end51:                                         ; preds = %if.end8.i
  %33 = zext i32 %tmf to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %tmf, label %sw.default.i143 [
    i32 1, label %if.end51.tcmu_tmr_type.exit145_crit_edge
    i32 2, label %sw.bb1.i136
    i32 3, label %sw.bb2.i137
    i32 4, label %sw.bb3.i138
    i32 5, label %sw.bb4.i139
    i32 6, label %sw.bb5.i140
    i32 7, label %sw.bb6.i141
    i32 128, label %sw.bb7.i142
  ]

if.end51.tcmu_tmr_type.exit145_crit_edge:         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb1.i136:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb2.i137:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb3.i138:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb4.i139:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb5.i140:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb6.i141:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.bb7.i142:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

sw.default.i143:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_tmr_type.exit145

tcmu_tmr_type.exit145:                            ; preds = %sw.default.i143, %sw.bb7.i142, %sw.bb6.i141, %sw.bb5.i140, %sw.bb4.i139, %sw.bb3.i138, %sw.bb2.i137, %sw.bb1.i136, %if.end51.tcmu_tmr_type.exit145_crit_edge
  %retval.0.i144 = phi i8 [ 0, %sw.default.i143 ], [ -128, %sw.bb7.i142 ], [ 7, %sw.bb6.i141 ], [ 6, %sw.bb5.i140 ], [ 5, %sw.bb4.i139 ], [ 4, %sw.bb3.i138 ], [ 3, %sw.bb2.i137 ], [ 2, %sw.bb1.i136 ], [ 1, %if.end51.tcmu_tmr_type.exit145_crit_edge ]
  %tmr_type = getelementptr inbounds %struct.tcmu_tmr, ptr %call9.i, i32 0, i32 1
  %34 = ptrtoint ptr %tmr_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %retval.0.i144, ptr %tmr_type, align 8
  %tmr_cmd_cnt = getelementptr inbounds %struct.tcmu_tmr, ptr %call9.i, i32 0, i32 2
  %35 = ptrtoint ptr %tmr_cmd_cnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cmd_cnt.0.lcssa165, ptr %tmr_cmd_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_cnt.0.lcssa165)
  %cmp53.not = icmp eq i32 %cmd_cnt.0.lcssa165, 0
  br i1 %cmp53.not, label %tcmu_tmr_type.exit145.if.end85_crit_edge, label %for.cond60.preheader

tcmu_tmr_type.exit145.if.end85_crit_edge:         ; preds = %tcmu_tmr_type.exit145
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

for.cond60.preheader:                             ; preds = %tcmu_tmr_type.exit145
  %36 = ptrtoint ptr %cmd_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn127158 = load ptr, ptr %cmd_list, align 4
  %cmp62.not159 = icmp eq ptr %.pn127158, %cmd_list
  br i1 %cmp62.not159, label %for.cond60.preheader.if.end85_crit_edge, label %for.cond60.preheader.for.body66_crit_edge

for.cond60.preheader.for.body66_crit_edge:        ; preds = %for.cond60.preheader
  br label %for.body66

for.cond60.preheader.if.end85_crit_edge:          ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

for.body66:                                       ; preds = %for.inc78.for.body66_crit_edge, %for.cond60.preheader.for.body66_crit_edge
  %.pn127161 = phi ptr [ %.pn127, %for.inc78.for.body66_crit_edge ], [ %.pn127158, %for.cond60.preheader.for.body66_crit_edge ]
  %cmd_cnt.2160 = phi i32 [ %cmd_cnt.3, %for.inc78.for.body66_crit_edge ], [ 0, %for.cond60.preheader.for.body66_crit_edge ]
  %priv67 = getelementptr i8, ptr %.pn127161, i32 8
  %37 = ptrtoint ptr %priv67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv67, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %for.body66.for.inc78_crit_edge, label %if.end70

for.body66.for.inc78_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

if.end70:                                         ; preds = %for.body66
  %cmd_id72 = getelementptr inbounds %struct.tcmu_cmd, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cmd_id72 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %cmd_id72, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool73.not = icmp eq i16 %40, 0
  br i1 %tobool73.not, label %if.end70.for.inc78_crit_edge, label %if.then74

if.end70.for.inc78_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc78

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  %inc76 = add i32 %cmd_cnt.2160, 1
  %arrayidx = getelementptr %struct.tcmu_tmr, ptr %call9.i, i32 0, i32 3, i32 %cmd_cnt.2160
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx, align 2
  br label %for.inc78

for.inc78:                                        ; preds = %if.then74, %if.end70.for.inc78_crit_edge, %for.body66.for.inc78_crit_edge
  %cmd_cnt.3 = phi i32 [ %inc76, %if.then74 ], [ %cmd_cnt.2160, %if.end70.for.inc78_crit_edge ], [ %cmd_cnt.2160, %for.body66.for.inc78_crit_edge ]
  %42 = ptrtoint ptr %.pn127161 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn127 = load ptr, ptr %.pn127161, align 4
  %cmp62.not = icmp eq ptr %.pn127, %cmd_list
  br i1 %cmp62.not, label %for.inc78.if.end85_crit_edge, label %for.inc78.for.body66_crit_edge

for.inc78.for.body66_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body66

for.inc78.if.end85_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end85

if.end85:                                         ; preds = %for.inc78.if.end85_crit_edge, %for.cond60.preheader.if.end85_crit_edge, %tcmu_tmr_type.exit145.if.end85_crit_edge
  %call86 = tail call fastcc i32 @queue_tmr_ring(ptr noundef %add.ptr, ptr noundef nonnull %call9.i)
  br label %unlock

unlock:                                           ; preds = %if.end85, %if.end8.i.unlock_crit_edge, %if.end24.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_get_device_type(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @tcmu_get_blocks(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_size = getelementptr i8, ptr %dev, i32 4096
  %0 = ptrtoint ptr %dev_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dev_size, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 8
  %conv = zext i32 %3 to i64
  %sub = sub i64 %1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp164.i.i = icmp ult i64 %sub, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !548

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv169.i.i = trunc i64 %sub to i32
  %div172.i.i = udiv i32 %conv169.i.i, %3
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #23, !srcloc !552
  %asmresult1.i.i.i = extractvalue { i64, i64 } %4, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  ret i64 %dividend.addr.0.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_qfull_timedout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_qfull_timedout.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_qfull_timedout, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !544

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr i8, ptr %t, i32 -632
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_qfull_timedout.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.24, ptr noundef %1) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @timed_out_udevs_lock) #17
  %timedout_entry.i = getelementptr i8, ptr %t, i32 52
  %2 = ptrtoint ptr %timedout_entry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %timedout_entry.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %timedout_entry.i
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end.tcmu_device_timedout.exit_crit_edge

do.end.tcmu_device_timedout.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_device_timedout.exit

if.then.i:                                        ; preds = %do.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %timedout_entry.i, ptr noundef %4, ptr noundef nonnull @timed_out_udevs) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.tcmu_device_timedout.exit_crit_edge

if.then.i.tcmu_device_timedout.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_device_timedout.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %timedout_entry.i, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %timedout_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @timed_out_udevs, ptr %timedout_entry.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %t, i32 56
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %timedout_entry.i, ptr %4, align 4
  br label %tcmu_device_timedout.exit

tcmu_device_timedout.exit:                        ; preds = %if.end.i.i.i, %if.then.i.tcmu_device_timedout.exit_crit_edge, %do.end.tcmu_device_timedout.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @timed_out_udevs_lock) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i4.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_cmd_timedout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_cmd_timedout.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_cmd_timedout, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !544

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr i8, ptr %t, i32 -572
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_cmd_timedout.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.27, ptr noundef %1) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @timed_out_udevs_lock) #17
  %timedout_entry.i = getelementptr i8, ptr %t, i32 112
  %2 = ptrtoint ptr %timedout_entry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %timedout_entry.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %timedout_entry.i
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end.tcmu_device_timedout.exit_crit_edge

do.end.tcmu_device_timedout.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_device_timedout.exit

if.then.i:                                        ; preds = %do.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %timedout_entry.i, ptr noundef %4, ptr noundef nonnull @timed_out_udevs) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.tcmu_device_timedout.exit_crit_edge

if.then.i.tcmu_device_timedout.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_device_timedout.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %timedout_entry.i, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %timedout_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @timed_out_udevs, ptr %timedout_entry.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %t, i32 116
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %timedout_entry.i, ptr %4, align 4
  br label %tcmu_device_timedout.exit

tcmu_device_timedout.exit:                        ; preds = %if.end.i.i.i, %if.then.i.tcmu_device_timedout.exit_crit_edge, %do.end.tcmu_device_timedout.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @timed_out_udevs_lock) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i4.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_irqcontrol(ptr noundef %info, i32 noundef %irq_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -3824
  %cmdr_lock = getelementptr i8, ptr %info, i32 328
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %call = tail call fastcc zeroext i1 @tcmu_handle_completions(ptr noundef %add.ptr)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @run_qfull_queue(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_mmap(ptr noundef %info, ptr nocapture noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -3824
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %or = or i32 %1, 67371008
  store i32 %or, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcmu_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %3 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %vm_private_data, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end.i, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %5, %7
  %shr.i = lshr i32 %sub.i, 12
  %mmap_pages = getelementptr i8, ptr %info, i32 324
  %8 = ptrtoint ptr %mmap_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmap_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %9)
  %cmp.not = icmp eq i32 %shr.i, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_vma_open.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_mmap, %if.then.i)) #17
          to label %do.end.i [label %if.then.i], !srcloc !544

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_vma_open.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.88) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %kref.i = getelementptr i8, ptr %info, i32 -3816
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #17, !srcloc !546
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !547

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !548

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_open(ptr noundef %info, ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %info, i32 -4
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %inode1 = getelementptr i8, ptr %info, i32 284
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %inode1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_open.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_open, %if.then7)) #17
          to label %cleanup [label %if.then7], !srcloc !544

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_open.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.90) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_release(ptr noundef %info, ptr nocapture noundef readnone %inode) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %info, i32 -3824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #17
  %cmdr_lock = getelementptr i8, ptr %info, i32 328
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %commands = getelementptr i8, ptr %info, i32 508
  %call = call ptr @xa_find(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool.not58 = icmp eq ptr %call, null
  br i1 %tobool.not58, label %entry.if.end19_crit_edge, label %for.body.lr.ph

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr i8, ptr %info, i32 -12
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %cmd.060.ph = phi ptr [ %call1362, %for.inc.thread.for.body.outer_crit_edge ], [ %call, %for.body.lr.ph ]
  %freed.0.off059.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %cmd.060 = phi ptr [ %call13, %for.inc.for.body_crit_edge ], [ %cmd.060.ph, %for.body.outer ]
  %flags = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 10
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_release.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_release, %if.then8)) #17
          to label %do.end [label %if.then8], !srcloc !544

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmd_id, align 4
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_release.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.92, i32 noundef %conv, ptr noundef %7) #17
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %8 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i, align 4
  %call11 = call ptr @xa_erase(ptr noundef %commands, i32 noundef %9) #17
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 4
  %10 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.not.i = icmp eq i32 %11, 0
  br i1 %cmp4.not.i, label %do.end.for.inc.thread_crit_edge, label %for.body.lr.ph.i

do.end.for.inc.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.thread

for.body.lr.ph.i:                                 ; preds = %do.end
  %tcmu_dev.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 1
  %12 = ptrtoint ptr %tcmu_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcmu_dev.i, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 7
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %13, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dbi.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %i.05.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_bitmap.i, align 4
  call void @_clear_bit(i32 noundef %17, ptr noundef %19) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.body.i.for.inc.thread_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.for.inc.thread_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %call13 = call ptr @xa_find_after(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.thread:                                   ; preds = %for.body.i.for.inc.thread_crit_edge, %do.end.for.inc.thread_crit_edge
  %dbi.i55 = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.060, i32 0, i32 7
  %20 = ptrtoint ptr %dbi.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dbi.i55, align 4
  call void @kfree(ptr noundef %21) #17
  %22 = load ptr, ptr @tcmu_cmd_cache, align 4
  call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %cmd.060) #17
  %call1362 = call ptr @xa_find_after(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool.not63 = icmp eq ptr %call1362, null
  br i1 %tobool.not63, label %for.inc.thread.land.lhs.true_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.outer

for.inc.thread.land.lhs.true_crit_edge:           ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

for.end:                                          ; preds = %for.inc
  br i1 %freed.0.off059.ph, label %for.end.land.lhs.true_crit_edge, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.inc.thread.land.lhs.true_crit_edge
  %tmr_queue = getelementptr i8, ptr %info, i32 428
  %23 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tmr_queue, align 4
  %cmp.i.not = icmp eq ptr %24, %tmr_queue
  br i1 %cmp.i.not, label %if.then18, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @run_qfull_queue(ptr noundef %add.ptr, i1 noundef zeroext false)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true.if.end19_crit_edge, %for.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  %flags21 = getelementptr i8, ptr %info, i32 -4
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags21) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_release.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_release, %if.then34)) #17
          to label %do.end37 [label %if.then34], !srcloc !544

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_release.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.93) #17
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_dev_kref_release(ptr noundef %kref) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #17
  %mb_addr = getelementptr i8, ptr %kref, i32 4112
  %0 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_addr, align 8
  tail call void @vfree(ptr noundef %1) #17
  %2 = ptrtoint ptr %mb_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mb_addr, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  %timedout_entry = getelementptr i8, ptr %kref, i32 4488
  %3 = ptrtoint ptr %timedout_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %timedout_entry, align 4
  %cmp.i.not = icmp eq ptr %4, %timedout_entry
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %timedout_entry) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr i8, ptr %kref, i32 4492
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %timedout_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timedout_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %timedout_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %timedout_entry, align 4
  %prev.i = getelementptr i8, ptr %kref, i32 4492
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  %cmdr_lock = getelementptr i8, ptr %kref, i32 4144
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %13 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %i, align 4
  %commands = getelementptr i8, ptr %kref, i32 4324
  %call3 = call ptr @xa_find(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool4.not78 = icmp eq ptr %call3, null
  br i1 %tobool4.not78, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %tcmu_check_and_free_pending_cmd.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %cmd.080 = phi ptr [ %call9, %tcmu_check_and_free_pending_cmd.exit.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %all_expired.0.off079 = phi i1 [ %cmp.not, %tcmu_check_and_free_pending_cmd.exit.for.body_crit_edge ], [ true, %if.end.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.080, i32 0, i32 10
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.if.then.i_crit_edge

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.tcmu_check_and_free_pending_cmd.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

lor.lhs.false.i.tcmu_check_and_free_pending_cmd.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_check_and_free_pending_cmd.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  %19 = load ptr, ptr @tcmu_cmd_cache, align 4
  call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %cmd.080) #17
  br label %tcmu_check_and_free_pending_cmd.exit

tcmu_check_and_free_pending_cmd.exit:             ; preds = %if.then.i, %lor.lhs.false.i.tcmu_check_and_free_pending_cmd.exit_crit_edge
  %cmp.not = phi i1 [ false, %lor.lhs.false.i.tcmu_check_and_free_pending_cmd.exit_crit_edge ], [ %all_expired.0.off079, %if.then.i ]
  %call9 = call ptr @xa_find_after(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool4.not = icmp eq ptr %call9, null
  br i1 %tobool4.not, label %tcmu_check_and_free_pending_cmd.exit.for.end_crit_edge, label %tcmu_check_and_free_pending_cmd.exit.for.body_crit_edge

tcmu_check_and_free_pending_cmd.exit.for.body_crit_edge: ; preds = %tcmu_check_and_free_pending_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

tcmu_check_and_free_pending_cmd.exit.for.end_crit_edge: ; preds = %tcmu_check_and_free_pending_cmd.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %tcmu_check_and_free_pending_cmd.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %all_expired.0.off0.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %cmp.not, %tcmu_check_and_free_pending_cmd.exit.for.end_crit_edge ]
  %tmr_queue.i = getelementptr i8, ptr %kref, i32 4244
  %20 = ptrtoint ptr %tmr_queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmr_queue.i, align 4
  %cmp.not19.i = icmp eq ptr %21, %tmr_queue.i
  br i1 %cmp.not19.i, label %for.end.tcmu_remove_all_queued_tmr.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.tcmu_remove_all_queued_tmr.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_remove_all_queued_tmr.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %tmr.020.i = phi ptr [ %tmp.0.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %21, %for.end.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.0.i = load ptr, ptr %tmr.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmr.020.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmr.020.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tmr.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %29 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tmr.020.i, ptr %tmr.020.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %tmr.020.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tmr.020.i, ptr %prev.i3.i.i, align 4
  call void @kfree(ptr noundef %tmr.020.i) #17
  %cmp.not.i = icmp eq ptr %tmp.0.i, %tmr_queue.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_remove_all_queued_tmr.exit

tcmu_remove_all_queued_tmr.exit:                  ; preds = %list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge, %for.end.tcmu_remove_all_queued_tmr.exit_crit_edge
  %qfull_queue = getelementptr i8, ptr %kref, i32 4236
  %31 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i75.not = icmp eq ptr %32, %qfull_queue
  %spec.select73 = select i1 %cmp.i75.not, i1 %all_expired.0.off0.lcssa, i1 false
  call void @xa_destroy(ptr noundef %commands) #17
  br i1 %spec.select73, label %tcmu_remove_all_queued_tmr.exit.if.end31_crit_edge, label %do.end, !prof !548

tcmu_remove_all_queued_tmr.exit.if.end31_crit_edge: ; preds = %tcmu_remove_all_queued_tmr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

do.end:                                           ; preds = %tcmu_remove_all_queued_tmr.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1716, i32 noundef 9, ptr noundef null) #17
  br label %if.end31

if.end31:                                         ; preds = %do.end, %tcmu_remove_all_queued_tmr.exit.if.end31_crit_edge
  %dbi_max = getelementptr i8, ptr %kref, i32 4252
  %33 = ptrtoint ptr %dbi_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dbi_max, align 4
  %call39 = call fastcc i32 @tcmu_blocks_release(ptr noundef %add.ptr, i32 noundef 0, i32 noundef %34)
  %data_bitmap = getelementptr i8, ptr %kref, i32 4260
  %35 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data_bitmap, align 4
  call void @bitmap_free(ptr noundef %36) #17
  call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_dev_kref_release.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_dev_kref_release, %if.then51)) #17
          to label %do.end54 [label %if.then51], !srcloc !544

if.then51:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_dev_kref_release.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.105) #17
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.end31
  %callback_head = getelementptr i8, ptr %kref, i32 3784
  call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @tcmu_dev_call_rcu) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcmu_handle_completions(ptr noundef %udev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #21
  br label %cleanup165

if.end:                                           ; preds = %entry
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 10
  %3 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mb_addr, align 8
  %5 = ptrtoint ptr %4 to i32
  %and.i = and i32 %5, 4095
  %sub.i = add nuw nsw i32 %and.i, 127
  %or.i = or i32 %sub.i, 4095
  %add1.i = add nuw nsw i32 %or.i, 1
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.end ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.end ]
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  tail call void @flush_dcache_page(ptr noundef %call.i) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i, label %while.cond.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.cond.preheader:                             ; preds = %while.body.i
  %cmdr_last_cleaned = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 13
  %cmd_tail = getelementptr inbounds %struct.tcmu_mailbox, ptr %4, i32 0, i32 6
  %6 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdr_last_cleaned, align 4
  %8 = ptrtoint ptr %cmd_tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cmd_tail, align 64
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not238 = icmp eq i32 %7, %9
  br i1 %cmp.not238, label %while.cond.preheader.if.end148_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end148_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end148

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmdr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 11
  %cmdr_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 12
  %commands88 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %7, %while.body.lr.ph ], [ %rem131, %cleanup.while.body_crit_edge ]
  %11 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmdr, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %10
  %13 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmdr_size, align 8
  %sub.i209 = sub i32 %14, %10
  %15 = tail call i32 @llvm.umin.i32(i32 %sub.i209, i32 112)
  %16 = ptrtoint ptr %add.ptr to i32
  %and.i210 = and i32 %16, 4095
  %add.i = add nsw i32 %15, -1
  %sub.i211 = add nsw i32 %add.i, %and.i210
  %or.i212 = or i32 %sub.i211, 4095
  %add1.i213 = add nsw i32 %or.i212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i213)
  %tobool.not9.i = icmp eq i32 %add1.i213, 0
  br i1 %tobool.not9.i, label %while.body.tcmu_flush_dcache_range.exit223_crit_edge, label %while.body.preheader.i

while.body.tcmu_flush_dcache_range.exit223_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit223

while.body.preheader.i:                           ; preds = %while.body
  %idx.neg.i214 = sub nsw i32 0, %and.i210
  %add.ptr.i215 = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i214
  br label %while.body.i222

while.body.i222:                                  ; preds = %while.body.i222.while.body.i222_crit_edge, %while.body.preheader.i
  %start.011.i216 = phi ptr [ %add.ptr2.i219, %while.body.i222.while.body.i222_crit_edge ], [ %add.ptr.i215, %while.body.preheader.i ]
  %size.addr.010.i217 = phi i32 [ %sub3.i220, %while.body.i222.while.body.i222_crit_edge ], [ %add1.i213, %while.body.preheader.i ]
  %call.i218 = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i216) #17
  tail call void @flush_dcache_page(ptr noundef %call.i218) #17
  %add.ptr2.i219 = getelementptr i8, ptr %start.011.i216, i32 4096
  %sub3.i220 = add i32 %size.addr.010.i217, -4096
  %tobool.not.i221 = icmp eq i32 %sub3.i220, 0
  br i1 %tobool.not.i221, label %while.body.i222.tcmu_flush_dcache_range.exit223_crit_edge, label %while.body.i222.while.body.i222_crit_edge

while.body.i222.while.body.i222_crit_edge:        ; preds = %while.body.i222
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i222

while.body.i222.tcmu_flush_dcache_range.exit223_crit_edge: ; preds = %while.body.i222
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit223

tcmu_flush_dcache_range.exit223:                  ; preds = %while.body.i222.tcmu_flush_dcache_range.exit223_crit_edge, %while.body.tcmu_flush_dcache_range.exit223_crit_edge
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr, align 1
  %and.i224 = and i32 %18, 7
  %19 = zext i32 %and.i224 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %and.i224, label %do.end63 [
    i32 0, label %tcmu_flush_dcache_range.exit223.do.end25_crit_edge
    i32 2, label %tcmu_flush_dcache_range.exit223.do.end25_crit_edge245
    i32 1, label %tcmu_flush_dcache_range.exit223.if.end69_crit_edge
  ], !prof !553

tcmu_flush_dcache_range.exit223.if.end69_crit_edge: ; preds = %tcmu_flush_dcache_range.exit223
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

tcmu_flush_dcache_range.exit223.do.end25_crit_edge245: ; preds = %tcmu_flush_dcache_range.exit223
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

tcmu_flush_dcache_range.exit223.do.end25_crit_edge: ; preds = %tcmu_flush_dcache_range.exit223
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

do.end25:                                         ; preds = %tcmu_flush_dcache_range.exit223.do.end25_crit_edge, %tcmu_flush_dcache_range.exit223.do.end25_crit_edge245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !554
  %20 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmdr_last_cleaned, align 4
  %22 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmdr_size, align 8
  %rem = urem i32 %21, %23
  br label %cleanup

do.end63:                                         ; preds = %tcmu_flush_dcache_range.exit223
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1478, i32 noundef 9, ptr noundef null) #17
  br label %if.end69

if.end69:                                         ; preds = %do.end63, %tcmu_flush_dcache_range.exit223.if.end69_crit_edge
  %uflags = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %add.ptr, i32 0, i32 3
  %24 = ptrtoint ptr %uflags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %uflags, align 1
  %26 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool78 = icmp ne i8 %26, 0
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %cmd_id to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %cmd_id, align 1
  %conv86 = zext i16 %28 to i32
  br i1 %tobool78, label %if.then84, label %if.else

if.then84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %call87 = tail call ptr @xa_load(ptr noundef %commands88, i32 noundef %conv86) #17
  br label %if.end93

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %call92 = tail call ptr @xa_erase(ptr noundef %commands88, i32 noundef %conv86) #17
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then84
  %cmd.0 = phi ptr [ %call87, %if.then84 ], [ %call92, %if.else ]
  %tobool94.not = icmp eq ptr %cmd.0, null
  br i1 %tobool94.not, label %cleanup.thread, label %if.end105

cleanup.thread:                                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_id101 = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %cmd_id101 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %cmd_id101, align 1
  %conv102 = zext i16 %30 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv102) #21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %cleanup165

if.end105:                                        ; preds = %if.end93
  %call107 = tail call fastcc zeroext i1 @tcmu_handle_completion(ptr noundef nonnull %cmd.0, ptr noundef %add.ptr, i1 noundef zeroext %tobool78)
  br i1 %call107, label %do.end117, label %if.end105.if.then144_crit_edge

if.end105.if.then144_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then144

do.end117:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !555
  %31 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmdr_last_cleaned, align 4
  %33 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmdr_size, align 8
  %rem125 = urem i32 %32, %34
  br label %cleanup

cleanup:                                          ; preds = %do.end117, %do.end25
  %rem125.sink = phi i32 [ %rem125, %do.end117 ], [ %rem, %do.end25 ]
  %.sink = phi i32 [ %34, %do.end117 ], [ %23, %do.end25 ]
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr, align 1
  %and.i228 = and i32 %36, -8
  %add129 = add i32 %and.i228, %rem125.sink
  %rem131 = urem i32 %add129, %.sink
  %37 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %rem131, ptr %cmdr_last_cleaned, align 4
  %38 = ptrtoint ptr %cmd_tail to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %cmd_tail, align 64
  %cmp.not = icmp eq i32 %rem131, %39
  br i1 %cmp.not, label %cleanup.if.then144_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

cleanup.if.then144_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then144

if.then144:                                       ; preds = %cleanup.if.then144_crit_edge, %if.end105.if.then144_crit_edge
  %call145 = tail call fastcc i32 @tcmu_run_tmr_queue(ptr noundef %udev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146 = icmp ne i32 %call145, 0
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %while.cond.preheader.if.end148_crit_edge
  %free_space.2.off0 = phi i1 [ %tobool146, %if.then144 ], [ false, %while.cond.preheader.if.end148_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  %40 = load volatile i32, ptr @global_page_count, align 4
  %41 = load i32, ptr @tcmu_global_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp150 = icmp sgt i32 %40, %41
  br i1 %cmp150, label %land.lhs.true, label %if.end148.if.end160_crit_edge

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end160

land.lhs.true:                                    ; preds = %if.end148
  %xa_head.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 27, i32 2
  %42 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %43, null
  br i1 %cmp.i, label %land.lhs.true155, label %land.lhs.true.if.end160_crit_edge

land.lhs.true.if.end160_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end160

land.lhs.true155:                                 ; preds = %land.lhs.true
  %qfull_queue = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 19
  %44 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i229.not = icmp eq ptr %45, %qfull_queue
  br i1 %cmp.i229.not, label %if.then158, label %land.lhs.true155.if.end160_crit_edge

land.lhs.true155.if.end160_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end160

if.then158:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i230 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %land.lhs.true155.if.end160_crit_edge, %land.lhs.true.if.end160_crit_edge, %if.end148.if.end160_crit_edge
  %cmd_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 29
  %47 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd_time_out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool161.not = icmp eq i32 %48, 0
  br i1 %tobool161.not, label %if.end160.cleanup165_crit_edge, label %if.then162

if.end160.cleanup165_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup165

if.then162:                                       ; preds = %if.end160
  %inflight_queue = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 30
  %cmd_timer = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 28
  %49 = ptrtoint ptr %inflight_queue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %inflight_queue, align 4
  %cmp.i.not.i = icmp eq ptr %50, %inflight_queue
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  %deadline.i = getelementptr i8, ptr %50, i32 32
  %51 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %deadline.i, align 4
  %call1.i = tail call i32 @mod_timer(ptr noundef %cmd_timer, i32 noundef %52) #17
  br label %cleanup165

if.else.i:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = tail call i32 @del_timer(ptr noundef %cmd_timer) #17
  br label %cleanup165

cleanup165:                                       ; preds = %if.else.i, %if.then.i, %if.end160.cleanup165_crit_edge, %cleanup.thread, %do.end
  %retval.2 = phi i1 [ false, %do.end ], [ %free_space.2.off0, %if.end160.cleanup165_crit_edge ], [ false, %cleanup.thread ], [ %free_space.2.off0, %if.then.i ], [ %free_space.2.off0, %if.else.i ]
  ret i1 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_qfull_queue(ptr noundef %udev, i1 noundef zeroext %fail) unnamed_addr #2 align 64 {
entry:
  %cmds = alloca %struct.list_head, align 4
  %scsi_ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmds) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %cmds, i32 0, i32 1
  %1 = ptrtoint ptr %cmds to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cmds, ptr %cmds, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmds, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scsi_ret) #17
  %3 = ptrtoint ptr %scsi_ret to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %scsi_ret, align 4, !annotation !543
  %qfull_queue = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 19
  %4 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %qfull_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_qfull_queue.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_qfull_queue, %if.then6)) #17
          to label %do.end [label %if.then6], !srcloc !544

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %conv = zext i1 %fail to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_qfull_queue.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.57, ptr noundef %7, i32 noundef %conv) #17
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %8 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i.not.i = icmp eq ptr %9, %qfull_queue
  br i1 %cmp.i.not.i, label %do.end.list_splice_init.exit_crit_edge, label %if.then.i

do.end.list_splice_init.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmds, align 4
  %prev2.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmds, ptr %prev3.i.i, align 4
  store ptr %9, ptr %cmds, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %11, ptr %13, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev6.i.i, align 4
  %17 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %qfull_queue, ptr %qfull_queue, align 4
  store ptr %qfull_queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end.list_splice_init.exit_crit_edge
  %18 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmds, align 4
  %cmp.not142 = icmp eq ptr %19, %cmds
  br i1 %cmp.not142, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %name34 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in143 = phi ptr [ %19, %for.body.lr.ph ], [ %.pn145, %for.inc.for.body_crit_edge ]
  %tcmu_cmd.0144 = getelementptr i8, ptr %.pn.in143, i32 -8
  %20 = ptrtoint ptr %.pn.in143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn145 = load ptr, ptr %.pn.in143, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in143) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in143, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %.pn.in143 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.pn.in143, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %.pn.in143 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in143, ptr %.pn.in143, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in143, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.pn.in143, ptr %prev.i3.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_qfull_queue.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_qfull_queue, %if.then33)) #17
          to label %do.end37 [label %if.then33], !srcloc !544

if.then33:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name34, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_qfull_queue.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.58, ptr noundef %tcmu_cmd.0144, ptr noundef %30) #17
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %list_del_init.exit
  br i1 %fail, label %do.end37.for.inc.sink.split_crit_edge, label %if.end41

do.end37.for.inc.sink.split_crit_edge:            ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.sink.split

if.end41:                                         ; preds = %do.end37
  %call42 = call fastcc i32 @queue_cmd_ring(ptr noundef %tcmu_cmd.0144, ptr noundef nonnull %scsi_ret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.body46, label %if.else

do.body46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_qfull_queue.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_qfull_queue, %if.then58)) #17
          to label %for.inc.sink.split [label %if.then58], !srcloc !544

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %name34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name34, align 4
  %33 = ptrtoint ptr %scsi_ret to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scsi_ret, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_qfull_queue.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.59, ptr noundef %tcmu_cmd.0144, ptr noundef %32, i32 noundef %34) #17
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp66.not = icmp eq i32 %call42, 0
  br i1 %cmp66.not, label %if.else.for.inc_crit_edge, label %do.body69

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.body69:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @run_qfull_queue.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@run_qfull_queue, %if.then81)) #17
          to label %do.end84 [label %if.then81], !srcloc !544

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @run_qfull_queue.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.60) #17
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %do.body69
  %35 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %cmds, align 4
  %cmp.i.not.i130 = icmp eq ptr %36, %cmds
  br i1 %cmp.i.not.i130, label %do.end84.for.end_crit_edge, label %if.then.i133

do.end84.for.end_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.then.i133:                                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 19, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %prev3.i.i132 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i132 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i132, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %qfull_queue, ptr %40, align 4
  store ptr %40, ptr %prev.i, align 4
  br label %for.end

for.inc.sink.split:                               ; preds = %if.then58, %do.body46, %do.end37.for.inc.sink.split_crit_edge
  %.sink146 = phi i8 [ 8, %do.end37.for.inc.sink.split_crit_edge ], [ 2, %do.body46 ], [ 2, %if.then58 ]
  %44 = ptrtoint ptr %tcmu_cmd.0144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tcmu_cmd.0144, align 4
  %priv64 = getelementptr inbounds %struct.se_cmd, ptr %45, i32 0, i32 48
  %46 = ptrtoint ptr %priv64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %priv64, align 4
  %47 = load ptr, ptr %tcmu_cmd.0144, align 4
  call void @target_complete_cmd(ptr noundef %47, i8 noundef zeroext %.sink146) #17
  %dbi.i129 = getelementptr i8, ptr %.pn.in143, i32 24
  %48 = ptrtoint ptr %dbi.i129 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dbi.i129, align 4
  call void @kfree(ptr noundef %49) #17
  %50 = load ptr, ptr @tcmu_cmd_cache, align 4
  call void @kmem_cache_free(ptr noundef %50, ptr noundef %tcmu_cmd.0144) #17
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn145, %cmds
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i133, %do.end84.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %qfull_timer = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 31
  %51 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i.not.i134 = icmp eq ptr %52, %qfull_queue
  br i1 %cmp.i.not.i134, label %if.else.i, label %if.then.i135

if.then.i135:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %deadline.i = getelementptr i8, ptr %52, i32 32
  %53 = ptrtoint ptr %deadline.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %deadline.i, align 4
  %call1.i = call i32 @mod_timer(ptr noundef %qfull_timer, i32 noundef %54) #17
  br label %cleanup

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = call i32 @del_timer(ptr noundef %qfull_timer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i135, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scsi_ret) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmds) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcmu_handle_completion(ptr noundef %cmd, ptr noundef %entry1, i1 noundef zeroext %keep_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcmu_dev, align 4
  %flags = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end41, label %if.then

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.out_crit_edge, label %land.rhs

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

land.rhs:                                         ; preds = %if.then
  %.b200 = load i1, ptr @tcmu_handle_completion.__already_done, align 1
  br i1 %.b200, label %land.rhs.out_crit_edge, label %if.then12, !prof !548

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @tcmu_handle_completion.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1332, i32 noundef 9, ptr noundef null) #17
  br label %out

if.end41:                                         ; preds = %entry
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool44.not = icmp eq i32 %8, 0
  br i1 %tobool44.not, label %if.end52, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %entry1, i32 0, i32 1
  %9 = ptrtoint ptr %cmd_id to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %cmd_id, align 1
  %conv = zext i16 %10 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv) #21
  %flags51 = getelementptr inbounds %struct.tcmu_dev, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags51) #17
  br label %out

if.end52:                                         ; preds = %if.end41
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_entry) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.list_del_init.exit_crit_edge

if.end52.list_del_init.exit_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end52.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %queue_entry, ptr %queue_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue_entry, ptr %prev.i3.i, align 4
  %dbi_cur = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 6
  %19 = ptrtoint ptr %dbi_cur to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dbi_cur, align 4
  %uflags = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %entry1, i32 0, i32 3
  %20 = ptrtoint ptr %uflags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %uflags, align 1
  %conv54 = zext i8 %21 to i32
  %and = and i32 %conv54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %if.end63, label %do.end59

do.end59:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %23) #21
  %24 = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %entry1, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %24, align 1
  br label %done.thread

if.end63:                                         ; preds = %list_del_init.exit
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_length, align 4
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp = icmp ne i32 %29, 2
  %and68 = and i32 %conv54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool69.not
  br i1 %or.cond, label %if.end63.if.end80_crit_edge, label %land.lhs.true70

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

land.lhs.true70:                                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  %read_len71 = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %read_len71 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %read_len71, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool72.not = icmp eq i32 %31, 0
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %27)
  %spec.select = select i1 %tobool72.not, i32 %27, i32 %32
  %not.tobool72.not = xor i1 %tobool72.not, true
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true70, %if.end63.if.end80_crit_edge
  %read_len.0 = phi i32 [ %27, %if.end63.if.end80_crit_edge ], [ %spec.select, %land.lhs.true70 ]
  %read_len_valid.0.off0 = phi i1 [ false, %if.end63.if.end80_crit_edge ], [ %not.tobool72.not, %land.lhs.true70 ]
  %33 = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %entry1, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp83 = icmp eq i8 %35, 2
  br i1 %cmp83, label %if.then85, label %if.end80.if.end89_crit_edge

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

if.then85:                                        ; preds = %if.end80
  %sense_buffer = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %entry1, i32 0, i32 1, i32 0, i32 2
  tail call void @transport_copy_sense_to_cmd(ptr noundef %1, ptr noundef %sense_buffer) #17
  br i1 %read_len_valid.0.off0, label %if.else, label %if.then85.done.thread_crit_edge

if.then85.done.thread_crit_edge:                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  br label %done.thread

if.else:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #19
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %se_cmd_flags, align 8
  %or = or i32 %37, 262144
  store i32 %or, ptr %se_cmd_flags, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.end80.if.end89_crit_edge
  %se_cmd_flags90 = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %se_cmd_flags90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %se_cmd_flags90, align 8
  %and91 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else94, label %if.then93

if.then93:                                        ; preds = %if.end89
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd, align 4
  %dbi_cnt.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 4
  %42 = ptrtoint ptr %dbi_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dbi_cnt.i, align 4
  %dbi_bidi_cnt.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 5
  %44 = ptrtoint ptr %dbi_bidi_cnt.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dbi_bidi_cnt.i, align 4
  %sub.i = sub i32 %43, %45
  %46 = ptrtoint ptr %dbi_cur to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %dbi_cur, align 4
  %t_bidi_data_sg.i = getelementptr inbounds %struct.se_cmd, ptr %41, i32 0, i32 44
  %t_bidi_data_nents.i = getelementptr inbounds %struct.se_cmd, ptr %41, i32 0, i32 45
  %47 = ptrtoint ptr %t_bidi_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %data_nents.0.i = load i32, ptr %t_bidi_data_nents.i, align 4
  %48 = ptrtoint ptr %t_bidi_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %data_sg.0.i = load ptr, ptr %t_bidi_data_sg.i, align 4
  tail call fastcc void @tcmu_copy_data(ptr noundef %3, ptr noundef %cmd, i32 noundef 2, ptr noundef %data_sg.0.i, i32 noundef %data_nents.0.i, ptr noundef null, i32 noundef %read_len.0) #17
  %priv209 = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %49 = ptrtoint ptr %priv209 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %priv209, align 4
  br i1 %read_len_valid.0.off0, label %if.then93.do.body121_crit_edge, label %if.then93.if.else138_crit_edge

if.then93.if.else138_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else138

if.then93.do.body121_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body121

if.else94:                                        ; preds = %if.end89
  %50 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_direction, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %51, label %do.end111 [
    i32 2, label %if.then98
    i32 1, label %if.else94.done_crit_edge
    i32 3, label %if.else94.done_crit_edge215
  ]

if.else94.done_crit_edge215:                      ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.else94.done_crit_edge:                         ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #19
  br label %done

if.then98:                                        ; preds = %if.else94
  %53 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmd, align 4
  %t_data_sg.i = getelementptr inbounds %struct.se_cmd, ptr %54, i32 0, i32 39
  %t_data_nents.i = getelementptr inbounds %struct.se_cmd, ptr %54, i32 0, i32 41
  %55 = ptrtoint ptr %t_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %data_nents.0.i202 = load i32, ptr %t_data_nents.i, align 4
  %56 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %data_sg.0.i203 = load ptr, ptr %t_data_sg.i, align 4
  tail call fastcc void @tcmu_copy_data(ptr noundef %3, ptr noundef %cmd, i32 noundef 2, ptr noundef %data_sg.0.i203, i32 noundef %data_nents.0.i202, ptr noundef null, i32 noundef %read_len.0) #17
  %priv211 = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %57 = ptrtoint ptr %priv211 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %priv211, align 4
  br i1 %read_len_valid.0.off0, label %if.then98.do.body121_crit_edge, label %if.then98.if.else138_crit_edge

if.then98.if.else138_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else138

if.then98.do.body121_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body121

do.end111:                                        ; preds = %if.else94
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %51) #21
  %priv212 = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %58 = ptrtoint ptr %priv212 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %priv212, align 4
  br i1 %read_len_valid.0.off0, label %do.end111.do.body121_crit_edge, label %do.end111.if.else138_crit_edge

do.end111.if.else138_crit_edge:                   ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else138

do.end111.do.body121_crit_edge:                   ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body121

done.thread:                                      ; preds = %if.then85.done.thread_crit_edge, %do.end59
  %priv207 = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %59 = ptrtoint ptr %priv207 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %priv207, align 4
  br label %if.else138

done:                                             ; preds = %if.else94.done_crit_edge, %if.else94.done_crit_edge215
  %priv = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %priv, align 4
  br i1 %read_len_valid.0.off0, label %done.do.body121_crit_edge, label %done.if.else138_crit_edge

done.if.else138_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else138

done.do.body121_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body121

do.body121:                                       ; preds = %done.do.body121_crit_edge, %do.end111.do.body121_crit_edge, %if.then98.do.body121_crit_edge, %if.then93.do.body121_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_handle_completion.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_handle_completion, %if.then132)) #17
          to label %do.end135 [label %if.then132], !srcloc !544

if.then132:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_handle_completion.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.45, i32 noundef %read_len.0) #17
  br label %do.end135

do.end135:                                        ; preds = %if.then132, %do.body121
  %61 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd, align 4
  %63 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %33, align 1
  tail call void @target_complete_cmd_with_length(ptr noundef %62, i8 noundef zeroext %64, i32 noundef %read_len.0) #17
  br label %out

if.else138:                                       ; preds = %done.if.else138_crit_edge, %done.thread, %do.end111.if.else138_crit_edge, %if.then98.if.else138_crit_edge, %if.then93.if.else138_crit_edge
  %65 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cmd, align 4
  %67 = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %entry1, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  tail call void @target_complete_cmd(ptr noundef %66, i8 noundef zeroext %69) #17
  br label %out

out:                                              ; preds = %if.else138, %do.end135, %do.end48, %if.then12, %land.rhs.out_crit_edge, %if.then.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %do.end48 ], [ true, %do.end135 ], [ true, %if.else138 ], [ true, %if.then.out_crit_edge ], [ true, %if.then12 ], [ true, %land.rhs.out_crit_edge ]
  br i1 %keep_buf, label %if.else144, label %if.then143

if.then143:                                       ; preds = %out
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 4
  %70 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp4.not.i = icmp eq i32 %71, 0
  br i1 %cmp4.not.i, label %if.then143.tcmu_cmd_free_data.exit_crit_edge, label %for.body.lr.ph.i

if.then143.tcmu_cmd_free_data.exit_crit_edge:     ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

for.body.lr.ph.i:                                 ; preds = %if.then143
  %72 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tcmu_dev, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 7
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %73, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dbi.i, align 4
  %arrayidx.i = getelementptr i32, ptr %75, i32 %i.05.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  %78 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data_bitmap.i, align 4
  tail call void @_clear_bit(i32 noundef %77, ptr noundef %79) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %for.body.i.tcmu_cmd_free_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.tcmu_cmd_free_data.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

tcmu_cmd_free_data.exit:                          ; preds = %for.body.i.tcmu_cmd_free_data.exit_crit_edge, %if.then143.tcmu_cmd_free_data.exit_crit_edge
  %dbi.i204 = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 7
  %80 = ptrtoint ptr %dbi.i204 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dbi.i204, align 4
  tail call void @kfree(ptr noundef %81) #17
  %82 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %82, ptr noundef %cmd) #17
  br label %if.end147

if.else144:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #17
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #17
  br label %if.end147

if.end147:                                        ; preds = %if.else144, %tcmu_cmd_free_data.exit
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_run_tmr_queue(ptr noundef %udev) unnamed_addr #2 align 64 {
entry:
  %tmrs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmrs) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %tmrs, i32 0, i32 1
  %1 = ptrtoint ptr %tmrs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmrs, ptr %tmrs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmrs, ptr %0, align 4
  %tmr_queue = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20
  %3 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %tmr_queue, align 4
  %cmp.i.not = icmp eq ptr %4, %tmr_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_run_tmr_queue, %if.then6)) #17
          to label %do.end [label %if.then6], !srcloc !544

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.49, ptr noundef %6) #17
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %7 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %tmr_queue, align 4
  %cmp.i.not.i = icmp eq ptr %8, %tmr_queue
  br i1 %cmp.i.not.i, label %do.end.list_splice_init.exit_crit_edge, label %if.then.i

do.end.list_splice_init.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %tmrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmrs, align 4
  %prev2.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tmrs, ptr %prev3.i.i, align 4
  store ptr %8, ptr %tmrs, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %tmr_queue, ptr %tmr_queue, align 4
  store ptr %tmr_queue, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end.list_splice_init.exit_crit_edge
  %17 = ptrtoint ptr %tmrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tmrs, align 4
  %name32 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %do.end35.for.cond_crit_edge, %list_splice_init.exit
  %tmr.0 = phi ptr [ %18, %list_splice_init.exit ], [ %tmp.0, %do.end35.for.cond_crit_edge ]
  %19 = ptrtoint ptr %tmr.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0 = load ptr, ptr %tmr.0, align 4
  %cmp.not = icmp eq ptr %tmr.0, %tmrs
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmr.0) #17
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmr.0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %tmr.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tmr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %tmr.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %tmr.0, ptr %tmr.0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %tmr.0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tmr.0, ptr %prev.i3.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_run_tmr_queue, %if.then31)) #17
          to label %do.end35 [label %if.then31], !srcloc !544

if.then31:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %name32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name32, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.50, ptr noundef %tmr.0, ptr noundef %29) #17
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %list_del_init.exit
  %call36 = call fastcc i32 @queue_tmr_ring(ptr noundef %udev, ptr noundef %tmr.0)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end35.for.cond_crit_edge, label %do.body39

do.end35.for.cond_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

do.body39:                                        ; preds = %do.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_run_tmr_queue, %if.then51)) #17
          to label %do.end54 [label %if.then51], !srcloc !544

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.51) #17
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body39
  %30 = ptrtoint ptr %tmrs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %tmrs, align 4
  %cmp.i.not.i80 = icmp eq ptr %31, %tmrs
  br i1 %cmp.i.not.i80, label %do.end54.cleanup_crit_edge, label %if.then.i83

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i83:                                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %0, align 4
  %prev3.i.i82 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i82 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i82, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %31, ptr %33, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tmr_queue, ptr %35, align 4
  store ptr %35, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i83, %do.end54.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %do.end54.cleanup_crit_edge ], [ 0, %if.then.i83 ], [ 1, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmrs) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_copy_sense_to_cmd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd_with_length(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_cmd_free_data(ptr nocapture noundef readonly %tcmu_cmd, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4.not = icmp eq i32 %len, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcmu_dev, align 4
  %dbi = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 7
  %data_bitmap = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %dbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbi, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %i.05
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_bitmap, align 4
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %7) #17
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_copy_data(ptr noundef %udev, ptr nocapture noundef %tcmu_cmd, i32 noundef %direction, ptr noundef %sg, i32 noundef %sg_nents, ptr nocapture noundef %iov, i32 noundef %data_len) unnamed_addr #10 align 64 {
entry:
  %sg_iter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sg_iter) #17
  %0 = call ptr @memset(ptr %sg_iter, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %. = select i1 %cmp, i32 5, i32 3
  call void @sg_miter_start(ptr noundef nonnull %sg_iter, ptr noundef %sg, i32 noundef %sg_nents, i32 noundef %.) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %tobool.not107 = icmp eq i32 %data_len, 0
  br i1 %tobool.not107, label %entry.while.end60_crit_edge, label %while.body.lr.ph

entry.while.end60_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end60

while.body.lr.ph:                                 ; preds = %entry
  %dbi4 = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 7
  %dbi_cur = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 6
  %data_blk_size.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 26
  %data_off.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 14
  %data_pages_per_blk = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 25
  %data_pages = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp14 = icmp eq i32 %direction, 2
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %sg_iter, i32 0, i32 2
  %addr45 = getelementptr inbounds %struct.sg_mapping_iter, ptr %sg_iter, i32 0, i32 1
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %sg_iter, i32 0, i32 3
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc.while.cond.loopexit_crit_edge, %if.end5.while.cond.loopexit_crit_edge
  %data_len.addr.1.lcssa = phi i32 [ %data_len.addr.0109, %if.end5.while.cond.loopexit_crit_edge ], [ %data_len.addr.3, %for.inc.while.cond.loopexit_crit_edge ]
  %tobool.not = icmp eq i32 %data_len.addr.1.lcssa, 0
  br i1 %tobool.not, label %while.cond.loopexit.while.end60_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.loopexit.while.end60_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end60

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %data_len.addr.0109 = phi i32 [ %data_len, %while.body.lr.ph ], [ %data_len.addr.1.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %dbi.0108 = phi i32 [ -2, %while.body.lr.ph ], [ %6, %while.cond.loopexit.while.body_crit_edge ]
  %1 = ptrtoint ptr %dbi4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbi4, align 4
  %3 = ptrtoint ptr %dbi_cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dbi_cur, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %dbi_cur, align 4
  %arrayidx.i = getelementptr i32, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  br i1 %cmp, label %if.then2, label %while.body.if.end5_crit_edge

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then2:                                         ; preds = %while.body
  %7 = ptrtoint ptr %data_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_blk_size.i, align 8
  %add.i = add i32 %dbi.0108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add.i)
  %cmp2.not.i = icmp eq i32 %6, %add.i
  br i1 %cmp2.not.i, label %if.then2.new_block_to_iov.exit_crit_edge, label %if.then.i

if.then2.new_block_to_iov.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  br label %new_block_to_iov.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dbi.0108)
  %cmp3.i = icmp sgt i32 %dbi.0108, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iov, align 4
  %incdec.ptr.i = getelementptr %struct.iovec, ptr %10, i32 1
  store ptr %incdec.ptr.i, ptr %iov, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_off.i, align 8
  %13 = ptrtoint ptr %data_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_blk_size.i, align 8
  %mul.i = mul i32 %14, %6
  %add6.i = add i32 %mul.i, %12
  %15 = inttoptr i32 %add6.i to ptr
  %16 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iov, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %17, align 4
  br label %new_block_to_iov.exit

new_block_to_iov.exit:                            ; preds = %if.end.i, %if.then2.new_block_to_iov.exit_crit_edge
  %19 = call i32 @llvm.smin.i32(i32 %8, i32 %data_len.addr.0109) #17
  %20 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iov, align 4
  %iov_len.i = getelementptr inbounds %struct.iovec, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len.i, align 4
  %add8.i = add i32 %23, %19
  store i32 %add8.i, ptr %iov_len.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %new_block_to_iov.exit, %while.body.if.end5_crit_edge
  %sub = add i32 %data_len.addr.0109, 4095
  %div97 = lshr i32 %sub, 12
  %24 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_pages_per_blk, align 4
  %26 = call i32 @llvm.umin.i32(i32 %div97, i32 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp11101 = icmp eq i32 %26, 0
  br i1 %cmp11101, label %if.end5.while.cond.loopexit_crit_edge, label %for.body.preheader

if.end5.while.cond.loopexit_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

for.body.preheader:                               ; preds = %if.end5
  %mul = mul i32 %25, %6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %data_len.addr.1106 = phi i32 [ %data_len.addr.3, %for.inc.for.body_crit_edge ], [ %data_len.addr.0109, %for.body.preheader ]
  %dpi.0105 = phi i32 [ %inc59, %for.inc.for.body_crit_edge ], [ %mul, %for.body.preheader ]
  %page_inx.0104 = phi i32 [ %inc58, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call13 = call ptr @xa_load(ptr noundef %data_pages, i32 noundef %dpi.0105) #17
  br i1 %cmp14, label %if.then15, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @flush_dcache_page(ptr noundef %call13) #17
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %27, 512
  %28 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !556
  %32 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i1.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !557
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %call13, i32 noundef %or.i) #17
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 4096
  br label %land.rhs20

land.rhs20:                                       ; preds = %if.end46.land.rhs20_crit_edge, %if.end16
  %data_len.addr.2100 = phi i32 [ %data_len.addr.1106, %if.end16 ], [ %sub47, %if.end46.land.rhs20_crit_edge ]
  %page_remaining.099 = phi i32 [ 4096, %if.end16 ], [ %sub48, %if.end46.land.rhs20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.addr.2100)
  %tobool21.not = icmp eq i32 %data_len.addr.2100, 0
  br i1 %tobool21.not, label %land.rhs20.while.end_crit_edge, label %while.body23

land.rhs20.while.end_crit_edge:                   ; preds = %land.rhs20
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body23:                                     ; preds = %land.rhs20
  %call24 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %sg_iter) #17
  br i1 %call24, label %if.end32, label %if.then25

if.then25:                                        ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_copy_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_copy_data, %if.then30)) #17
          to label %while.end [label %if.then30], !srcloc !544

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_copy_data.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46) #17
  br label %while.end

if.end32:                                         ; preds = %while.body23
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %page_remaining.099)
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 %data_len.addr.2100)
  %idx.neg = sub i32 0, %page_remaining.099
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %42 = ptrtoint ptr %addr45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr45, align 4
  br i1 %cmp, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %44 = call ptr @memcpy(ptr %add.ptr41, ptr %43, i32 %41)
  br label %if.end46

if.else44:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %45 = call ptr @memcpy(ptr %43, ptr %add.ptr41, i32 %41)
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then43
  %sub47 = sub i32 %data_len.addr.2100, %41
  %sub48 = sub i32 %page_remaining.099, %41
  %46 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %41, ptr %consumed, align 4
  %tobool19.not = icmp eq i32 %sub48, 0
  br i1 %tobool19.not, label %if.end46.while.end_crit_edge, label %if.end46.land.rhs20_crit_edge

if.end46.land.rhs20_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs20

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %if.then30, %if.then25, %land.rhs20.while.end_crit_edge
  %data_len.addr.3 = phi i32 [ 0, %if.then30 ], [ 0, %if.then25 ], [ %sub47, %if.end46.while.end_crit_edge ], [ 0, %land.rhs20.while.end_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %sg_iter) #17
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !558
  %47 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i1.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !559
  %53 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br i1 %cmp, label %if.then56, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @flush_dcache_page(ptr noundef %call13) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %while.end.for.inc_crit_edge
  %inc58 = add nuw nsw i32 %page_inx.0104, 1
  %inc59 = add i32 %dpi.0105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58, i32 %26)
  %cmp11 = icmp uge i32 %inc58, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.addr.3)
  %tobool12.not = icmp eq i32 %data_len.addr.3, 0
  %or.cond = select i1 %cmp11, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %for.inc.while.cond.loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.while.cond.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

while.end60:                                      ; preds = %while.cond.loopexit.while.end60_crit_edge, %entry.while.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sg_iter) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_tmr_ring(ptr noundef %udev, ptr noundef %tmr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 10
  %0 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_addr, align 8
  %flags = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_free_crit_edge

entry.out_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_free

if.end:                                           ; preds = %entry
  %tmr_cmd_cnt = getelementptr inbounds %struct.tcmu_tmr, ptr %tmr, i32 0, i32 2
  %5 = ptrtoint ptr %tmr_cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmr_cmd_cnt, align 4
  %mul = shl i32 %6, 1
  %sub = add i32 %mul, 31
  %or = or i32 %sub, 7
  %add2 = add i32 %or, 1
  %tmr_queue = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20
  %7 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %tmr_queue, align 4
  %cmp.i.not = icmp eq ptr %8, %tmr_queue
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call fastcc zeroext i1 @is_ring_space_avail(ptr noundef %udev, i32 noundef %add2)
  br i1 %call5, label %if.end14, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %prev.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tmr, ptr noundef %10, ptr noundef %tmr_queue) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_add_tail.exit_crit_edge

if.then6.list_add_tail.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tmr, ptr %prev.i, align 4
  %12 = ptrtoint ptr %tmr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmr_queue, ptr %tmr, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %tmr, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tmr, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then6.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_tmr_ring.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_tmr_ring, %if.then12)) #17
          to label %cleanup [label %if.then12], !srcloc !544

if.then12:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_tmr_ring.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.53, ptr noundef %tmr, ptr noundef %16) #17
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %call15 = tail call fastcc i32 @ring_insert_padding(ptr noundef %udev, i32 noundef %add2)
  %cmdr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 11
  %17 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmdr, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %call15
  %19 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add2)
  %or.i82 = or i32 %add2, 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i82, ptr %add.ptr, align 4
  %tmr_type = getelementptr inbounds %struct.tcmu_tmr, ptr %tmr, i32 0, i32 1
  %21 = ptrtoint ptr %tmr_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmr_type, align 4
  %tmr_type18 = getelementptr inbounds %struct.tcmu_tmr_entry, ptr %add.ptr, i32 0, i32 1
  %23 = ptrtoint ptr %tmr_type18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %tmr_type18, align 1
  %24 = ptrtoint ptr %tmr_cmd_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tmr_cmd_cnt, align 4
  %cmd_cnt = getelementptr inbounds %struct.tcmu_tmr_entry, ptr %add.ptr, i32 0, i32 4
  %26 = ptrtoint ptr %cmd_cnt to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %cmd_cnt, align 1
  %cmd_ids = getelementptr inbounds %struct.tcmu_tmr_entry, ptr %add.ptr, i32 0, i32 7
  %tmr_cmd_ids = getelementptr inbounds %struct.tcmu_tmr, ptr %tmr, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %cmd_ids, ptr %tmr_cmd_ids, i32 %mul)
  %28 = ptrtoint ptr %add.ptr to i32
  %and.i83 = and i32 %28, 4095
  %sub.i = add i32 %and.i83, %or
  %or.i84 = or i32 %sub.i, 4095
  %add1.i = add i32 %or.i84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %tobool.not9.i = icmp eq i32 %add1.i, 0
  br i1 %tobool.not9.i, label %if.end14.tcmu_flush_dcache_range.exit_crit_edge, label %while.body.preheader.i

if.end14.tcmu_flush_dcache_range.exit_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit

while.body.preheader.i:                           ; preds = %if.end14
  %idx.neg.i = sub nsw i32 0, %and.i83
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %while.body.preheader.i ]
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  tail call void @flush_dcache_page(ptr noundef %call.i) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i, label %while.body.i.tcmu_flush_dcache_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.tcmu_flush_dcache_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit

tcmu_flush_dcache_range.exit:                     ; preds = %while.body.i.tcmu_flush_dcache_range.exit_crit_edge, %if.end14.tcmu_flush_dcache_range.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !560
  %cmd_head34 = getelementptr inbounds %struct.tcmu_mailbox, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %cmd_head34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_head34, align 4
  %cmdr_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 12
  %31 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmdr_size, align 8
  %rem = urem i32 %30, %32
  %add35 = add i32 %rem, %add2
  %rem37 = urem i32 %add35, %32
  store volatile i32 %rem37, ptr %cmd_head34, align 4
  %33 = ptrtoint ptr %1 to i32
  %and.i85 = and i32 %33, 4095
  %sub.i86 = add nuw nsw i32 %and.i85, 127
  %or.i87 = or i32 %sub.i86, 4095
  %add1.i88 = add nuw nsw i32 %or.i87, 1
  %idx.neg.i89 = sub nsw i32 0, %and.i85
  %add.ptr.i90 = getelementptr i8, ptr %1, i32 %idx.neg.i89
  br label %while.body.i98

while.body.i98:                                   ; preds = %while.body.i98.while.body.i98_crit_edge, %tcmu_flush_dcache_range.exit
  %start.011.i92 = phi ptr [ %add.ptr2.i95, %while.body.i98.while.body.i98_crit_edge ], [ %add.ptr.i90, %tcmu_flush_dcache_range.exit ]
  %size.addr.010.i93 = phi i32 [ %sub3.i96, %while.body.i98.while.body.i98_crit_edge ], [ %add1.i88, %tcmu_flush_dcache_range.exit ]
  %call.i94 = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i92) #17
  tail call void @flush_dcache_page(ptr noundef %call.i94) #17
  %add.ptr2.i95 = getelementptr i8, ptr %start.011.i92, i32 4096
  %sub3.i96 = add i32 %size.addr.010.i93, -4096
  %tobool.not.i97 = icmp eq i32 %sub3.i96, 0
  br i1 %tobool.not.i97, label %tcmu_flush_dcache_range.exit99, label %while.body.i98.while.body.i98_crit_edge

while.body.i98.while.body.i98_crit_edge:          ; preds = %while.body.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i98

tcmu_flush_dcache_range.exit99:                   ; preds = %while.body.i98
  call void @__sanitizer_cov_trace_pc() #19
  %uio_info = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 7
  tail call void @uio_event_notify(ptr noundef %uio_info) #17
  br label %out_free

out_free:                                         ; preds = %tcmu_flush_dcache_range.exit99, %entry.out_free_crit_edge
  tail call void @kfree(ptr noundef %tmr) #17
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then12, %list_add_tail.exit
  %retval.0 = phi i32 [ 0, %out_free ], [ 1, %if.then12 ], [ 1, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_ring_space_avail(ptr nocapture noundef readonly %udev, i32 noundef %cmd_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 10
  %0 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_addr, align 8
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 4095
  %sub.i = add nuw nsw i32 %and.i, 127
  %or.i = or i32 %sub.i, 4095
  %add1.i = add nuw nsw i32 %or.i, 1
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %entry ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry ]
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  tail call void @flush_dcache_page(ptr noundef %call.i) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i, label %tcmu_flush_dcache_range.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

tcmu_flush_dcache_range.exit:                     ; preds = %while.body.i
  %cmd_head1 = getelementptr inbounds %struct.tcmu_mailbox, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %cmd_head1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_head1, align 4
  %cmdr_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 12
  %5 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmdr_size, align 8
  %rem = urem i32 %4, %6
  %sub.i33 = sub i32 %6, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i33, i32 %cmd_size)
  %cmp.not = icmp ult i32 %sub.i33, %cmd_size
  %add = select i1 %cmp.not, i32 %sub.i33, i32 0
  %spec.select = add i32 %add, %cmd_size
  %cmdr_last_cleaned = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 13
  %7 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmdr_last_cleaned, align 4
  %sub.i.i = sub i32 %rem, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  %add.i.i = select i1 %cmp3.i.i, i32 %6, i32 0
  %retval.0.i.i = add i32 %add.i.i, %sub.i.i
  %9 = xor i32 %retval.0.i.i, -1
  %sub1.i = add i32 %6, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %spec.select)
  %cmp7 = icmp ult i32 %sub1.i, %spec.select
  br i1 %cmp7, label %do.body, label %tcmu_flush_dcache_range.exit.cleanup_crit_edge

tcmu_flush_dcache_range.exit.cleanup_crit_edge:   ; preds = %tcmu_flush_dcache_range.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %tcmu_flush_dcache_range.exit
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @is_ring_space_avail.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@is_ring_space_avail, %if.then12)) #17
          to label %cleanup [label %if.then12], !srcloc !544

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdr_last_cleaned, align 4
  %12 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmdr_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @is_ring_space_avail.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.55, i32 noundef %rem, i32 noundef %11, i32 noundef %13) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %tcmu_flush_dcache_range.exit.cleanup_crit_edge
  %14 = xor i1 %cmp7, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ring_insert_padding(ptr nocapture noundef readonly %udev, i32 noundef %cmd_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 10
  %0 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_addr, align 8
  %cmd_head1 = getelementptr inbounds %struct.tcmu_mailbox, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cmd_head1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_head1, align 4
  %cmdr_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 12
  %4 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdr_size, align 8
  %rem = urem i32 %3, %5
  %sub.i = sub i32 %5, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %cmd_size)
  %cmp = icmp ult i32 %sub.i, %cmd_size
  br i1 %cmp, label %if.then, label %entry.if.end56_crit_edge

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

if.then:                                          ; preds = %entry
  %cmdr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 11
  %6 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmdr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %rem
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %add.ptr, align 4
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  %and.i81 = and i32 %9, 4095
  %sub.i82 = add nuw nsw i32 %and.i81, 7
  %or.i83 = or i32 %sub.i82, 4095
  %add1.i = add nuw nsw i32 %or.i83, 1
  %idx.neg.i = sub nsw i32 0, %and.i81
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i
  %10 = ptrtoint ptr %cmd_id to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %cmd_id, align 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.then ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %if.then ]
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  tail call void @flush_dcache_page(ptr noundef %call.i) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i, label %tcmu_flush_dcache_range.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

tcmu_flush_dcache_range.exit:                     ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !561
  %11 = ptrtoint ptr %cmd_head1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_head1, align 4
  %13 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmdr_size, align 8
  %rem18 = urem i32 %12, %14
  %add = add i32 %rem18, %sub.i
  %rem20 = urem i32 %add, %14
  store volatile i32 %rem20, ptr %cmd_head1, align 4
  %15 = ptrtoint ptr %1 to i32
  %and.i84 = and i32 %15, 4095
  %sub.i85 = add nuw nsw i32 %and.i84, 127
  %or.i86 = or i32 %sub.i85, 4095
  %add1.i87 = add nuw nsw i32 %or.i86, 1
  %idx.neg.i88 = sub nsw i32 0, %and.i84
  %add.ptr.i89 = getelementptr i8, ptr %1, i32 %idx.neg.i88
  br label %while.body.i96

while.body.i96:                                   ; preds = %while.body.i96.while.body.i96_crit_edge, %tcmu_flush_dcache_range.exit
  %start.011.i90 = phi ptr [ %add.ptr2.i93, %while.body.i96.while.body.i96_crit_edge ], [ %add.ptr.i89, %tcmu_flush_dcache_range.exit ]
  %size.addr.010.i91 = phi i32 [ %sub3.i94, %while.body.i96.while.body.i96_crit_edge ], [ %add1.i87, %tcmu_flush_dcache_range.exit ]
  %call.i92 = tail call ptr @vmalloc_to_page(ptr noundef %start.011.i90) #17
  tail call void @flush_dcache_page(ptr noundef %call.i92) #17
  %add.ptr2.i93 = getelementptr i8, ptr %start.011.i90, i32 4096
  %sub3.i94 = add i32 %size.addr.010.i91, -4096
  %tobool.not.i95 = icmp eq i32 %sub3.i94, 0
  br i1 %tobool.not.i95, label %tcmu_flush_dcache_range.exit97, label %while.body.i96.while.body.i96_crit_edge

while.body.i96.while.body.i96_crit_edge:          ; preds = %while.body.i96
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i96

tcmu_flush_dcache_range.exit97:                   ; preds = %while.body.i96
  %16 = ptrtoint ptr %cmd_head1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_head1, align 4
  %18 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmdr_size, align 8
  %rem32 = urem i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32)
  %cmp33.not = icmp eq i32 %rem32, 0
  br i1 %cmp33.not, label %tcmu_flush_dcache_range.exit97.if.end56_crit_edge, label %do.end44, !prof !548

tcmu_flush_dcache_range.exit97.if.end56_crit_edge: ; preds = %tcmu_flush_dcache_range.exit97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56

do.end44:                                         ; preds = %tcmu_flush_dcache_range.exit97
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 975, i32 noundef 9, ptr noundef null) #17
  br label %if.end56

if.end56:                                         ; preds = %do.end44, %tcmu_flush_dcache_range.exit97.if.end56_crit_edge, %entry.if.end56_crit_edge
  %cmd_head.0 = phi i32 [ %rem, %entry.if.end56_crit_edge ], [ %rem32, %do.end44 ], [ 0, %tcmu_flush_dcache_range.exit97.if.end56_crit_edge ]
  ret i32 %cmd_head.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uio_event_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_cmd_ring(ptr noundef %tcmu_cmd, ptr nocapture noundef writeonly %scsi_err) unnamed_addr #2 align 64 {
entry:
  %iov = alloca ptr, align 4
  %iov_bidi_cnt = alloca i32, align 4
  %cmd_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcmu_dev, align 4
  %2 = ptrtoint ptr %tcmu_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcmu_cmd, align 4
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mb_addr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iov_bidi_cnt) #17
  %6 = ptrtoint ptr %iov_bidi_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %iov_bidi_cnt, align 4, !annotation !543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_id) #17
  %7 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cmd_id, align 4, !annotation !543
  %data_blk_size = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_blk_size, align 8
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 4
  %10 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbi_cnt, align 4
  %mul = mul i32 %11, %9
  %12 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %scsi_err, align 4
  %flags = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 30, ptr %scsi_err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %scsi_err, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %qfull_queue = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %qfull_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %qfull_queue, align 4
  %cmp.i.not = icmp eq ptr %22, %qfull_queue
  br i1 %cmp.i.not, label %if.end11, label %if.end7.queue_crit_edge

if.end7.queue_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %queue

if.end11:                                         ; preds = %if.end7
  %max_blocks = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 16
  %23 = ptrtoint ptr %max_blocks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_blocks, align 8
  %mul12 = mul i32 %24, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul12)
  %cmp = icmp ugt i32 %mul, %mul12
  br i1 %cmp, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %mul, i32 noundef %mul12) #21
  %25 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %scsi_err, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = call fastcc i32 @tcmu_alloc_data_space(ptr noundef %1, ptr noundef %tcmu_cmd, ptr noundef nonnull %iov_bidi_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.free_and_queue_crit_edge, label %if.end21

if.end17.free_and_queue_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_and_queue

if.end21:                                         ; preds = %if.end17
  %26 = shl i32 %call18, 3
  %27 = add i32 %26, 48
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 112) #17
  %29 = ptrtoint ptr %tcmu_cmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcmu_cmd, align 4
  %t_task_cdb.i = getelementptr inbounds %struct.se_cmd, ptr %30, i32 0, i32 30
  %31 = ptrtoint ptr %t_task_cdb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %t_task_cdb.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %34)
  %cmp.i.i = icmp eq i8 %34, 127
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %additional_cdb_length.i.i.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %additional_cdb_length.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %additional_cdb_length.i.i.i, align 1
  %conv.i.i.i = zext i8 %36 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 8
  br label %scsi_command_size.exit.i

cond.false.i.i:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %37 = lshr i8 %34, 5
  %38 = zext i8 %37 to i32
  %arrayidx4.i.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %40 to i32
  br label %scsi_command_size.exit.i

scsi_command_size.exit.i:                         ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %add.i.i.i, %cond.true.i.i ], [ %conv5.i.i, %cond.false.i.i ]
  %sub.i = add nsw i32 %cond.i.i, -1
  %or.i = or i32 %sub.i, 7
  %add.i = or i32 %28, 1
  %add2.i = add i32 %or.i, %add.i
  %cmdr_size = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmdr_size, align 8
  %div222 = lshr i32 %42, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %div222)
  %cmp24 = icmp ugt i32 %add2.i, %div222
  br i1 %cmp24, label %do.end28, label %if.end32

do.end28:                                         ; preds = %scsi_command_size.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %add2.i, i32 noundef %42) #21
  %dbi_cur = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 6
  %43 = ptrtoint ptr %dbi_cur to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dbi_cur, align 4
  tail call fastcc void @tcmu_cmd_free_data(ptr noundef %tcmu_cmd, i32 noundef %44)
  %45 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %scsi_err, align 4
  br label %cleanup

if.end32:                                         ; preds = %scsi_command_size.exit.i
  %call33 = tail call fastcc zeroext i1 @is_ring_space_avail(ptr noundef %1, i32 noundef %add2.i)
  br i1 %call33, label %if.end35, label %if.end32.free_and_queue_crit_edge

if.end32.free_and_queue_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_and_queue

if.end35:                                         ; preds = %if.end32
  %commands = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %commands) #17
  %call.i = call i32 @__xa_alloc(ptr noundef %commands, ptr noundef nonnull %cmd_id, ptr noundef %tcmu_cmd, [2 x i32] [i32 65535, i32 1], i32 noundef 2048) #17
  call void @_raw_spin_unlock(ptr noundef %commands) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  br i1 %cmp37, label %do.end41, label %if.end45

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #21
  %46 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dbi_cnt, align 4
  call fastcc void @tcmu_cmd_free_data(ptr noundef %tcmu_cmd, i32 noundef %47)
  %48 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 18, ptr %scsi_err, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  %49 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_id, align 4
  %conv = trunc i32 %50 to i16
  %cmd_id46 = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 3
  %51 = ptrtoint ptr %cmd_id46 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv, ptr %cmd_id46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_cmd_ring.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_cmd_ring, %if.then53)) #17
          to label %do.end58 [label %if.then53], !srcloc !544

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %cmd_id46 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cmd_id46, align 4
  %conv55 = zext i16 %53 to i32
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_cmd_ring.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.69, i32 noundef %conv55, ptr noundef %tcmu_cmd, ptr noundef %55) #17
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %if.end45
  %call59 = call fastcc i32 @ring_insert_padding(ptr noundef %1, i32 noundef %add2.i)
  %cmdr = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 11
  %56 = ptrtoint ptr %cmdr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmdr, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 %call59
  %58 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add2.i)
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr, align 4
  %and.i227 = and i32 %60, -8
  %or.i228 = or i32 %and.i227, 1
  store i32 %or.i228, ptr %add.ptr, align 4
  %dbi_cur60 = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 6
  %61 = ptrtoint ptr %dbi_cur60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %dbi_cur60, align 4
  %62 = getelementptr inbounds %struct.tcmu_cmd_entry, ptr %add.ptr, i32 0, i32 1
  %iov61 = getelementptr inbounds %struct.anon.106, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %iov61, ptr %iov, align 4
  %data_direction = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 6
  %64 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp62 = icmp eq i32 %65, 1
  br i1 %cmp62, label %do.end58.if.then65_crit_edge, label %lor.lhs.false

do.end58.if.then65_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then65

lor.lhs.false:                                    ; preds = %do.end58
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 11
  %66 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.else, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %do.end58.if.then65_crit_edge
  %68 = ptrtoint ptr %tcmu_cmd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tcmu_cmd, align 4
  %t_data_sg.i = getelementptr inbounds %struct.se_cmd, ptr %69, i32 0, i32 39
  %70 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %t_data_sg.i, align 4
  %t_data_nents.i = getelementptr inbounds %struct.se_cmd, ptr %69, i32 0, i32 41
  %72 = ptrtoint ptr %t_data_nents.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %t_data_nents.i, align 4
  %data_length.i = getelementptr inbounds %struct.se_cmd, ptr %69, i32 0, i32 12
  %74 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_length.i, align 4
  call fastcc void @tcmu_copy_data(ptr noundef %1, ptr noundef %tcmu_cmd, i32 noundef 1, ptr noundef %71, i32 noundef %73, ptr noundef nonnull %iov, i32 noundef %75) #17
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %data_length66 = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 12
  %76 = ptrtoint ptr %data_length66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_length66, align 4
  call fastcc void @tcmu_setup_iovs(ptr noundef %1, ptr noundef %tcmu_cmd, ptr noundef nonnull %iov, i32 noundef %77)
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then65
  %78 = ptrtoint ptr %iov_bidi_cnt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %iov_bidi_cnt, align 4
  %sub = sub i32 %call18, %79
  %80 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %sub, ptr %62, align 1
  %se_cmd_flags69 = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 11
  %81 = ptrtoint ptr %se_cmd_flags69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %se_cmd_flags69, align 8
  %and70 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end67.if.end74_crit_edge, label %if.then72

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then72:                                        ; preds = %if.end67
  %83 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iov, align 4
  %incdec.ptr = getelementptr %struct.iovec, ptr %84, i32 1
  store ptr %incdec.ptr, ptr %iov, align 4
  %data_len_bidi = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 8
  %85 = ptrtoint ptr %data_len_bidi to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len_bidi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp4.i = icmp sgt i32 %86, 0
  br i1 %cmp4.i, label %for.body.lr.ph.i, label %if.then72.tcmu_setup_iovs.exit_crit_edge

if.then72.tcmu_setup_iovs.exit_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_setup_iovs.exit

for.body.lr.ph.i:                                 ; preds = %if.then72
  %dbi1.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 14
  %87 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %87)
  %iov.promoted = load ptr, ptr %iov, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %new_block_to_iov.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %incdec.ptr.i.i269 = phi ptr [ %iov.promoted, %for.body.lr.ph.i ], [ %incdec.ptr.i.i268, %new_block_to_iov.exit.i.for.body.i_crit_edge ]
  %dbi.06.i = phi i32 [ -2, %for.body.lr.ph.i ], [ %93, %new_block_to_iov.exit.i.for.body.i_crit_edge ]
  %data_length.addr.05.i = phi i32 [ %86, %for.body.lr.ph.i ], [ %sub.i229, %new_block_to_iov.exit.i.for.body.i_crit_edge ]
  %88 = ptrtoint ptr %dbi1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dbi1.i.i, align 4
  %90 = ptrtoint ptr %dbi_cur60 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dbi_cur60, align 4
  %inc.i.i = add i32 %91, 1
  store i32 %inc.i.i, ptr %dbi_cur60, align 4
  %arrayidx.i.i = getelementptr i32, ptr %89, i32 %91
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i, align 4
  %94 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_blk_size, align 8
  %add.i.i = add i32 %dbi.06.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %add.i.i)
  %cmp2.not.i.i = icmp eq i32 %93, %add.i.i
  br i1 %cmp2.not.i.i, label %for.body.i.new_block_to_iov.exit.i_crit_edge, label %if.then.i.i

for.body.i.new_block_to_iov.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %new_block_to_iov.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %96 = xor i32 %dbi.06.i, -1
  %dbi.06.i.lobit.not = lshr i32 %96, 31
  %spec.select = getelementptr %struct.iovec, ptr %incdec.ptr.i.i269, i32 %dbi.06.i.lobit.not
  %97 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_off.i.i, align 8
  %mul.i.i = mul i32 %95, %93
  %add6.i.i = add i32 %98, %mul.i.i
  %99 = inttoptr i32 %add6.i.i to ptr
  %100 = ptrtoint ptr %spec.select to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %spec.select, align 4
  br label %new_block_to_iov.exit.i

new_block_to_iov.exit.i:                          ; preds = %if.then.i.i, %for.body.i.new_block_to_iov.exit.i_crit_edge
  %incdec.ptr.i.i268 = phi ptr [ %spec.select, %if.then.i.i ], [ %incdec.ptr.i.i269, %for.body.i.new_block_to_iov.exit.i_crit_edge ]
  %101 = call i32 @llvm.smin.i32(i32 %95, i32 %data_length.addr.05.i) #17
  %iov_len.i.i = getelementptr inbounds %struct.iovec, ptr %incdec.ptr.i.i268, i32 0, i32 1
  %102 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iov_len.i.i, align 4
  %add8.i.i = add i32 %103, %101
  store i32 %add8.i.i, ptr %iov_len.i.i, align 4
  %104 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_blk_size, align 8
  %sub.i229 = sub i32 %data_length.addr.05.i, %105
  %cmp.i230 = icmp sgt i32 %sub.i229, 0
  br i1 %cmp.i230, label %new_block_to_iov.exit.i.for.body.i_crit_edge, label %tcmu_setup_iovs.exit.loopexit

new_block_to_iov.exit.i.for.body.i_crit_edge:     ; preds = %new_block_to_iov.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

tcmu_setup_iovs.exit.loopexit:                    ; preds = %new_block_to_iov.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %106 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %incdec.ptr.i.i268, ptr %iov, align 4
  br label %tcmu_setup_iovs.exit

tcmu_setup_iovs.exit:                             ; preds = %tcmu_setup_iovs.exit.loopexit, %if.then72.tcmu_setup_iovs.exit_crit_edge
  %iov_bidi_cnt73 = getelementptr inbounds %struct.anon.106, ptr %62, i32 0, i32 1
  %107 = ptrtoint ptr %iov_bidi_cnt73 to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %79, ptr %iov_bidi_cnt73, align 1
  br label %if.end74

if.end74:                                         ; preds = %tcmu_setup_iovs.exit, %if.end67.if.end74_crit_edge
  %cmd_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 29
  %108 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cmd_time_out, align 8
  %cmd_timer = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i231 = icmp eq i32 %109, 0
  br i1 %tobool.not.i231, label %if.end74.tcmu_setup_cmd_timer.exit_crit_edge, label %if.end.i

if.end74.tcmu_setup_cmd_timer.exit_crit_edge:     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_setup_cmd_timer.exit

if.end.i:                                         ; preds = %if.end74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %109) #17
  %add.i235 = add i32 %call2.i.i, %110
  %call1.i = call i32 @round_jiffies_up(i32 noundef %add.i235) #17
  %deadline.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 9
  %111 = ptrtoint ptr %deadline.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call1.i, ptr %deadline.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 28, i32 0, i32 1
  %112 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.not.i, label %if.then4.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call6.i = call i32 @mod_timer(ptr noundef %cmd_timer, i32 noundef %call1.i) #17
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_cmd_ring, %if.then12.i)) #17
          to label %tcmu_setup_cmd_timer.exit [label %if.then12.i], !srcloc !544

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %114 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tcmu_dev, align 4
  %name.i = getelementptr inbounds %struct.tcmu_dev, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name.i, align 4
  %div.i = udiv i32 %109, 1000
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.79, ptr noundef %tcmu_cmd, ptr noundef %117, i32 noundef %div.i) #17
  br label %tcmu_setup_cmd_timer.exit

tcmu_setup_cmd_timer.exit:                        ; preds = %if.then12.i, %do.body.i, %if.end74.tcmu_setup_cmd_timer.exit_crit_edge
  %118 = ptrtoint ptr %cmd_id46 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %cmd_id46, align 4
  %cmd_id77 = getelementptr inbounds %struct.tcmu_cmd_entry_hdr, ptr %add.ptr, i32 0, i32 1
  %120 = ptrtoint ptr %cmd_id77 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %cmd_id77, align 1
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr, align 4
  %and.i237 = and i32 %122, 7
  %or.i238 = or i32 %and.i237, %add2.i
  store i32 %or.i238, ptr %add.ptr, align 4
  %add = add i32 %28, 128
  %add80 = add i32 %add, %call59
  %conv81 = zext i32 %add80 to i64
  %add.ptr82 = getelementptr i8, ptr %5, i32 %add80
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %3, i32 0, i32 30
  %123 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %t_task_cdb, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %126)
  %cmp.i239 = icmp eq i8 %126, 127
  br i1 %cmp.i239, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %tcmu_setup_cmd_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  %additional_cdb_length.i.i = getelementptr inbounds %struct.scsi_varlen_cdb_hdr, ptr %124, i32 0, i32 3
  %127 = ptrtoint ptr %additional_cdb_length.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %additional_cdb_length.i.i, align 1
  %conv.i.i = zext i8 %128 to i32
  %add.i.i240 = add nuw nsw i32 %conv.i.i, 8
  br label %scsi_command_size.exit

cond.false.i:                                     ; preds = %tcmu_setup_cmd_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  %129 = lshr i8 %126, 5
  %130 = zext i8 %129 to i32
  %arrayidx4.i = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %132 to i32
  br label %scsi_command_size.exit

scsi_command_size.exit:                           ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i240, %cond.true.i ], [ %conv5.i, %cond.false.i ]
  %133 = call ptr @memcpy(ptr %add.ptr82, ptr %124, i32 %cond.i)
  %cdb_off85 = getelementptr inbounds %struct.anon.106, ptr %62, i32 0, i32 3
  %134 = ptrtoint ptr %cdb_off85 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %conv81, ptr %cdb_off85, align 1
  %135 = ptrtoint ptr %add.ptr to i32
  %and.i241 = and i32 %135, 4095
  %add.i242 = add i32 %add2.i, -1
  %sub.i243 = add i32 %add.i242, %and.i241
  %or.i244 = or i32 %sub.i243, 4095
  %add1.i = add i32 %or.i244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %tobool.not9.i = icmp eq i32 %add1.i, 0
  br i1 %tobool.not9.i, label %scsi_command_size.exit.tcmu_flush_dcache_range.exit_crit_edge, label %while.body.preheader.i

scsi_command_size.exit.tcmu_flush_dcache_range.exit_crit_edge: ; preds = %scsi_command_size.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit

while.body.preheader.i:                           ; preds = %scsi_command_size.exit
  %idx.neg.i = sub nsw i32 0, %and.i241
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %while.body.preheader.i ]
  %call.i245 = call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  call void @flush_dcache_page(ptr noundef %call.i245) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i246 = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i246, label %while.body.i.tcmu_flush_dcache_range.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.body.i.tcmu_flush_dcache_range.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_flush_dcache_range.exit

tcmu_flush_dcache_range.exit:                     ; preds = %while.body.i.tcmu_flush_dcache_range.exit_crit_edge, %scsi_command_size.exit.tcmu_flush_dcache_range.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !562
  %cmd_head99 = getelementptr inbounds %struct.tcmu_mailbox, ptr %5, i32 0, i32 4
  %136 = ptrtoint ptr %cmd_head99 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %cmd_head99, align 4
  %138 = ptrtoint ptr %cmdr_size to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cmdr_size, align 8
  %rem = urem i32 %137, %139
  %add101 = add i32 %rem, %add2.i
  %rem103 = urem i32 %add101, %139
  store volatile i32 %rem103, ptr %cmd_head99, align 4
  %140 = ptrtoint ptr %5 to i32
  %and.i247 = and i32 %140, 4095
  %sub.i248 = add nuw nsw i32 %and.i247, 127
  %or.i249 = or i32 %sub.i248, 4095
  %add1.i250 = add nuw nsw i32 %or.i249, 1
  %idx.neg.i251 = sub nsw i32 0, %and.i247
  %add.ptr.i252 = getelementptr i8, ptr %5, i32 %idx.neg.i251
  br label %while.body.i260

while.body.i260:                                  ; preds = %while.body.i260.while.body.i260_crit_edge, %tcmu_flush_dcache_range.exit
  %start.011.i254 = phi ptr [ %add.ptr2.i257, %while.body.i260.while.body.i260_crit_edge ], [ %add.ptr.i252, %tcmu_flush_dcache_range.exit ]
  %size.addr.010.i255 = phi i32 [ %sub3.i258, %while.body.i260.while.body.i260_crit_edge ], [ %add1.i250, %tcmu_flush_dcache_range.exit ]
  %call.i256 = call ptr @vmalloc_to_page(ptr noundef %start.011.i254) #17
  call void @flush_dcache_page(ptr noundef %call.i256) #17
  %add.ptr2.i257 = getelementptr i8, ptr %start.011.i254, i32 4096
  %sub3.i258 = add i32 %size.addr.010.i255, -4096
  %tobool.not.i259 = icmp eq i32 %sub3.i258, 0
  br i1 %tobool.not.i259, label %tcmu_flush_dcache_range.exit261, label %while.body.i260.while.body.i260_crit_edge

while.body.i260.while.body.i260_crit_edge:        ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i260

tcmu_flush_dcache_range.exit261:                  ; preds = %while.body.i260
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 2
  %inflight_queue = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 30
  %prev.i = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 30, i32 1
  %141 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %queue_entry, ptr noundef %142, ptr noundef %inflight_queue) #17
  br i1 %call.i.i, label %if.end.i.i262, label %tcmu_flush_dcache_range.exit261.list_add_tail.exit_crit_edge

tcmu_flush_dcache_range.exit261.list_add_tail.exit_crit_edge: ; preds = %tcmu_flush_dcache_range.exit261
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i262:                                    ; preds = %tcmu_flush_dcache_range.exit261
  call void @__sanitizer_cov_trace_pc() #19
  %143 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %queue_entry, ptr %prev.i, align 4
  %144 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %inflight_queue, ptr %queue_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 2, i32 1
  %145 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %queue_entry, ptr %142, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i262, %tcmu_flush_dcache_range.exit261.list_add_tail.exit_crit_edge
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %flags, align 4
  %149 = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool115.not = icmp eq i32 %149, 0
  br i1 %tobool115.not, label %if.then116, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then116:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  %uio_info = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 7
  call void @uio_event_notify(ptr noundef %uio_info) #17
  br label %cleanup

free_and_queue:                                   ; preds = %if.end32.free_and_queue_crit_edge, %if.end17.free_and_queue_crit_edge
  %dbi_cur118 = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 6
  %150 = ptrtoint ptr %dbi_cur118 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dbi_cur118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp4.not.i = icmp eq i32 %151, 0
  br i1 %cmp4.not.i, label %free_and_queue.tcmu_cmd_free_data.exit_crit_edge, label %for.body.lr.ph.i264

free_and_queue.tcmu_cmd_free_data.exit_crit_edge: ; preds = %free_and_queue
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

for.body.lr.ph.i264:                              ; preds = %free_and_queue
  %152 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tcmu_dev, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 7
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %153, i32 0, i32 23
  br label %for.body.i265

for.body.i265:                                    ; preds = %for.body.i265.for.body.i265_crit_edge, %for.body.lr.ph.i264
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i264 ], [ %inc.i, %for.body.i265.for.body.i265_crit_edge ]
  %154 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dbi.i, align 4
  %arrayidx.i = getelementptr i32, ptr %155, i32 %i.05.i
  %156 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i, align 4
  %158 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data_bitmap.i, align 4
  tail call void @_clear_bit(i32 noundef %157, ptr noundef %159) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %151
  br i1 %exitcond.not.i, label %for.body.i265.tcmu_cmd_free_data.exit_crit_edge, label %for.body.i265.for.body.i265_crit_edge

for.body.i265.for.body.i265_crit_edge:            ; preds = %for.body.i265
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i265

for.body.i265.tcmu_cmd_free_data.exit_crit_edge:  ; preds = %for.body.i265
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

tcmu_cmd_free_data.exit:                          ; preds = %for.body.i265.tcmu_cmd_free_data.exit_crit_edge, %free_and_queue.tcmu_cmd_free_data.exit_crit_edge
  %160 = ptrtoint ptr %dbi_cur118 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %dbi_cur118, align 4
  br label %queue

queue:                                            ; preds = %tcmu_cmd_free_data.exit, %if.end7.queue_crit_edge
  %call120 = tail call fastcc i32 @add_to_qfull_queue(ptr noundef %tcmu_cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %queue.cleanup_crit_edge, label %if.then122

queue.cleanup_crit_edge:                          ; preds = %queue
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then122:                                       ; preds = %queue
  call void @__sanitizer_cov_trace_pc() #19
  %161 = ptrtoint ptr %scsi_err to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 18, ptr %scsi_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %queue.cleanup_crit_edge, %if.then116, %list_add_tail.exit.cleanup_crit_edge, %do.end41, %do.end28, %do.end, %if.then6, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then6 ], [ -1, %do.end ], [ -1, %if.then122 ], [ -1, %do.end28 ], [ -1, %do.end41 ], [ 0, %if.then116 ], [ 0, %list_add_tail.exit.cleanup_crit_edge ], [ 1, %queue.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_id) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov_bidi_cnt) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iov) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_alloc_data_space(ptr noundef %udev, ptr nocapture noundef %cmd, ptr nocapture noundef writeonly %iov_bidi_cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.wr_iov_cnts_crit_edge, label %if.end

entry.wr_iov_cnts_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %wr_iov_cnts

if.end:                                           ; preds = %entry
  %dbi_thresh = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 22
  %2 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbi_thresh, align 8
  %data_bitmap = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 23
  %4 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_bitmap, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef %5, i32 noundef %3) #17
  %sub.i = sub i32 %3, %call4.i.i
  %6 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp = icmp ult i32 %sub.i, %7
  br i1 %cmp, label %if.then2, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then2:                                         ; preds = %if.end
  %max_blocks = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 16
  %8 = ptrtoint ptr %max_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_blocks, align 8
  %10 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbi_thresh, align 8
  %sub = sub i32 %9, %11
  %add = add i32 %sub, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp5 = icmp ult i32 %add, %7
  br i1 %cmp5, label %do.body, label %if.end16

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_alloc_data_space.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_alloc_data_space, %if.then11)) #17
          to label %cleanup40 [label %if.then11], !srcloc !544

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %data_blk_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 26
  %12 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_blk_size, align 8
  %mul = mul i32 %13, %add
  %14 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dbi_cnt, align 4
  %mul14 = mul i32 %15, %13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_alloc_data_space.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.71, i32 noundef %mul, i32 noundef %mul14) #17
  br label %cleanup40

if.end16:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #19
  %add19 = add i32 %11, %7
  %16 = tail call i32 @llvm.umin.i32(i32 %add19, i32 %9)
  %17 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dbi_thresh, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end16, %if.end.if.end27_crit_edge
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  %call28 = tail call fastcc i32 @tcmu_get_empty_blocks(ptr noundef %udev, ptr noundef %cmd, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup40_crit_edge, label %if.end31

if.end27.cleanup40_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup40

if.end31:                                         ; preds = %if.end27
  %dbi_bidi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %dbi_bidi_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dbi_bidi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool32.not = icmp eq i32 %23, 0
  br i1 %tobool32.not, label %if.end31.wr_iov_cnts_crit_edge, label %if.then33

if.end31.wr_iov_cnts_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %wr_iov_cnts

if.then33:                                        ; preds = %if.end31
  %data_len_bidi = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 8
  %24 = ptrtoint ptr %data_len_bidi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len_bidi, align 4
  %call34 = tail call fastcc i32 @tcmu_get_empty_blocks(ptr noundef %udev, ptr noundef %cmd, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then33.cleanup40_crit_edge, label %if.then33.wr_iov_cnts_crit_edge

if.then33.wr_iov_cnts_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %wr_iov_cnts

if.then33.cleanup40_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup40

wr_iov_cnts:                                      ; preds = %if.then33.wr_iov_cnts_crit_edge, %if.end31.wr_iov_cnts_crit_edge, %entry.wr_iov_cnts_crit_edge
  %iov_cnt.0 = phi i32 [ %call28, %if.then33.wr_iov_cnts_crit_edge ], [ %call28, %if.end31.wr_iov_cnts_crit_edge ], [ 0, %entry.wr_iov_cnts_crit_edge ]
  %ret.0 = phi i32 [ %call34, %if.then33.wr_iov_cnts_crit_edge ], [ 0, %if.end31.wr_iov_cnts_crit_edge ], [ 0, %entry.wr_iov_cnts_crit_edge ]
  %26 = ptrtoint ptr %iov_bidi_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ret.0, ptr %iov_bidi_cnt, align 4
  %add39 = add nuw i32 %ret.0, %iov_cnt.0
  br label %cleanup40

cleanup40:                                        ; preds = %wr_iov_cnts, %if.then33.cleanup40_crit_edge, %if.end27.cleanup40_crit_edge, %if.then11, %do.body
  %retval.1 = phi i32 [ %add39, %wr_iov_cnts ], [ -1, %if.then11 ], [ -1, %if.end27.cleanup40_crit_edge ], [ -1, %if.then33.cleanup40_crit_edge ], [ -1, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_setup_iovs(ptr nocapture noundef readonly %udev, ptr nocapture noundef %cmd, ptr nocapture noundef %iov, i32 noundef %data_length) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length)
  %cmp4 = icmp sgt i32 %data_length, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dbi1.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 7
  %dbi_cur.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 6
  %data_blk_size.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 26
  %data_off.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %new_block_to_iov.exit.for.body_crit_edge, %for.body.lr.ph
  %dbi.06 = phi i32 [ -2, %for.body.lr.ph ], [ %5, %new_block_to_iov.exit.for.body_crit_edge ]
  %data_length.addr.05 = phi i32 [ %data_length, %for.body.lr.ph ], [ %sub, %new_block_to_iov.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %dbi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbi1.i, align 4
  %2 = ptrtoint ptr %dbi_cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbi_cur.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %dbi_cur.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %data_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_blk_size.i, align 8
  %add.i = add i32 %dbi.06, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp2.not.i = icmp eq i32 %5, %add.i
  br i1 %cmp2.not.i, label %for.body.new_block_to_iov.exit_crit_edge, label %if.then.i

for.body.new_block_to_iov.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %new_block_to_iov.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dbi.06)
  %cmp3.i = icmp sgt i32 %dbi.06, -1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iov, align 4
  %incdec.ptr.i = getelementptr %struct.iovec, ptr %9, i32 1
  store ptr %incdec.ptr.i, ptr %iov, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %10 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_off.i, align 8
  %12 = ptrtoint ptr %data_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_blk_size.i, align 8
  %mul.i = mul i32 %13, %5
  %add6.i = add i32 %mul.i, %11
  %14 = inttoptr i32 %add6.i to ptr
  %15 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iov, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %16, align 4
  br label %new_block_to_iov.exit

new_block_to_iov.exit:                            ; preds = %if.end.i, %for.body.new_block_to_iov.exit_crit_edge
  %18 = tail call i32 @llvm.smin.i32(i32 %7, i32 %data_length.addr.05) #17
  %19 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iov, align 4
  %iov_len.i = getelementptr inbounds %struct.iovec, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iov_len.i, align 4
  %add8.i = add i32 %22, %18
  store i32 %add8.i, ptr %iov_len.i, align 4
  %23 = ptrtoint ptr %data_blk_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_blk_size.i, align 8
  %sub = sub i32 %data_length.addr.05, %24
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %new_block_to_iov.exit.for.body_crit_edge, label %new_block_to_iov.exit.for.end_crit_edge

new_block_to_iov.exit.for.end_crit_edge:          ; preds = %new_block_to_iov.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

new_block_to_iov.exit.for.body_crit_edge:         ; preds = %new_block_to_iov.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %new_block_to_iov.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_to_qfull_queue(ptr noundef %tcmu_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 1
  %0 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcmu_dev, align 4
  %qfull_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %qfull_time_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qfull_time_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.else.if.end.i_crit_edge, label %if.else4

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_time_out = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_time_out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %. = select i1 %tobool5.not, i32 30000, i32 %5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else4, %if.else.if.end.i_crit_edge
  %tmo.0 = phi i32 [ %3, %if.else.if.end.i_crit_edge ], [ %., %if.else4 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo.0) #17
  %add.i = add i32 %call2.i.i, %6
  %call1.i = tail call i32 @round_jiffies_up(i32 noundef %add.i) #17
  %deadline.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 9
  %7 = ptrtoint ptr %deadline.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %deadline.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 31, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not.i, label %if.then4.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %qfull_timer = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 31
  %call6.i = tail call i32 @mod_timer(ptr noundef %qfull_timer, i32 noundef %call1.i) #17
  br label %do.body.i

do.body.i:                                        ; preds = %if.then4.i, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_qfull_queue, %if.then12.i)) #17
          to label %tcmu_setup_cmd_timer.exit [label %if.then12.i], !srcloc !544

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tcmu_dev, align 4
  %name.i = getelementptr inbounds %struct.tcmu_dev, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %div.i = udiv i32 %tmo.0, 1000
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.79, ptr noundef %tcmu_cmd, ptr noundef %13, i32 noundef %div.i) #17
  br label %tcmu_setup_cmd_timer.exit

tcmu_setup_cmd_timer.exit:                        ; preds = %if.then12.i, %do.body.i
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 2
  %qfull_queue = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_entry, ptr noundef %15, ptr noundef %qfull_queue) #17
  br i1 %call.i.i, label %if.end.i.i28, label %tcmu_setup_cmd_timer.exit.list_add_tail.exit_crit_edge

tcmu_setup_cmd_timer.exit.list_add_tail.exit_crit_edge: ; preds = %tcmu_setup_cmd_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i28:                                     ; preds = %tcmu_setup_cmd_timer.exit
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %queue_entry, ptr %prev.i, align 4
  %17 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %qfull_queue, ptr %queue_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %queue_entry, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i28, %tcmu_setup_cmd_timer.exit.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_to_qfull_queue.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_to_qfull_queue, %if.then14)) #17
          to label %cleanup [label %if.then14], !srcloc !544

if.then14:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_to_qfull_queue.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.81, ptr noundef %tcmu_cmd, ptr noundef %21) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %entry.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_get_empty_blocks(ptr noundef %udev, ptr nocapture noundef %tcmu_cmd, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %data_blk_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 26
  %0 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_blk_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp19 = icmp sgt i32 %length, 0
  br i1 %cmp19, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %data_pages.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 24
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 23
  %dbi_thresh.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 22
  %data_pages_per_blk.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 25
  %dbi_max.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 21
  %dbi31.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 7
  %dbi_cur.i = getelementptr inbounds %struct.tcmu_cmd, ptr %tcmu_cmd, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %tcmu_get_empty_block.exit
  %sub = sub i32 %length.addr.021, %1
  %add33.i = add i32 %dbi.022, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add33.i)
  %cmp34.not.i = icmp ne i32 %call.i, %add33.i
  %add36.i = zext i1 %cmp34.not.i to i32
  %spec.select = add i32 %iov_cnt.020, %add36.i
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %dbi.022 = phi i32 [ -2, %for.body.lr.ph ], [ %call.i, %for.cond.for.body_crit_edge ]
  %length.addr.021 = phi i32 [ %length, %for.body.lr.ph ], [ %sub, %for.cond.for.body_crit_edge ]
  %iov_cnt.020 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.cond.for.body_crit_edge ]
  %8 = call i32 @llvm.umin.i32(i32 %length.addr.021, i32 %1)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #17
  %9 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data_pages.i, ptr %xas.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %7, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  %sub.i = add nuw i32 %8, 4095
  %div74.i = lshr i32 %sub.i, 12
  %13 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_bitmap.i, align 4
  %15 = ptrtoint ptr %dbi_thresh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbi_thresh.i, align 8
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef %14, i32 noundef %16) #17
  %17 = ptrtoint ptr %dbi_thresh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dbi_thresh.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %18)
  %cmp.i = icmp eq i32 %call.i, %18
  br i1 %cmp.i, label %for.body.tcmu_get_empty_block.exit.thread_crit_edge, label %if.end.i

for.body.tcmu_get_empty_block.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_get_empty_block.exit.thread

if.end.i:                                         ; preds = %for.body
  %19 = ptrtoint ptr %data_pages_per_blk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_pages_per_blk.i, align 4
  %mul.i = mul i32 %20, %call.i
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %2, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 3 to ptr), ptr %4, align 4
  %23 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !563
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.end.i.for.cond.i.preheader_crit_edge, label %land.lhs.true.i.i

if.end.i.for.cond.i.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.preheader

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.preheader

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 696, ptr noundef nonnull @.str.73) #17
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.preheader_crit_edge, %if.end.i.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %xas_next.exit.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %cnt.0.i = phi i32 [ %inc.i, %xas_next.exit.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %and.i.i.i, 0
  %tobool1.not.i.i.i = icmp eq ptr %28, null
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.not.i.i.i
  br i1 %spec.select.i.i.i, label %for.cond.i.if.then.i77.i_crit_edge, label %lor.lhs.false.i.i, !prof !547

for.cond.i.if.then.i77.i_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i77.i

lor.lhs.false.i.i:                                ; preds = %for.cond.i
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i76.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i76.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.if.then.i77.i_crit_edge, !prof !548

lor.lhs.false.i.i.if.then.i77.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i77.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %33)
  %cmp.i.i = icmp eq i8 %33, 63
  br i1 %cmp.i.i, label %lor.rhs.i.i.if.then.i77.i_crit_edge, label %if.end.i.i, !prof !547

lor.rhs.i.i.if.then.i77.i_crit_edge:              ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i77.i

if.then.i77.i:                                    ; preds = %lor.rhs.i.i.if.then.i77.i_crit_edge, %lor.lhs.false.i.i.if.then.i77.i_crit_edge, %for.cond.i.if.then.i77.i_crit_edge
  %call5.i.i = call ptr @__xas_next(ptr noundef nonnull %xas.i) #17
  br label %xas_next.exit.i

if.end.i.i:                                       ; preds = %lor.rhs.i.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %2, align 4
  %inc7.i.i = add i8 %33, 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %inc7.i.i, ptr %3, align 2
  %37 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xas.i, align 4
  %conv9.i.i = zext i8 %inc7.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.xa_node, ptr %28, i32 0, i32 7, i32 %conv9.i.i
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i20.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.xas_next.exit.i_crit_edge

if.end.i.i.xas_next.exit.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xas_next.exit.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %call4.i.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.xas_next.exit.i_crit_edge

lor.lhs.false.i.i.i.xas_next.exit.i_crit_edge:    ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xas_next.exit.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call6.i.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true.i.i.i.xas_next.exit.i_crit_edge, label %land.lhs.true8.i.i.i

land.lhs.true.i.i.i.xas_next.exit.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xas_next.exit.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b13.i.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i.i, label %land.lhs.true8.i.i.i.xas_next.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true8.i.i.i.xas_next.exit.i_crit_edge:   ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xas_next.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.74, i32 noundef 1183, ptr noundef nonnull @.str.75) #17
  br label %xas_next.exit.i

xas_next.exit.i:                                  ; preds = %if.then.i.i.i, %land.lhs.true8.i.i.i.xas_next.exit.i_crit_edge, %land.lhs.true.i.i.i.xas_next.exit.i_crit_edge, %lor.lhs.false.i.i.i.xas_next.exit.i_crit_edge, %if.end.i.i.xas_next.exit.i_crit_edge, %if.then.i77.i
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.then.i77.i ], [ %40, %if.end.i.i.xas_next.exit.i_crit_edge ], [ %40, %lor.lhs.false.i.i.i.xas_next.exit.i_crit_edge ], [ %40, %land.lhs.true.i.i.i.xas_next.exit.i_crit_edge ], [ %40, %land.lhs.true8.i.i.i.xas_next.exit.i_crit_edge ], [ %40, %if.then.i.i.i ]
  %tobool.not.i = icmp ne ptr %retval.0.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %div74.i)
  %cmp3.i = icmp ult i32 %cnt.0.i, %div74.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp3.i, i1 false
  %inc.i = add nuw nsw i32 %cnt.0.i, 1
  br i1 %or.cond.i, label %xas_next.exit.i.for.cond.i_crit_edge, label %for.end.i

xas_next.exit.i.for.cond.i_crit_edge:             ; preds = %xas_next.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

for.end.i:                                        ; preds = %xas_next.exit.i
  %call.i79.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i79.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i82.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true.i82.i:                              ; preds = %for.end.i
  %call1.i80.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call1.i80.i, 0
  br i1 %tobool.not.i81.i, label %land.lhs.true.i82.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i84.i

land.lhs.true.i82.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i84.i:                             ; preds = %land.lhs.true.i82.i
  %.b4.i83.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83.i, label %land.lhs.true2.i84.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i85.i

land.lhs.true2.i84.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i84.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit.i

if.then.i85.i:                                    ; preds = %land.lhs.true2.i84.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 724, ptr noundef nonnull @.str.76) #17
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i85.i, %land.lhs.true2.i84.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i82.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !564
  %41 = call i32 @llvm.read_register.i32(metadata !533) #17
  %and.i.i.i.i.i86.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i86.i to ptr
  %preempt_count.i.i.i.i87.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i87.i, align 4
  %sub.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i87.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  br i1 %cmp3.i, label %rcu_read_unlock.exit.i.for.body6.i_crit_edge, label %rcu_read_unlock.exit.i.for.end18.i_crit_edge

rcu_read_unlock.exit.i.for.end18.i_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end18.i

rcu_read_unlock.exit.i.for.body6.i_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %rcu_read_unlock.exit.i.for.body6.i_crit_edge
  %i.092.i = phi i32 [ %inc17.i, %for.inc.i.for.body6.i_crit_edge ], [ %cnt.0.i, %rcu_read_unlock.exit.i.for.body6.i_crit_edge ]
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3328, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool8.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool8.not.i, label %for.body6.i.for.end18.i_crit_edge, label %if.end10.i

for.body6.i.for.end18.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end18.i

if.end10.i:                                       ; preds = %for.body6.i
  %add12.i = add i32 %i.092.i, %mul.i
  %call13.i = call ptr @xa_store(ptr noundef %data_pages.i, i32 noundef %add12.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef 3072) #17
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %for.inc.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #17
  br label %for.end18.i

for.inc.i:                                        ; preds = %if.end10.i
  %inc17.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, %div74.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end18.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6.i

for.inc.i.for.end18.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.inc.i.for.end18.i_crit_edge, %if.then15.i, %for.body6.i.for.end18.i_crit_edge, %rcu_read_unlock.exit.i.for.end18.i_crit_edge
  %i.090.i = phi i32 [ %i.092.i, %if.then15.i ], [ %cnt.0.i, %rcu_read_unlock.exit.i.for.end18.i_crit_edge ], [ %i.092.i, %for.body6.i.for.end18.i_crit_edge ], [ %div74.i, %for.inc.i.for.end18.i_crit_edge ]
  %sub19.i = sub i32 %i.090.i, %cnt.0.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !565
  call void @llvm.prefetch.p0(ptr nonnull @global_page_count, i32 1, i32 3, i32 1) #17
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @global_page_count, ptr nonnull @global_page_count, i32 %sub19.i, ptr nonnull elementtype(i32) @global_page_count) #17, !srcloc !566
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !567
  %46 = load i32, ptr @tcmu_global_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %46)
  %cmp21.i = icmp sgt i32 %asmresult.i.i.i.i, %46
  br i1 %cmp21.i, label %if.then22.i, label %for.end18.i.if.end24.i_crit_edge

for.end18.i.if.end24.i_crit_edge:                 ; preds = %for.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24.i

if.then22.i:                                      ; preds = %for.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i88.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 0) #17
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %for.end18.i.if.end24.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.090.i)
  %tobool25.not.i = icmp eq i32 %i.090.i, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end29.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %48 = ptrtoint ptr %dbi_max.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dbi_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %49)
  %cmp26.i = icmp ugt i32 %call.i, %49
  br i1 %cmp26.i, label %if.then27.i, label %land.lhs.true.i.if.end29.i_crit_edge

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %dbi_max.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i, ptr %dbi_max.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.end24.i.if.end29.i_crit_edge
  %51 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_bitmap.i, align 4
  call void @_set_bit(i32 noundef %call.i, ptr noundef %52) #17
  %53 = ptrtoint ptr %dbi31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dbi31.i, align 4
  %55 = ptrtoint ptr %dbi_cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dbi_cur.i, align 4
  %inc32.i = add i32 %56, 1
  store i32 %inc32.i, ptr %dbi_cur.i, align 4
  %arrayidx.i = getelementptr i32, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.090.i, i32 %div74.i)
  %cmp38.i = icmp eq i32 %i.090.i, %div74.i
  br i1 %cmp38.i, label %tcmu_get_empty_block.exit, label %if.end29.i.tcmu_get_empty_block.exit.thread_crit_edge

if.end29.i.tcmu_get_empty_block.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_get_empty_block.exit.thread

tcmu_get_empty_block.exit.thread:                 ; preds = %if.end29.i.tcmu_get_empty_block.exit.thread_crit_edge, %for.body.tcmu_get_empty_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #17
  br label %cleanup

tcmu_get_empty_block.exit:                        ; preds = %if.end29.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %tcmu_get_empty_block.exit.cleanup_crit_edge, label %for.cond

tcmu_get_empty_block.exit.cleanup_crit_edge:      ; preds = %tcmu_get_empty_block.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %tcmu_get_empty_block.exit.cleanup_crit_edge, %tcmu_get_empty_block.exit.thread, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %tcmu_get_empty_block.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -1, %tcmu_get_empty_block.exit.cleanup_crit_edge ], [ %spec.select, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_vma_open(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_vma_open.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_vma_open, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !544

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_vma_open.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.88) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !546
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !547

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !548

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #17
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_vma_close(ptr nocapture noundef readonly %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_vma_close.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_vma_close, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !544

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_vma_close.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.83) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref = getelementptr inbounds %struct.tcmu_dev, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !549
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #17, !srcloc !550
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !548

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #17
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !551
  tail call fastcc void @tcmu_dev_kref_release(ptr noundef %kref) #17
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_vma_fault(ptr nocapture noundef %vmf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i = icmp ult i32 %5, 5
  br i1 %cmp.i, label %if.then.i, label %entry.cleanup13_crit_edge

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup13

if.then.i:                                        ; preds = %entry
  %size.i = getelementptr %struct.tcmu_dev, ptr %3, i32 0, i32 7, i32 3, i32 %5, i32 3
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.i = icmp eq i32 %7, 0
  br i1 %cmp2.i, label %if.then.i.cleanup13_crit_edge, label %if.end

if.then.i.cleanup13_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup13

if.end:                                           ; preds = %if.then.i
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %8 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgoff, align 4
  %sub = sub i32 %9, %5
  %shl = shl i32 %sub, 12
  %data_off = getelementptr inbounds %struct.tcmu_dev, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_off, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %11)
  %cmp2 = icmp ult i32 %shl, %11
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %addr4 = getelementptr %struct.tcmu_dev, ptr %3, i32 0, i32 7, i32 3, i32 %5, i32 1
  %12 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr4, align 4
  %14 = inttoptr i32 %13 to ptr
  %add.ptr = getelementptr i8, ptr %14, i32 %shl
  %call5 = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #17
  br label %if.end11

if.else:                                          ; preds = %if.end
  %sub7 = sub i32 %shl, %11
  %div31 = lshr i32 %sub7, 12
  %cmdr_lock.i = getelementptr inbounds %struct.tcmu_dev, ptr %3, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock.i, i32 noundef 0) #17
  %data_pages.i = getelementptr inbounds %struct.tcmu_dev, ptr %3, i32 0, i32 24
  %call.i = tail call ptr @xa_load(ptr noundef %data_pages.i, i32 noundef %div31) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %tcmu_try_get_data_page.exit.thread, label %tcmu_try_get_data_page.exit, !prof !547

tcmu_try_get_data_page.exit.thread:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %name.i = getelementptr inbounds %struct.tcmu_dev, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %div31, ptr noundef %16) #21
  tail call void @mutex_unlock(ptr noundef %cmdr_lock.i) #17
  br label %cleanup13

tcmu_try_get_data_page.exit:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %cmdr_lock.i) #17
  br label %if.end11

if.end11:                                         ; preds = %tcmu_try_get_data_page.exit, %if.then3
  %page.0 = phi ptr [ %call5, %if.then3 ], [ %call.i, %tcmu_try_get_data_page.exit ]
  %17 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !548

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.end.i.i ]
  %21 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  %22 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %23, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !547

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.86) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #17, !srcloc !568
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #17
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #17, !srcloc !569
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@tcmu_vma_fault, %if.then.i.i.i.i)) #17
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !544

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__page_ref_mod(ptr noundef %21, i32 noundef 1) #17
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page12 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %25 = ptrtoint ptr %page12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %page.0, ptr %page12, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %get_page.exit, %tcmu_try_get_data_page.exit.thread, %if.then.i.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.1 = phi i32 [ 0, %get_page.exit ], [ 2, %tcmu_try_get_data_page.exit.thread ], [ 2, %entry.cleanup13_crit_edge ], [ 2, %if.then.i.cleanup13_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_netlink_event_init(ptr nocapture noundef readonly %udev, i32 noundef %cmd, ptr nocapture noundef writeonly %buf, ptr nocapture noundef writeonly %hdr) unnamed_addr #2 align 64 {
entry:
  %tmp.i37 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %cmd to i8
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @tcmu_genl_family, i32 noundef 0, i8 noundef zeroext %conv) #17
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_skb_crit_edge, label %if.end4

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_skb

if.end4:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @strlen(ptr noundef %1) #24
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef %add.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %if.end4.free_skb_crit_edge, label %if.end8

if.end4.free_skb_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_skb

if.end8:                                          ; preds = %if.end4
  %uio_info = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 7
  %2 = ptrtoint ptr %uio_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uio_info, align 8
  %minor = getelementptr inbounds %struct.uio_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minor, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #17
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i36 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp11 = icmp slt i32 %call.i36, 0
  br i1 %cmp11, label %if.end8.free_skb_crit_edge, label %if.end14

if.end8.free_skb_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_skb

if.end14:                                         ; preds = %if.end8
  %dev_index = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_index, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i37) #17
  %9 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i37, align 4
  %call.i38 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i37) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp16 = icmp slt i32 %call.i38, 0
  br i1 %cmp16, label %if.end14.free_skb_crit_edge, label %if.end19

if.end14.free_skb_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_skb

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i.i, ptr %buf, align 4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %hdr, align 4
  br label %cleanup

free_skb:                                         ; preds = %if.end14.free_skb_crit_edge, %if.end8.free_skb_crit_edge, %if.end4.free_skb_crit_edge, %if.end.free_skb_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end4.free_skb_crit_edge ], [ %call.i36, %if.end8.free_skb_crit_edge ], [ %call.i38, %if.end14.free_skb_crit_edge ], [ -12, %if.end.free_skb_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #17
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free_skb ], [ %call.i38, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_netlink_event_send(ptr noundef %udev, i32 noundef %cmd, ptr noundef %skb, ptr noundef %msg_header) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1.i = getelementptr i8, ptr %msg_header, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %curr_nl_cmd.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34
  %3 = load i8, ptr @tcmu_kern_cmd_reply_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %nl_reply_supported.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 36
  %4 = ptrtoint ptr %nl_reply_supported.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nl_reply_supported.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcmu_nl_cmd_mutex, i32 noundef 0) #17
  %6 = load i8, ptr @tcmu_netlink_blocked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp eq i8 %6, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  %name.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %cmd, ptr noundef %8) #21
  br label %if.then

if.end5.i:                                        ; preds = %if.end2.i
  %cmd6.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 3
  %9 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.not.i = icmp eq i32 %10, 0
  br i1 %cmp7.not.i, label %if.end16.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  %11 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd6.i, align 4
  %name14.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  %13 = ptrtoint ptr %name14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name14.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %12, ptr noundef %14) #21
  br label %if.then

if.end16.i:                                       ; preds = %if.end5.i
  %15 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 0, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 72)
  %17 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cmd, ptr %cmd6.i, align 4
  %udev18.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 2
  %18 = ptrtoint ptr %udev18.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %udev, ptr %udev18.i, align 4
  %19 = ptrtoint ptr %curr_nl_cmd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %curr_nl_cmd.i, align 4
  tail call void @__init_swait_queue_head(ptr noundef %15, ptr noundef nonnull @.str.99, ptr noundef nonnull @init_completion.__key) #17
  %nl_list.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 1
  %20 = ptrtoint ptr %nl_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %nl_list.i, ptr %nl_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %nl_list.i, ptr %prev.i.i, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tcmu_nl_cmd_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %nl_list.i, ptr noundef %22, ptr noundef nonnull @tcmu_nl_cmd_list) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end16.i.list_add_tail.exit.i_crit_edge

if.end16.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #19
  store ptr %nl_list.i, ptr getelementptr inbounds (%struct.list_head, ptr @tcmu_nl_cmd_list, i32 0, i32 1), align 4
  %23 = ptrtoint ptr %nl_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tcmu_nl_cmd_list, ptr %nl_list.i, align 4
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %nl_list.i, ptr %22, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end16.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  br label %if.end

if.then:                                          ; preds = %if.then8.i, %if.then4.i
  %retval.0.i = phi i32 [ -11, %if.then4.i ], [ -16, %if.then8.i ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #17
  br label %cleanup

if.end:                                           ; preds = %list_add_tail.exit.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @genlmsg_multicast_allns(ptr noundef nonnull @tcmu_genl_family, ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #17
  %26 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %call1, label %if.end.if.else_crit_edge [
    i32 0, label %if.end.if.then4_crit_edge
    i32 -3, label %land.lhs.true
  ]

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp3 = icmp eq i32 %cmd, 1
  br i1 %cmp3, label %land.lhs.true.if.then4_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

land.lhs.true.if.then4_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then4

if.then4:                                         ; preds = %land.lhs.true.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %27 = load i8, ptr @tcmu_kern_cmd_reply_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i17 = icmp eq i8 %27, 0
  br i1 %tobool.not.i17, label %if.then4.cleanup_crit_edge, label %if.end.i20

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i20:                                       ; preds = %if.then4
  %nl_reply_supported.i18 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 36
  %28 = ptrtoint ptr %nl_reply_supported.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nl_reply_supported.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i19 = icmp slt i32 %29, 1
  br i1 %cmp.i19, label %if.end.i20.cleanup_crit_edge, label %do.body.i

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_wait_genl_cmd_reply.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_netlink_event_send, %if.then6.i)) #17
          to label %do.end.i [label %if.then6.i], !srcloc !544

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_wait_genl_cmd_reply.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.101) #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  tail call void @wait_for_completion(ptr noundef %curr_nl_cmd.i) #17
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcmu_nl_cmd_mutex, i32 noundef 0) #17
  %cmd.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 3
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cmd.i, align 4
  %status.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 4
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %33 = load i8, ptr @tcmu_kern_cmd_reply_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i23 = icmp eq i8 %33, 0
  br i1 %tobool.not.i23, label %if.else.cleanup_crit_edge, label %if.end.i26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i26:                                       ; preds = %if.else
  %nl_reply_supported.i24 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 36
  %34 = ptrtoint ptr %nl_reply_supported.i24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nl_reply_supported.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i25 = icmp slt i32 %35, 1
  br i1 %cmp.i25, label %if.end.i26.cleanup_crit_edge, label %if.end2.i29

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2.i29:                                      ; preds = %if.end.i26
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcmu_nl_cmd_mutex, i32 noundef 0) #17
  %nl_list.i27 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 1
  %call.i.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %nl_list.i27) #17
  br i1 %call.i.i.i28, label %if.end.i.i.i30, label %if.end2.i29.list_del.exit.i_crit_edge

if.end2.i29.list_del.exit.i_crit_edge:            ; preds = %if.end2.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i30:                                   ; preds = %if.end2.i29
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 34, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %nl_list.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nl_list.i27, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i30, %if.end2.i29.list_del.exit.i_crit_edge
  %42 = call ptr @memset(ptr %curr_nl_cmd.i, i32 0, i32 76)
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i, %if.end.i26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end.i, %if.end.i20.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %32, %do.end.i ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.i20.cleanup_crit_edge ], [ %call1, %if.else.cleanup_crit_edge ], [ %call1, %if.end.i26.cleanup_crit_edge ], [ %call1, %list_del.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genlmsg_multicast_allns(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_blocks_release(ptr noundef %udev, i32 noundef %first, i32 noundef %last) unnamed_addr #2 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #17
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %data_pages = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 24
  %6 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data_pages, ptr %xas, align 4
  %data_pages_per_blk = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 25
  %7 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_pages_per_blk, align 4
  %mul = mul i32 %8, %first
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %data_pages) #17
  %add = add i32 %last, 1
  %14 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_pages_per_blk, align 4
  %mul3 = mul i32 %15, %add
  %sub = add i32 %mul3, -1
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %sub) #17
  %tobool.not19 = icmp eq ptr %call, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %xas_next_entry.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pages_freed.021 = phi i32 [ %inc, %xas_next_entry.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %page.020 = phi ptr [ %retval.0.i, %xas_next_entry.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call4 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #17
  call void @__free_pages(ptr noundef nonnull %page.020, i32 noundef 0) #17
  %inc = add i32 %pages_freed.021, 1
  %16 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_pages_per_blk, align 4
  %mul7 = mul i32 %17, %add
  %sub8 = add i32 %mul7, -1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %19, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %for.body.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i, !prof !547

for.body.cleanup.sink.split.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %for.body
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, !prof !548

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 2
  %conv2.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %0, align 4
  %and.i = and i32 %26, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %and.i, %conv2.i
  br i1 %cmp.not.i, label %lor.rhs.i.do.body.i_crit_edge, label %lor.rhs.i.cleanup.sink.split.i_crit_edge, !prof !548

lor.rhs.i.cleanup.sink.split.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end44.i.do.body.i_crit_edge, %lor.rhs.i.do.body.i_crit_edge
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub8)
  %cmp8.not.i = icmp ult i32 %28, %sub8
  br i1 %cmp8.not.i, label %if.end18.i, label %do.body.i.cleanup.sink.split.i_crit_edge, !prof !548

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %do.body.i
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %30)
  %cmp21.i = icmp eq i8 %30, 63
  br i1 %cmp21.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end31.i, !prof !547

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %if.end18.i
  %conv20.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xas, align 4
  %add.i = add nuw nsw i32 %conv20.i, 1
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %19, i32 0, i32 7, i32 %add.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i73.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i73.i, label %lor.lhs.false.i.i, label %if.end31.i.xa_entry.exit.i_crit_edge

if.end31.i.xa_entry.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xa_entry.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i
  %call4.i.i = call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge

lor.lhs.false.i.i.xa_entry.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xa_entry.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xa_entry.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xa_entry.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xa_entry.exit.i_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xa_entry.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.74, i32 noundef 1183, ptr noundef nonnull @.str.75) #17
  br label %xa_entry.exit.i

xa_entry.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge, %if.end31.i.xa_entry.exit.i_crit_edge
  %35 = ptrtoint ptr %34 to i32
  %and.i74.i = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74.i)
  %cmp.i.i = icmp eq i32 %and.i74.i, 2
  br i1 %cmp.i.i, label %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, label %if.end44.i, !prof !547

xa_entry.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

if.end44.i:                                       ; preds = %xa_entry.exit.i
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %2, align 2
  %inc.i = add i8 %37, 1
  store i8 %inc.i, ptr %2, align 2
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  %inc47.i = add i32 %39, 1
  store i32 %inc47.i, ptr %0, align 4
  %tobool48.not.i = icmp eq ptr %34, null
  br i1 %tobool48.not.i, label %if.end44.i.do.body.i_crit_edge, label %if.end44.i.xas_next_entry.exit_crit_edge

if.end44.i.xas_next_entry.exit_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %xas_next_entry.exit

if.end44.i.do.body.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i

cleanup.sink.split.i:                             ; preds = %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, %if.end18.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %lor.rhs.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %for.body.cleanup.sink.split.i_crit_edge
  %call43.i = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %sub8) #17
  br label %xas_next_entry.exit

xas_next_entry.exit:                              ; preds = %cleanup.sink.split.i, %if.end44.i.xas_next_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %call43.i, %cleanup.sink.split.i ], [ %34, %if.end44.i.xas_next_entry.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xas_next_entry.exit.for.end_crit_edge, label %xas_next_entry.exit.for.body_crit_edge

xas_next_entry.exit.for.body_crit_edge:           ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

xas_next_entry.exit.for.end_crit_edge:            ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %xas_next_entry.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pages_freed.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %xas_next_entry.exit.for.end_crit_edge ]
  %40 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %41) #17
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  call void @llvm.prefetch.p0(ptr nonnull @global_page_count, i32 1, i32 3, i32 1) #17
  %42 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @global_page_count, ptr nonnull @global_page_count, i32 %pages_freed.0.lcssa, ptr nonnull elementtype(i32) @global_page_count) #17, !srcloc !570
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #17
  ret i32 %pages_freed.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_dev_call_rcu(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %p, i32 -3792
  %name = getelementptr i8, ptr %p, i32 36
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #17
  %name4 = getelementptr i8, ptr %p, i32 20
  %2 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name4, align 4
  tail call void @kfree(ptr noundef %3) #17
  tail call void @kfree(ptr noundef %add.ptr3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_u64(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @passthrough_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_queue_cmd(ptr noundef %se_cmd) #2 align 64 {
entry:
  %scsi_ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev1 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scsi_ret) #17
  %2 = ptrtoint ptr %scsi_ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 13, ptr %scsi_ret, align 4
  %3 = load ptr, ptr @tcmu_cmd_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3328) #17
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %queue_entry.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %queue_entry.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %queue_entry.i, ptr %queue_entry.i, align 8
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue_entry.i, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %se_cmd, ptr %call.i.i, align 8
  %tcmu_dev.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %tcmu_dev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %tcmu_dev.i, align 4
  %data_blk_size.i.i = getelementptr i8, ptr %1, i32 4312
  %8 = ptrtoint ptr %data_blk_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_blk_size.i.i, align 8
  %data_length.i.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %10 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_length.i.i, align 4
  %add.i.i = add i32 %9, -1
  %sub.i.i = add i32 %add.i.i, %11
  %div.i.i = udiv i32 %sub.i.i, %9
  %dbi_cnt.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %dbi_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div.i.i, ptr %dbi_cnt.i.i, align 4
  %se_cmd_flags.i.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %13 = ptrtoint ptr %se_cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %se_cmd_flags.i.i, align 8
  %and.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.tcmu_cmd_set_block_cnts.exit.i_crit_edge, label %do.body.i.i

if.end.i.tcmu_cmd_set_block_cnts.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_set_block_cnts.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  %t_bidi_data_sg.i.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 44
  %15 = ptrtoint ptr %t_bidi_data_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t_bidi_data_sg.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i.i, label %do.body.i.i.do.body8.i.i_crit_edge, label %land.rhs.i.i, !prof !547

do.body.i.i.do.body8.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %t_bidi_data_nents.i.i = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 45
  %17 = ptrtoint ptr %t_bidi_data_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_bidi_data_nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.i.i = icmp eq i32 %18, 0
  br i1 %tobool3.i.i, label %land.rhs.i.i.do.body8.i.i_crit_edge, label %land.rhs.i.i.for.body.i.i_crit_edge, !prof !547

land.rhs.i.i.for.body.i.i_crit_edge:              ; preds = %land.rhs.i.i
  br label %for.body.i.i

land.rhs.i.i.do.body8.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %land.rhs.i.i.do.body8.i.i_crit_edge, %do.body.i.i.do.body8.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/target_core_user.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 585, 0\0A.popsection", ""() #17, !srcloc !571
  unreachable

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %land.rhs.i.i.for.body.i.i_crit_edge
  %len.044.i.i = phi i32 [ %add16.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %land.rhs.i.i.for.body.i.i_crit_edge ]
  %i.043.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %land.rhs.i.i.for.body.i.i_crit_edge ]
  %length.i.i = getelementptr %struct.scatterlist, ptr %16, i32 %i.043.i.i, i32 2
  %19 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i.i, align 4
  %add16.i.i = add i32 %20, %len.044.i.i
  %inc.i.i = add nuw i32 %i.043.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %18
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sub18.i.i = add i32 %add16.i.i, %add.i.i
  %div19.i.i = udiv i32 %sub18.i.i, %9
  %dbi_bidi_cnt.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %dbi_bidi_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div19.i.i, ptr %dbi_bidi_cnt.i.i, align 8
  %add22.i.i = add i32 %div19.i.i, %div.i.i
  %22 = ptrtoint ptr %dbi_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add22.i.i, ptr %dbi_cnt.i.i, align 4
  %data_len_bidi.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %data_len_bidi.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add16.i.i, ptr %data_len_bidi.i.i, align 4
  br label %tcmu_cmd_set_block_cnts.exit.i

tcmu_cmd_set_block_cnts.exit.i:                   ; preds = %for.end.i.i, %if.end.i.tcmu_cmd_set_block_cnts.exit.i_crit_edge
  %24 = ptrtoint ptr %dbi_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dbi_cnt.i.i, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4) #17
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !547

kcalloc.exit.thread.i:                            ; preds = %tcmu_cmd_set_block_cnts.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %dbi21.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %dbi21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dbi21.i, align 8
  br label %if.then6.i

if.end7.i.i.i:                                    ; preds = %tcmu_cmd_set_block_cnts.exit.i
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3328) #20
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %dbi.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i.i, ptr %dbi.i, align 8
  %tobool5.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.i.if.then6.i_crit_edge, label %if.end

if.end7.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end7.i.i.i.if.then6.i_crit_edge, %kcalloc.exit.thread.i
  %31 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %call.i.i) #17
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i.i
  %cmdr_lock = getelementptr i8, ptr %1, i32 4136
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 34
  %32 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transport_state, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @queue_cmd_ring(ptr noundef nonnull %call.i.i, ptr noundef nonnull %scsi_ret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %phi.cmp = icmp slt i32 %call4, 0
  br i1 %phi.cmp, label %if.then3.if.then6_crit_edge, label %if.else

if.then3.if.then6_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %if.then3.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %dbi.i20 = getelementptr inbounds %struct.tcmu_cmd, ptr %call.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %dbi.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dbi.i20, align 8
  tail call void @kfree(ptr noundef %35) #17
  %36 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %call.i.i) #17
  br label %if.end7

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %priv = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 48
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %priv, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  %38 = ptrtoint ptr %scsi_ret to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scsi_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.end7 ], [ 10, %if.then6.i ], [ 10, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scsi_ret) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_block_dev_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %item, i32 2372
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %.str.8..str.7 = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef nonnull %.str.8..str.7)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_block_dev_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %item, i32 -1448
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !543
  %dev_flags.i = getelementptr i8, ptr %item, i32 -1424
  %1 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp11 = icmp ugt i8 %4, 1
  br i1 %cmp11, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %4 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, i32 noundef %conv) #21
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cmdr_lock.i = getelementptr i8, ptr %item, i32 2704
  call void @mutex_lock_nested(ptr noundef %cmdr_lock.i, i32 noundef 0) #17
  %flags.i = getelementptr i8, ptr %item, i32 2372
  br i1 %tobool.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #17
  call void @mutex_unlock(ptr noundef %cmdr_lock.i) #17
  br label %cleanup

if.else:                                          ; preds = %if.end20
  %call.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.tcmu_block_dev.exit_crit_edge

if.else.tcmu_block_dev.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_block_dev.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = call fastcc zeroext i1 @tcmu_handle_completions(ptr noundef %add.ptr3) #17
  call fastcc void @run_qfull_queue(ptr noundef %add.ptr3, i1 noundef zeroext true) #17
  br label %tcmu_block_dev.exit

tcmu_block_dev.exit:                              ; preds = %if.end.i, %if.else.tcmu_block_dev.exit_crit_edge
  call void @mutex_unlock(ptr noundef %cmdr_lock.i) #17
  br label %cleanup

cleanup:                                          ; preds = %tcmu_block_dev.exit, %if.then21, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end ], [ %call8, %if.end.cleanup_crit_edge ], [ %count, %tcmu_block_dev.exit ], [ %count, %if.then21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_reset_ring_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %item, i32 -1448
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !543
  %dev_flags.i = getelementptr i8, ptr %item, i32 -1424
  %1 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %.off = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %4 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %conv) #21
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @tcmu_reset_ring(ptr noundef %add.ptr3, i8 noundef zeroext %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end19 ], [ %count, %if.end23 ], [ -22, %do.end ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_reset_ring(ptr noundef %udev, i8 noundef zeroext %err_level) unnamed_addr #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #17
  %cmdr_lock = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %commands = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 27
  %call = call ptr @xa_find(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool.not140 = icmp eq ptr %call, null
  br i1 %tobool.not140, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %err_level)
  %cmp = icmp eq i8 %err_level, 1
  %. = select i1 %cmp, i8 8, i8 2
  br label %do.body

do.body:                                          ; preds = %tcmu_cmd_free_data.exit.do.body_crit_edge, %do.body.lr.ph
  %cmd.0141 = phi ptr [ %call, %do.body.lr.ph ], [ %call61, %tcmu_cmd_free_data.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_reset_ring.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_reset_ring, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !544

if.then:                                          ; preds = %do.body
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 3
  %1 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cmd_id, align 4
  %conv = zext i16 %2 to i32
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %flags = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 10
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %cond.false, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool9.not, ptr @.str.170, ptr @.str.169
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond10 = phi ptr [ %cond, %cond.false ], [ @.str.168, %if.then.cond.end_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_reset_ring.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.167, i32 noundef %conv, ptr noundef %4, ptr noundef nonnull %cond10) #17
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  %10 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i, align 4
  %call12 = call ptr @xa_erase(ptr noundef %commands, i32 noundef %11) #17
  %flags13 = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 10
  %12 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags13, align 4
  %and1.i116 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i116)
  %tobool15.not = icmp eq i32 %and1.i116, 0
  br i1 %tobool15.not, label %land.lhs.true, label %do.end.if.end59_crit_edge

do.end.if.end59_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

land.lhs.true:                                    ; preds = %do.end
  %14 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags13, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then19:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %cmd.0141 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd.0141, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %do.end38, label %if.then19.if.end44_crit_edge, !prof !547

if.then19.if.end44_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

do.end38:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2355, i32 noundef 9, ptr noundef null) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.then19.if.end44_crit_edge
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 2
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_entry) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end44.list_del_init.exit_crit_edge

if.end44.list_del_init.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queue_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end44.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %queue_entry, ptr %queue_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %queue_entry, ptr %prev.i3.i, align 4
  %27 = ptrtoint ptr %cmd.0141 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd.0141, align 4
  %priv = getelementptr inbounds %struct.se_cmd, ptr %28, i32 0, i32 48
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %priv, align 4
  %30 = load ptr, ptr %cmd.0141, align 4
  call void @target_complete_cmd(ptr noundef %30, i8 noundef zeroext %.) #17
  br label %if.end59

if.end59:                                         ; preds = %list_del_init.exit, %land.lhs.true.if.end59_crit_edge, %do.end.if.end59_crit_edge
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 4
  %31 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4.not.i = icmp eq i32 %32, 0
  br i1 %cmp4.not.i, label %if.end59.tcmu_cmd_free_data.exit_crit_edge, label %for.body.lr.ph.i

if.end59.tcmu_cmd_free_data.exit_crit_edge:       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

for.body.lr.ph.i:                                 ; preds = %if.end59
  %tcmu_dev.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 1
  %33 = ptrtoint ptr %tcmu_dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcmu_dev.i, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 7
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %34, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbi.i, align 4
  %arrayidx.i = getelementptr i32, ptr %36, i32 %i.05.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %39 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data_bitmap.i, align 4
  call void @_clear_bit(i32 noundef %38, ptr noundef %40) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.body.i.tcmu_cmd_free_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.tcmu_cmd_free_data.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

tcmu_cmd_free_data.exit:                          ; preds = %for.body.i.tcmu_cmd_free_data.exit_crit_edge, %if.end59.tcmu_cmd_free_data.exit_crit_edge
  %dbi.i122 = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd.0141, i32 0, i32 7
  %41 = ptrtoint ptr %dbi.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dbi.i122, align 4
  call void @kfree(ptr noundef %42) #17
  %43 = load ptr, ptr @tcmu_cmd_cache, align 4
  call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %cmd.0141) #17
  %call61 = call ptr @xa_find_after(ptr noundef %commands, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #17
  %tobool.not = icmp eq ptr %call61, null
  br i1 %tobool.not, label %tcmu_cmd_free_data.exit.for.end_crit_edge, label %tcmu_cmd_free_data.exit.do.body_crit_edge

tcmu_cmd_free_data.exit.do.body_crit_edge:        ; preds = %tcmu_cmd_free_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

tcmu_cmd_free_data.exit.for.end_crit_edge:        ; preds = %tcmu_cmd_free_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %tcmu_cmd_free_data.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mb_addr = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 10
  %44 = ptrtoint ptr %mb_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mb_addr, align 8
  %46 = ptrtoint ptr %45 to i32
  %and.i = and i32 %46, 4095
  %sub.i = add nuw nsw i32 %and.i, 127
  %or.i = or i32 %sub.i, 4095
  %add1.i = add nuw nsw i32 %or.i, 1
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr.i = getelementptr i8, ptr %45, i32 %idx.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end
  %start.011.i = phi ptr [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %for.end ]
  %size.addr.010.i = phi i32 [ %sub3.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %for.end ]
  %call.i = call ptr @vmalloc_to_page(ptr noundef %start.011.i) #17
  call void @flush_dcache_page(ptr noundef %call.i) #17
  %add.ptr2.i = getelementptr i8, ptr %start.011.i, i32 4096
  %sub3.i = add i32 %size.addr.010.i, -4096
  %tobool.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool.not.i, label %tcmu_flush_dcache_range.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

tcmu_flush_dcache_range.exit:                     ; preds = %while.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_reset_ring.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_reset_ring, %if.then74)) #17
          to label %do.end77 [label %if.then74], !srcloc !544

if.then74:                                        ; preds = %tcmu_flush_dcache_range.exit
  call void @__sanitizer_cov_trace_pc() #19
  %cmdr_last_cleaned = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 13
  %47 = ptrtoint ptr %cmdr_last_cleaned to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmdr_last_cleaned, align 4
  %cmd_tail = getelementptr inbounds %struct.tcmu_mailbox, ptr %45, i32 0, i32 6
  %49 = ptrtoint ptr %cmd_tail to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_tail, align 64
  %cmd_head = getelementptr inbounds %struct.tcmu_mailbox, ptr %45, i32 0, i32 4
  %51 = ptrtoint ptr %cmd_head to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_head, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_reset_ring.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.171, i32 noundef %48, i32 noundef %50, i32 noundef %52) #17
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %tcmu_flush_dcache_range.exit
  %cmdr_last_cleaned78 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 13
  %53 = ptrtoint ptr %cmdr_last_cleaned78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %cmdr_last_cleaned78, align 4
  %cmd_tail79 = getelementptr inbounds %struct.tcmu_mailbox, ptr %45, i32 0, i32 6
  %54 = ptrtoint ptr %cmd_tail79 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %cmd_tail79, align 64
  %cmd_head80 = getelementptr inbounds %struct.tcmu_mailbox, ptr %45, i32 0, i32 4
  %55 = ptrtoint ptr %cmd_head80 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cmd_head80, align 4
  br label %while.body.i135

while.body.i135:                                  ; preds = %while.body.i135.while.body.i135_crit_edge, %do.end77
  %start.011.i129 = phi ptr [ %add.ptr2.i132, %while.body.i135.while.body.i135_crit_edge ], [ %add.ptr.i, %do.end77 ]
  %size.addr.010.i130 = phi i32 [ %sub3.i133, %while.body.i135.while.body.i135_crit_edge ], [ %add1.i, %do.end77 ]
  %call.i131 = call ptr @vmalloc_to_page(ptr noundef %start.011.i129) #17
  call void @flush_dcache_page(ptr noundef %call.i131) #17
  %add.ptr2.i132 = getelementptr i8, ptr %start.011.i129, i32 4096
  %sub3.i133 = add i32 %size.addr.010.i130, -4096
  %tobool.not.i134 = icmp eq i32 %sub3.i133, 0
  br i1 %tobool.not.i134, label %tcmu_flush_dcache_range.exit136, label %while.body.i135.while.body.i135_crit_edge

while.body.i135.while.body.i135_crit_edge:        ; preds = %while.body.i135
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i135

tcmu_flush_dcache_range.exit136:                  ; preds = %while.body.i135
  %flags81 = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags81) #17
  %cmd_timer = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 28
  %call82 = call i32 @del_timer(ptr noundef %cmd_timer) #17
  %tmr_queue.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev, i32 0, i32 20
  %56 = ptrtoint ptr %tmr_queue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tmr_queue.i, align 4
  %cmp.not19.i = icmp eq ptr %57, %tmr_queue.i
  br i1 %cmp.not19.i, label %tcmu_flush_dcache_range.exit136.tcmu_remove_all_queued_tmr.exit_crit_edge, label %tcmu_flush_dcache_range.exit136.for.body.i137_crit_edge

tcmu_flush_dcache_range.exit136.for.body.i137_crit_edge: ; preds = %tcmu_flush_dcache_range.exit136
  br label %for.body.i137

tcmu_flush_dcache_range.exit136.tcmu_remove_all_queued_tmr.exit_crit_edge: ; preds = %tcmu_flush_dcache_range.exit136
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_remove_all_queued_tmr.exit

for.body.i137:                                    ; preds = %list_del_init.exit.i.for.body.i137_crit_edge, %tcmu_flush_dcache_range.exit136.for.body.i137_crit_edge
  %tmr.020.i = phi ptr [ %tmp.0.i, %list_del_init.exit.i.for.body.i137_crit_edge ], [ %57, %tcmu_flush_dcache_range.exit136.for.body.i137_crit_edge ]
  %58 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %tmp.0.i = load ptr, ptr %tmr.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %tmr.020.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i137.list_del_init.exit.i_crit_edge

for.body.i137.list_del_init.exit.i_crit_edge:     ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i137
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %tmr.020.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmr.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i137.list_del_init.exit.i_crit_edge
  %65 = ptrtoint ptr %tmr.020.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %tmr.020.i, ptr %tmr.020.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %tmr.020.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %tmr.020.i, ptr %prev.i3.i.i, align 4
  call void @kfree(ptr noundef %tmr.020.i) #17
  %cmp.not.i = icmp eq ptr %tmp.0.i, %tmr_queue.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge, label %list_del_init.exit.i.for.body.i137_crit_edge

list_del_init.exit.i.for.body.i137_crit_edge:     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i137

list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_remove_all_queued_tmr.exit

tcmu_remove_all_queued_tmr.exit:                  ; preds = %list_del_init.exit.i.tcmu_remove_all_queued_tmr.exit_crit_edge, %tcmu_flush_dcache_range.exit136.tcmu_remove_all_queued_tmr.exit_crit_edge
  call fastcc void @run_qfull_queue(ptr noundef %udev, i1 noundef zeroext false)
  call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_free_kept_buf_store(ptr noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %cmd_id = alloca i16, align 2
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %item, i32 -1448
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_id) #17
  %0 = ptrtoint ptr %cmd_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cmd_id, align 2, !annotation !543
  %dev_flags.i = getelementptr i8, ptr %item, i32 -1424
  %1 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #21
  br label %cleanup43

if.end:                                           ; preds = %entry
  %call8 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %cmd_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup43_crit_edge, label %if.end10

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup43

if.end10:                                         ; preds = %if.end
  %cmdr_lock = getelementptr i8, ptr %item, i32 2704
  call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #17
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %commands = getelementptr i8, ptr %item, i32 2884
  %8 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %commands, ptr %xas, align 4
  %9 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmd_id, align 2
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %7, align 4
  call void @_raw_spin_lock(ptr noundef %commands) #17
  %call12 = call ptr @xas_load(ptr noundef nonnull %xas) #17
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end10.cleanup.thread_crit_edge, label %if.end22

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

if.end22:                                         ; preds = %if.end10
  %flags = getelementptr inbounds %struct.tcmu_cmd, ptr %call12, i32 0, i32 10
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %if.end22.cleanup.thread_crit_edge, label %cleanup.cont

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end22.cleanup.thread_crit_edge, %if.end10.cleanup.thread_crit_edge
  %.str.178.sink = phi ptr [ @.str.175, %if.end10.cleanup.thread_crit_edge ], [ @.str.178, %if.end22.cleanup.thread_crit_edge ]
  %19 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %.sink62 = load i16, ptr %cmd_id, align 2
  %conv30 = zext i16 %.sink62 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.178.sink, i32 noundef %conv30) #21
  %20 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %20)
  %.sink = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %.sink) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #17
  br label %out_unlock

cleanup.cont:                                     ; preds = %if.end22
  %call35 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #17
  %21 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %22) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #17
  %dbi_cnt = getelementptr inbounds %struct.tcmu_cmd, ptr %call12, i32 0, i32 4
  %23 = ptrtoint ptr %dbi_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dbi_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4.not.i = icmp eq i32 %24, 0
  br i1 %cmp4.not.i, label %cleanup.cont.tcmu_cmd_free_data.exit_crit_edge, label %for.body.lr.ph.i

cleanup.cont.tcmu_cmd_free_data.exit_crit_edge:   ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

for.body.lr.ph.i:                                 ; preds = %cleanup.cont
  %tcmu_dev.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call12, i32 0, i32 1
  %25 = ptrtoint ptr %tcmu_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcmu_dev.i, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %call12, i32 0, i32 7
  %data_bitmap.i = getelementptr inbounds %struct.tcmu_dev, ptr %26, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dbi.i, align 4
  %arrayidx.i = getelementptr i32, ptr %28, i32 %i.05.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %data_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data_bitmap.i, align 4
  call void @_clear_bit(i32 noundef %30, ptr noundef %32) #17
  %inc.i = add nuw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.body.i.tcmu_cmd_free_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.tcmu_cmd_free_data.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_cmd_free_data.exit

tcmu_cmd_free_data.exit:                          ; preds = %for.body.i.tcmu_cmd_free_data.exit_crit_edge, %cleanup.cont.tcmu_cmd_free_data.exit_crit_edge
  %dbi.i58 = getelementptr inbounds %struct.tcmu_cmd, ptr %call12, i32 0, i32 7
  %33 = ptrtoint ptr %dbi.i58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dbi.i58, align 4
  call void @kfree(ptr noundef %34) #17
  %35 = load ptr, ptr @tcmu_cmd_cache, align 4
  call void @kmem_cache_free(ptr noundef %35, ptr noundef nonnull %call12) #17
  %tmr_queue = getelementptr i8, ptr %item, i32 2804
  %36 = ptrtoint ptr %tmr_queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %tmr_queue, align 4
  %cmp.i.not = icmp eq ptr %37, %tmr_queue
  br i1 %cmp.i.not, label %if.then40, label %tcmu_cmd_free_data.exit.out_unlock_crit_edge

tcmu_cmd_free_data.exit.out_unlock_crit_edge:     ; preds = %tcmu_cmd_free_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock

if.then40:                                        ; preds = %tcmu_cmd_free_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @run_qfull_queue(ptr noundef %add.ptr3, i1 noundef zeroext false)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then40, %tcmu_cmd_free_data.exit.out_unlock_crit_edge, %cleanup.thread
  %count.addr.061 = phi i32 [ -22, %cleanup.thread ], [ %count, %tcmu_cmd_free_data.exit.out_unlock_crit_edge ], [ %count, %if.then40 ]
  call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  br label %cleanup43

cleanup43:                                        ; preds = %out_unlock, %if.end.cleanup43_crit_edge, %do.end
  %retval.0 = phi i32 [ %count.addr.061, %out_unlock ], [ -22, %do.end ], [ %call8, %if.end.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_id) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_genl_set_features(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i.i, align 1
  store i8 %5, ptr @tcmu_kern_cmd_reply_supported, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %conv) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_genl_add_dev_done(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcmu_genl_cmd_done(ptr noundef %info, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_genl_rm_dev_done(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcmu_genl_cmd_done(ptr noundef %info, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_genl_reconfig_dev_done(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcmu_genl_cmd_done(ptr noundef %info, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcmu_genl_cmd_done(ptr nocapture noundef readonly %info, i32 noundef %completed_cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %1, i32 8
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182) #21
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i79, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tcmu_nl_cmd_mutex, i32 noundef 0) #17
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @tcmu_nl_cmd_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @tcmu_nl_cmd_list
  br i1 %cmp.not, label %for.cond.do.end24_crit_edge, label %for.body

for.cond.do.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

for.body:                                         ; preds = %for.cond
  %udev11 = getelementptr i8, ptr %.pn, i32 8
  %11 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev11, align 4
  %dev_index = getelementptr inbounds %struct.tcmu_dev, ptr %12, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_index, align 8
  %cmp12 = icmp eq i32 %14, %7
  br i1 %cmp12, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.end:                                          ; preds = %for.body
  %nl_cmd.0.le = getelementptr i8, ptr %.pn, i32 -56
  %tobool20.not = icmp eq ptr %12, null
  br i1 %tobool20.not, label %for.end.do.end24_crit_edge, label %if.end27

for.end.do.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end24

do.end24:                                         ; preds = %for.end.do.end24_crit_edge, %for.cond.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, i32 noundef %completed_cmd, i32 noundef %9, i32 noundef %7) #21
  br label %unlock

if.end27:                                         ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_genl_cmd_done.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_genl_cmd_done, %if.then36)) #17
          to label %do.end39 [label %if.then36], !srcloc !544

if.then36:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %12, i32 0, i32 4
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %cmd = getelementptr i8, ptr %.pn, i32 12
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  %status = getelementptr i8, ptr %.pn, i32 16
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_genl_cmd_done.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.187, ptr noundef %24, i32 noundef %7, i32 noundef %26, i32 noundef %completed_cmd, i32 noundef %9, i32 noundef %28) #17
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %list_del.exit
  %cmd40 = getelementptr i8, ptr %.pn, i32 12
  %29 = ptrtoint ptr %cmd40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %completed_cmd)
  %cmp41.not = icmp eq i32 %30, %completed_cmd
  br i1 %cmp41.not, label %if.end50, label %do.end45

do.end45:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #19
  %name47 = getelementptr inbounds %struct.tcmu_dev, ptr %12, i32 0, i32 4
  %31 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name47, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %32, i32 noundef %completed_cmd, i32 noundef %30) #21
  br label %unlock

if.end50:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #19
  %status51 = getelementptr i8, ptr %.pn, i32 16
  %33 = ptrtoint ptr %status51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %9, ptr %status51, align 4
  tail call void @complete(ptr noundef %nl_cmd.0.le) #17
  br label %unlock

unlock:                                           ; preds = %if.end50, %do.end45, %do.end24
  %ret.0 = phi i32 [ -22, %do.end45 ], [ 0, %if.end50 ], [ -19, %do.end24 ]
  tail call void @mutex_unlock(ptr noundef nonnull @tcmu_nl_cmd_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %unlock, %do.end
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcmu_unmap_work_fn(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  %devs.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devs.i) #17
  %0 = getelementptr inbounds %struct.list_head, ptr %devs.i, i32 0, i32 1
  %1 = ptrtoint ptr %devs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %devs.i, ptr %devs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %devs.i, ptr %0, align 4
  call void @_raw_spin_lock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  %3 = load volatile ptr, ptr @timed_out_udevs, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, @timed_out_udevs
  br i1 %cmp.i.not.i.i, label %entry.list_splice_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_init.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devs.i, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %devs.i, ptr %prev3.i.i.i, align 4
  store ptr %3, ptr %devs.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i.i, align 4
  store volatile ptr @timed_out_udevs, ptr @timed_out_udevs, align 4
  store ptr @timed_out_udevs, ptr getelementptr inbounds (%struct.list_head, ptr @timed_out_udevs, i32 0, i32 1), align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %entry.list_splice_init.exit.i_crit_edge
  %10 = ptrtoint ptr %devs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devs.i, align 4
  %cmp.not100.i = icmp eq ptr %11, %devs.i
  br i1 %cmp.not100.i, label %list_splice_init.exit.i.check_timedout_devices.exit_crit_edge, label %list_splice_init.exit.i.for.body.i_crit_edge

list_splice_init.exit.i.for.body.i_crit_edge:     ; preds = %list_splice_init.exit.i
  br label %for.body.i

list_splice_init.exit.i.check_timedout_devices.exit_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_timedout_devices.exit

for.body.i:                                       ; preds = %tcmu_set_next_deadline.exit94.i.for.body.i_crit_edge, %list_splice_init.exit.i.for.body.i_crit_edge
  %.pn.in101.i = phi ptr [ %.pn103.i, %tcmu_set_next_deadline.exit94.i.for.body.i_crit_edge ], [ %11, %list_splice_init.exit.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in101.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn103.i = load ptr, ptr %.pn.in101.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in101.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in101.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in101.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in101.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in101.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %.pn.in101.i, ptr %.pn.in101.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in101.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %.pn.in101.i, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  %cmdr_lock.i = getelementptr i8, ptr %.pn.in101.i, i32 -344
  call void @mutex_lock_nested(ptr noundef %cmdr_lock.i, i32 noundef 0) #17
  %cmd_time_out.i = getelementptr i8, ptr %.pn.in101.i, i32 -64
  %21 = ptrtoint ptr %cmd_time_out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_time_out.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %list_del_init.exit.i.if.end.i_crit_edge, label %if.then.i

list_del_init.exit.i.if.end.i_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  %inflight_queue.i = getelementptr i8, ptr %.pn.in101.i, i32 -60
  %23 = ptrtoint ptr %inflight_queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inflight_queue.i, align 4
  %cmp19.not95.i = icmp eq ptr %24, %inflight_queue.i
  br i1 %cmp19.not95.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body21.i_crit_edge

if.then.i.for.body21.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body21.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %if.then.i.for.body21.i_crit_edge
  %.pn82.in96.i = phi ptr [ %.pn82.i, %for.body21.i.for.body21.i_crit_edge ], [ %24, %if.then.i.for.body21.i_crit_edge ]
  %cmd.0.i = getelementptr i8, ptr %.pn82.in96.i, i32 -8
  %25 = ptrtoint ptr %.pn82.in96.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn82.i = load ptr, ptr %.pn82.in96.i, align 4
  call fastcc void @tcmu_check_expired_ring_cmd(ptr noundef %cmd.0.i) #17
  %cmp19.not.i = icmp eq ptr %.pn82.i, %inflight_queue.i
  br i1 %cmp19.not.i, label %for.body21.i.for.end.i_crit_edge, label %for.body21.i.for.body21.i_crit_edge

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body21.i

for.body21.i.for.end.i_crit_edge:                 ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.body21.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %cmd_timer.i = getelementptr i8, ptr %.pn.in101.i, i32 -112
  %26 = ptrtoint ptr %inflight_queue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %inflight_queue.i, align 4
  %cmp.i.not.i86.i = icmp eq ptr %27, %inflight_queue.i
  br i1 %cmp.i.not.i86.i, label %if.else.i.i, label %if.then.i87.i

if.then.i87.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %deadline.i.i = getelementptr i8, ptr %27, i32 32
  %28 = ptrtoint ptr %deadline.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %deadline.i.i, align 4
  %call1.i.i = call i32 @mod_timer(ptr noundef %cmd_timer.i, i32 noundef %29) #17
  br label %if.end.i

if.else.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i.i = call i32 @del_timer(ptr noundef %cmd_timer.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %if.then.i87.i, %list_del_init.exit.i.if.end.i_crit_edge
  %qfull_queue.i = getelementptr i8, ptr %.pn.in101.i, i32 -252
  %30 = ptrtoint ptr %qfull_queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qfull_queue.i, align 4
  %cmp40.not97.i = icmp eq ptr %31, %qfull_queue.i
  br i1 %cmp40.not97.i, label %if.end.i.for.end49.i_crit_edge, label %if.end.i.for.body42.i_crit_edge

if.end.i.for.body42.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body42.i

if.end.i.for.end49.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end49.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %if.end.i.for.body42.i_crit_edge
  %.pn81.in98.i = phi ptr [ %.pn81.i, %for.body42.i.for.body42.i_crit_edge ], [ %31, %if.end.i.for.body42.i_crit_edge ]
  %cmd.1.i = getelementptr i8, ptr %.pn81.in98.i, i32 -8
  %32 = ptrtoint ptr %.pn81.in98.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn81.i = load ptr, ptr %.pn81.in98.i, align 4
  call fastcc void @tcmu_check_expired_queue_cmd(ptr noundef %cmd.1.i) #17
  %cmp40.not.i = icmp eq ptr %.pn81.i, %qfull_queue.i
  br i1 %cmp40.not.i, label %for.body42.i.for.end49.i_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body42.i

for.body42.i.for.end49.i_crit_edge:               ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end49.i

for.end49.i:                                      ; preds = %for.body42.i.for.end49.i_crit_edge, %if.end.i.for.end49.i_crit_edge
  %qfull_timer.i = getelementptr i8, ptr %.pn.in101.i, i32 -52
  %33 = ptrtoint ptr %qfull_queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %qfull_queue.i, align 4
  %cmp.i.not.i88.i = icmp eq ptr %34, %qfull_queue.i
  br i1 %cmp.i.not.i88.i, label %if.else.i93.i, label %if.then.i91.i

if.then.i91.i:                                    ; preds = %for.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  %deadline.i89.i = getelementptr i8, ptr %34, i32 32
  %35 = ptrtoint ptr %deadline.i89.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %deadline.i89.i, align 4
  %call1.i90.i = call i32 @mod_timer(ptr noundef %qfull_timer.i, i32 noundef %36) #17
  br label %tcmu_set_next_deadline.exit94.i

if.else.i93.i:                                    ; preds = %for.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i92.i = call i32 @del_timer(ptr noundef %qfull_timer.i) #17
  br label %tcmu_set_next_deadline.exit94.i

tcmu_set_next_deadline.exit94.i:                  ; preds = %if.else.i93.i, %if.then.i91.i
  call void @mutex_unlock(ptr noundef %cmdr_lock.i) #17
  call void @_raw_spin_lock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  %cmp.not.i = icmp eq ptr %.pn103.i, %devs.i
  br i1 %cmp.not.i, label %tcmu_set_next_deadline.exit94.i.check_timedout_devices.exit_crit_edge, label %tcmu_set_next_deadline.exit94.i.for.body.i_crit_edge

tcmu_set_next_deadline.exit94.i.for.body.i_crit_edge: ; preds = %tcmu_set_next_deadline.exit94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

tcmu_set_next_deadline.exit94.i.check_timedout_devices.exit_crit_edge: ; preds = %tcmu_set_next_deadline.exit94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_timedout_devices.exit

check_timedout_devices.exit:                      ; preds = %tcmu_set_next_deadline.exit94.i.check_timedout_devices.exit_crit_edge, %list_splice_init.exit.i.check_timedout_devices.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @timed_out_udevs_lock) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devs.i) #17
  call fastcc void @find_free_blocks()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__root_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_backend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @find_free_blocks() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  %0 = load volatile i32, ptr @global_page_count, align 4
  %1 = load i32, ptr @tcmu_global_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp sgt i32 %0, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @root_udev_mutex, i32 noundef 0) #17
  %udev.0103 = load ptr, ptr @root_udev, align 4
  %cmp1.not104 = icmp eq ptr %udev.0103, @root_udev
  br i1 %cmp1.not104, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %udev.0107 = phi ptr [ %udev.0, %for.inc.for.body_crit_edge ], [ %udev.0103, %if.end.for.body_crit_edge ]
  %total_pages_freed.0106 = phi i32 [ %total_pages_freed.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %total_blocks_freed.0105 = phi i32 [ %total_blocks_freed.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %cmdr_lock = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %cmdr_lock, i32 noundef 0) #17
  %dev_flags.i = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %call6 = tail call fastcc zeroext i1 @tcmu_handle_completions(ptr noundef %udev.0107)
  br i1 %call6, label %if.then7, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @run_qfull_queue(ptr noundef %udev.0107, i1 noundef zeroext false)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %dbi_thresh = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 22
  %4 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dbi_thresh, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  br label %for.inc

if.end11:                                         ; preds = %if.end8
  %dbi_max = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 21
  %6 = ptrtoint ptr %dbi_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dbi_max, align 4
  %add = add i32 %7, 1
  %data_bitmap = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 23
  %8 = ptrtoint ptr %data_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_bitmap, align 4
  %call5.i = tail call i32 @_find_last_bit(ptr noundef %9, i32 noundef %add) #17
  %10 = ptrtoint ptr %dbi_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbi_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %11)
  %cmp14 = icmp eq i32 %call5.i, %11
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  br label %for.inc

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %add)
  %cmp17 = icmp eq i32 %call5.i, %add
  %add22 = add i32 %call5.i, 1
  %storemerge97 = select i1 %cmp17, i32 0, i32 %add22
  %storemerge = select i1 %cmp17, i32 0, i32 %call5.i
  %12 = ptrtoint ptr %dbi_thresh to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge97, ptr %dbi_thresh, align 8
  %13 = ptrtoint ptr %dbi_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %dbi_max, align 4
  %data_off = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 14
  %14 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_off, align 8
  %conv = zext i32 %15 to i64
  %conv27 = zext i32 %storemerge97 to i64
  %data_blk_size = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 26
  %16 = ptrtoint ptr %data_blk_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_blk_size, align 8
  %conv28 = zext i32 %17 to i64
  %mul = mul nuw i64 %conv28, %conv27
  %add29 = add nuw i64 %mul, %conv
  %inode = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 8
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %21, i64 noundef %add29, i64 noundef 0, i32 noundef 1) #17
  %call30 = tail call fastcc i32 @tcmu_blocks_release(ptr noundef %udev.0107, i32 noundef %storemerge97, i32 noundef %7)
  tail call void @mutex_unlock(ptr noundef %cmdr_lock) #17
  %add32 = add i32 %call30, %total_pages_freed.0106
  %sub33 = sub i32 %add, %storemerge97
  %add34 = add i32 %sub33, %total_blocks_freed.0105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_free_blocks.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_free_blocks, %if.then41)) #17
          to label %for.inc [label %if.then41], !srcloc !544

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %udev.0107, i32 0, i32 4
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_free_blocks.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.201, i32 noundef %call30, i32 noundef %add32, i32 noundef %sub33, i32 noundef %add34, ptr noundef %23) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %if.else, %if.then15, %if.then9, %if.then3
  %total_blocks_freed.1 = phi i32 [ %total_blocks_freed.0105, %if.then15 ], [ %add34, %if.then41 ], [ %total_blocks_freed.0105, %if.then9 ], [ %total_blocks_freed.0105, %if.then3 ], [ %add34, %if.else ]
  %total_pages_freed.1 = phi i32 [ %total_pages_freed.0106, %if.then15 ], [ %add32, %if.then41 ], [ %total_pages_freed.0106, %if.then9 ], [ %total_pages_freed.0106, %if.then3 ], [ %add32, %if.else ]
  %24 = ptrtoint ptr %udev.0107 to i32
  call void @__asan_load4_noabort(i32 %24)
  %udev.0 = load ptr, ptr %udev.0107, align 4
  %cmp1.not = icmp eq ptr %udev.0, @root_udev
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @root_udev_mutex) #17
  %call.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @global_page_count, i32 noundef 4) #17
  %25 = load volatile i32, ptr @global_page_count, align 4
  %26 = load i32, ptr @tcmu_global_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp49 = icmp sgt i32 %25, %26
  br i1 %cmp49, label %if.then51, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then51:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i101 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef nonnull @tcmu_unmap_work, i32 noundef 500) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_check_expired_ring_cmd(ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %deadline = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 9
  %1 = ptrtoint ptr %deadline to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %deadline, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #17
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_entry) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue_entry, ptr %queue_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %queue_entry, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %priv = getelementptr inbounds %struct.se_cmd, ptr %12, i32 0, i32 48
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %priv, align 4
  store ptr null, ptr %cmd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_check_expired_ring_cmd.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_check_expired_ring_cmd, %if.then5)) #17
          to label %do.end [label %if.then5], !srcloc !544

if.then5:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  %cmd_id = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_id, align 4
  %conv = zext i16 %15 to i32
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcmu_dev, align 4
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_check_expired_ring_cmd.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.197, i32 noundef %conv, ptr noundef %19) #17
  br label %do.end

do.end:                                           ; preds = %if.then5, %list_del_init.exit
  tail call void @target_complete_cmd(ptr noundef %12, i8 noundef zeroext 2) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcmu_check_expired_queue_cmd(ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %deadline = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 9
  %1 = ptrtoint ptr %deadline to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %deadline, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcmu_check_expired_queue_cmd.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcmu_check_expired_queue_cmd, %if.then3)) #17
          to label %do.end [label %if.then3], !srcloc !544

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %tcmu_dev = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %tcmu_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcmu_dev, align 4
  %name = getelementptr inbounds %struct.tcmu_dev, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcmu_check_expired_queue_cmd.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.199, ptr noundef %cmd, ptr noundef %6) #17
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %queue_entry = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %queue_entry) #17
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %queue_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %queue_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %queue_entry, ptr %queue_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queue_entry, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 4
  %dbi.i = getelementptr inbounds %struct.tcmu_cmd, ptr %cmd, i32 0, i32 7
  %17 = ptrtoint ptr %dbi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dbi.i, align 4
  tail call void @kfree(ptr noundef %18) #17
  %19 = load ptr, ptr @tcmu_cmd_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %cmd) #17
  %priv = getelementptr inbounds %struct.se_cmd, ptr %16, i32 0, i32 48
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %priv, align 4
  tail call void @target_complete_cmd(ptr noundef %16, i8 noundef zeroext 40) #17
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_cmd_time_out_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %cmd_time_out = getelementptr i8, ptr %1, i32 4416
  %2 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_time_out, align 8
  %div = udiv i32 %3, 1000
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.203, i32 noundef %div)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_cmd_time_out_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !543
  %export_count = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %export_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %export_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 1000
  %cmd_time_out = getelementptr i8, ptr %1, i32 4416
  %7 = ptrtoint ptr %cmd_time_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %cmd_time_out, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end9 ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_qfull_time_out_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %qfull_time_out = getelementptr i8, ptr %1, i32 4476
  %2 = ptrtoint ptr %qfull_time_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qfull_time_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  %div = sdiv i32 %3, 1000
  %cond = select i1 %cmp, i32 %3, i32 %div
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.207, i32 noundef %cond)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_qfull_time_out_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !543
  %call.i = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp5 = icmp sgt i32 %4, -1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %mul = mul i32 %4, 1000
  %qfull_time_out = getelementptr i8, ptr %1, i32 4476
  %5 = ptrtoint ptr %qfull_time_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %qfull_time_out, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp7 = icmp eq i32 %4, -1
  br i1 %cmp7, label %if.then8, label %do.end

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %qfull_time_out9 = getelementptr i8, ptr %1, i32 4476
  %6 = ptrtoint ptr %qfull_time_out9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %qfull_time_out9, align 4
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, i32 noundef %4) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %count, %if.then8 ], [ %count, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_max_data_area_mb_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %data_area_mb = getelementptr i8, ptr %1, i32 4124
  %2 = ptrtoint ptr %data_area_mb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_area_mb, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.211, i32 noundef %3)
  ret i32 %call4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_data_pages_per_blk_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %data_pages_per_blk = getelementptr i8, ptr %1, i32 4308
  %2 = ptrtoint ptr %data_pages_per_blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_pages_per_blk, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.211, i32 noundef %3)
  ret i32 %call4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_dev_config_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %dev_config = getelementptr i8, ptr %1, i32 4564
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.6, ptr noundef %dev_config)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_dev_config_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %skb.i = alloca ptr, align 4
  %msg_header.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -16
  %call4 = tail call i32 @strlen(ptr noundef %page) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call4)
  %cmp = icmp sgt i32 %call4, 255
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_flags.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #17
  %4 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_header.i) #17
  %5 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %msg_header.i, align 4
  %call.i = call fastcc i32 @tcmu_netlink_event_init(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef nonnull %skb.i, ptr noundef nonnull %msg_header.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then6.tcmu_send_dev_config_event.exit.thread_crit_edge, label %if.end.i

if.then6.tcmu_send_dev_config_event.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_send_dev_config_event.exit.thread

if.end.i:                                         ; preds = %if.then6
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %page) #24
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = tail call i32 @nla_put(ptr noundef %7, i32 noundef 4, i32 noundef %add.i.i, ptr noundef %page) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %tcmu_send_dev_config_event.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #17
  br label %tcmu_send_dev_config_event.exit.thread

tcmu_send_dev_config_event.exit.thread:           ; preds = %if.then3.i, %if.then6.tcmu_send_dev_config_event.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then6.tcmu_send_dev_config_event.exit.thread_crit_edge ], [ %call1.i.i, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  br label %do.end

tcmu_send_dev_config_event.exit:                  ; preds = %if.end.i
  %8 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg_header.i, align 4
  %call5.i = tail call fastcc i32 @tcmu_netlink_event_send(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef %7, ptr noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %if.end12, label %tcmu_send_dev_config_event.exit.do.end_crit_edge

tcmu_send_dev_config_event.exit.do.end_crit_edge: ; preds = %tcmu_send_dev_config_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %tcmu_send_dev_config_event.exit.do.end_crit_edge, %tcmu_send_dev_config_event.exit.thread
  %retval.0.i43 = phi i32 [ %retval.0.i.ph, %tcmu_send_dev_config_event.exit.thread ], [ %call5.i, %tcmu_send_dev_config_event.exit.do.end_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #21
  br label %cleanup

if.end12:                                         ; preds = %tcmu_send_dev_config_event.exit
  %dev_config = getelementptr i8, ptr %1, i32 4564
  %call13 = tail call i32 @strlcpy(ptr noundef %dev_config, ptr noundef %page, i32 noundef 256) #17
  %hba1.i = getelementptr i8, ptr %1, i32 3800
  %10 = ptrtoint ptr %hba1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba1.i, align 8
  %hba_ptr.i = getelementptr inbounds %struct.se_hba, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %hba_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hba_ptr.i, align 4
  %14 = ptrtoint ptr %dev_config to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dev_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %name4.i = getelementptr i8, ptr %1, i32 3796
  %18 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name4.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %call.i37 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.30, i32 noundef %17, ptr noundef %19, ptr noundef %dev_config) #17
  br label %if.end.i39

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %call5.i38 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, i32 noundef %17, ptr noundef %19) #17
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.else.i, %if.then.i
  %str.0.i = phi ptr [ %call.i37, %if.then.i ], [ %call5.i38, %if.else.i ]
  %tobool6.not.i = icmp eq ptr %str.0.i, null
  br i1 %tobool6.not.i, label %if.end.i39.cleanup_crit_edge, label %20

if.end.i39.cleanup_crit_edge:                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

20:                                               ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #19
  %name9.i = getelementptr i8, ptr %1, i32 3812
  %21 = ptrtoint ptr %name9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name9.i, align 4
  tail call void @kfree(ptr noundef %22) #17
  %23 = ptrtoint ptr %name9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %str.0.i, ptr %name9.i, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev_config19 = getelementptr i8, ptr %1, i32 4564
  %call21 = tail call i32 @strlcpy(ptr noundef %dev_config19, ptr noundef %page, i32 noundef 256) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %20, %if.end.i39.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i43, %do.end ], [ %count, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ %count, %20 ], [ -12, %if.end.i39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_dev_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %dev_size = getelementptr i8, ptr %1, i32 4096
  %2 = ptrtoint ptr %dev_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dev_size, align 8
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.217, i64 noundef %3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_dev_size_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %tmp.i.i = alloca i64, align 8
  %skb.i = alloca ptr, align 4
  %msg_header.i = alloca ptr, align 4
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !543
  %call.i = call i32 @kstrtoull(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_flags.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #17
  %7 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_header.i) #17
  %8 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %msg_header.i, align 4
  %call.i21 = call fastcc i32 @tcmu_netlink_event_init(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef nonnull %skb.i, ptr noundef nonnull %msg_header.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i = icmp slt i32 %call.i21, 0
  br i1 %cmp.i, label %if.then6.tcmu_send_dev_size_event.exit.thread_crit_edge, label %if.end.i

if.then6.tcmu_send_dev_size_event.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_send_dev_size_event.exit.thread

if.end.i:                                         ; preds = %if.then6
  %9 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #17
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %6, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %10, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %tcmu_send_dev_size_event.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #17
  br label %tcmu_send_dev_size_event.exit.thread

tcmu_send_dev_size_event.exit.thread:             ; preds = %if.then3.i, %if.then6.tcmu_send_dev_size_event.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i21, %if.then6.tcmu_send_dev_size_event.exit.thread_crit_edge ], [ %call.i.i, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  br label %do.end

tcmu_send_dev_size_event.exit:                    ; preds = %if.end.i
  %12 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_header.i, align 4
  %call5.i = call fastcc i32 @tcmu_netlink_event_send(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef %10, ptr noundef %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %tcmu_send_dev_size_event.exit.if.end12_crit_edge, label %tcmu_send_dev_size_event.exit.do.end_crit_edge

tcmu_send_dev_size_event.exit.do.end_crit_edge:   ; preds = %tcmu_send_dev_size_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

tcmu_send_dev_size_event.exit.if.end12_crit_edge: ; preds = %tcmu_send_dev_size_event.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.end:                                           ; preds = %tcmu_send_dev_size_event.exit.do.end_crit_edge, %tcmu_send_dev_size_event.exit.thread
  %retval.0.i24 = phi i32 [ %retval.0.i.ph, %tcmu_send_dev_size_event.exit.thread ], [ %call5.i, %tcmu_send_dev_size_event.exit.do.end_crit_edge ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #21
  br label %cleanup

if.end12:                                         ; preds = %tcmu_send_dev_size_event.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %val, align 8
  %dev_size = getelementptr i8, ptr %1, i32 4096
  %16 = ptrtoint ptr %dev_size to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %dev_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %do.end ], [ %count, %if.end12 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_emulate_write_cache_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %emulate_write_cache = getelementptr i8, ptr %item, i32 -84
  %0 = ptrtoint ptr %emulate_write_cache to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %emulate_write_cache, align 4, !range !545
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.220, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_emulate_write_cache_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %skb.i = alloca ptr, align 4
  %msg_header.i = alloca ptr, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !543
  %call4 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_flags.i = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_flags.i, align 8
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #17
  %7 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_header.i) #17
  %8 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %msg_header.i, align 4
  %call.i = call fastcc i32 @tcmu_netlink_event_init(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef nonnull %skb.i, ptr noundef nonnull %msg_header.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then6.tcmu_send_emulate_write_cache.exit.thread_crit_edge, label %if.end.i

if.then6.tcmu_send_emulate_write_cache.exit.thread_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %tcmu_send_emulate_write_cache.exit.thread

if.end.i:                                         ; preds = %if.then6
  %9 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #17
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %10, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %tcmu_send_emulate_write_cache.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree_skb_reason(ptr noundef %10, i32 noundef 0) #17
  br label %tcmu_send_emulate_write_cache.exit.thread

tcmu_send_emulate_write_cache.exit.thread:        ; preds = %if.then3.i, %if.then6.tcmu_send_emulate_write_cache.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then6.tcmu_send_emulate_write_cache.exit.thread_crit_edge ], [ %call.i.i, %if.then3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  br label %do.end

tcmu_send_emulate_write_cache.exit:               ; preds = %if.end.i
  %12 = ptrtoint ptr %msg_header.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_header.i, align 4
  %call5.i = call fastcc i32 @tcmu_netlink_event_send(ptr noundef %add.ptr3, i32 noundef 3, ptr noundef %10, ptr noundef %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_header.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %tcmu_send_emulate_write_cache.exit.if.end12_crit_edge, label %tcmu_send_emulate_write_cache.exit.do.end_crit_edge

tcmu_send_emulate_write_cache.exit.do.end_crit_edge: ; preds = %tcmu_send_emulate_write_cache.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

tcmu_send_emulate_write_cache.exit.if.end12_crit_edge: ; preds = %tcmu_send_emulate_write_cache.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.end:                                           ; preds = %tcmu_send_emulate_write_cache.exit.do.end_crit_edge, %tcmu_send_emulate_write_cache.exit.thread
  %retval.0.i24 = phi i32 [ %retval.0.i.ph, %tcmu_send_emulate_write_cache.exit.thread ], [ %call5.i, %tcmu_send_emulate_write_cache.exit.do.end_crit_edge ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214) #21
  br label %cleanup

if.end12:                                         ; preds = %tcmu_send_emulate_write_cache.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13 = icmp ne i8 %15, 0
  %emulate_write_cache = getelementptr i8, ptr %item, i32 -84
  %frombool = zext i1 %tobool13 to i8
  %16 = ptrtoint ptr %emulate_write_cache to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %emulate_write_cache, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %do.end ], [ %count, %if.end12 ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_tmr_notification_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %flags = getelementptr i8, ptr %1, i32 3804
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %3, 3
  %and1.i = and i32 %shr.i, 1
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.220, i32 noundef %and1.i)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_tmr_notification_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !543
  %call4 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp5 = icmp ugt i8 %4, 1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %flags10 = getelementptr i8, ptr %1, i32 3804
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  call void @_set_bit(i32 noundef 3, ptr noundef %flags10) #17
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_nl_reply_supported_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  %nl_reply_supported = getelementptr i8, ptr %1, i32 4820
  %2 = ptrtoint ptr %nl_reply_supported to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nl_reply_supported, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcmu_nl_reply_supported_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %da_dev = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %da_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %da_dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #17
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !543
  %call4 = call i32 @kstrtos8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv = sext i8 %4 to i32
  %nl_reply_supported = getelementptr i8, ptr %1, i32 4820
  %5 = ptrtoint ptr %nl_reply_supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %nl_reply_supported, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 267)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nounwind readnone }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39, !40, !41, !42, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !112, !113, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !219, !220, !221, !223, !224, !225, !227, !229, !230, !231, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !277, !279, !280, !281, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !358, !360, !362, !364, !366, !367, !368, !370, !371, !373, !375, !376, !378, !379, !380, !381, !383, !384, !385, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !401, !402, !403, !405, !406, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !425, !427, !429, !430, !431, !432, !434, !435, !436, !437, !439, !440, !441, !443, !444, !446, !447, !448, !450, !452, !453, !454, !455, !457, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !475, !476, !478, !480, !481, !482, !483, !485, !486, !488, !490, !491, !492, !493, !495, !496, !498, !500, !501, !503, !504, !506, !507, !508, !509, !511, !512, !514, !516, !517, !518, !520, !521, !523, !525, !526, !527, !529, !530, !532}
!llvm.named.register.sp = !{!533}
!llvm.module.flags = !{!534, !535, !536, !537, !538, !539, !540, !541}
!llvm.ident = !{!542}

!0 = !{ptr @__param_global_max_data_area_mb, !1, !"__param_global_max_data_area_mb", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_user.c", i32 262, i32 1}
!2 = !{ptr @__UNIQUE_ID_global_max_data_area_mb286, !3, !"__UNIQUE_ID_global_max_data_area_mb286", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_user.c", i32 264, i32 1}
!4 = !{ptr @__param_block_netlink, !5, !"__param_block_netlink", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_user.c", i32 299, i32 1}
!6 = !{ptr @__UNIQUE_ID_block_netlink287, !7, !"__UNIQUE_ID_block_netlink287", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_user.c", i32 300, i32 1}
!8 = !{ptr @__param_reset_netlink, !9, !"__param_reset_netlink", i1 false, i1 false}
!9 = !{!"../drivers/target/target_core_user.c", i32 351, i32 1}
!10 = !{ptr @__UNIQUE_ID_reset_netlink289, !11, !"__UNIQUE_ID_reset_netlink289", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_user.c", i32 352, i32 1}
!12 = !{ptr @__UNIQUE_ID_description346, !13, !"__UNIQUE_ID_description346", i1 false, i1 false}
!13 = !{!"../drivers/target/target_core_user.c", i32 3298, i32 1}
!14 = !{ptr @__UNIQUE_ID_author347, !15, !"__UNIQUE_ID_author347", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_user.c", i32 3299, i32 1}
!16 = !{ptr @__UNIQUE_ID_author348, !17, !"__UNIQUE_ID_author348", i1 false, i1 false}
!17 = !{!"../drivers/target/target_core_user.c", i32 3300, i32 1}
!18 = !{ptr @__UNIQUE_ID_file349, !19, !"__UNIQUE_ID_file349", i1 false, i1 false}
!19 = !{!"../drivers/target/target_core_user.c", i32 3301, i32 1}
!20 = !{ptr @__UNIQUE_ID_license350, !19, !"__UNIQUE_ID_license350", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_target_core_user__351_3303_tcmu_module_init6, !22, !"__initcall__kmod_target_core_user__351_3303_tcmu_module_init6", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_user.c", i32 3303, i32 1}
!23 = !{ptr @__exitcall_tcmu_module_exit, !24, !"__exitcall_tcmu_module_exit", i1 false, i1 false}
!24 = !{!"../drivers/target/target_core_user.c", i32 3304, i32 1}
!25 = !{ptr @tcmu_root_device, !26, !"tcmu_root_device", i1 false, i1 false}
!26 = !{!"../drivers/target/target_core_user.c", i32 88, i32 23}
!27 = !{ptr @tcmu_cmd_cache, !28, !"tcmu_cmd_cache", i1 false, i1 false}
!28 = !{!"../drivers/target/target_core_user.c", i32 222, i32 27}
!29 = !{ptr @tcmu_unmap_work, !30, !"tcmu_unmap_work", i1 false, i1 false}
!30 = !{!"../drivers/target/target_core_user.c", i32 225, i32 28}
!31 = !{ptr @tcmu_attrs, !32, !"tcmu_attrs", i1 false, i1 false}
!32 = !{!"../drivers/target/target_core_user.c", i32 3075, i32 36}
!33 = !{ptr @__param_str_global_max_data_area_mb, !1, !"__param_str_global_max_data_area_mb", i1 false, i1 false}
!34 = !{ptr @tcmu_global_max_data_area_op, !35, !"tcmu_global_max_data_area_op", i1 false, i1 false}
!35 = !{!"../drivers/target/target_core_user.c", i32 257, i32 38}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/target/target_core_user.c", i32 238, i32 3}
!38 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tcmu_set_global_max_data_area._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @tcmu_set_global_max_data_area._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tcmu_global_max_pages, !43, !"tcmu_global_max_pages", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_user.c", i32 226, i32 12}
!44 = !{ptr @global_page_count, !45, !"global_page_count", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_user.c", i32 224, i32 17}
!46 = !{ptr @.str.3, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/target_core_user.c", i32 254, i32 25}
!48 = !{ptr @__param_str_block_netlink, !5, !"__param_str_block_netlink", i1 false, i1 false}
!49 = !{ptr @tcmu_block_netlink_op, !50, !"tcmu_block_netlink_op", i1 false, i1 false}
!50 = !{!"../drivers/target/target_core_user.c", i32 294, i32 38}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_user.c", i32 286, i32 3}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tcmu_set_block_netlink._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tcmu_set_block_netlink._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @tcmu_netlink_blocked, !57, !"tcmu_netlink_blocked", i1 false, i1 false}
!57 = !{!"../drivers/target/target_core_user.c", i32 86, i32 11}
!58 = !{ptr @.str.6, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_user.c", i32 271, i32 25}
!60 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_user.c", i32 272, i32 10}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_user.c", i32 272, i32 22}
!64 = !{ptr @__param_str_reset_netlink, !9, !"__param_str_reset_netlink", i1 false, i1 false}
!65 = !{ptr @tcmu_reset_netlink_op, !66, !"tcmu_reset_netlink_op", i1 false, i1 false}
!66 = !{!"../drivers/target/target_core_user.c", i32 347, i32 38}
!67 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/target_core_user.c", i32 332, i32 3}
!69 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tcmu_set_reset_netlink._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @tcmu_set_reset_netlink._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/target_core_user.c", i32 96, i32 8}
!74 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tcmu_nl_cmd_mutex, !73, !"tcmu_nl_cmd_mutex", i1 false, i1 false}
!76 = !{ptr @tcmu_nl_cmd_list, !77, !"tcmu_nl_cmd_list", i1 false, i1 false}
!77 = !{!"../drivers/target/target_core_user.c", i32 97, i32 8}
!78 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/target/target_core_user.c", i32 307, i32 3}
!80 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @tcmu_fail_netlink_cmd._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @tcmu_fail_netlink_cmd._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/target_core_user.c", i32 312, i32 3}
!85 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @tcmu_fail_netlink_cmd.__UNIQUE_ID_ddebug288, !84, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!87 = !{ptr @tcmu_ops, !88, !"tcmu_ops", i1 false, i1 false}
!88 = !{!"../drivers/target/target_core_user.c", i32 3084, i32 34}
!89 = !{ptr @tcmu_alloc_device.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/target/target_core_user.c", i32 1622, i32 2}
!91 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tcmu_alloc_device.__key.18, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/target/target_core_user.c", i32 1631, i32 2}
!94 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tcmu_alloc_device.__key.20, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/target/target_core_user.c", i32 1632, i32 2}
!97 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xa_init_flags.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!100 = !{ptr @.str.22, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/target_core_user.c", i32 1575, i32 2}
!103 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tcmu_qfull_timedout.__UNIQUE_ID_ddebug329, !102, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!105 = !{ptr @.str.25, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/target_core_user.c", i32 219, i32 8}
!107 = !{ptr @timed_out_udevs_lock, !106, !"timed_out_udevs_lock", i1 false, i1 false}
!108 = !{ptr @timed_out_udevs, !109, !"timed_out_udevs", i1 false, i1 false}
!109 = !{!"../drivers/target/target_core_user.c", i32 220, i32 8}
!110 = !{ptr @.str.26, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/target/target_core_user.c", i32 1567, i32 2}
!112 = !{ptr @.str.27, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tcmu_cmd_timedout.__UNIQUE_ID_ddebug328, !111, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/target_core_user.c", i32 2220, i32 18}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/target_core_user.c", i32 2222, i32 22}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/target_core_user.c", i32 2155, i32 31}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/target_core_user.c", i32 2158, i32 31}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/target/target_core_user.c", i32 1448, i32 3}
!124 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @tcmu_handle_completions._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @tcmu_handle_completions._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/target_core_user.c", i32 1486, i32 4}
!129 = !{ptr @tcmu_handle_completions._entry.34, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @tcmu_handle_completions._entry_ptr.36, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/target/target_core_user.c", i32 1332, i32 3}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/target_core_user.c", i32 1336, i32 3}
!135 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tcmu_handle_completion._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @tcmu_handle_completion._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/target/target_core_user.c", i32 1348, i32 3}
!140 = !{ptr @tcmu_handle_completion._entry.39, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tcmu_handle_completion._entry_ptr.41, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/target/target_core_user.c", i32 1377, i32 3}
!144 = !{ptr @tcmu_handle_completion._entry.42, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tcmu_handle_completion._entry_ptr.44, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.45, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/target_core_user.c", i32 1384, i32 3}
!148 = !{ptr @tcmu_handle_completion.__UNIQUE_ID_ddebug317, !147, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!149 = !{ptr @.str.46, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/target_core_user.c", i32 745, i32 6}
!151 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @tcmu_copy_data.__UNIQUE_ID_ddebug295, !150, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!153 = !{ptr @.str.48, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/target_core_user.c", i32 1417, i32 2}
!155 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug318, !154, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/target/target_core_user.c", i32 1424, i32 3}
!159 = !{ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug319, !158, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/target/target_core_user.c", i32 1428, i32 4}
!162 = !{ptr @tcmu_run_tmr_queue.__UNIQUE_ID_ddebug320, !161, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/target_core_user.c", i32 1173, i32 3}
!165 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @queue_tmr_ring.__UNIQUE_ID_ddebug312, !164, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!167 = !{ptr @.str.54, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/target_core_user.c", i32 839, i32 3}
!169 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @is_ring_space_avail.__UNIQUE_ID_ddebug301, !168, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!171 = !{ptr @.str.56, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/target_core_user.c", i32 1737, i32 2}
!173 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @run_qfull_queue.__UNIQUE_ID_ddebug331, !172, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!175 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/target/target_core_user.c", i32 1744, i32 3}
!177 = !{ptr @run_qfull_queue.__UNIQUE_ID_ddebug332, !176, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!178 = !{ptr @.str.59, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/target/target_core_user.c", i32 1763, i32 4}
!180 = !{ptr @run_qfull_queue.__UNIQUE_ID_ddebug333, !179, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!181 = !{ptr @.str.60, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/target_core_user.c", i32 1774, i32 4}
!183 = !{ptr @run_qfull_queue.__UNIQUE_ID_ddebug334, !182, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!184 = !{ptr @.str.61, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/target_core_user.c", i32 1041, i32 3}
!186 = !{ptr @.str.62, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @queue_cmd_ring._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @queue_cmd_ring._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.64, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/target_core_user.c", i32 1059, i32 3}
!191 = !{ptr @queue_cmd_ring._entry.63, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @queue_cmd_ring._entry_ptr.65, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/target_core_user.c", i32 1075, i32 3}
!195 = !{ptr @queue_cmd_ring._entry.66, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @queue_cmd_ring._entry_ptr.68, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/target_core_user.c", i32 1083, i32 2}
!199 = !{ptr @queue_cmd_ring.__UNIQUE_ID_ddebug309, !198, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!200 = !{ptr @.str.70, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/target/target_core_user.c", i32 867, i32 4}
!202 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @tcmu_alloc_data_space.__UNIQUE_ID_ddebug302, !201, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!204 = distinct !{null, !205, !"__warned", i1 false, i1 false}
!205 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!206 = !{ptr @.str.72, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!208 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!209 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!210 = !{ptr @.str.74, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.75, !209, !"<string literal>", i1 false, i1 false}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!214 = !{ptr @.str.76, !213, !"<string literal>", i1 false, i1 false}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!217 = !{ptr @.str.78, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/target/target_core_user.c", i32 923, i32 2}
!219 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @tcmu_setup_cmd_timer.__UNIQUE_ID_ddebug305, !218, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!221 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/target/target_core_user.c", i32 948, i32 2}
!223 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @add_to_qfull_queue.__UNIQUE_ID_ddebug306, !222, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!225 = !{ptr @tcmu_vm_ops, !226, !"tcmu_vm_ops", i1 false, i1 false}
!226 = !{!"../drivers/target/target_core_user.c", i32 1894, i32 42}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/target/target_core_user.c", i32 1851, i32 2}
!229 = !{ptr @.str.83, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @tcmu_vma_close.__UNIQUE_ID_ddebug336, !228, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!231 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/target_core_user.c", i32 1831, i32 2}
!233 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @tcmu_try_get_data_page._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @tcmu_try_get_data_page._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.86, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!238 = !{ptr @.str.87, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/target/target_core_user.c", i32 1842, i32 2}
!240 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @tcmu_vma_open.__UNIQUE_ID_ddebug335, !239, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!242 = !{ptr @.str.89, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/target/target_core_user.c", i32 1928, i32 2}
!244 = !{ptr @.str.90, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @tcmu_open.__UNIQUE_ID_ddebug337, !243, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!246 = !{ptr @.str.91, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/target/target_core_user.c", i32 1952, i32 3}
!248 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @tcmu_release.__UNIQUE_ID_ddebug338, !247, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!250 = !{ptr @.str.93, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/target/target_core_user.c", i32 1971, i32 2}
!252 = !{ptr @tcmu_release.__UNIQUE_ID_ddebug339, !251, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!253 = !{ptr @tcmu_kern_cmd_reply_supported, !254, !"tcmu_kern_cmd_reply_supported", i1 false, i1 false}
!254 = !{!"../drivers/target/target_core_user.c", i32 85, i32 11}
!255 = !{ptr @.str.94, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/target/target_core_user.c", i32 1990, i32 3}
!257 = !{ptr @.str.95, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @tcmu_init_genl_cmd_reply._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @tcmu_init_genl_cmd_reply._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.97, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/target/target_core_user.c", i32 1997, i32 3}
!262 = !{ptr @tcmu_init_genl_cmd_reply._entry.96, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @tcmu_init_genl_cmd_reply._entry_ptr.98, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @init_completion.__key, !265, !"__key", i1 false, i1 false}
!265 = !{!"../include/linux/completion.h", i32 87, i32 2}
!266 = !{ptr @.str.99, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.100, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/target/target_core_user.c", i32 2043, i32 2}
!269 = !{ptr @.str.101, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @tcmu_wait_genl_cmd_reply.__UNIQUE_ID_ddebug340, !268, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!271 = !{ptr @.str.102, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/target/target_core_user.c", i32 216, i32 8}
!273 = !{ptr @.str.103, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @root_udev_mutex, !272, !"root_udev_mutex", i1 false, i1 false}
!275 = !{ptr @root_udev, !276, !"root_udev", i1 false, i1 false}
!276 = !{!"../drivers/target/target_core_user.c", i32 217, i32 8}
!277 = !{ptr @.str.104, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/target/target_core_user.c", i32 1722, i32 2}
!279 = !{ptr @.str.105, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @tcmu_dev_kref_release.__UNIQUE_ID_ddebug330, !278, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!281 = !{ptr @.str.106, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/target/target_core_user.c", i32 2526, i32 30}
!283 = !{ptr @.str.107, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/target/target_core_user.c", i32 2538, i32 4}
!285 = !{ptr @.str.108, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @tcmu_set_configfs_dev_params.__UNIQUE_ID_ddebug343, !284, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!287 = !{ptr @.str.109, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/target/target_core_user.c", i32 2543, i32 5}
!289 = !{ptr @tcmu_set_configfs_dev_params._entry, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @tcmu_set_configfs_dev_params._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.111, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/target/target_core_user.c", i32 2557, i32 5}
!293 = !{ptr @tcmu_set_configfs_dev_params._entry.110, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @tcmu_set_configfs_dev_params._entry_ptr.112, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.113, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/target/target_core_user.c", i32 2408, i32 19}
!297 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/target/target_core_user.c", i32 2409, i32 17}
!299 = !{ptr @.str.115, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/target/target_core_user.c", i32 2410, i32 22}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/target/target_core_user.c", i32 2411, i32 23}
!303 = !{ptr @.str.117, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/target/target_core_user.c", i32 2412, i32 27}
!305 = !{ptr @.str.118, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/target/target_core_user.c", i32 2413, i32 25}
!307 = !{ptr @.str.119, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/target/target_core_user.c", i32 2414, i32 27}
!309 = !{ptr @tokens, !310, !"tokens", i1 false, i1 false}
!310 = !{!"../drivers/target/target_core_user.c", i32 2407, i32 22}
!311 = !{ptr @.str.120, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/target/target_core_user.c", i32 2424, i32 3}
!313 = !{ptr @.str.121, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @tcmu_set_dev_attrib._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @tcmu_set_dev_attrib._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.123, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/target/target_core_user.c", i32 2430, i32 3}
!318 = !{ptr @tcmu_set_dev_attrib._entry.122, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @tcmu_set_dev_attrib._entry_ptr.124, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.125, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/target/target_core_user.c", i32 2445, i32 3}
!322 = !{ptr @.str.126, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @tcmu_set_max_blocks_param._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @tcmu_set_max_blocks_param._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.128, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/target/target_core_user.c", i32 2450, i32 3}
!327 = !{ptr @tcmu_set_max_blocks_param._entry.127, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @tcmu_set_max_blocks_param._entry_ptr.129, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.131, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/target/target_core_user.c", i32 2454, i32 3}
!331 = !{ptr @tcmu_set_max_blocks_param._entry.130, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @tcmu_set_max_blocks_param._entry_ptr.132, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.134, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/target/target_core_user.c", i32 2459, i32 3}
!335 = !{ptr @tcmu_set_max_blocks_param._entry.133, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @tcmu_set_max_blocks_param._entry_ptr.135, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.137, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/target/target_core_user.c", i32 2466, i32 3}
!339 = !{ptr @tcmu_set_max_blocks_param._entry.136, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @tcmu_set_max_blocks_param._entry_ptr.138, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.139, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/target/target_core_user.c", i32 2485, i32 3}
!343 = !{ptr @.str.140, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @tcmu_set_data_pages_per_blk._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @tcmu_set_data_pages_per_blk._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.142, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/target/target_core_user.c", i32 2491, i32 3}
!348 = !{ptr @tcmu_set_data_pages_per_blk._entry.141, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @tcmu_set_data_pages_per_blk._entry_ptr.143, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.145, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/target/target_core_user.c", i32 2499, i32 3}
!352 = !{ptr @tcmu_set_data_pages_per_blk._entry.144, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @tcmu_set_data_pages_per_blk._entry_ptr.146, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.147, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/target/target_core_user.c", i32 2583, i32 23}
!356 = !{ptr @.str.148, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/target/target_core_user.c", i32 2584, i32 49}
!358 = !{ptr @.str.149, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/target/target_core_user.c", i32 2585, i32 24}
!360 = !{ptr @.str.150, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/target/target_core_user.c", i32 2586, i32 24}
!362 = !{ptr @.str.151, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/target/target_core_user.c", i32 2587, i32 24}
!364 = !{ptr @.str.152, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/target/target_core_user.c", i32 1276, i32 3}
!366 = !{ptr @.str.153, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @tcmu_tmr_notify.__UNIQUE_ID_ddebug315, !365, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!368 = !{ptr @.str.154, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/target/target_core_user.c", i32 1291, i32 2}
!370 = !{ptr @tcmu_tmr_notify.__UNIQUE_ID_ddebug316, !369, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!371 = !{ptr @tcmu_action_attrs, !372, !"tcmu_action_attrs", i1 false, i1 false}
!372 = !{!"../drivers/target/target_core_user.c", i32 3077, i32 35}
!373 = !{ptr @.str.155, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/target/target_core_user.c", i32 2972, i32 1}
!375 = !{ptr @tcmu_attr_block_dev, !374, !"tcmu_attr_block_dev", i1 false, i1 false}
!376 = !{ptr @.str.156, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/target/target_core_user.c", i32 2953, i32 3}
!378 = !{ptr @.str.157, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @tcmu_block_dev_store._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @tcmu_block_dev_store._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.159, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/target/target_core_user.c", i32 2962, i32 3}
!383 = !{ptr @tcmu_block_dev_store._entry.158, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @tcmu_block_dev_store._entry_ptr.160, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.161, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/target/target_core_user.c", i32 3001, i32 1}
!387 = !{ptr @tcmu_attr_reset_ring, !386, !"tcmu_attr_reset_ring", i1 false, i1 false}
!388 = !{ptr @.str.162, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/target/target_core_user.c", i32 2985, i32 3}
!390 = !{ptr @tcmu_reset_ring_store._entry, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @tcmu_reset_ring_store._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.164, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/target/target_core_user.c", i32 2994, i32 3}
!394 = !{ptr @tcmu_reset_ring_store._entry.163, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @tcmu_reset_ring_store._entry_ptr.165, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.166, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/target/target_core_user.c", i32 2345, i32 3}
!398 = !{ptr @.str.167, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @tcmu_reset_ring.__UNIQUE_ID_ddebug341, !397, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!400 = !{ptr @.str.168, !397, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.169, !397, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.170, !397, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.171, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/target/target_core_user.c", i32 2376, i32 2}
!405 = !{ptr @tcmu_reset_ring.__UNIQUE_ID_ddebug342, !404, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!406 = !{ptr @.str.172, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/target/target_core_user.c", i32 3060, i32 1}
!408 = !{ptr @tcmu_attr_free_kept_buf, !407, !"tcmu_attr_free_kept_buf", i1 false, i1 false}
!409 = !{ptr @.str.173, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/target/target_core_user.c", i32 3015, i32 3}
!411 = !{ptr @tcmu_free_kept_buf_store._entry, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @tcmu_free_kept_buf_store._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.175, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/target/target_core_user.c", i32 3031, i32 4}
!415 = !{ptr @tcmu_free_kept_buf_store._entry.174, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @tcmu_free_kept_buf_store._entry_ptr.176, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.178, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/target/target_core_user.c", i32 3037, i32 4}
!419 = !{ptr @tcmu_free_kept_buf_store._entry.177, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @tcmu_free_kept_buf_store._entry_ptr.179, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @tcmu_genl_family, !422, !"tcmu_genl_family", i1 false, i1 false}
!422 = !{!"../drivers/target/target_core_user.c", i32 476, i32 27}
!423 = !{ptr @tcmu_attr_policy, !424, !"tcmu_attr_policy", i1 false, i1 false}
!424 = !{!"../drivers/target/target_core_user.c", i32 363, i32 26}
!425 = !{ptr @tcmu_genl_ops, !426, !"tcmu_genl_ops", i1 false, i1 false}
!426 = !{!"../drivers/target/target_core_user.c", i32 448, i32 36}
!427 = !{ptr @.str.180, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/target/target_core_user.c", i32 441, i32 3}
!429 = !{ptr @.str.181, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @tcmu_genl_set_features._entry, !428, !"_entry", i1 false, i1 false}
!431 = !{ptr @tcmu_genl_set_features._entry_ptr, !428, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.182, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/target/target_core_user.c", i32 379, i32 3}
!434 = !{ptr @.str.183, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @tcmu_genl_cmd_done._entry, !433, !"_entry", i1 false, i1 false}
!436 = !{ptr @tcmu_genl_cmd_done._entry_ptr, !433, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.185, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/target/target_core_user.c", i32 395, i32 3}
!439 = !{ptr @tcmu_genl_cmd_done._entry.184, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @tcmu_genl_cmd_done._entry_ptr.186, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.187, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/target/target_core_user.c", i32 402, i32 2}
!443 = !{ptr @tcmu_genl_cmd_done.__UNIQUE_ID_ddebug290, !442, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!444 = !{ptr @.str.189, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/target/target_core_user.c", i32 407, i32 3}
!446 = !{ptr @tcmu_genl_cmd_done._entry.188, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @tcmu_genl_cmd_done._entry_ptr.190, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @tcmu_mcgrps, !449, !"tcmu_mcgrps", i1 false, i1 false}
!449 = !{!"../drivers/target/target_core_user.c", i32 359, i32 42}
!450 = !{ptr @tcmu_module_init.__key, !451, !"__key", i1 false, i1 false}
!451 = !{!"../drivers/target/target_core_user.c", i32 3228, i32 2}
!452 = !{ptr @.str.191, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @tcmu_module_init.__key.192, !451, !"__key", i1 false, i1 false}
!454 = !{ptr @.str.193, !451, !"<string literal>", i1 false, i1 false}
!455 = !{ptr @.str.194, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/target/target_core_user.c", i32 3230, i32 37}
!457 = !{ptr @.str.195, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/target/target_core_user.c", i32 3237, i32 21}
!459 = !{ptr @.str.196, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/target/target_core_user.c", i32 1529, i32 2}
!461 = !{ptr @.str.197, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @tcmu_check_expired_ring_cmd.__UNIQUE_ID_ddebug326, !460, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!463 = !{ptr @.str.198, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/target/target_core_user.c", i32 1542, i32 2}
!465 = !{ptr @.str.199, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @tcmu_check_expired_queue_cmd.__UNIQUE_ID_ddebug327, !464, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!467 = !{ptr @.str.200, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/target/target_core_user.c", i32 3164, i32 3}
!469 = !{ptr @.str.201, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @find_free_blocks.__UNIQUE_ID_ddebug344, !468, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!471 = !{ptr @tcmu_attrib_attrs, !472, !"tcmu_attrib_attrs", i1 false, i1 false}
!472 = !{!"../drivers/target/target_core_user.c", i32 3062, i32 35}
!473 = !{ptr @.str.202, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/target/target_core_user.c", i32 2637, i32 1}
!475 = !{ptr @tcmu_attr_cmd_time_out, !474, !"tcmu_attr_cmd_time_out", i1 false, i1 false}
!476 = !{ptr @.str.203, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/target/target_core_user.c", i32 2612, i32 35}
!478 = !{ptr @.str.204, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/target/target_core_user.c", i32 2626, i32 3}
!480 = !{ptr @.str.205, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @tcmu_cmd_time_out_store._entry, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @tcmu_cmd_time_out_store._entry_ptr, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.206, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/target/target_core_user.c", i32 2673, i32 1}
!485 = !{ptr @tcmu_attr_qfull_time_out, !484, !"tcmu_attr_qfull_time_out", i1 false, i1 false}
!486 = !{ptr @.str.207, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/target/target_core_user.c", i32 2645, i32 35}
!488 = !{ptr @.str.208, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/target/target_core_user.c", i32 2668, i32 3}
!490 = !{ptr @.str.209, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @tcmu_qfull_time_out_store._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @tcmu_qfull_time_out_store._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.210, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/target/target_core_user.c", i32 2683, i32 1}
!495 = !{ptr @tcmu_attr_max_data_area_mb, !494, !"tcmu_attr_max_data_area_mb", i1 false, i1 false}
!496 = !{ptr @.str.211, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/target/target_core_user.c", i32 2681, i32 35}
!498 = !{ptr @.str.212, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/target/target_core_user.c", i32 2694, i32 1}
!500 = !{ptr @tcmu_attr_data_pages_per_blk, !499, !"tcmu_attr_data_pages_per_blk", i1 false, i1 false}
!501 = !{ptr @.str.213, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/target/target_core_user.c", i32 2756, i32 1}
!503 = !{ptr @tcmu_attr_dev_config, !502, !"tcmu_attr_dev_config", i1 false, i1 false}
!504 = !{ptr @.str.214, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/target/target_core_user.c", i32 2742, i32 4}
!506 = !{ptr @.str.215, !505, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @tcmu_dev_config_store._entry, !505, !"_entry", i1 false, i1 false}
!508 = !{ptr @tcmu_dev_config_store._entry_ptr, !505, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.216, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/target/target_core_user.c", i32 2811, i32 1}
!511 = !{ptr @tcmu_attr_dev_size, !510, !"tcmu_attr_dev_size", i1 false, i1 false}
!512 = !{ptr @.str.217, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/target/target_core_user.c", i32 2764, i32 35}
!514 = !{ptr @.str.218, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/target/target_core_user.c", i32 2804, i32 4}
!516 = !{ptr @tcmu_dev_size_store._entry, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @tcmu_dev_size_store._entry_ptr, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.219, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/target/target_core_user.c", i32 2894, i32 1}
!520 = !{ptr @tcmu_attr_emulate_write_cache, !519, !"tcmu_attr_emulate_write_cache", i1 false, i1 false}
!521 = !{ptr @.str.220, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/target/target_core_user.c", i32 2847, i32 35}
!523 = !{ptr @.str.221, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/target/target_core_user.c", i32 2886, i32 4}
!525 = !{ptr @tcmu_emulate_write_cache_store._entry, !524, !"_entry", i1 false, i1 false}
!526 = !{ptr @tcmu_emulate_write_cache_store._entry_ptr, !524, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.222, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/target/target_core_user.c", i32 2927, i32 1}
!529 = !{ptr @tcmu_attr_tmr_notification, !528, !"tcmu_attr_tmr_notification", i1 false, i1 false}
!530 = !{ptr @.str.223, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/target/target_core_user.c", i32 2839, i32 1}
!532 = !{ptr @tcmu_attr_nl_reply_supported, !531, !"tcmu_attr_nl_reply_supported", i1 false, i1 false}
!533 = !{!"sp"}
!534 = !{i32 1, !"wchar_size", i32 2}
!535 = !{i32 1, !"min_enum_size", i32 4}
!536 = !{i32 8, !"branch-target-enforcement", i32 0}
!537 = !{i32 8, !"sign-return-address", i32 0}
!538 = !{i32 8, !"sign-return-address-all", i32 0}
!539 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!540 = !{i32 7, !"uwtable", i32 1}
!541 = !{i32 7, !"frame-pointer", i32 2}
!542 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!543 = !{!"auto-init"}
!544 = !{i64 2148385188, i64 2148385193, i64 2148385206, i64 2148385250, i64 2148385284, i64 2148385305}
!545 = !{i8 0, i8 2}
!546 = !{i64 2148562120, i64 2148562152, i64 2148562181, i64 2148562215, i64 2148562246, i64 2148562269}
!547 = !{!"branch_weights", i32 1, i32 2000}
!548 = !{!"branch_weights", i32 2000, i32 1}
!549 = !{i64 2148650145}
!550 = !{i64 2148564585, i64 2148564617, i64 2148564646, i64 2148564680, i64 2148564711, i64 2148564734}
!551 = !{i64 2149388934}
!552 = !{i64 2148410375, i64 2148410655, i64 2148410989, i64 2148411323}
!553 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!554 = !{i64 2155551924}
!555 = !{i64 2155559604}
!556 = !{i64 2154174171}
!557 = !{i64 2152747946}
!558 = !{i64 2152748153}
!559 = !{i64 2154176942}
!560 = !{i64 2155500436}
!561 = !{i64 2155476841}
!562 = !{i64 2155492899}
!563 = !{i64 2149439424}
!564 = !{i64 2149439690}
!565 = !{i64 2148646025}
!566 = !{i64 2148561310, i64 2148561342, i64 2148561371, i64 2148561405, i64 2148561436, i64 2148561459}
!567 = !{i64 2148646254}
!568 = !{i64 2154019516, i64 2154020000, i64 2154019553, i64 2154019609, i64 2154019643, i64 2154019667, i64 2154019708, i64 2154019729, i64 2154019757, i64 2154019791}
!569 = !{i64 2148560590, i64 2148560616, i64 2148560645, i64 2148560679, i64 2148560710, i64 2148560733}
!570 = !{i64 2148563055, i64 2148563081, i64 2148563110, i64 2148563144, i64 2148563175, i64 2148563198}
!571 = !{i64 2155438267, i64 2155438765, i64 2155438304, i64 2155438360, i64 2155438394, i64 2155438418, i64 2155438459, i64 2155438480, i64 2155438508, i64 2155438542}
