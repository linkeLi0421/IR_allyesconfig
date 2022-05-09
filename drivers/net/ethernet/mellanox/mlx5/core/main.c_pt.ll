; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/main.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.135 }
%union.anon.135 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.202] }
%struct.anon.202 = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.168, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.203, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.168 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.150 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.150 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.203 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_hca_cap = type { [1024 x i32], [1024 x i32] }
%union.devlink_param_value = type { i32, [28 x i8] }
%struct.mlx5_reg_host_endianness = type { i8, [15 x i8] }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }

@__UNIQUE_ID_author677 = internal constant [46 x i8] c"mlx5_core.author=Eli Cohen <eli@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description678 = internal constant [93 x i8] c"mlx5_core.description=Mellanox 5th generation network adapters (ConnectX series) core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file679 = internal constant [65 x i8] c"mlx5_core.file=drivers/net/ethernet/mellanox/mlx5/core/mlx5_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license680 = internal constant [31 x i8] c"mlx5_core.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"mlx5_core.debug_mask\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mlx5_core_debug_mask = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.135 { ptr @mlx5_core_debug_mask } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype681 = internal constant [35 x i8] c"mlx5_core.parmtype=debug_mask:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask682 = internal constant [101 x i8] c"mlx5_core.parm=debug_mask:debug mask: 1 = dump cmd data, 2 = dump cmd exec time, 3 = both. Default=0\00", section ".modinfo", align 1
@__param_str_prof_sel = internal constant [19 x i8] c"mlx5_core.prof_sel\00", align 1
@prof_sel = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_prof_sel = internal constant %struct.kernel_param { ptr @__param_str_prof_sel, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.135 { ptr @prof_sel } }, section "__param", align 4
@__UNIQUE_ID_prof_seltype683 = internal constant [33 x i8] c"mlx5_core.parmtype=prof_sel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_prof_sel684 = internal constant [60 x i8] c"mlx5_core.parm=prof_sel:profile selector. Valid range 0 - 2\00", section ".modinfo", align 1
@mlx5_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1297, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): sw objs init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/main.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_init_one._entry_ptr = internal global ptr @mlx5_init_one._entry, section ".printk_index", align 4
@mlx5_uninit_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1342, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): %s: interface is down, NOP\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_uninit_one\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_uninit_one._entry_ptr = internal global ptr @mlx5_uninit_one._entry, section ".printk_index", align 4
@mlx5_load_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1361, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): interface is up, NOP\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5_load_one\00", [18 x i8] zeroinitializer }, align 32
@mlx5_load_one._entry_ptr = internal global ptr @mlx5_load_one._entry, section ".printk_index", align 4
@mlx5_unload_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.2, i32 1404, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_unload_one\00", [16 x i8] zeroinitializer }, align 32
@mlx5_unload_one._entry_ptr = internal global ptr @mlx5_unload_one._entry, section ".printk_index", align 4
@profile = internal constant { [3 x %struct.mlx5_profile], [136 x i8] } { [3 x %struct.mlx5_profile] [%struct.mlx5_profile zeroinitializer, %struct.mlx5_profile { i64 1, i8 12, [23 x %struct.anon.202] zeroinitializer }, %struct.mlx5_profile { i64 3, i8 -1, [23 x %struct.anon.202] [%struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 500, i32 250 }, %struct.anon.202 { i32 64, i32 32 }, %struct.anon.202 { i32 32, i32 16 }, %struct.anon.202 { i32 16, i32 8 }, %struct.anon.202 { i32 8, i32 4 }, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer, %struct.anon.202 zeroinitializer] }], [136 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->ctx_lock\00", [16 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->intf_state_mutex\00", [41 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&priv->bfregs.reg_head.lock\00", [36 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->bfregs.wc_head.lock\00", [37 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->alloc_mutex\00", [45 x i8] zeroinitializer }, align 32
@mlx5_mdev_init.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->pgdir_mutex\00", [45 x i8] zeroinitializer }, align 32
@mlx5_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@mlx5_mdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed initializing timeouts, aborting\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_mdev_init\00", [17 x i8] zeroinitializer }, align 32
@mlx5_mdev_init._entry_ptr = internal global ptr @mlx5_mdev_init._entry, section ".printk_index", align 4
@mlx5_core_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.89, ptr @mlx5_core_pci_table, ptr @probe_one, ptr @remove_one, ptr @mlx5_suspend, ptr @mlx5_resume, ptr @shutdown, ptr @mlx5_core_sriov_configure, ptr @mlx5_core_sriov_set_msix_vec_count, ptr @mlx5_sriov_get_vf_total_msix, ptr @mlx5_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mlx5_core__746_1940_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_cleanup = internal global ptr @cleanup, section ".exitcall.exit", align 4
@mlx5_core_get_caps_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 368, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): QUERY_HCA_CAP : type(%x) opmode(%x) Failed(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_core_get_caps_mode\00", [40 x i8] zeroinitializer }, align 32
@mlx5_core_get_caps_mode._entry_ptr = internal global ptr @mlx5_core_get_caps_mode._entry, section ".printk_index", align 4
@mlx5_core_get_caps_mode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 386, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): Tried to query dev cap type(%x) with wrong opmode(%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_core_get_caps_mode._entry_ptr.28 = internal global ptr @mlx5_core_get_caps_mode._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_function_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1014, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware version: %d.%d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_function_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr = internal global ptr @mlx5_function_setup._entry, section ".printk_index", align 4
@mlx5_function_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 1028, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): Firmware over %llu MS in pre-initializing state, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.34 = internal global ptr @mlx5_function_setup._entry.32, section ".printk_index", align 4
@mlx5_function_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 1034, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Failed initializing command interface, aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.37 = internal global ptr @mlx5_function_setup._entry.35, section ".printk_index", align 4
@mlx5_function_setup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.2, i32 1043, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): Firmware over %llu MS in initializing state, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.40 = internal global ptr @mlx5_function_setup._entry.38, section ".printk_index", align 4
@mlx5_function_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.30, ptr @.str.2, i32 1051, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): enable hca failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.43 = internal global ptr @mlx5_function_setup._entry.41, section ".printk_index", align 4
@mlx5_function_setup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.30, ptr @.str.2, i32 1057, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): failed to set issi\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.46 = internal global ptr @mlx5_function_setup._entry.44, section ".printk_index", align 4
@mlx5_function_setup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.2, i32 1063, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): failed to allocate boot pages\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.49 = internal global ptr @mlx5_function_setup._entry.47, section ".printk_index", align 4
@mlx5_function_setup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.30, ptr @.str.2, i32 1069, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): failed to read dtor\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.52 = internal global ptr @mlx5_function_setup._entry.50, section ".printk_index", align 4
@mlx5_function_setup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.30, ptr @.str.2, i32 1075, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): set_hca_ctrl failed\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.55 = internal global ptr @mlx5_function_setup._entry.53, section ".printk_index", align 4
@mlx5_function_setup._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.30, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): set_hca_cap failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.58 = internal global ptr @mlx5_function_setup._entry.56, section ".printk_index", align 4
@mlx5_function_setup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.30, ptr @.str.2, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): failed to allocate init pages\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.61 = internal global ptr @mlx5_function_setup._entry.59, section ".printk_index", align 4
@sw_owner_id = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@mlx5_function_setup._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.30, ptr @.str.2, i32 1093, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d:(pid %d): init hca failed\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.64 = internal global ptr @mlx5_function_setup._entry.62, section ".printk_index", align 4
@mlx5_function_setup._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.30, ptr @.str.2, i32 1101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%d:(pid %d): query hca failed\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx5_function_setup._entry_ptr.67 = internal global ptr @mlx5_function_setup._entry.65, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_fw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 201, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Waiting for FW initialization, timeout abort in %ds\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wait_fw_init\00", [19 x i8] zeroinitializer }, align 32
@wait_fw_init._entry_ptr = internal global ptr @wait_fw_init._entry, section ".printk_index", align 4
@mlx5_core_set_issi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Failed to query ISSI err(%d) status(%d) synd(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_core_set_issi\00", [45 x i8] zeroinitializer }, align 32
@mlx5_core_set_issi._entry_ptr = internal global ptr @mlx5_core_set_issi._entry, section ".printk_index", align 4
@mlx5_core_set_issi._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 749, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s:%d:(pid %d): Query ISSI is not supported by FW, ISSI is 0\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_core_set_issi._entry_ptr.74 = internal global ptr @mlx5_core_set_issi._entry.72, section ".printk_index", align 4
@mlx5_core_set_issi._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 764, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed to set ISSI to 1 err(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_core_set_issi._entry_ptr.77 = internal global ptr @mlx5_core_set_issi._entry.75, section ".printk_index", align 4
@set_hca_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): handle_hca_cap failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_hca_cap\00", [20 x i8] zeroinitializer }, align 32
@set_hca_cap._entry_ptr = internal global ptr @set_hca_cap._entry, section ".printk_index", align 4
@set_hca_cap._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): handle_hca_cap_atomic failed\0A\00", [50 x i8] zeroinitializer }, align 32
@set_hca_cap._entry_ptr.82 = internal global ptr @set_hca_cap._entry.80, section ".printk_index", align 4
@set_hca_cap._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 663, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): handle_hca_cap_odp failed\0A\00", [53 x i8] zeroinitializer }, align 32
@set_hca_cap._entry_ptr.85 = internal global ptr @set_hca_cap._entry.83, section ".printk_index", align 4
@set_hca_cap._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.2, i32 670, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): handle_hca_cap_roce failed\0A\00", [52 x i8] zeroinitializer }, align 32
@set_hca_cap._entry_ptr.88 = internal global ptr @set_hca_cap._entry.86, section ".printk_index", align 4
@handle_hca_cap.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_hca_cap\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Current Pkey table size %d Setting new size %d\0A\00", [32 x i8] zeroinitializer }, align 32
@handle_hca_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 533, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s:%d:(pid %d): log_max_qp value in current profile is %d, changing it to HCA capability limit (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_hca_cap._entry_ptr = internal global ptr @handle_hca_cap._entry, section ".printk_index", align 4
@to_fw_pkey_sz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 342, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): invalid pkey table size %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"to_fw_pkey_sz\00", [18 x i8] zeroinitializer }, align 32
@to_fw_pkey_sz._entry_ptr = internal global ptr @to_fw_pkey_sz._entry, section ".printk_index", align 4
@max_uc_list_get_devlink_param.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max_uc_list_get_devlink_param\00", [34 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): Failed to get param. err = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 853, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): failed to register with devcom (0x%p)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_init_once\00", [17 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr = internal global ptr @mlx5_init_once._entry, section ".printk_index", align 4
@mlx5_init_once._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:(pid %d): query board id failed\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.104 = internal global ptr @mlx5_init_once._entry.102, section ".printk_index", align 4
@mlx5_init_once._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): failed to initialize irq table\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.107 = internal global ptr @mlx5_init_once._entry.105, section ".printk_index", align 4
@mlx5_init_once._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 869, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): failed to initialize eq\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.110 = internal global ptr @mlx5_init_once._entry.108, section ".printk_index", align 4
@mlx5_init_once._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.2, i32 875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): failed to initialize events\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.113 = internal global ptr @mlx5_init_once._entry.111, section ".printk_index", align 4
@mlx5_init_once._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.101, ptr @.str.2, i32 881, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): failed to initialize fw reset events\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.116 = internal global ptr @mlx5_init_once._entry.114, section ".printk_index", align 4
@mlx5_init_once._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.101, ptr @.str.2, i32 896, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed to init rate limiting\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.119 = internal global ptr @mlx5_init_once._entry.117, section ".printk_index", align 4
@mlx5_init_once._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.101, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed to init l2 table %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.122 = internal global ptr @mlx5_init_once._entry.120, section ".printk_index", align 4
@mlx5_init_once._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.101, ptr @.str.2, i32 908, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Failed to init sriov %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.125 = internal global ptr @mlx5_init_once._entry.123, section ".printk_index", align 4
@mlx5_init_once._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.101, ptr @.str.2, i32 914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Failed to init eswitch %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.128 = internal global ptr @mlx5_init_once._entry.126, section ".printk_index", align 4
@mlx5_init_once._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.101, ptr @.str.2, i32 920, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): Failed to init fpga device %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.131 = internal global ptr @mlx5_init_once._entry.129, section ".printk_index", align 4
@mlx5_init_once._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.101, ptr @.str.2, i32 926, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed to init vhca event notifier %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.134 = internal global ptr @mlx5_init_once._entry.132, section ".printk_index", align 4
@mlx5_init_once._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.101, ptr @.str.2, i32 932, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): Failed to init SF HW table %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.137 = internal global ptr @mlx5_init_once._entry.135, section ".printk_index", align 4
@mlx5_init_once._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.101, ptr @.str.2, i32 938, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed to init SF table %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.140 = internal global ptr @mlx5_init_once._entry.138, section ".printk_index", align 4
@mlx5_init_once._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.101, ptr @.str.2, i32 944, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Failed to init device memory%d\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_init_once._entry_ptr.143 = internal global ptr @mlx5_init_once._entry.141, section ".printk_index", align 4
@mlx5_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed allocating uar, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_load\00", [22 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr = internal global ptr @mlx5_load._entry, section ".printk_index", align 4
@mlx5_load._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Failed to alloc IRQs\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.148 = internal global ptr @mlx5_load._entry.146, section ".printk_index", align 4
@mlx5_load._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 1160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Failed to create EQs\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.151 = internal global ptr @mlx5_load._entry.149, section ".printk_index", align 4
@mlx5_load._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 1166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed to init FW tracer %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.154 = internal global ptr @mlx5_load._entry.152, section ".printk_index", align 4
@mlx5_load._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.145, ptr @.str.2, i32 1176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Failed to init Resource dump %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.157 = internal global ptr @mlx5_load._entry.155, section ".printk_index", align 4
@mlx5_load._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.145, ptr @.str.2, i32 1183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): fpga device start failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.160 = internal global ptr @mlx5_load._entry.158, section ".printk_index", align 4
@mlx5_load._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.145, ptr @.str.2, i32 1191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): TLS device start failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.163 = internal global ptr @mlx5_load._entry.161, section ".printk_index", align 4
@mlx5_load._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.145, ptr @.str.2, i32 1197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed to init flow steering\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.166 = internal global ptr @mlx5_load._entry.164, section ".printk_index", align 4
@mlx5_load._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.145, ptr @.str.2, i32 1203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s:%d:(pid %d): Failed to set hca defaults\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.169 = internal global ptr @mlx5_load._entry.167, section ".printk_index", align 4
@mlx5_load._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.145, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): sf table create failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.172 = internal global ptr @mlx5_load._entry.170, section ".printk_index", align 4
@mlx5_load._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.145, ptr @.str.2, i32 1217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed to init embedded CPU\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.175 = internal global ptr @mlx5_load._entry.173, section ".printk_index", align 4
@mlx5_load._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.145, ptr @.str.2, i32 1224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): sriov init failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_load._entry_ptr.178 = internal global ptr @mlx5_load._entry.176, section ".printk_index", align 4
@mlx5_function_teardown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 1127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): tear_down_hca failed, skip cleanup\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_function_teardown\00", [41 x i8] zeroinitializer }, align 32
@mlx5_function_teardown._entry_ptr = internal global ptr @mlx5_function_teardown._entry, section ".printk_index", align 4
@types = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 0, i32 32, i32 1, i32 6, i32 2, i32 3, i32 4, i32 5, i32 7, i32 8, i32 9, i32 11, i32 12, i32 13, i32 15, i32 20, i32 17, i32 19, i32 21, i32 37, i32 29], [44 x i8] zeroinitializer }, align 32
@mlx5_pci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 1703, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Enter\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_pci_slot_reset\00", [44 x i8] zeroinitializer }, align 32
@mlx5_pci_slot_reset._entry_ptr = internal global ptr @mlx5_pci_slot_reset._entry, section ".printk_index", align 4
@mlx5_pci_slot_reset._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.182, ptr @.str.2, i32 1708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): %s: mlx5_pci_enable_device failed with error code: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_pci_slot_reset._entry_ptr.185 = internal global ptr @mlx5_pci_slot_reset._entry.183, section ".printk_index", align 4
@mlx5_pci_slot_reset._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.182, ptr @.str.2, i32 1719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): %s: wait vital failed with error code: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_pci_slot_reset._entry_ptr.188 = internal global ptr @mlx5_pci_slot_reset._entry.186, section ".printk_index", align 4
@mlx5_pci_slot_reset._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.182, ptr @.str.2, i32 1725, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Exit, err = %d, result = %d, %s\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_pci_slot_reset._entry_ptr.191 = internal global ptr @mlx5_pci_slot_reset._entry.189, section ".printk_index", align 4
@wait_vital._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 1686, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wait vital counter value 0x%x after %d iterations\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wait_vital\00", [21 x i8] zeroinitializer }, align 32
@wait_vital._entry_ptr = internal global ptr @wait_vital._entry, section ".printk_index", align 4
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"need reset\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recovered\00", [22 x i8] zeroinitializer }, align 32
@mlx5_core_pci_table = internal constant { [23 x %struct.pci_device_id], [160 x i8] } { [23 x %struct.pci_device_id] [%struct.pci_device_id { i32 5555, i32 4113, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4114, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4115, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4116, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4117, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4118, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4119, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4120, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4121, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4122, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4123, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4124, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4125, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4126, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 4127, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4129, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 4131, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 41682, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 41683, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5555, i32 41686, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 41692, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5555, i32 41695, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@mlx5_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @mlx5_pci_err_detected, ptr null, ptr @mlx5_pci_slot_reset, ptr null, ptr null, ptr @mlx5_pci_resume }, [40 x i8] zeroinitializer }, align 32
@probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 1562, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devlink alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"probe_one\00", [22 x i8] zeroinitializer }, align 32
@probe_one._entry_ptr = internal global ptr @probe_one._entry, section ".printk_index", align 4
@probe_one._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.2, i32 1586, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): mlx5_pci_init failed with error code %d\0A\00", [39 x i8] zeroinitializer }, align 32
@probe_one._entry_ptr.202 = internal global ptr @probe_one._entry.200, section ".printk_index", align 4
@probe_one._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.199, ptr @.str.2, i32 1593, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): mlx5_init_one failed with error code %d\0A\00", [39 x i8] zeroinitializer }, align 32
@probe_one._entry_ptr.205 = internal global ptr @probe_one._entry.203, section ".printk_index", align 4
@probe_one._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.199, ptr @.str.2, i32 1599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mlx5_crdump_enable failed with error code %d\0A\00", [50 x i8] zeroinitializer }, align 32
@probe_one._entry_ptr.208 = internal global ptr @probe_one._entry.206, section ".printk_index", align 4
@mlx5_pci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.209 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->pci_status_mutex\00", [41 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.2, i32 790, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Cannot enable PCI device, aborting\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5_pci_init\00", [18 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry_ptr = internal global ptr @mlx5_pci_init._entry, section ".printk_index", align 4
@mlx5_pci_init._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.2, i32 796, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): error requesting BARs, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry_ptr.214 = internal global ptr @mlx5_pci_init._entry.212, section ".printk_index", align 4
@mlx5_pci_init._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.211, ptr @.str.2, i32 804, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed setting DMA capabilities mask, aborting\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry_ptr.217 = internal global ptr @mlx5_pci_init._entry.215, section ".printk_index", align 4
@mlx5_pci_init.__UNIQUE_ID_ddebug741 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.211, ptr @.str.2, ptr @.str.218, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Enabling pci atomics failed\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.211, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Failed mapping initialization segment, aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_pci_init._entry_ptr.221 = internal global ptr @mlx5_pci_init._entry.219, section ".printk_index", align 4
@request_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.2, i32 298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing registers BAR, aborting\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"request_bar\00", [20 x i8] zeroinitializer }, align 32
@request_bar._entry_ptr = internal global ptr @request_bar._entry, section ".printk_index", align 4
@request_bar._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.223, ptr @.str.2, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't get PCI resources, aborting\0A\00", [58 x i8] zeroinitializer }, align 32
@request_bar._entry_ptr.226 = internal global ptr @request_bar._entry.224, section ".printk_index", align 4
@set_dma_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 253, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Warning: couldn't set 64-bit PCI DMA mask\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_dma_caps\00", [19 x i8] zeroinitializer }, align 32
@set_dma_caps._entry_ptr = internal global ptr @set_dma_caps._entry, section ".printk_index", align 4
@set_dma_caps._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Can't set PCI DMA mask, aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@set_dma_caps._entry_ptr.231 = internal global ptr @set_dma_caps._entry.229, section ".printk_index", align 4
@shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 1803, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Shutdown was called\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@shutdown._entry_ptr = internal global ptr @shutdown._entry, section ".printk_index", align 4
@mlx5_try_fast_unload.__UNIQUE_ID_ddebug742 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.234, ptr @.str.2, ptr @.str.235, i8 1, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_try_fast_unload\00", [43 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): force teardown firmware support=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_try_fast_unload.__UNIQUE_ID_ddebug743 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.234, ptr @.str.2, ptr @.str.236, i8 1, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.236 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): fast teardown firmware support=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_try_fast_unload.__UNIQUE_ID_ddebug744 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.234, ptr @.str.2, ptr @.str.237, i8 1, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.237 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Device in internal error state, giving up\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_try_fast_unload.__UNIQUE_ID_ddebug745 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.234, ptr @.str.2, ptr @.str.238, i8 1, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Firmware couldn't do fast unload error: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_pci_err_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 1653, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Enter, pci channel state = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_pci_err_detected\00", [42 x i8] zeroinitializer }, align 32
@mlx5_pci_err_detected._entry_ptr = internal global ptr @mlx5_pci_err_detected._entry, section ".printk_index", align 4
@mlx5_pci_err_detected._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.2, i32 1664, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Exit, result = %d, %s\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_pci_err_detected._entry_ptr.243 = internal global ptr @mlx5_pci_err_detected._entry.241, section ".printk_index", align 4
@mlx5_pci_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.2, i32 1734, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Enter, loading driver..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_pci_resume\00", [16 x i8] zeroinitializer }, align 32
@mlx5_pci_resume._entry_ptr = internal global ptr @mlx5_pci_resume._entry, section ".printk_index", align 4
@mlx5_pci_resume._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.2, i32 1739, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s Device state = %d health sensors: %d pci_status: %d. Done, err = %d, device %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_pci_resume._entry_ptr.248 = internal global ptr @mlx5_pci_resume._entry.246, section ".printk_index", align 4
@.str.249 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@mlx5_core_verify_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 1891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\014mlx5_core: WARNING: Invalid module parameter prof_sel %d, valid range 0-%zu, changing back to default(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_core_verify_params\00", [40 x i8] zeroinitializer }, align 32
@mlx5_core_verify_params._entry_ptr = internal global ptr @mlx5_core_verify_params._entry, section ".printk_index", align 4
@str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Linux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"mlx5_core_debug_mask\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 86, i32 14 }
@___asan_gen_.257 = private unnamed_addr constant [9 x i8] c"prof_sel\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 90, i32 21 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1297, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1341, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1361, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1403, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 103, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1478, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1479, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1481, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1482, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1486, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1487, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1497, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"mlx5_core_driver\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1871, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 366, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 384, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1013, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1027, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1034, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1042, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1051, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1057, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1063, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1069, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1075, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1081, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1087, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [12 x i8] c"sw_owner_id\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 94, i32 12 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1093, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1101, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 200, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 744, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 749, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 763, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 649, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 656, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 663, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 670, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 520, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 531, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 342, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 500, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 226, i32 18 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 236, i32 52 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 852, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 857, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 863, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 869, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 875, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 881, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 896, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 902, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 908, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 914, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 920, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 926, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 932, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 938, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 944, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1144, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1154, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1160, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1166, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1176, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1183, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1191, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1197, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1203, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1211, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1217, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1224, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1127, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1415, i32 18 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1703, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1707, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1718, i32 3 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1725, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1684, i32 5 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1641, i32 48 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1642, i32 41 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1643, i32 41 }
@___asan_gen_.776 = private unnamed_addr constant [20 x i8] c"mlx5_core_pci_table\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1826, i32 35 }
@___asan_gen_.779 = private unnamed_addr constant [17 x i8] c"mlx5_err_handler\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1742, i32 40 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1562, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1585, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1592, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1599, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 783, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 790, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 796, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 804, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 811, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 817, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 298, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 304, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 253, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 256, i32 4 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1803, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1756, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1757, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1763, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1781, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1653, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1664, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1734, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1738, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.939 = private constant [50 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/main.c\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.939, i32 1888, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [324 x ptr] [ptr @__UNIQUE_ID_author677, ptr @__UNIQUE_ID_debug_mask682, ptr @__UNIQUE_ID_debug_masktype681, ptr @__UNIQUE_ID_description678, ptr @__UNIQUE_ID_file679, ptr @__UNIQUE_ID_license680, ptr @__UNIQUE_ID_prof_sel684, ptr @__UNIQUE_ID_prof_seltype683, ptr @__exitcall_cleanup, ptr @__initcall__kmod_mlx5_core__746_1940_init6, ptr @__param_debug_mask, ptr @__param_prof_sel, ptr @cleanup, ptr @handle_hca_cap._entry, ptr @handle_hca_cap._entry_ptr, ptr @mlx5_core_get_caps_mode._entry, ptr @mlx5_core_get_caps_mode._entry.26, ptr @mlx5_core_get_caps_mode._entry_ptr, ptr @mlx5_core_get_caps_mode._entry_ptr.28, ptr @mlx5_core_set_issi._entry, ptr @mlx5_core_set_issi._entry.72, ptr @mlx5_core_set_issi._entry.75, ptr @mlx5_core_set_issi._entry_ptr, ptr @mlx5_core_set_issi._entry_ptr.74, ptr @mlx5_core_set_issi._entry_ptr.77, ptr @mlx5_core_verify_params._entry, ptr @mlx5_core_verify_params._entry_ptr, ptr @mlx5_function_setup._entry, ptr @mlx5_function_setup._entry.32, ptr @mlx5_function_setup._entry.35, ptr @mlx5_function_setup._entry.38, ptr @mlx5_function_setup._entry.41, ptr @mlx5_function_setup._entry.44, ptr @mlx5_function_setup._entry.47, ptr @mlx5_function_setup._entry.50, ptr @mlx5_function_setup._entry.53, ptr @mlx5_function_setup._entry.56, ptr @mlx5_function_setup._entry.59, ptr @mlx5_function_setup._entry.62, ptr @mlx5_function_setup._entry.65, ptr @mlx5_function_setup._entry_ptr, ptr @mlx5_function_setup._entry_ptr.34, ptr @mlx5_function_setup._entry_ptr.37, ptr @mlx5_function_setup._entry_ptr.40, ptr @mlx5_function_setup._entry_ptr.43, ptr @mlx5_function_setup._entry_ptr.46, ptr @mlx5_function_setup._entry_ptr.49, ptr @mlx5_function_setup._entry_ptr.52, ptr @mlx5_function_setup._entry_ptr.55, ptr @mlx5_function_setup._entry_ptr.58, ptr @mlx5_function_setup._entry_ptr.61, ptr @mlx5_function_setup._entry_ptr.64, ptr @mlx5_function_setup._entry_ptr.67, ptr @mlx5_function_teardown._entry, ptr @mlx5_function_teardown._entry_ptr, ptr @mlx5_init_once._entry, ptr @mlx5_init_once._entry.102, ptr @mlx5_init_once._entry.105, ptr @mlx5_init_once._entry.108, ptr @mlx5_init_once._entry.111, ptr @mlx5_init_once._entry.114, ptr @mlx5_init_once._entry.117, ptr @mlx5_init_once._entry.120, ptr @mlx5_init_once._entry.123, ptr @mlx5_init_once._entry.126, ptr @mlx5_init_once._entry.129, ptr @mlx5_init_once._entry.132, ptr @mlx5_init_once._entry.135, ptr @mlx5_init_once._entry.138, ptr @mlx5_init_once._entry.141, ptr @mlx5_init_once._entry_ptr, ptr @mlx5_init_once._entry_ptr.104, ptr @mlx5_init_once._entry_ptr.107, ptr @mlx5_init_once._entry_ptr.110, ptr @mlx5_init_once._entry_ptr.113, ptr @mlx5_init_once._entry_ptr.116, ptr @mlx5_init_once._entry_ptr.119, ptr @mlx5_init_once._entry_ptr.122, ptr @mlx5_init_once._entry_ptr.125, ptr @mlx5_init_once._entry_ptr.128, ptr @mlx5_init_once._entry_ptr.131, ptr @mlx5_init_once._entry_ptr.134, ptr @mlx5_init_once._entry_ptr.137, ptr @mlx5_init_once._entry_ptr.140, ptr @mlx5_init_once._entry_ptr.143, ptr @mlx5_init_one._entry, ptr @mlx5_init_one._entry_ptr, ptr @mlx5_load._entry, ptr @mlx5_load._entry.146, ptr @mlx5_load._entry.149, ptr @mlx5_load._entry.152, ptr @mlx5_load._entry.155, ptr @mlx5_load._entry.158, ptr @mlx5_load._entry.161, ptr @mlx5_load._entry.164, ptr @mlx5_load._entry.167, ptr @mlx5_load._entry.170, ptr @mlx5_load._entry.173, ptr @mlx5_load._entry.176, ptr @mlx5_load._entry_ptr, ptr @mlx5_load._entry_ptr.148, ptr @mlx5_load._entry_ptr.151, ptr @mlx5_load._entry_ptr.154, ptr @mlx5_load._entry_ptr.157, ptr @mlx5_load._entry_ptr.160, ptr @mlx5_load._entry_ptr.163, ptr @mlx5_load._entry_ptr.166, ptr @mlx5_load._entry_ptr.169, ptr @mlx5_load._entry_ptr.172, ptr @mlx5_load._entry_ptr.175, ptr @mlx5_load._entry_ptr.178, ptr @mlx5_load_one._entry, ptr @mlx5_load_one._entry_ptr, ptr @mlx5_mdev_init._entry, ptr @mlx5_mdev_init._entry_ptr, ptr @mlx5_pci_err_detected._entry, ptr @mlx5_pci_err_detected._entry.241, ptr @mlx5_pci_err_detected._entry_ptr, ptr @mlx5_pci_err_detected._entry_ptr.243, ptr @mlx5_pci_init._entry, ptr @mlx5_pci_init._entry.212, ptr @mlx5_pci_init._entry.215, ptr @mlx5_pci_init._entry.219, ptr @mlx5_pci_init._entry_ptr, ptr @mlx5_pci_init._entry_ptr.214, ptr @mlx5_pci_init._entry_ptr.217, ptr @mlx5_pci_init._entry_ptr.221, ptr @mlx5_pci_resume._entry, ptr @mlx5_pci_resume._entry.246, ptr @mlx5_pci_resume._entry_ptr, ptr @mlx5_pci_resume._entry_ptr.248, ptr @mlx5_pci_slot_reset._entry, ptr @mlx5_pci_slot_reset._entry.183, ptr @mlx5_pci_slot_reset._entry.186, ptr @mlx5_pci_slot_reset._entry.189, ptr @mlx5_pci_slot_reset._entry_ptr, ptr @mlx5_pci_slot_reset._entry_ptr.185, ptr @mlx5_pci_slot_reset._entry_ptr.188, ptr @mlx5_pci_slot_reset._entry_ptr.191, ptr @mlx5_uninit_one._entry, ptr @mlx5_uninit_one._entry_ptr, ptr @mlx5_unload_one._entry, ptr @mlx5_unload_one._entry_ptr, ptr @probe_one._entry, ptr @probe_one._entry.200, ptr @probe_one._entry.203, ptr @probe_one._entry.206, ptr @probe_one._entry_ptr, ptr @probe_one._entry_ptr.202, ptr @probe_one._entry_ptr.205, ptr @probe_one._entry_ptr.208, ptr @request_bar._entry, ptr @request_bar._entry.224, ptr @request_bar._entry_ptr, ptr @request_bar._entry_ptr.226, ptr @set_dma_caps._entry, ptr @set_dma_caps._entry.229, ptr @set_dma_caps._entry_ptr, ptr @set_dma_caps._entry_ptr.231, ptr @set_hca_cap._entry, ptr @set_hca_cap._entry.80, ptr @set_hca_cap._entry.83, ptr @set_hca_cap._entry.86, ptr @set_hca_cap._entry_ptr, ptr @set_hca_cap._entry_ptr.82, ptr @set_hca_cap._entry_ptr.85, ptr @set_hca_cap._entry_ptr.88, ptr @shutdown._entry, ptr @shutdown._entry_ptr, ptr @to_fw_pkey_sz._entry, ptr @to_fw_pkey_sz._entry_ptr, ptr @wait_fw_init._entry, ptr @wait_fw_init._entry_ptr, ptr @wait_vital._entry, ptr @wait_vital._entry_ptr, ptr @mlx5_core_debug_mask, ptr @prof_sel, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @profile, ptr @mlx5_mdev_init.__key, ptr @.str.11, ptr @mlx5_mdev_init.__key.12, ptr @.str.13, ptr @mlx5_mdev_init.__key.14, ptr @.str.15, ptr @mlx5_mdev_init.__key.16, ptr @.str.17, ptr @mlx5_mdev_init.__key.18, ptr @.str.19, ptr @mlx5_mdev_init.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mlx5_core_driver, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @sw_owner_id, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @types, ptr @.str.181, ptr @.str.182, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @mlx5_core_pci_table, ptr @mlx5_err_handler, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @mlx5_pci_init.__key, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.216, ptr @.str.218, ptr @.str.220, ptr @.str.222, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.247, ptr @.str.249, ptr @.str.251, ptr @.str.252, ptr @str], section "llvm.metadata"
@0 = internal global [230 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_sel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_uninit_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_unload_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_get_caps_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_get_caps_mode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_owner_id to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_setup._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_fw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_set_issi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_set_issi._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_set_issi._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hca_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hca_cap._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hca_cap._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_hca_cap._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_hca_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @to_fw_pkey_sz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_once._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_load._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_function_teardown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_slot_reset._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_slot_reset._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_slot_reset._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_vital._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_pci_table to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_one._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_one._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_one._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_init._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_init._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_init._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_bar._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dma_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_dma_caps._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_err_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_err_detected._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_resume._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_core_verify_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef %cap_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef %cap_type, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef %cap_type, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef %cap_type, i32 noundef %cap_mode) unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #12
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4112) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = getelementptr inbounds [16 x i8], ptr %in, i32 0, i32 4
  %shl = shl i32 %cap_type, 1
  %and = and i32 %cap_mode, 1
  %3 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in, align 4
  %and3 = and i32 %4, 65535
  %or6 = or i32 %and3, 16777216
  store i32 %or6, ptr %in, align 4
  %shl.masked = and i32 %shl, 65534
  %conv13 = or i32 %shl.masked, %and
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %and19 = and i32 %6, -65536
  %or22 = or i32 %conv13, %and19
  store i32 %or22, ptr %2, align 4
  %call28 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 4112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 368, i32 noundef %14, i32 noundef %cap_type, i32 noundef %cap_mode, i32 noundef %call28) #16
  br label %query_ex

if.end35:                                         ; preds = %do.body
  %add.ptr36 = getelementptr i8, ptr %call7.i.i, i32 16
  %15 = zext i32 %cap_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cap_mode, label %do.end45 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb38
  ]

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %arrayidx = getelementptr [38 x ptr], ptr %caps, i32 0, i32 %cap_type
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %max = getelementptr inbounds %struct.mlx5_hca_cap, ptr %17, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %max, ptr %add.ptr36, i32 4096)
  br label %query_ex

sw.bb38:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %caps39 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %arrayidx41 = getelementptr [38 x ptr], ptr %caps39, i32 0, i32 %cap_type
  %19 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx41, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %add.ptr36, i32 4096)
  br label %query_ex

do.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %24 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i72 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i72 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid49, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 386, i32 noundef %29, i32 noundef %cap_type, i32 noundef %cap_mode) #16
  br label %query_ex

query_ex:                                         ; preds = %do.end45, %sw.bb38, %sw.bb, %do.end33
  %err.0 = phi i32 [ %call28, %do.end33 ], [ -22, %do.end45 ], [ 0, %sw.bb38 ], [ 0, %sw.bb ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %query_ex, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %query_ex ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_enable_hca(ptr noundef %dev, i16 noundef zeroext %func_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #12
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17039360, ptr %in, align 4
  %conv = zext i16 %func_id to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %embedded_cpu = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %3 = ptrtoint ptr %embedded_cpu to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %embedded_cpu, align 8
  %and31 = zext i8 %4 to i32
  %shl32 = shl i32 %and31, 31
  %or33 = or i32 %shl32, %conv
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or33, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_out) #12
  %6 = call ptr @memset(ptr %_out, i32 0, i32 12)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_out) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_disable_hca(ptr noundef %dev, i16 noundef zeroext %func_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #12
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17104896, ptr %in, align 4
  %conv = zext i16 %func_id to i32
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %embedded_cpu = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %3 = ptrtoint ptr %embedded_cpu to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %embedded_cpu, align 8
  %and31 = zext i8 %4 to i32
  %shl32 = shl i32 %and31, 31
  %or33 = or i32 %shl32, %conv
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or33, ptr %add.ptr13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_out) #12
  %6 = call ptr @memset(ptr %_out, i32 0, i32 12)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_out) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_init_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #12
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  %call = tail call fastcc i32 @mlx5_function_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_function_crit_edge

entry.err_function_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_function

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mlx5_devcom_register_device(ptr noundef %dev) #12
  %devcom.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 32
  %1 = ptrtoint ptr %devcom.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %devcom.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, i32 noundef 853, i32 noundef %9, ptr noundef nonnull %call.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %call7.i = tail call i32 @mlx5_query_board_id(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i254.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i254.i to ptr
  %task14.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task14.i, align 8
  %pid15.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid15.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, i32 noundef 857, i32 noundef %17) #16
  br label %do.end

if.end16.i:                                       ; preds = %if.end.i
  %call17.i = tail call i32 @mlx5_irq_table_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end27.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i255.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i255.i to ptr
  %task25.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task25.i, align 8
  %pid26.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid26.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef 863, i32 noundef %25) #16
  br label %do.end

if.end27.i:                                       ; preds = %if.end16.i
  %call28.i = tail call i32 @mlx5_eq_table_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end38.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i256.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i256.i to ptr
  %task36.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task36.i, align 8
  %pid37.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid37.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid37.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.101, i32 noundef 869, i32 noundef %33) #16
  br label %err_irq_cleanup.i

if.end38.i:                                       ; preds = %if.end27.i
  %call39.i = tail call i32 @mlx5_events_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end49.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i257.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i257.i to ptr
  %task47.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task47.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task47.i, align 8
  %pid48.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid48.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid48.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.101, i32 noundef 875, i32 noundef %41) #16
  br label %err_eq_cleanup.i

if.end49.i:                                       ; preds = %if.end38.i
  %call50.i = tail call i32 @mlx5_fw_reset_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end60.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i258.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i258.i to ptr
  %task58.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task58.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task58.i, align 8
  %pid59.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid59.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid59.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.101, i32 noundef 881, i32 noundef %49) #16
  br label %err_events_cleanup.i

if.end60.i:                                       ; preds = %if.end49.i
  tail call void @mlx5_cq_debugfs_init(ptr noundef %dev) #12
  tail call void @mlx5_init_reserved_gids(ptr noundef %dev) #12
  tail call void @mlx5_init_clock(ptr noundef %dev) #12
  %call61.i = tail call ptr @mlx5_vxlan_create(ptr noundef %dev) #12
  %vxlan.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 22
  %50 = ptrtoint ptr %vxlan.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call61.i, ptr %vxlan.i, align 4
  %call62.i = tail call ptr @mlx5_geneve_create(ptr noundef %dev) #12
  %geneve.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 23
  %51 = ptrtoint ptr %geneve.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call62.i, ptr %geneve.i, align 8
  %call63.i = tail call i32 @mlx5_init_rl_table(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end73.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i259.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i259.i to ptr
  %task71.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task71.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task71.i, align 8
  %pid72.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid72.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid72.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.101, i32 noundef 896, i32 noundef %59) #16
  br label %err_tables_cleanup.i

if.end73.i:                                       ; preds = %if.end60.i
  %call74.i = tail call i32 @mlx5_mpfs_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end84.i, label %do.end79.i

do.end79.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %62 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i260.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i260.i to ptr
  %task82.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task82.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task82.i, align 8
  %pid83.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid83.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid83.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.101, i32 noundef 902, i32 noundef %67, i32 noundef %call74.i) #16
  br label %err_rl_cleanup.i

if.end84.i:                                       ; preds = %if.end73.i
  %call85.i = tail call i32 @mlx5_sriov_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end95.i, label %do.end90.i

do.end90.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i261.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i261.i to ptr
  %task93.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task93.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task93.i, align 8
  %pid94.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid94.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid94.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.101, i32 noundef 908, i32 noundef %75, i32 noundef %call85.i) #16
  br label %err_mpfs_cleanup.i

if.end95.i:                                       ; preds = %if.end84.i
  %call96.i = tail call i32 @mlx5_eswitch_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end106.i, label %do.end101.i

do.end101.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 8
  %78 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i262.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i262.i to ptr
  %task104.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %task104.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %task104.i, align 8
  %pid105.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 68
  %82 = ptrtoint ptr %pid105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pid105.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.101, i32 noundef 914, i32 noundef %83, i32 noundef %call96.i) #16
  br label %err_sriov_cleanup.i

if.end106.i:                                      ; preds = %if.end95.i
  %call107.i = tail call i32 @mlx5_fpga_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end117.i, label %do.end112.i

do.end112.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 8
  %86 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i263.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i263.i to ptr
  %task115.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task115.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task115.i, align 8
  %pid116.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid116.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid116.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.101, i32 noundef 920, i32 noundef %91, i32 noundef %call107.i) #16
  br label %err_eswitch_cleanup.i

if.end117.i:                                      ; preds = %if.end106.i
  %call118.i = tail call i32 @mlx5_vhca_event_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.end128.i, label %do.end123.i

do.end123.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 8
  %94 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i264.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i264.i to ptr
  %task126.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task126.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task126.i, align 8
  %pid127.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid127.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid127.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.101, i32 noundef 926, i32 noundef %99, i32 noundef %call118.i) #16
  br label %err_fpga_cleanup.i

if.end128.i:                                      ; preds = %if.end117.i
  %call129.i = tail call i32 @mlx5_sf_hw_table_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %if.end139.i, label %do.end134.i

do.end134.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 8
  %102 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i265.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i265.i to ptr
  %task137.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task137.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task137.i, align 8
  %pid138.i = getelementptr inbounds %struct.task_struct, ptr %105, i32 0, i32 68
  %106 = ptrtoint ptr %pid138.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %pid138.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.101, i32 noundef 932, i32 noundef %107, i32 noundef %call129.i) #16
  br label %err_sf_hw_table_cleanup.i

if.end139.i:                                      ; preds = %if.end128.i
  %call140.i = tail call i32 @mlx5_sf_table_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %if.end150.i, label %do.end145.i

do.end145.i:                                      ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 8
  %110 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i266.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i266.i to ptr
  %task148.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task148.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task148.i, align 8
  %pid149.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 68
  %114 = ptrtoint ptr %pid149.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid149.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.101, i32 noundef 938, i32 noundef %115, i32 noundef %call140.i) #16
  tail call void @mlx5_sf_hw_table_cleanup(ptr noundef %dev) #12
  br label %err_sf_hw_table_cleanup.i

if.end150.i:                                      ; preds = %if.end139.i
  %call151.i = tail call ptr @mlx5_dm_create(ptr noundef %dev) #12
  %dm.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 21
  %116 = ptrtoint ptr %dm.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call151.i, ptr %dm.i, align 8
  %cmp.i267.i = icmp ugt ptr %call151.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267.i, label %do.end157.i, label %if.end150.i.if.end5_crit_edge

if.end150.i.if.end5_crit_edge:                    ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

do.end157.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 8
  %119 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i268.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i268.i to ptr
  %task160.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %task160.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %task160.i, align 8
  %pid161.i = getelementptr inbounds %struct.task_struct, ptr %122, i32 0, i32 68
  %123 = ptrtoint ptr %pid161.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pid161.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.101, i32 noundef 944, i32 noundef %124, i32 noundef 0) #16
  br label %if.end5

err_sf_hw_table_cleanup.i:                        ; preds = %do.end145.i, %do.end134.i
  %err.0.i = phi i32 [ %call129.i, %do.end134.i ], [ %call140.i, %do.end145.i ]
  tail call void @mlx5_vhca_event_cleanup(ptr noundef %dev) #12
  br label %err_fpga_cleanup.i

err_fpga_cleanup.i:                               ; preds = %err_sf_hw_table_cleanup.i, %do.end123.i
  %err.1.i = phi i32 [ %call118.i, %do.end123.i ], [ %err.0.i, %err_sf_hw_table_cleanup.i ]
  tail call void @mlx5_fpga_cleanup(ptr noundef %dev) #12
  br label %err_eswitch_cleanup.i

err_eswitch_cleanup.i:                            ; preds = %err_fpga_cleanup.i, %do.end112.i
  %err.2.i = phi i32 [ %call107.i, %do.end112.i ], [ %err.1.i, %err_fpga_cleanup.i ]
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %125 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %eswitch.i, align 4
  tail call void @mlx5_eswitch_cleanup(ptr noundef %126) #12
  br label %err_sriov_cleanup.i

err_sriov_cleanup.i:                              ; preds = %err_eswitch_cleanup.i, %do.end101.i
  %err.3.i = phi i32 [ %call96.i, %do.end101.i ], [ %err.2.i, %err_eswitch_cleanup.i ]
  tail call void @mlx5_sriov_cleanup(ptr noundef %dev) #12
  br label %err_mpfs_cleanup.i

err_mpfs_cleanup.i:                               ; preds = %err_sriov_cleanup.i, %do.end90.i
  %err.4.i = phi i32 [ %call85.i, %do.end90.i ], [ %err.3.i, %err_sriov_cleanup.i ]
  tail call void @mlx5_mpfs_cleanup(ptr noundef %dev) #12
  br label %err_rl_cleanup.i

err_rl_cleanup.i:                                 ; preds = %err_mpfs_cleanup.i, %do.end79.i
  %err.5.i = phi i32 [ %call74.i, %do.end79.i ], [ %err.4.i, %err_mpfs_cleanup.i ]
  tail call void @mlx5_cleanup_rl_table(ptr noundef %dev) #12
  br label %err_tables_cleanup.i

err_tables_cleanup.i:                             ; preds = %err_rl_cleanup.i, %do.end68.i
  %err.6.i = phi i32 [ %call63.i, %do.end68.i ], [ %err.5.i, %err_rl_cleanup.i ]
  %127 = ptrtoint ptr %geneve.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %geneve.i, align 8
  tail call void @mlx5_geneve_destroy(ptr noundef %128) #12
  %129 = ptrtoint ptr %vxlan.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vxlan.i, align 4
  tail call void @mlx5_vxlan_destroy(ptr noundef %130) #12
  tail call void @mlx5_cq_debugfs_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fw_reset_cleanup(ptr noundef %dev) #12
  br label %err_events_cleanup.i

err_events_cleanup.i:                             ; preds = %err_tables_cleanup.i, %do.end55.i
  %err.7.i = phi i32 [ %call50.i, %do.end55.i ], [ %err.6.i, %err_tables_cleanup.i ]
  tail call void @mlx5_events_cleanup(ptr noundef %dev) #12
  br label %err_eq_cleanup.i

err_eq_cleanup.i:                                 ; preds = %err_events_cleanup.i, %do.end44.i
  %err.8.i = phi i32 [ %call39.i, %do.end44.i ], [ %err.7.i, %err_events_cleanup.i ]
  tail call void @mlx5_eq_table_cleanup(ptr noundef %dev) #12
  br label %err_irq_cleanup.i

err_irq_cleanup.i:                                ; preds = %err_eq_cleanup.i, %do.end33.i
  %err.9.i = phi i32 [ %call28.i, %do.end33.i ], [ %err.8.i, %err_eq_cleanup.i ]
  tail call void @mlx5_irq_table_cleanup(ptr noundef %dev) #12
  br label %do.end

do.end:                                           ; preds = %err_irq_cleanup.i, %do.end22.i, %do.end11.i
  %err.10.i = phi i32 [ %call7.i, %do.end11.i ], [ %call17.i, %do.end22.i ], [ %err.9.i, %err_irq_cleanup.i ]
  %131 = ptrtoint ptr %devcom.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %devcom.i, align 4
  tail call void @mlx5_devcom_unregister_device(ptr noundef %132) #12
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 8
  %135 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %135, -16384
  %136 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 68
  %139 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1297, i32 noundef %140) #16
  br label %function_teardown

if.end5:                                          ; preds = %do.end157.i, %if.end150.i.if.end5_crit_edge
  %call163.i = tail call ptr @mlx5_fw_tracer_create(ptr noundef %dev) #12
  %tracer.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %141 = ptrtoint ptr %tracer.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call163.i, ptr %tracer.i, align 4
  %hv_vhca.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 32
  %142 = ptrtoint ptr %hv_vhca.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %hv_vhca.i, align 8
  %call165.i = tail call ptr @mlx5_rsc_dump_create(ptr noundef %dev) #12
  %rsc_dump.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %143 = ptrtoint ptr %rsc_dump.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call165.i, ptr %rsc_dump.i, align 8
  %call6 = tail call fastcc i32 @mlx5_load(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_load_crit_edge

if.end5.err_load_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_load

if.end9:                                          ; preds = %if.end5
  %intf_state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %intf_state) #12
  %call10 = tail call ptr @priv_to_devlink(ptr noundef %dev) #12
  %call11 = tail call i32 @mlx5_devlink_register(ptr noundef %call10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.err_devlink_reg_crit_edge

if.end9.err_devlink_reg_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_devlink_reg

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @mlx5_register_device(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %err_register

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_register:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call ptr @priv_to_devlink(ptr noundef %dev) #12
  tail call void @mlx5_devlink_unregister(ptr noundef %call20) #12
  br label %err_devlink_reg

err_devlink_reg:                                  ; preds = %err_register, %if.end9.err_devlink_reg_crit_edge
  %err.0 = phi i32 [ %call11, %if.end9.err_devlink_reg_crit_edge ], [ %call15, %err_register ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %intf_state) #12
  tail call fastcc void @mlx5_unload(ptr noundef %dev)
  br label %err_load

err_load:                                         ; preds = %err_devlink_reg, %if.end5.err_load_crit_edge
  %err.1 = phi i32 [ %call6, %if.end5.err_load_crit_edge ], [ %err.0, %err_devlink_reg ]
  tail call fastcc void @mlx5_cleanup_once(ptr noundef %dev)
  br label %function_teardown

function_teardown:                                ; preds = %err_load, %do.end
  %err.2 = phi i32 [ %err.10.i, %do.end ], [ %err.1, %err_load ]
  tail call fastcc void @mlx5_function_teardown(ptr noundef %dev, i1 noundef zeroext true)
  br label %err_function

err_function:                                     ; preds = %function_teardown, %entry.err_function_crit_edge
  %err.3 = phi i32 [ %call, %entry.err_function_crit_edge ], [ %err.2, %function_teardown ]
  %144 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_function, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_function ], [ 0, %if.end14.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_function_setup(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %in.i43 = alloca [4 x i32], align 4
  %_out.i44 = alloca [3 x i32], align 4
  %in.i35 = alloca [80 x i8], align 4
  %_out.i36 = alloca [4 x i32], align 4
  %_out.i.i83.i = alloca [4 x i32], align 4
  %val.i.i.i.i = alloca %union.devlink_param_value, align 4
  %_out.i.i64.i = alloca [4 x i32], align 4
  %_out.i.i.i = alloca [4 x i32], align 4
  %he_in.i = alloca %struct.mlx5_reg_host_endianness, align 1
  %he_out.i = alloca %struct.mlx5_reg_host_endianness, align 1
  %query_out.i = alloca [28 x i32], align 4
  %query_in.i = alloca [4 x i32], align 4
  %syndrome.i = alloca i32, align 4
  %status.i = alloca i8, align 1
  %set_in.i = alloca [4 x i32], align 4
  %_out.i10 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iseg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !466
  %conv = and i32 %4, 65535
  %5 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iseg.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !467
  %shr.i = lshr i32 %7, 16
  %8 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !468
  %conv4 = and i32 %10, 65535
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %conv4) #16
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  tail call void @pcie_print_link_status(ptr noundef %14) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mlx5_tout_set_def_val(ptr noundef %dev) #12
  %call6 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 0) #12
  %conv7 = trunc i64 %call6 to i32
  %call8 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 1) #12
  %conv9 = trunc i64 %call8 to i32
  %call10 = tail call fastcc i32 @wait_fw_init(ptr noundef %dev, i32 noundef %conv7, i32 noundef %conv9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid, align 8
  %call17 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 0) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.30, i32 noundef 1028, i32 noundef %22, i64 noundef %call17) #16
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call i32 @mlx5_cmd_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i5 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i5 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.30, i32 noundef 1034, i32 noundef %30) #16
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  tail call void @mlx5_tout_query_iseg(ptr noundef %dev) #12
  %call30 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = load volatile i32, ptr @jiffies, align 128
  %conv31 = trunc i64 %call30 to i32
  %call2.i26.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv31) #12
  %add2.i = add i32 %call2.i26.i, %32
  %33 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iseg.i, align 4
  %initializing.i39.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %34, i32 0, i32 7
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initializing.i39.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool.not40.i = icmp sgt i32 %35, -1
  br i1 %tobool.not40.i, label %if.end29.if.end43_crit_edge, label %if.end29.while.body.i_crit_edge

if.end29.while.body.i_crit_edge:                  ; preds = %if.end29
  br label %while.body.i

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end29.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add2.i, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i6 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i6, label %do.end37, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %call14.i = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 2) #12
  %conv.i7 = trunc i64 %call14.i to i32
  tail call void @msleep(i32 noundef %conv.i7) #12
  %37 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iseg.i, align 4
  %initializing.i.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %38, i32 0, i32 7
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initializing.i.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  %tobool.not.i = icmp sgt i32 %39, -1
  br i1 %tobool.not.i, label %if.end.i.if.end43_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.end37:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %42 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i8 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i8 to ptr
  %task40 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task40, align 8
  %pid41 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid41, align 8
  %call42 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 3) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.30, i32 noundef 1043, i32 noundef %47, i64 noundef %call42) #16
  br label %err_cmd_cleanup

if.end43:                                         ; preds = %if.end.i.if.end43_crit_edge, %if.end29.if.end43_crit_edge
  tail call void @mlx5_cmd_set_state(ptr noundef %dev, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #12
  %48 = getelementptr inbounds i8, ptr %in.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  %50 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 17039360, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %51 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %embedded_cpu.i, align 8
  %and31.i = zext i8 %52 to i32
  %shl32.i = shl i32 %and31.i, 31
  %53 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl32.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_out.i) #12
  %54 = call ptr @memset(ptr %_out.i, i32 0, i32 12)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_out.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool45.not = icmp eq i32 %call.i, 0
  br i1 %tobool45.not, label %if.end54, label %do.end49

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %57 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i9 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i9 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task52, align 8
  %pid53 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 68
  %61 = ptrtoint ptr %pid53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pid53, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.30, i32 noundef 1051, i32 noundef %62) #16
  br label %err_cmd_cleanup

if.end54:                                         ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %query_out.i) #12
  %63 = call ptr @memset(ptr %query_out.i, i32 0, i32 112)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %query_in.i) #12
  %64 = getelementptr inbounds i8, ptr %query_in.i, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 12)
  %66 = ptrtoint ptr %query_in.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 17432576, ptr %query_in.i, align 4
  %call.i11 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %query_in.i, i32 noundef 16, ptr noundef nonnull %query_out.i, i32 noundef 112) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i12 = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i12, label %if.end24.i, label %if.then.i

if.then.i:                                        ; preds = %if.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syndrome.i) #12
  %67 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %syndrome.i, align 4, !annotation !470
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #12
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %status.i, align 1, !annotation !470
  call void @mlx5_cmd_mbox_status(ptr noundef nonnull %query_out.i, ptr noundef nonnull %status.i, ptr noundef nonnull %syndrome.i) #12
  %69 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool10.not.i = icmp eq i8 %70, 0
  br i1 %tobool10.not.i, label %if.then.i.do.end14.i_crit_edge, label %lor.lhs.false.i

if.then.i.do.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %71 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syndrome.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1159921442, i32 %72)
  %cmp.i13 = icmp eq i32 %72, -1159921442
  br i1 %cmp.i13, label %lor.lhs.false.i.do.end14.i_crit_edge, label %do.end18.i

lor.lhs.false.i.do.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14.i

do.end14.i:                                       ; preds = %lor.lhs.false.i.do.end14.i_crit_edge, %if.then.i.do.end14.i_crit_edge
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %75 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid.i, align 8
  %conv.i14 = zext i8 %70 to i32
  %81 = ptrtoint ptr %syndrome.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syndrome.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 745, i32 noundef %80, i32 noundef %call.i11, i32 noundef %conv.i14, i32 noundef %82) #16
  br label %cleanup.i

do.end18.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  %85 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i102.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i102.i to ptr
  %task21.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task21.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task21.i, align 8
  %pid22.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 68
  %89 = ptrtoint ptr %pid22.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pid22.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 749, i32 noundef %90) #16
  %issi.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 19
  %91 = ptrtoint ptr %issi.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %issi.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end18.i, %do.end14.i
  %retval.0.i = phi i32 [ %call.i11, %do.end14.i ], [ 0, %do.end18.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syndrome.i) #12
  br label %mlx5_core_set_issi.exit

if.end24.i:                                       ; preds = %if.end54
  %add.ptr26.i = getelementptr inbounds i32, ptr %query_out.i, i32 27
  %92 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr26.i, align 4
  %and28.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end24.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %set_in.i) #12
  %94 = getelementptr inbounds i8, ptr %set_in.i, i32 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 12)
  %96 = ptrtoint ptr %set_in.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 17498112, ptr %set_in.i, align 4
  %add.ptr52.i = getelementptr inbounds i32, ptr %set_in.i, i32 2
  %97 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %add.ptr52.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i10) #12
  %98 = call ptr @memset(ptr %_out.i10, i32 0, i32 16)
  %call65.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %set_in.i, i32 noundef 16, ptr noundef nonnull %_out.i10, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end75.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  %101 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i103.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i103.i to ptr
  %task73.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task73.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task73.i, align 8
  %pid74.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 68
  %105 = ptrtoint ptr %pid74.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pid74.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.71, i32 noundef 764, i32 noundef %106, i32 noundef %call65.i) #16
  br label %cleanup77.i

if.end75.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %issi76.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 19
  %107 = ptrtoint ptr %issi76.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %issi76.i, align 8
  br label %cleanup77.i

cleanup77.i:                                      ; preds = %if.end75.i, %do.end70.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %set_in.i) #12
  br label %mlx5_core_set_issi.exit

if.else.i:                                        ; preds = %if.end24.i
  %and78.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp ne i32 %and78.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool81.not.i = icmp eq i32 %93, 0
  %or.cond.i = or i1 %tobool81.not.i, %tobool79.not.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query_in.i) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %query_out.i) #12
  br i1 %or.cond.i, label %if.else.i.if.end65_crit_edge, label %if.else.i.do.end60_crit_edge

if.else.i.do.end60_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

if.else.i.if.end65_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

mlx5_core_set_issi.exit:                          ; preds = %cleanup77.i, %cleanup.i
  %retval.2.i = phi i32 [ %retval.0.i, %cleanup.i ], [ %call65.i, %cleanup77.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %query_in.i) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %query_out.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool56.not = icmp eq i32 %retval.2.i, 0
  br i1 %tobool56.not, label %mlx5_core_set_issi.exit.if.end65_crit_edge, label %mlx5_core_set_issi.exit.do.end60_crit_edge

mlx5_core_set_issi.exit.do.end60_crit_edge:       ; preds = %mlx5_core_set_issi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60

mlx5_core_set_issi.exit.if.end65_crit_edge:       ; preds = %mlx5_core_set_issi.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

do.end60:                                         ; preds = %mlx5_core_set_issi.exit.do.end60_crit_edge, %if.else.i.do.end60_crit_edge
  %retval.2.i57 = phi i32 [ %retval.2.i, %mlx5_core_set_issi.exit.do.end60_crit_edge ], [ -95, %if.else.i.do.end60_crit_edge ]
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 8
  %110 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i15 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i15 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task63, align 8
  %pid64 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 68
  %114 = ptrtoint ptr %pid64 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid64, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, i32 noundef 1057, i32 noundef %115) #16
  br label %err_disable_hca

if.end65:                                         ; preds = %mlx5_core_set_issi.exit.if.end65_crit_edge, %if.else.i.if.end65_crit_edge
  %call66 = call i32 @mlx5_satisfy_startup_pages(ptr noundef %dev, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end76, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 8
  %118 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i16 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i16 to ptr
  %task74 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task74 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task74, align 8
  %pid75 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 68
  %122 = ptrtoint ptr %pid75 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pid75, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.30, i32 noundef 1063, i32 noundef %123) #16
  br label %err_disable_hca

if.end76:                                         ; preds = %if.end65
  %call77 = call i32 @mlx5_tout_query_dtor(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end87, label %do.end82

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 8
  %126 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i17 = and i32 %126, -16384
  %127 = inttoptr i32 %and.i17 to ptr
  %task85 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %task85 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %task85, align 8
  %pid86 = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 68
  %130 = ptrtoint ptr %pid86 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pid86, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.30, i32 noundef 1069, i32 noundef %131) #16
  br label %reclaim_boot_pages

if.end87:                                         ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %he_in.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %he_out.i) #12
  %132 = call ptr @memset(ptr %he_out.i, i32 255, i32 16)
  %133 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i.i = icmp eq i32 %134, 0
  br i1 %cmp.i.i, label %set_hca_ctrl.exit, label %set_hca_ctrl.exit.thread

set_hca_ctrl.exit.thread:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %he_out.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %he_in.i) #12
  br label %if.end98

set_hca_ctrl.exit:                                ; preds = %if.end87
  %135 = getelementptr inbounds i8, ptr %he_in.i, i32 1
  %136 = call ptr @memset(ptr %135, i32 0, i32 15)
  %137 = ptrtoint ptr %he_in.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -128, ptr %he_in.i, align 1
  %call1.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %he_in.i, i32 noundef 16, ptr noundef nonnull %he_out.i, i32 noundef 16, i16 noundef zeroext 28676, i32 noundef 0, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %he_out.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %he_in.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool89.not = icmp eq i32 %call1.i, 0
  br i1 %tobool89.not, label %set_hca_ctrl.exit.if.end98_crit_edge, label %do.end93

set_hca_ctrl.exit.if.end98_crit_edge:             ; preds = %set_hca_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

do.end93:                                         ; preds = %set_hca_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 8
  %140 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i21 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i21 to ptr
  %task96 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task96 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task96, align 8
  %pid97 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 68
  %144 = ptrtoint ptr %pid97 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pid97, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.30, i32 noundef 1075, i32 noundef %145) #16
  br label %reclaim_boot_pages

if.end98:                                         ; preds = %set_hca_ctrl.exit.if.end98_crit_edge, %set_hca_ctrl.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %146 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %146, i32 noundef 3520, i32 noundef 4112) #15
  %tobool.not.i22 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i22, label %if.end98.do.end104_crit_edge, label %if.end.i24

if.end98.do.end104_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104

if.end.i24:                                       ; preds = %if.end98
  %call1.i23 = call fastcc i32 @handle_hca_cap(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 8
  %149 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i.i25 = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i25 to ptr
  %task.i26 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task.i26 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task.i26, align 8
  %pid.i27 = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 68
  %153 = ptrtoint ptr %pid.i27 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pid.i27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 649, i32 noundef %154) #16
  br label %set_hca_cap.exit

if.end5.i:                                        ; preds = %if.end.i24
  %155 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4112)
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %156 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %157, i32 16
  %158 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i.i, align 4
  %160 = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i.i = icmp eq i32 %160, 0
  br i1 %tobool.not.i.i, label %if.end5.i.if.end16.i_crit_edge, label %if.end.i.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.end.i.i:                                       ; preds = %if.end5.i
  %call.i.i.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mlx5_core_get_caps.exit.i.i, label %if.end.i.i.do.end11.i_crit_edge

if.end.i.i.do.end11.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

mlx5_core_get_caps.exit.i.i:                      ; preds = %if.end.i.i
  %call1.i.i.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 3, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %mlx5_core_get_caps.exit.i.i.do.end11.i_crit_edge

mlx5_core_get_caps.exit.i.i.do.end11.i_crit_edge: ; preds = %mlx5_core_get_caps.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

if.end3.i.i:                                      ; preds = %mlx5_core_get_caps.exit.i.i
  %arrayidx6.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 3
  %161 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx6.i.i, align 4
  %add.ptr9.i.i = getelementptr i32, ptr %162, i32 2
  %163 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %add.ptr9.i.i, align 4
  %165 = and i32 %164, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.not.not.i.i = icmp eq i32 %165, 0
  br i1 %cmp.not.not.i.i, label %if.end3.i.i.if.end16.i_crit_edge, label %handle_hca_cap_atomic.exit.i

if.end3.i.i.if.end16.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

handle_hca_cap_atomic.exit.i:                     ; preds = %if.end3.i.i
  %add.ptr16.i.i = getelementptr i8, ptr %call7.i.i.i, i32 24
  %166 = ptrtoint ptr %add.ptr16.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr16.i.i, align 8
  %and17.i.i = and i32 %167, 1073741823
  %or.i.i = or i32 %and17.i.i, 1073741824
  store i32 %or.i.i, ptr %add.ptr16.i.i, align 8
  %168 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i.i = and i32 %169, 65535
  %or.i.i.i = or i32 %and.i.i.i, 17367040
  store i32 %or.i.i.i, ptr %call7.i.i.i, align 8
  %add.ptr12.i.i.i = getelementptr i32, ptr %call7.i.i.i, i32 1
  %170 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr12.i.i.i, align 4
  %and13.i.i.i = and i32 %171, -65536
  %or16.i.i.i = or i32 %and13.i.i.i, 6
  store i32 %or16.i.i.i, ptr %add.ptr12.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i.i) #12
  %172 = call ptr @memset(ptr %_out.i.i.i, i32 0, i32 16)
  %call.i31.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 4112, ptr noundef nonnull %_out.i.i.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i)
  %tobool7.not.i = icmp eq i32 %call.i31.i.i, 0
  br i1 %tobool7.not.i, label %handle_hca_cap_atomic.exit.i.if.end16.i_crit_edge, label %handle_hca_cap_atomic.exit.i.do.end11.i_crit_edge

handle_hca_cap_atomic.exit.i.do.end11.i_crit_edge: ; preds = %handle_hca_cap_atomic.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11.i

handle_hca_cap_atomic.exit.i.if.end16.i_crit_edge: ; preds = %handle_hca_cap_atomic.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

do.end11.i:                                       ; preds = %handle_hca_cap_atomic.exit.i.do.end11.i_crit_edge, %mlx5_core_get_caps.exit.i.i.do.end11.i_crit_edge, %if.end.i.i.do.end11.i_crit_edge
  %retval.0.i105.i = phi i32 [ %call.i31.i.i, %handle_hca_cap_atomic.exit.i.do.end11.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.do.end11.i_crit_edge ], [ %call1.i.i.i, %mlx5_core_get_caps.exit.i.i.do.end11.i_crit_edge ]
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 8
  %175 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i63.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i63.i to ptr
  %task14.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %task14.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task14.i, align 8
  %pid15.i = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 68
  %179 = ptrtoint ptr %pid15.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %pid15.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef 656, i32 noundef %180) #16
  br label %set_hca_cap.exit

if.end16.i:                                       ; preds = %handle_hca_cap_atomic.exit.i.if.end16.i_crit_edge, %if.end3.i.i.if.end16.i_crit_edge, %if.end5.i.if.end16.i_crit_edge
  %181 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4112)
  %182 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i66.i = getelementptr i32, ptr %183, i32 17
  %184 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i66.i, align 4
  %186 = and i32 %185, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i67.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i67.i, label %if.end16.i.if.end27.i_crit_edge, label %if.end.i70.i

if.end16.i.if.end27.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.end.i70.i:                                     ; preds = %if.end16.i
  %call.i.i68.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 2, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i68.i)
  %tobool.not.i.i69.i = icmp eq i32 %call.i.i68.i, 0
  br i1 %tobool.not.i.i69.i, label %mlx5_core_get_caps.exit.i73.i, label %if.end.i70.i.do.end22.i_crit_edge

if.end.i70.i.do.end22.i_crit_edge:                ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

mlx5_core_get_caps.exit.i73.i:                    ; preds = %if.end.i70.i
  %call1.i.i71.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i71.i)
  %tobool1.not.i72.i = icmp eq i32 %call1.i.i71.i, 0
  br i1 %tobool1.not.i72.i, label %if.end3.i74.i, label %mlx5_core_get_caps.exit.i73.i.do.end22.i_crit_edge

mlx5_core_get_caps.exit.i73.i.do.end22.i_crit_edge: ; preds = %mlx5_core_get_caps.exit.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

if.end3.i74.i:                                    ; preds = %mlx5_core_get_caps.exit.i73.i
  %add.ptr4.i.i = getelementptr i8, ptr %call7.i.i.i, i32 16
  %arrayidx7.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %187 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx7.i.i, align 8
  %189 = call ptr @memcpy(ptr %add.ptr4.i.i, ptr %188, i32 256)
  %add.ptr14.i.i = getelementptr %struct.mlx5_hca_cap, ptr %188, i32 0, i32 1, i32 6
  %190 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr14.i.i, align 4
  %192 = and i32 %191, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool17.not.i.i = icmp eq i32 %192, 0
  br i1 %tobool17.not.i.i, label %if.end3.i74.i.if.end27.i.i_crit_edge, label %if.then18.i.i

if.end3.i74.i.if.end27.i.i_crit_edge:             ; preds = %if.end3.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then18.i.i:                                    ; preds = %if.end3.i74.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr21.i.i = getelementptr i8, ptr %call7.i.i.i, i32 40
  %193 = ptrtoint ptr %add.ptr21.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr21.i.i, align 8
  %or.i75.i = or i32 %194, 67108864
  store i32 %or.i75.i, ptr %add.ptr21.i.i, align 8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then18.i.i, %if.end3.i74.i.if.end27.i.i_crit_edge
  %195 = xor i1 %tobool17.not.i.i, true
  %add.ptr37.i.i = getelementptr %struct.mlx5_hca_cap, ptr %188, i32 0, i32 1, i32 4
  %196 = ptrtoint ptr %add.ptr37.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr37.i.i, align 4
  %198 = and i32 %197, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool40.not.i.i = icmp eq i32 %198, 0
  br i1 %tobool40.not.i.i, label %if.end27.i.i.if.end55.i.i_crit_edge, label %if.then41.i.i

if.end27.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i.i

if.then41.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr47.i.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %199 = ptrtoint ptr %add.ptr47.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr47.i.i, align 8
  %or51.i.i = or i32 %200, 67108864
  store i32 %or51.i.i, ptr %add.ptr47.i.i, align 8
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then41.i.i, %if.end27.i.i.if.end55.i.i_crit_edge
  %do_set.1.off0.i.i = phi i1 [ true, %if.then41.i.i ], [ %195, %if.end27.i.i.if.end55.i.i_crit_edge ]
  %add.ptr65.i.i = getelementptr %struct.mlx5_hca_cap, ptr %188, i32 0, i32 1, i32 7
  %201 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr65.i.i, align 4
  %203 = and i32 %202, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool68.not.i.i = icmp eq i32 %203, 0
  br i1 %tobool68.not.i.i, label %if.end55.i.i.if.end83.i.i_crit_edge, label %if.then69.i.i

if.end55.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i.i

if.then69.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr75.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %204 = ptrtoint ptr %add.ptr75.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr75.i.i, align 4
  %or79.i.i = or i32 %205, 67108864
  store i32 %or79.i.i, ptr %add.ptr75.i.i, align 4
  %206 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %.pr.i = load i32, ptr %add.ptr65.i.i, align 4
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then69.i.i, %if.end55.i.i.if.end83.i.i_crit_edge
  %207 = phi i32 [ %.pr.i, %if.then69.i.i ], [ %202, %if.end55.i.i.if.end83.i.i_crit_edge ]
  %do_set.2.off0.i.i = phi i1 [ true, %if.then69.i.i ], [ %do_set.1.off0.i.i, %if.end55.i.i.if.end83.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %207)
  %tobool96.not.i.i = icmp sgt i32 %207, -1
  br i1 %tobool96.not.i.i, label %if.end83.i.i.if.end111.i.i_crit_edge, label %if.then97.i.i

if.end83.i.i.if.end111.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111.i.i

if.then97.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr103.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %208 = ptrtoint ptr %add.ptr103.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %add.ptr103.i.i, align 4
  %or107.i.i = or i32 %209, -2147483648
  store i32 %or107.i.i, ptr %add.ptr103.i.i, align 4
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %if.then97.i.i, %if.end83.i.i.if.end111.i.i_crit_edge
  %do_set.3.off0.i.i = phi i1 [ true, %if.then97.i.i ], [ %do_set.2.off0.i.i, %if.end83.i.i.if.end111.i.i_crit_edge ]
  %210 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %add.ptr65.i.i, align 4
  %212 = and i32 %211, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool124.not.i.i = icmp eq i32 %212, 0
  br i1 %tobool124.not.i.i, label %if.end111.i.i.if.end139.i.i_crit_edge, label %if.then125.i.i

if.end111.i.i.if.end139.i.i_crit_edge:            ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139.i.i

if.then125.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr131.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %213 = ptrtoint ptr %add.ptr131.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr131.i.i, align 4
  %or135.i.i = or i32 %214, 1073741824
  store i32 %or135.i.i, ptr %add.ptr131.i.i, align 4
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.then125.i.i, %if.end111.i.i.if.end139.i.i_crit_edge
  %do_set.4.off0.i.i = phi i1 [ true, %if.then125.i.i ], [ %do_set.3.off0.i.i, %if.end111.i.i.if.end139.i.i_crit_edge ]
  %215 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr65.i.i, align 4
  %217 = and i32 %216, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool152.not.i.i = icmp eq i32 %217, 0
  br i1 %tobool152.not.i.i, label %if.end139.i.i.if.end167.i.i_crit_edge, label %if.then153.i.i

if.end139.i.i.if.end167.i.i_crit_edge:            ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167.i.i

if.then153.i.i:                                   ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr159.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %218 = ptrtoint ptr %add.ptr159.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %add.ptr159.i.i, align 4
  %or163.i.i = or i32 %219, 536870912
  store i32 %or163.i.i, ptr %add.ptr159.i.i, align 4
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %if.then153.i.i, %if.end139.i.i.if.end167.i.i_crit_edge
  %do_set.5.off0.i.i = phi i1 [ true, %if.then153.i.i ], [ %do_set.4.off0.i.i, %if.end139.i.i.if.end167.i.i_crit_edge ]
  %220 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %add.ptr65.i.i, align 4
  %222 = and i32 %221, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool180.not.i.i = icmp eq i32 %222, 0
  br i1 %tobool180.not.i.i, label %if.end167.i.i.if.end195.i.i_crit_edge, label %if.then181.i.i

if.end167.i.i.if.end195.i.i_crit_edge:            ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195.i.i

if.then181.i.i:                                   ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr187.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %223 = ptrtoint ptr %add.ptr187.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr187.i.i, align 4
  %or191.i.i = or i32 %224, 268435456
  store i32 %or191.i.i, ptr %add.ptr187.i.i, align 4
  br label %if.end195.i.i

if.end195.i.i:                                    ; preds = %if.then181.i.i, %if.end167.i.i.if.end195.i.i_crit_edge
  %do_set.6.off0.i.i = phi i1 [ true, %if.then181.i.i ], [ %do_set.5.off0.i.i, %if.end167.i.i.if.end195.i.i_crit_edge ]
  %225 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr65.i.i, align 4
  %227 = and i32 %226, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool208.not.i.i = icmp eq i32 %227, 0
  br i1 %tobool208.not.i.i, label %if.end195.i.i.if.end223.i.i_crit_edge, label %if.then209.i.i

if.end195.i.i.if.end223.i.i_crit_edge:            ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end223.i.i

if.then209.i.i:                                   ; preds = %if.end195.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr215.i.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %228 = ptrtoint ptr %add.ptr215.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr215.i.i, align 4
  %or219.i.i = or i32 %229, 134217728
  store i32 %or219.i.i, ptr %add.ptr215.i.i, align 4
  br label %if.end223.i.i

if.end223.i.i:                                    ; preds = %if.then209.i.i, %if.end195.i.i.if.end223.i.i_crit_edge
  %do_set.7.off0.i.i = phi i1 [ true, %if.then209.i.i ], [ %do_set.6.off0.i.i, %if.end195.i.i.if.end223.i.i_crit_edge ]
  %add.ptr233.i.i = getelementptr %struct.mlx5_hca_cap, ptr %188, i32 0, i32 1, i32 8
  %230 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %add.ptr233.i.i, align 4
  %232 = and i32 %231, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool236.not.i.i = icmp eq i32 %232, 0
  br i1 %tobool236.not.i.i, label %if.end223.i.i.if.end251.i.i_crit_edge, label %if.then237.i.i

if.end223.i.i.if.end251.i.i_crit_edge:            ; preds = %if.end223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251.i.i

if.then237.i.i:                                   ; preds = %if.end223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr243.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %233 = ptrtoint ptr %add.ptr243.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %add.ptr243.i.i, align 8
  %or247.i.i = or i32 %234, 67108864
  store i32 %or247.i.i, ptr %add.ptr243.i.i, align 8
  %235 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %.pr106.i = load i32, ptr %add.ptr233.i.i, align 4
  br label %if.end251.i.i

if.end251.i.i:                                    ; preds = %if.then237.i.i, %if.end223.i.i.if.end251.i.i_crit_edge
  %236 = phi i32 [ %.pr106.i, %if.then237.i.i ], [ %231, %if.end223.i.i.if.end251.i.i_crit_edge ]
  %do_set.8.off0.i.i = phi i1 [ true, %if.then237.i.i ], [ %do_set.7.off0.i.i, %if.end223.i.i.if.end251.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %236)
  %tobool264.not.i.i = icmp sgt i32 %236, -1
  br i1 %tobool264.not.i.i, label %if.end251.i.i.if.end279.i.i_crit_edge, label %if.then265.i.i

if.end251.i.i.if.end279.i.i_crit_edge:            ; preds = %if.end251.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279.i.i

if.then265.i.i:                                   ; preds = %if.end251.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr271.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %237 = ptrtoint ptr %add.ptr271.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %add.ptr271.i.i, align 8
  %or275.i.i = or i32 %238, -2147483648
  store i32 %or275.i.i, ptr %add.ptr271.i.i, align 8
  br label %if.end279.i.i

if.end279.i.i:                                    ; preds = %if.then265.i.i, %if.end251.i.i.if.end279.i.i_crit_edge
  %do_set.9.off0.i.i = phi i1 [ true, %if.then265.i.i ], [ %do_set.8.off0.i.i, %if.end251.i.i.if.end279.i.i_crit_edge ]
  %239 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %add.ptr233.i.i, align 4
  %241 = and i32 %240, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool292.not.i.i = icmp eq i32 %241, 0
  br i1 %tobool292.not.i.i, label %if.end279.i.i.if.end307.i.i_crit_edge, label %if.then293.i.i

if.end279.i.i.if.end307.i.i_crit_edge:            ; preds = %if.end279.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end307.i.i

if.then293.i.i:                                   ; preds = %if.end279.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr299.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %242 = ptrtoint ptr %add.ptr299.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %add.ptr299.i.i, align 8
  %or303.i.i = or i32 %243, 1073741824
  store i32 %or303.i.i, ptr %add.ptr299.i.i, align 8
  br label %if.end307.i.i

if.end307.i.i:                                    ; preds = %if.then293.i.i, %if.end279.i.i.if.end307.i.i_crit_edge
  %do_set.10.off0.i.i = phi i1 [ true, %if.then293.i.i ], [ %do_set.9.off0.i.i, %if.end279.i.i.if.end307.i.i_crit_edge ]
  %244 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %add.ptr233.i.i, align 4
  %246 = and i32 %245, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool320.not.i.i = icmp eq i32 %246, 0
  br i1 %tobool320.not.i.i, label %if.end307.i.i.if.end335.i.i_crit_edge, label %if.then321.i.i

if.end307.i.i.if.end335.i.i_crit_edge:            ; preds = %if.end307.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end335.i.i

if.then321.i.i:                                   ; preds = %if.end307.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr327.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %247 = ptrtoint ptr %add.ptr327.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr327.i.i, align 8
  %or331.i.i = or i32 %248, 536870912
  store i32 %or331.i.i, ptr %add.ptr327.i.i, align 8
  br label %if.end335.i.i

if.end335.i.i:                                    ; preds = %if.then321.i.i, %if.end307.i.i.if.end335.i.i_crit_edge
  %do_set.11.off0.i.i = phi i1 [ true, %if.then321.i.i ], [ %do_set.10.off0.i.i, %if.end307.i.i.if.end335.i.i_crit_edge ]
  %249 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr233.i.i, align 4
  %251 = and i32 %250, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool348.not.i.i = icmp eq i32 %251, 0
  br i1 %tobool348.not.i.i, label %if.end363.i.i, label %if.end363.thread.i.i

if.end363.i.i:                                    ; preds = %if.end335.i.i
  %252 = and i32 %250, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool376.not.i.i = icmp eq i32 %252, 0
  br i1 %tobool376.not.i.i, label %if.end391.i.i, label %if.end363.i.i.if.then377.i.i_crit_edge

if.end363.i.i.if.then377.i.i_crit_edge:           ; preds = %if.end363.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then377.i.i

if.end363.thread.i.i:                             ; preds = %if.end335.i.i
  %add.ptr355.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %253 = ptrtoint ptr %add.ptr355.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr355.i.i, align 8
  %or359.i.i = or i32 %254, 268435456
  store i32 %or359.i.i, ptr %add.ptr355.i.i, align 8
  %255 = ptrtoint ptr %add.ptr233.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %add.ptr233.i.i, align 4
  %257 = and i32 %256, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool376.not478.i.i = icmp eq i32 %257, 0
  br i1 %tobool376.not478.i.i, label %if.end363.thread.i.i.handle_hca_cap_odp.exit.i_crit_edge, label %if.end363.thread.i.i.if.then377.i.i_crit_edge

if.end363.thread.i.i.if.then377.i.i_crit_edge:    ; preds = %if.end363.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then377.i.i

if.end363.thread.i.i.handle_hca_cap_odp.exit.i_crit_edge: ; preds = %if.end363.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_hca_cap_odp.exit.i

if.then377.i.i:                                   ; preds = %if.end363.thread.i.i.if.then377.i.i_crit_edge, %if.end363.i.i.if.then377.i.i_crit_edge
  %add.ptr383.i.i = getelementptr i8, ptr %call7.i.i.i, i32 48
  %258 = ptrtoint ptr %add.ptr383.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %add.ptr383.i.i, align 8
  %or387.i.i = or i32 %259, 134217728
  store i32 %or387.i.i, ptr %add.ptr383.i.i, align 8
  br label %handle_hca_cap_odp.exit.i

if.end391.i.i:                                    ; preds = %if.end363.i.i
  br i1 %do_set.11.off0.i.i, label %if.end391.i.i.handle_hca_cap_odp.exit.i_crit_edge, label %if.end391.i.i.if.end27.i_crit_edge

if.end391.i.i.if.end27.i_crit_edge:               ; preds = %if.end391.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.end391.i.i.handle_hca_cap_odp.exit.i_crit_edge: ; preds = %if.end391.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_hca_cap_odp.exit.i

handle_hca_cap_odp.exit.i:                        ; preds = %if.end391.i.i.handle_hca_cap_odp.exit.i_crit_edge, %if.then377.i.i, %if.end363.thread.i.i.handle_hca_cap_odp.exit.i_crit_edge
  %260 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i76.i = and i32 %261, 65535
  %or.i.i77.i = or i32 %and.i.i76.i, 17367040
  store i32 %or.i.i77.i, ptr %call7.i.i.i, align 8
  %add.ptr12.i.i78.i = getelementptr i32, ptr %call7.i.i.i, i32 1
  %262 = ptrtoint ptr %add.ptr12.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %add.ptr12.i.i78.i, align 4
  %and13.i.i79.i = and i32 %263, -65536
  %or16.i.i80.i = or i32 %and13.i.i79.i, 4
  store i32 %or16.i.i80.i, ptr %add.ptr12.i.i78.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i64.i) #12
  %264 = call ptr @memset(ptr %_out.i.i64.i, i32 0, i32 16)
  %call.i473.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 4112, ptr noundef nonnull %_out.i.i64.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i64.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i473.i.i)
  %tobool18.not.i = icmp eq i32 %call.i473.i.i, 0
  br i1 %tobool18.not.i, label %handle_hca_cap_odp.exit.i.if.end27.i_crit_edge, label %handle_hca_cap_odp.exit.i.do.end22.i_crit_edge

handle_hca_cap_odp.exit.i.do.end22.i_crit_edge:   ; preds = %handle_hca_cap_odp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

handle_hca_cap_odp.exit.i.if.end27.i_crit_edge:   ; preds = %handle_hca_cap_odp.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

do.end22.i:                                       ; preds = %handle_hca_cap_odp.exit.i.do.end22.i_crit_edge, %mlx5_core_get_caps.exit.i73.i.do.end22.i_crit_edge, %if.end.i70.i.do.end22.i_crit_edge
  %retval.0.i81113.i = phi i32 [ %call.i473.i.i, %handle_hca_cap_odp.exit.i.do.end22.i_crit_edge ], [ %call.i.i68.i, %if.end.i70.i.do.end22.i_crit_edge ], [ %call1.i.i71.i, %mlx5_core_get_caps.exit.i73.i.do.end22.i_crit_edge ]
  %265 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev, align 8
  %267 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i82.i = and i32 %267, -16384
  %268 = inttoptr i32 %and.i82.i to ptr
  %task25.i = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %task25.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %task25.i, align 8
  %pid26.i = getelementptr inbounds %struct.task_struct, ptr %270, i32 0, i32 68
  %271 = ptrtoint ptr %pid26.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %pid26.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, i32 noundef 663, i32 noundef %272) #16
  br label %set_hca_cap.exit

if.end27.i:                                       ; preds = %handle_hca_cap_odp.exit.i.if.end27.i_crit_edge, %if.end391.i.i.if.end27.i_crit_edge, %if.end16.i.if.end27.i_crit_edge
  %273 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 4112)
  %274 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %275, i32 29
  %276 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %add.ptr.i.i.i, align 4
  %278 = and i32 %277, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool.not.i.i84.i = icmp eq i32 %278, 0
  br i1 %tobool.not.i.i84.i, label %if.end27.i.lor.rhs.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end27.i.lor.rhs.i.i.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end27.i
  %call.i.i.i.i = call ptr @priv_to_devlink(ptr noundef %dev) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i.i.i.i) #12
  %279 = call ptr @memset(ptr %val.i.i.i.i, i32 255, i32 32)
  %call1.i.i.i.i = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i.i.i.i, i32 noundef 9, ptr noundef nonnull %val.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %280 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %281, i32 16
  %282 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %283, 2
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 1
  br label %mlx5_is_roce_init_enabled.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %284 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %val.i.i.i.i, align 4, !range !471
  %286 = zext i8 %285 to i32
  br label %mlx5_is_roce_init_enabled.exit.i.i.i

mlx5_is_roce_init_enabled.exit.i.i.i:             ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi i32 [ %and.i.i.i.i, %cond.true.i.i.i.i ], [ %286, %cond.false.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i.i)
  %tobool3.i.not.i.i.i = icmp eq i32 %cond.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i.i.i.i) #12
  br i1 %tobool3.i.not.i.i.i, label %mlx5_is_roce_init_enabled.exit.i.i.i.if.end109_crit_edge, label %mlx5_is_roce_init_enabled.exit.i.i.i.lor.rhs.i.i.i_crit_edge

mlx5_is_roce_init_enabled.exit.i.i.i.lor.rhs.i.i.i_crit_edge: ; preds = %mlx5_is_roce_init_enabled.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i.i.i

mlx5_is_roce_init_enabled.exit.i.i.i.if.end109_crit_edge: ; preds = %mlx5_is_roce_init_enabled.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

lor.rhs.i.i.i:                                    ; preds = %mlx5_is_roce_init_enabled.exit.i.i.i.lor.rhs.i.i.i_crit_edge, %if.end27.i.lor.rhs.i.i.i_crit_edge
  %287 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %caps.i.i, align 8
  %add.ptr6.i.i.i = getelementptr i32, ptr %288, i32 29
  %289 = ptrtoint ptr %add.ptr6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %add.ptr6.i.i.i, align 4
  %291 = and i32 %290, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool9.not.i.i.i = icmp eq i32 %291, 0
  br i1 %tobool9.not.i.i.i, label %is_roce_fw_disabled.exit.i.i, label %lor.rhs.i.i.i.if.end.i86.i_crit_edge

lor.rhs.i.i.i.if.end.i86.i_crit_edge:             ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i86.i

is_roce_fw_disabled.exit.i.i:                     ; preds = %lor.rhs.i.i.i
  %add.ptr15.i.i.i = getelementptr i32, ptr %288, i32 16
  %292 = ptrtoint ptr %add.ptr15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr15.i.i.i, align 4
  %294 = and i32 %293, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool18.not.i.i.i = icmp eq i32 %294, 0
  br i1 %tobool18.not.i.i.i, label %is_roce_fw_disabled.exit.i.i.if.end109_crit_edge, label %is_roce_fw_disabled.exit.i.i.if.end.i86.i_crit_edge

is_roce_fw_disabled.exit.i.i.if.end.i86.i_crit_edge: ; preds = %is_roce_fw_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i86.i

is_roce_fw_disabled.exit.i.i.if.end109_crit_edge: ; preds = %is_roce_fw_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.end.i86.i:                                     ; preds = %is_roce_fw_disabled.exit.i.i.if.end.i86.i_crit_edge, %lor.rhs.i.i.i.if.end.i86.i_crit_edge
  %call.i.i85.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 4, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %tobool.not.i40.i.i = icmp eq i32 %call.i.i85.i, 0
  br i1 %tobool.not.i40.i.i, label %mlx5_core_get_caps.exit.i89.i, label %if.end.i86.i.do.end33.i_crit_edge

if.end.i86.i.do.end33.i_crit_edge:                ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

mlx5_core_get_caps.exit.i89.i:                    ; preds = %if.end.i86.i
  %call1.i.i87.i = call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 4, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i87.i)
  %tobool.not.i88.i = icmp eq i32 %call1.i.i87.i, 0
  br i1 %tobool.not.i88.i, label %if.end3.i90.i, label %mlx5_core_get_caps.exit.i89.i.do.end33.i_crit_edge

mlx5_core_get_caps.exit.i89.i.do.end33.i_crit_edge: ; preds = %mlx5_core_get_caps.exit.i89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.end3.i90.i:                                    ; preds = %mlx5_core_get_caps.exit.i89.i
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 4
  %295 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i.i, align 8
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %296, align 4
  %299 = and i32 %298, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool4.not.i.i = icmp eq i32 %299, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i, label %if.end3.i90.i.if.end109_crit_edge

if.end3.i90.i.if.end109_crit_edge:                ; preds = %if.end3.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

lor.lhs.false.i.i:                                ; preds = %if.end3.i90.i
  %max.i.i = getelementptr inbounds %struct.mlx5_hca_cap, ptr %296, i32 0, i32 1
  %300 = ptrtoint ptr %max.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %max.i.i, align 4
  %302 = and i32 %301, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %tobool12.not.i.i = icmp eq i32 %302, 0
  br i1 %tobool12.not.i.i, label %lor.lhs.false.i.i.if.end109_crit_edge, label %handle_hca_cap_roce.exit.i

lor.lhs.false.i.i.if.end109_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

handle_hca_cap_roce.exit.i:                       ; preds = %lor.lhs.false.i.i
  %add.ptr15.i.i = getelementptr i8, ptr %call7.i.i.i, i32 16
  %303 = call ptr @memcpy(ptr %add.ptr15.i.i, ptr %296, i32 256)
  %304 = ptrtoint ptr %add.ptr15.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %add.ptr15.i.i, align 8
  %or.i91.i = or i32 %305, 134217728
  store i32 %or.i91.i, ptr %add.ptr15.i.i, align 8
  %306 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i92.i = and i32 %307, 65535
  %or.i.i93.i = or i32 %and.i.i92.i, 17367040
  store i32 %or.i.i93.i, ptr %call7.i.i.i, align 8
  %add.ptr12.i.i94.i = getelementptr i32, ptr %call7.i.i.i, i32 1
  %308 = ptrtoint ptr %add.ptr12.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %add.ptr12.i.i94.i, align 4
  %and13.i.i95.i = and i32 %309, -65536
  %or16.i.i96.i = or i32 %and13.i.i95.i, 8
  store i32 %or16.i.i96.i, ptr %add.ptr12.i.i94.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i83.i) #12
  %310 = call ptr @memset(ptr %_out.i.i83.i, i32 0, i32 16)
  %call.i41.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef 4112, ptr noundef nonnull %_out.i.i83.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i83.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i.i)
  %tobool29.not.i28 = icmp eq i32 %call.i41.i.i, 0
  br i1 %tobool29.not.i28, label %handle_hca_cap_roce.exit.i.if.end109_crit_edge, label %handle_hca_cap_roce.exit.i.do.end33.i_crit_edge

handle_hca_cap_roce.exit.i.do.end33.i_crit_edge:  ; preds = %handle_hca_cap_roce.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

handle_hca_cap_roce.exit.i.if.end109_crit_edge:   ; preds = %handle_hca_cap_roce.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

do.end33.i:                                       ; preds = %handle_hca_cap_roce.exit.i.do.end33.i_crit_edge, %mlx5_core_get_caps.exit.i89.i.do.end33.i_crit_edge, %if.end.i86.i.do.end33.i_crit_edge
  %retval.0.i97120.i = phi i32 [ %call.i41.i.i, %handle_hca_cap_roce.exit.i.do.end33.i_crit_edge ], [ %call.i.i85.i, %if.end.i86.i.do.end33.i_crit_edge ], [ %call1.i.i87.i, %mlx5_core_get_caps.exit.i89.i.do.end33.i_crit_edge ]
  %311 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev, align 8
  %313 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i98.i = and i32 %313, -16384
  %314 = inttoptr i32 %and.i98.i to ptr
  %task36.i = getelementptr inbounds %struct.thread_info, ptr %314, i32 0, i32 2
  %315 = ptrtoint ptr %task36.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %task36.i, align 8
  %pid37.i = getelementptr inbounds %struct.task_struct, ptr %316, i32 0, i32 68
  %317 = ptrtoint ptr %pid37.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %pid37.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %312, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.79, i32 noundef 670, i32 noundef %318) #16
  br label %set_hca_cap.exit

set_hca_cap.exit:                                 ; preds = %do.end33.i, %do.end22.i, %do.end11.i, %do.end.i
  %err.0.i29 = phi i32 [ %call1.i23, %do.end.i ], [ %retval.0.i105.i, %do.end11.i ], [ %retval.0.i81113.i, %do.end22.i ], [ %retval.0.i97120.i, %do.end33.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %do.end104

do.end104:                                        ; preds = %set_hca_cap.exit, %if.end98.do.end104_crit_edge
  %retval.0.i3062 = phi i32 [ %err.0.i29, %set_hca_cap.exit ], [ -12, %if.end98.do.end104_crit_edge ]
  %319 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev, align 8
  %321 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i32 = and i32 %321, -16384
  %322 = inttoptr i32 %and.i32 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %task107, align 8
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %324, i32 0, i32 68
  %325 = ptrtoint ptr %pid108 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %pid108, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %320, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.30, i32 noundef 1081, i32 noundef %326) #16
  br label %reclaim_boot_pages

if.end109:                                        ; preds = %handle_hca_cap_roce.exit.i.if.end109_crit_edge, %lor.lhs.false.i.i.if.end109_crit_edge, %if.end3.i90.i.if.end109_crit_edge, %is_roce_fw_disabled.exit.i.i.if.end109_crit_edge, %mlx5_is_roce_init_enabled.exit.i.i.i.if.end109_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %call110 = call i32 @mlx5_satisfy_startup_pages(ptr noundef %dev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end120, label %do.end115

do.end115:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %327 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dev, align 8
  %329 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i33 = and i32 %329, -16384
  %330 = inttoptr i32 %and.i33 to ptr
  %task118 = getelementptr inbounds %struct.thread_info, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %task118 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %task118, align 8
  %pid119 = getelementptr inbounds %struct.task_struct, ptr %332, i32 0, i32 68
  %333 = ptrtoint ptr %pid119 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %pid119, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %328, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.30, i32 noundef 1087, i32 noundef %334) #16
  br label %reclaim_boot_pages

if.end120:                                        ; preds = %if.end109
  %call121 = call i32 @mlx5_cmd_init_hca(ptr noundef %dev, ptr noundef nonnull @sw_owner_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end131, label %do.end126

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %335 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev, align 8
  %337 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i34 = and i32 %337, -16384
  %338 = inttoptr i32 %and.i34 to ptr
  %task129 = getelementptr inbounds %struct.thread_info, ptr %338, i32 0, i32 2
  %339 = ptrtoint ptr %task129 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %task129, align 8
  %pid130 = getelementptr inbounds %struct.task_struct, ptr %340, i32 0, i32 68
  %341 = ptrtoint ptr %pid130 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %pid130, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.30, i32 noundef 1093, i32 noundef %342) #16
  br label %reclaim_boot_pages

if.end131:                                        ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in.i35) #12
  %343 = call ptr @memset(ptr %in.i35, i32 0, i32 16)
  %344 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i = getelementptr i32, ptr %345, i32 19
  %346 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %add.ptr.i, align 4
  %348 = and i32 %347, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool.not.i37 = icmp eq i32 %348, 0
  br i1 %tobool.not.i37, label %if.end131.mlx5_set_driver_version.exit_crit_edge, label %if.end.i40

if.end131.mlx5_set_driver_version.exit_crit_edge: ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_set_driver_version.exit

if.end.i40:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2.i = getelementptr inbounds i8, ptr %in.i35, i32 16
  %349 = call ptr @memcpy(ptr %add.ptr2.i, ptr @str, i32 64)
  %call3.i = call i32 @strlen(ptr noundef %add.ptr2.i) #17
  %sub.i38 = sub i32 64, %call3.i
  %350 = call i32 @llvm.smax.i32(i32 %sub.i38, i32 0) #12
  %call4.i = call ptr @strncat(ptr noundef %add.ptr2.i, ptr noundef nonnull @.str.98, i32 noundef %350) #12
  %call5.i = call i32 @strlen(ptr noundef %add.ptr2.i) #17
  %sub6.i = sub i32 64, %call5.i
  %351 = call i32 @llvm.smax.i32(i32 %sub6.i, i32 0) #12
  %call13.i = call ptr @strncat(ptr noundef %add.ptr2.i, ptr noundef nonnull @.str.89, i32 noundef %351) #12
  %call14.i39 = call i32 @strlen(ptr noundef %add.ptr2.i) #17
  %sub15.i = sub i32 64, %call14.i39
  %352 = call i32 @llvm.smax.i32(i32 %sub15.i, i32 0) #12
  %call22.i = call ptr @strncat(ptr noundef %add.ptr2.i, ptr noundef nonnull @.str.98, i32 noundef %352) #12
  %call23.i = call i32 @strlen(ptr noundef %add.ptr2.i) #17
  %sub24.i = sub i32 64, %call23.i
  %353 = call i32 @llvm.smax.i32(i32 %sub24.i, i32 0) #12
  %add.ptr32.i = getelementptr i8, ptr %add.ptr2.i, i32 %call23.i
  %call33.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr32.i, i32 noundef %353, ptr noundef nonnull @.str.99, i32 noundef 5, i32 noundef 17, i32 noundef 0) #12
  %354 = ptrtoint ptr %in.i35 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %in.i35, align 4
  %and37.i = and i32 %355, 65535
  %or.i = or i32 %and37.i, 17629184
  store i32 %or.i, ptr %in.i35, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i36) #12
  %356 = call ptr @memset(ptr %_out.i36, i32 0, i32 16)
  %call47.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i35, i32 noundef 80, ptr noundef nonnull %_out.i36, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i36) #12
  br label %mlx5_set_driver_version.exit

mlx5_set_driver_version.exit:                     ; preds = %if.end.i40, %if.end131.mlx5_set_driver_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i35) #12
  %call132 = call i32 @mlx5_query_hca_caps(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end142, label %do.end137

do.end137:                                        ; preds = %mlx5_set_driver_version.exit
  call void @__sanitizer_cov_trace_pc() #14
  %357 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev, align 8
  %359 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i42 = and i32 %359, -16384
  %360 = inttoptr i32 %and.i42 to ptr
  %task140 = getelementptr inbounds %struct.thread_info, ptr %360, i32 0, i32 2
  %361 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %task140, align 8
  %pid141 = getelementptr inbounds %struct.task_struct, ptr %362, i32 0, i32 68
  %363 = ptrtoint ptr %pid141 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %pid141, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %358, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.30, i32 noundef 1101, i32 noundef %364) #16
  br label %reclaim_boot_pages

if.end142:                                        ; preds = %mlx5_set_driver_version.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlx5_start_health_poll(ptr noundef %dev) #12
  br label %cleanup

reclaim_boot_pages:                               ; preds = %do.end137, %do.end126, %do.end115, %do.end104, %do.end93, %do.end82
  %err.0 = phi i32 [ %call77, %do.end82 ], [ %call1.i, %do.end93 ], [ %retval.0.i3062, %do.end104 ], [ %call110, %do.end115 ], [ %call121, %do.end126 ], [ %call132, %do.end137 ]
  %call143 = call i32 @mlx5_reclaim_startup_pages(ptr noundef %dev) #12
  br label %err_disable_hca

err_disable_hca:                                  ; preds = %reclaim_boot_pages, %do.end71, %do.end60
  %err.1 = phi i32 [ %retval.2.i57, %do.end60 ], [ %call66, %do.end71 ], [ %err.0, %reclaim_boot_pages ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i43) #12
  %365 = getelementptr inbounds i8, ptr %in.i43, i32 4
  %366 = call ptr @memset(ptr %365, i32 0, i32 12)
  %367 = ptrtoint ptr %in.i43 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 17104896, ptr %in.i43, align 4
  %add.ptr13.i45 = getelementptr inbounds i32, ptr %in.i43, i32 2
  %368 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %embedded_cpu.i, align 8
  %and31.i47 = zext i8 %369 to i32
  %shl32.i48 = shl i32 %and31.i47, 31
  %370 = ptrtoint ptr %add.ptr13.i45 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %shl32.i48, ptr %add.ptr13.i45, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_out.i44) #12
  %371 = call ptr @memset(ptr %_out.i44, i32 0, i32 12)
  %call.i49 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i43, i32 noundef 16, ptr noundef nonnull %_out.i44, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_out.i44) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i43) #12
  br label %err_cmd_cleanup

err_cmd_cleanup:                                  ; preds = %err_disable_hca, %do.end49, %do.end37
  %err.2 = phi i32 [ -16, %do.end37 ], [ %call.i, %do.end49 ], [ %err.1, %err_disable_hca ]
  call void @mlx5_cmd_set_state(ptr noundef %dev, i32 noundef 2) #12
  call void @mlx5_cmd_cleanup(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_cmd_cleanup, %if.end142, %do.end24, %do.end14
  %retval.0 = phi i32 [ %call10, %do.end14 ], [ %call19, %do.end24 ], [ %err.2, %err_cmd_cleanup ], [ 0, %if.end142 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_load(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mlx5_get_uars_page(ptr noundef %dev) #12
  %uar = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 39
  %0 = ptrtoint ptr %uar to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %uar, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef 1144, i32 noundef %8) #16
  %9 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uar, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mlx5_events_start(ptr noundef %dev) #12
  tail call void @mlx5_pagealloc_start(ptr noundef %dev) #12
  %call8 = tail call i32 @mlx5_irq_table_create(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i209 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i209 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task15, align 8
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.145, i32 noundef 1154, i32 noundef %19) #16
  br label %err_irq_table

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @mlx5_eq_table_create(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i210 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i210 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task26, align 8
  %pid27 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.145, i32 noundef 1160, i32 noundef %27) #16
  br label %err_eq_table

if.end28:                                         ; preds = %if.end17
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %28 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tracer, align 4
  %call29 = tail call i32 @mlx5_fw_tracer_init(ptr noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end41_crit_edge, label %do.end34

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i211 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i211 to ptr
  %task37 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task37, align 8
  %pid38 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.145, i32 noundef 1166, i32 noundef %37, i32 noundef %call29) #16
  %38 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tracer, align 4
  tail call void @mlx5_fw_tracer_destroy(ptr noundef %39) #12
  %40 = ptrtoint ptr %tracer to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %tracer, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %if.end28.if.end41_crit_edge
  tail call void @mlx5_fw_reset_events_start(ptr noundef %dev) #12
  %call43 = tail call i32 @mlx5_rsc_dump_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end53_crit_edge, label %do.end48

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %43 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i212 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i212 to ptr
  %task51 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task51, align 8
  %pid52 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid52, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.145, i32 noundef 1176, i32 noundef %48, i32 noundef %call43) #16
  tail call void @mlx5_rsc_dump_destroy(ptr noundef %dev) #12
  %rsc_dump = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %49 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rsc_dump, align 8
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.end41.if.end53_crit_edge
  %call54 = tail call i32 @mlx5_fpga_device_start(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end64, label %do.end59

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %52 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i213 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i213 to ptr
  %task62 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task62, align 8
  %pid63 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 68
  %56 = ptrtoint ptr %pid63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.145, i32 noundef 1183, i32 noundef %57, i32 noundef %call54) #16
  br label %err_fpga_start

if.end64:                                         ; preds = %if.end53
  tail call void @mlx5_accel_ipsec_init(ptr noundef %dev) #12
  %call65 = tail call i32 @mlx5_accel_tls_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end75, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  %60 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i214 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i214 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task73, align 8
  %pid74 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.145, i32 noundef 1191, i32 noundef %65, i32 noundef %call65) #16
  br label %err_tls_start

if.end75:                                         ; preds = %if.end64
  %call76 = tail call i32 @mlx5_init_fs(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end86, label %do.end81

do.end81:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  %68 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i215 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i215 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task84, align 8
  %pid85 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 68
  %72 = ptrtoint ptr %pid85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pid85, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.145, i32 noundef 1197, i32 noundef %73) #16
  br label %err_fs

if.end86:                                         ; preds = %if.end75
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %74 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %75, i32 13
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr.i, align 4
  %78 = and i32 %77, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %78)
  %cmp.i216 = icmp eq i32 %78, 256
  br i1 %cmp.i216, label %mlx5_core_set_hca_defaults.exit, label %if.end86.if.end97_crit_edge

if.end86.if.end97_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

mlx5_core_set_hca_defaults.exit:                  ; preds = %if.end86
  %call.i = tail call i32 @mlx5_nic_vport_update_local_lb(ptr noundef %dev, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool88.not = icmp eq i32 %call.i, 0
  br i1 %tobool88.not, label %mlx5_core_set_hca_defaults.exit.if.end97_crit_edge, label %do.end92

mlx5_core_set_hca_defaults.exit.if.end97_crit_edge: ; preds = %mlx5_core_set_hca_defaults.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end92:                                         ; preds = %mlx5_core_set_hca_defaults.exit
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 8
  %81 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i217 = and i32 %81, -16384
  %82 = inttoptr i32 %and.i217 to ptr
  %task95 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task95, align 8
  %pid96 = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 68
  %85 = ptrtoint ptr %pid96 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pid96, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.145, i32 noundef 1203, i32 noundef %86) #16
  br label %err_set_hca

if.end97:                                         ; preds = %mlx5_core_set_hca_defaults.exit.if.end97_crit_edge, %if.end86.if.end97_crit_edge
  tail call void @mlx5_vhca_event_start(ptr noundef %dev) #12
  %call98 = tail call i32 @mlx5_sf_hw_table_create(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end108, label %do.end103

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 8
  %89 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i218 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i218 to ptr
  %task106 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task106, align 8
  %pid107 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 68
  %93 = ptrtoint ptr %pid107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pid107, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.145, i32 noundef 1211, i32 noundef %94, i32 noundef %call98) #16
  br label %err_vhca

if.end108:                                        ; preds = %if.end97
  %call109 = tail call i32 @mlx5_ec_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end119, label %do.end114

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 8
  %97 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i219 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i219 to ptr
  %task117 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task117 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task117, align 8
  %pid118 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 68
  %101 = ptrtoint ptr %pid118 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pid118, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.145, i32 noundef 1217, i32 noundef %102) #16
  br label %err_ec

if.end119:                                        ; preds = %if.end108
  tail call void @mlx5_lag_add_mdev(ptr noundef %dev) #12
  %call120 = tail call i32 @mlx5_sriov_attach(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end130, label %do.end125

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 8
  %105 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i220 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i220 to ptr
  %task128 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task128, align 8
  %pid129 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 68
  %109 = ptrtoint ptr %pid129 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pid129, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.145, i32 noundef 1224, i32 noundef %110, i32 noundef %call120) #16
  tail call void @mlx5_lag_remove_mdev(ptr noundef %dev) #12
  tail call void @mlx5_ec_cleanup(ptr noundef %dev) #12
  br label %err_ec

if.end130:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_sf_dev_table_create(ptr noundef %dev) #12
  br label %cleanup

err_ec:                                           ; preds = %do.end125, %do.end114
  %err.0 = phi i32 [ %call109, %do.end114 ], [ %call120, %do.end125 ]
  tail call void @mlx5_sf_hw_table_destroy(ptr noundef %dev) #12
  br label %err_vhca

err_vhca:                                         ; preds = %err_ec, %do.end103
  %err.1 = phi i32 [ %call98, %do.end103 ], [ %err.0, %err_ec ]
  tail call void @mlx5_vhca_event_stop(ptr noundef %dev) #12
  br label %err_set_hca

err_set_hca:                                      ; preds = %err_vhca, %do.end92
  %err.2 = phi i32 [ %call.i, %do.end92 ], [ %err.1, %err_vhca ]
  tail call void @mlx5_cleanup_fs(ptr noundef %dev) #12
  br label %err_fs

err_fs:                                           ; preds = %err_set_hca, %do.end81
  %err.3 = phi i32 [ %call76, %do.end81 ], [ %err.2, %err_set_hca ]
  tail call void @mlx5_accel_tls_cleanup(ptr noundef %dev) #12
  br label %err_tls_start

err_tls_start:                                    ; preds = %err_fs, %do.end70
  %err.4 = phi i32 [ %call65, %do.end70 ], [ %err.3, %err_fs ]
  tail call void @mlx5_accel_ipsec_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fpga_device_stop(ptr noundef %dev) #12
  br label %err_fpga_start

err_fpga_start:                                   ; preds = %err_tls_start, %do.end59
  %err.5 = phi i32 [ %call54, %do.end59 ], [ %err.4, %err_tls_start ]
  tail call void @mlx5_rsc_dump_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fw_reset_events_stop(ptr noundef %dev) #12
  %111 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tracer, align 4
  tail call void @mlx5_fw_tracer_cleanup(ptr noundef %112) #12
  tail call void @mlx5_eq_table_destroy(ptr noundef %dev) #12
  br label %err_eq_table

err_eq_table:                                     ; preds = %err_fpga_start, %do.end23
  %err.6 = phi i32 [ %call18, %do.end23 ], [ %err.5, %err_fpga_start ]
  tail call void @mlx5_irq_table_destroy(ptr noundef %dev) #12
  br label %err_irq_table

err_irq_table:                                    ; preds = %err_eq_table, %do.end12
  %err.7 = phi i32 [ %call8, %do.end12 ], [ %err.6, %err_eq_table ]
  tail call void @mlx5_pagealloc_stop(ptr noundef %dev) #12
  tail call void @mlx5_events_stop(ptr noundef %dev) #12
  %113 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %uar, align 4
  tail call void @mlx5_put_uars_page(ptr noundef %dev, ptr noundef %114) #12
  br label %cleanup

cleanup:                                          ; preds = %err_irq_table, %if.end130, %do.end
  %retval.0 = phi i32 [ %11, %do.end ], [ %err.7, %err_irq_table ], [ 0, %if.end130 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_unload(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_sf_dev_table_destroy(ptr noundef %dev) #12
  tail call void @mlx5_sriov_detach(ptr noundef %dev) #12
  tail call void @mlx5_lag_remove_mdev(ptr noundef %dev) #12
  tail call void @mlx5_ec_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_sf_hw_table_destroy(ptr noundef %dev) #12
  tail call void @mlx5_vhca_event_stop(ptr noundef %dev) #12
  tail call void @mlx5_cleanup_fs(ptr noundef %dev) #12
  tail call void @mlx5_accel_ipsec_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_accel_tls_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fpga_device_stop(ptr noundef %dev) #12
  tail call void @mlx5_rsc_dump_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fw_reset_events_stop(ptr noundef %dev) #12
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 4
  tail call void @mlx5_fw_tracer_cleanup(ptr noundef %1) #12
  tail call void @mlx5_eq_table_destroy(ptr noundef %dev) #12
  tail call void @mlx5_irq_table_destroy(ptr noundef %dev) #12
  tail call void @mlx5_pagealloc_stop(ptr noundef %dev) #12
  tail call void @mlx5_events_stop(ptr noundef %dev) #12
  %uar = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 39
  %2 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uar, align 4
  tail call void @mlx5_put_uars_page(ptr noundef %dev, ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_cleanup_once(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_rsc_dump_destroy(ptr noundef %dev) #12
  %tracer = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 29
  %0 = ptrtoint ptr %tracer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tracer, align 4
  tail call void @mlx5_fw_tracer_destroy(ptr noundef %1) #12
  tail call void @mlx5_dm_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_sf_table_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_sf_hw_table_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_vhca_event_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fpga_cleanup(ptr noundef %dev) #12
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @mlx5_eswitch_cleanup(ptr noundef %3) #12
  tail call void @mlx5_sriov_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_mpfs_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_cleanup_rl_table(ptr noundef %dev) #12
  %geneve = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %geneve, align 8
  tail call void @mlx5_geneve_destroy(ptr noundef %5) #12
  %vxlan = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 22
  %6 = ptrtoint ptr %vxlan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vxlan, align 4
  tail call void @mlx5_vxlan_destroy(ptr noundef %7) #12
  tail call void @mlx5_cleanup_clock(ptr noundef %dev) #12
  tail call void @mlx5_cleanup_reserved_gids(ptr noundef %dev) #12
  tail call void @mlx5_cq_debugfs_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_fw_reset_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_events_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_eq_table_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_irq_table_cleanup(ptr noundef %dev) #12
  %devcom = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 32
  %8 = ptrtoint ptr %devcom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devcom, align 4
  tail call void @mlx5_devcom_unregister_device(ptr noundef %9) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_function_teardown(ptr noundef %dev, i1 noundef zeroext %boot) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_stop_health_poll(ptr noundef %dev, i1 noundef zeroext %boot) #12
  %call = tail call i32 @mlx5_cmd_teardown_hca(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.180, i32 noundef 1127, i32 noundef %7) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @mlx5_reclaim_startup_pages(ptr noundef %dev) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #12
  %8 = getelementptr inbounds i8, ptr %in.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 17104896, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %11 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %embedded_cpu.i, align 8
  %and31.i = zext i8 %12 to i32
  %shl32.i = shl i32 %and31.i, 31
  %13 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl32.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_out.i) #12
  %14 = call ptr @memset(ptr %_out.i, i32 0, i32 12)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_out.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #12
  call void @mlx5_cmd_set_state(ptr noundef %dev, i32 noundef 2) #12
  call void @mlx5_cmd_cleanup(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_uninit_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #12
  tail call void @mlx5_unregister_device(ptr noundef %dev) #12
  %call = tail call ptr @priv_to_devlink(ptr noundef %dev) #12
  tail call void @mlx5_devlink_unregister(ptr noundef %call) #12
  %intf_state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %intf_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %intf_state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1342, i32 noundef %10, ptr noundef nonnull @.str.6) #16
  tail call fastcc void @mlx5_cleanup_once(ptr noundef %dev)
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %intf_state) #12
  tail call fastcc void @mlx5_unload(ptr noundef %dev)
  tail call fastcc void @mlx5_cleanup_once(ptr noundef %dev)
  tail call fastcc void @mlx5_function_teardown(ptr noundef %dev, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end, %do.end
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_load_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #12
  %intf_state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %intf_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %intf_state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 1361, i32 noundef %10) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 4
  %call2 = tail call fastcc i32 @mlx5_function_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_function_crit_edge

if.end.err_function_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_function

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @mlx5_load(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_load_crit_edge

if.end5.err_load_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_load

if.end9:                                          ; preds = %if.end5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %intf_state) #12
  %call11 = tail call i32 @mlx5_attach_device(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %err_attach

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_attach:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %intf_state) #12
  tail call fastcc void @mlx5_unload(ptr noundef %dev)
  br label %err_load

err_load:                                         ; preds = %err_attach, %if.end5.err_load_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.err_load_crit_edge ], [ %call11, %err_attach ]
  tail call fastcc void @mlx5_function_teardown(ptr noundef %dev, i1 noundef zeroext false)
  br label %err_function

err_function:                                     ; preds = %err_load, %if.end.err_function_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.err_function_crit_edge ], [ %err.0, %err_load ]
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_function, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ 0, %do.end ], [ %err.1, %err_function ]
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_attach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_unload_one(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %intf_state_mutex, i32 noundef 0) #12
  tail call void @mlx5_detach_device(ptr noundef %dev) #12
  %intf_state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %intf_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %intf_state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef 1404, i32 noundef %10, ptr noundef nonnull @.str.10) #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %intf_state) #12
  tail call fastcc void @mlx5_unload(ptr noundef %dev)
  tail call fastcc void @mlx5_function_teardown(ptr noundef %dev, i1 noundef zeroext false)
  br label %out

out:                                              ; preds = %if.end, %do.end
  tail call void @mutex_unlock(ptr noundef %intf_state_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_mdev_init(ptr noundef %dev, i32 noundef %profile_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 18
  %arrayidx = getelementptr [3 x %struct.mlx5_profile], ptr @profile, i32 0, i32 %profile_idx
  %0 = call ptr @memcpy(ptr %profile, ptr %arrayidx, i32 200)
  %ctx_list = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 21
  %1 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ctx_list, ptr %ctx_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 21, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctx_list, ptr %prev.i, align 4
  %ctx_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mlx5_mdev_init.__key, i16 noundef signext 3) #12
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %intf_state_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx5_mdev_init.__key.12) #12
  %bfregs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38
  tail call void @__mutex_init(ptr noundef %bfregs, ptr noundef nonnull @.str.15, ptr noundef nonnull @mlx5_mdev_init.__key.14) #12
  %wc_head = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 1
  tail call void @__mutex_init(ptr noundef %wc_head, ptr noundef nonnull @.str.17, ptr noundef nonnull @mlx5_mdev_init.__key.16) #12
  %list = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %list, align 4
  %prev.i98 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i98, align 4
  %list17 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 1, i32 1
  %5 = ptrtoint ptr %list17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list17, ptr %list17, align 4
  %prev.i99 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list17, ptr %prev.i99, align 4
  %alloc_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 16
  tail call void @__mutex_init(ptr noundef %alloc_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @mlx5_mdev_init.__key.18) #12
  %pgdir_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 18
  tail call void @__mutex_init(ptr noundef %pgdir_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @mlx5_mdev_init.__key.20) #12
  %pgdir_list = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 19
  %7 = ptrtoint ptr %pgdir_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %pgdir_list, ptr %pgdir_list, align 4
  %prev.i100 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 19, i32 1
  %8 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pgdir_list, ptr %prev.i100, align 4
  %numa_node = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 17
  %9 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %numa_node, align 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %16 = load ptr, ptr @mlx5_debugfs_root, align 4
  %call27 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %16) #12
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %17 = ptrtoint ptr %dbg_root to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call27, ptr %dbg_root, align 8
  %traps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 11
  %18 = ptrtoint ptr %traps to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %traps, ptr %traps, align 4
  %prev.i101 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %traps, ptr %prev.i101, align 4
  %call28 = tail call i32 @mlx5_tout_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end, label %do.end31

do.end31:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1497, i32 noundef %27) #16
  br label %err_timeout_init

if.end:                                           ; preds = %dev_name.exit
  %call34 = tail call i32 @mlx5_health_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end.err_health_init_crit_edge

if.end.err_health_init_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_health_init

if.end37:                                         ; preds = %if.end
  %call38 = tail call i32 @mlx5_pagealloc_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.err_pagealloc_init_crit_edge

if.end37.err_pagealloc_init_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pagealloc_init

if.end41:                                         ; preds = %if.end37
  %call42 = tail call i32 @mlx5_adev_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_adev_init_crit_edge

if.end41.err_adev_init_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_adev_init

if.end45:                                         ; preds = %if.end41
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i103.for.body.i_crit_edge, %if.end45
  %i.08.i = phi i32 [ 0, %if.end45 ], [ %inc.i, %if.end.i103.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 8192) #15
  %tobool.not.i102 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i102, label %err_hca_caps, label %if.end.i103

if.end.i103:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr [21 x i32], ptr @types, i32 0, i32 %i.08.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [38 x ptr], ptr %caps.i, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %if.end.i103.cleanup_crit_edge, label %if.end.i103.for.body.i_crit_edge

if.end.i103.for.body.i_crit_edge:                 ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i103.cleanup_crit_edge:                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_hca_caps:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_hca_caps_free(ptr noundef %dev) #12
  tail call void @mlx5_adev_cleanup(ptr noundef %dev) #12
  br label %err_adev_init

err_adev_init:                                    ; preds = %err_hca_caps, %if.end41.err_adev_init_crit_edge
  %err.0 = phi i32 [ %call42, %if.end41.err_adev_init_crit_edge ], [ -12, %err_hca_caps ]
  tail call void @mlx5_pagealloc_cleanup(ptr noundef %dev) #12
  br label %err_pagealloc_init

err_pagealloc_init:                               ; preds = %err_adev_init, %if.end37.err_pagealloc_init_crit_edge
  %err.1 = phi i32 [ %call38, %if.end37.err_pagealloc_init_crit_edge ], [ %err.0, %err_adev_init ]
  tail call void @mlx5_health_cleanup(ptr noundef %dev) #12
  br label %err_health_init

err_health_init:                                  ; preds = %err_pagealloc_init, %if.end.err_health_init_crit_edge
  %err.2 = phi i32 [ %call34, %if.end.err_health_init_crit_edge ], [ %err.1, %err_pagealloc_init ]
  tail call void @mlx5_tout_cleanup(ptr noundef %dev) #12
  br label %err_timeout_init

err_timeout_init:                                 ; preds = %err_health_init, %do.end31
  %err.3 = phi i32 [ %call28, %do.end31 ], [ %err.2, %err_health_init ]
  %32 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dbg_root, align 8
  tail call void @debugfs_remove(ptr noundef %33) #12
  tail call void @mutex_destroy(ptr noundef %pgdir_mutex) #12
  tail call void @mutex_destroy(ptr noundef %alloc_mutex) #12
  tail call void @mutex_destroy(ptr noundef %wc_head) #12
  tail call void @mutex_destroy(ptr noundef %bfregs) #12
  tail call void @mutex_destroy(ptr noundef %intf_state_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %err_timeout_init, %if.end.i103.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_timeout_init ], [ 0, %if.end.i103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_tout_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_health_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_pagealloc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_adev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_adev_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_pagealloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_health_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tout_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_mdev_uninit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlx5_hca_caps_free(ptr noundef %dev)
  tail call void @mlx5_adev_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_pagealloc_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_health_cleanup(ptr noundef %dev) #12
  tail call void @mlx5_tout_cleanup(ptr noundef %dev) #12
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %0 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_root, align 8
  tail call void @debugfs_remove(ptr noundef %1) #12
  %pgdir_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 18
  tail call void @mutex_destroy(ptr noundef %pgdir_mutex) #12
  %alloc_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 16
  tail call void @mutex_destroy(ptr noundef %alloc_mutex) #12
  %bfregs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38
  %wc_head = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 38, i32 1
  tail call void @mutex_destroy(ptr noundef %wc_head) #12
  tail call void @mutex_destroy(ptr noundef %bfregs) #12
  %intf_state_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 15
  tail call void @mutex_destroy(ptr noundef %intf_state_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_hca_caps_free(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  tail call void @kfree(ptr noundef %1) #12
  %arrayidx1.1 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 32
  %2 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @kfree(ptr noundef %3) #12
  %arrayidx1.2 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1.2, align 4
  tail call void @kfree(ptr noundef %5) #12
  %arrayidx1.3 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.3, align 4
  tail call void @kfree(ptr noundef %7) #12
  %arrayidx1.4 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.4, align 4
  tail call void @kfree(ptr noundef %9) #12
  %arrayidx1.5 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.5, align 4
  tail call void @kfree(ptr noundef %11) #12
  %arrayidx1.6 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.6, align 4
  tail call void @kfree(ptr noundef %13) #12
  %arrayidx1.7 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.7, align 4
  tail call void @kfree(ptr noundef %15) #12
  %arrayidx1.8 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.8, align 4
  tail call void @kfree(ptr noundef %17) #12
  %arrayidx1.9 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.9, align 4
  tail call void @kfree(ptr noundef %19) #12
  %arrayidx1.10 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %20 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1.10, align 4
  tail call void @kfree(ptr noundef %21) #12
  %arrayidx1.11 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 11
  %22 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.11, align 4
  tail call void @kfree(ptr noundef %23) #12
  %arrayidx1.12 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %24 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.12, align 4
  tail call void @kfree(ptr noundef %25) #12
  %arrayidx1.13 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 13
  %26 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx1.13, align 4
  tail call void @kfree(ptr noundef %27) #12
  %arrayidx1.14 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx1.14, align 4
  tail call void @kfree(ptr noundef %29) #12
  %arrayidx1.15 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 20
  %30 = ptrtoint ptr %arrayidx1.15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.15, align 4
  tail call void @kfree(ptr noundef %31) #12
  %arrayidx1.16 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 17
  %32 = ptrtoint ptr %arrayidx1.16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.16, align 4
  tail call void @kfree(ptr noundef %33) #12
  %arrayidx1.17 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 19
  %34 = ptrtoint ptr %arrayidx1.17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx1.17, align 4
  tail call void @kfree(ptr noundef %35) #12
  %arrayidx1.18 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 21
  %36 = ptrtoint ptr %arrayidx1.18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.18, align 4
  tail call void @kfree(ptr noundef %37) #12
  %arrayidx1.19 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 37
  %38 = ptrtoint ptr %arrayidx1.19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1.19, align 4
  tail call void @kfree(ptr noundef %39) #12
  %arrayidx1.20 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 29
  %40 = ptrtoint ptr %arrayidx1.20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx1.20, align 4
  tail call void @kfree(ptr noundef %41) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_disable_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_error_sw_reset(ptr noundef %dev) #12
  tail call void @mlx5_unload_one(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_error_sw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_recover_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %pdev1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 8
  %pci_status_mutex.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex.i, i32 noundef 0) #12
  %pci_status.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pci_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i8 = icmp eq i32 %5, 1
  br i1 %cmp.i8, label %if.then.i, label %if.then.mlx5_pci_disable_device.exit_crit_edge

if.then.mlx5_pci_disable_device.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_pci_disable_device.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %3) #12
  %6 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pci_status.i, align 8
  br label %mlx5_pci_disable_device.exit

mlx5_pci_disable_device.exit:                     ; preds = %if.then.i, %if.then.mlx5_pci_disable_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  %7 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev1.i, align 8
  %call1 = tail call i32 @mlx5_pci_slot_reset(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 5
  br i1 %cmp.not, label %mlx5_pci_disable_device.exit.if.end3_crit_edge, label %mlx5_pci_disable_device.exit.return_crit_edge

mlx5_pci_disable_device.exit.return_crit_edge:    ; preds = %mlx5_pci_disable_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

mlx5_pci_disable_device.exit.if.end3_crit_edge:   ; preds = %mlx5_pci_disable_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %mlx5_pci_disable_device.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @mlx5_load_one(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end3, %mlx5_pci_disable_device.exit.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -5, %mlx5_pci_disable_device.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_pci_slot_reset(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %call1 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %pci_status = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_status, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.182, i32 noundef %5, i32 noundef %call1, i32 noundef %7) #16
  %pdev1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 8
  %pci_status_mutex.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex.i, i32 noundef 0) #12
  %10 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pci_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @pci_enable_device(ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %do.end5

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pci_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %pci_status, align 8
  br label %if.end

do.end5:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.182, i32 noundef 1708, i32 noundef %20, ptr noundef nonnull @.str.182, i32 noundef %call.i) #16
  br label %out

if.end:                                           ; preds = %if.then2.i, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  tail call void @pci_set_master(ptr noundef %pdev) #12
  tail call void @pci_restore_state(ptr noundef %pdev) #12
  %call8 = tail call i32 @pci_save_state(ptr noundef %pdev) #12
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %health_counter.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 17, i32 10, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %if.end
  %i.024.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %last_count.023.i = phi i32 [ 0, %if.end ], [ %last_count.1.i, %if.end8.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %health_counter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %health_counter.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !472
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %25, label %if.then.i49 [
    i32 0, label %for.body.i.if.end8.i_crit_edge
    i32 -1, label %for.body.i.if.end8.i_crit_edge67
  ]

for.body.i.if.end8.i_crit_edge67:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then.i49:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_count.023.i)
  %tobool4.not.i = icmp eq i32 %last_count.023.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %last_count.023.i, i32 %25)
  %cmp6.not.i = icmp eq i32 %last_count.023.i, %25
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %if.then.i49.if.end8.i_crit_edge, label %wait_vital.exit.thread

if.then.i49.if.end8.i_crit_edge:                  ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

wait_vital.exit.thread:                           ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.192, i32 noundef %25, i32 noundef %i.024.i) #16
  br label %out

if.end8.i:                                        ; preds = %if.then.i49.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge, %for.body.i.if.end8.i_crit_edge67
  %last_count.1.i = phi i32 [ %last_count.023.i, %for.body.i.if.end8.i_crit_edge ], [ %last_count.023.i, %for.body.i.if.end8.i_crit_edge67 ], [ %25, %if.then.i49.if.end8.i_crit_edge ]
  tail call void @msleep(i32 noundef 50) #12
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end14, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end14:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i50 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i50 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task17, align 8
  %pid18 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.182, i32 noundef 1719, i32 noundef %36, ptr noundef nonnull @.str.182, i32 noundef -110) #16
  br label %out

out:                                              ; preds = %do.end14, %wait_vital.exit.thread, %do.end5
  %err.0 = phi i32 [ %call.i, %do.end5 ], [ -110, %do.end14 ], [ 0, %wait_vital.exit.thread ]
  %switch.selectcmp.i = phi ptr [ @.str.195, %do.end5 ], [ @.str.195, %do.end14 ], [ @.str.196, %wait_vital.exit.thread ]
  %res.0 = phi i32 [ 4, %do.end5 ], [ 4, %do.end14 ], [ 5, %wait_vital.exit.thread ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  %call26 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %41 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pci_status, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.182, i32 noundef %40, i32 noundef %call26, i32 noundef %42, i32 noundef %err.0, i32 noundef %res.0, ptr noundef nonnull %switch.selectcmp.i) #16
  ret i32 %res.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5e_cleanup() #12
  tail call void @mlx5_sf_driver_unregister() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @mlx5_core_driver) #12
  tail call void @mlx5_unregister_debugfs() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_cleanup() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_driver_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_unregister_debugfs() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @sw_owner_id, i32 noundef 16) #12
  %0 = load i32, ptr @prof_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i = icmp ugt i32 %0, 2
  br i1 %cmp.i, label %do.end.i, label %entry.mlx5_core_verify_params.exit_crit_edge

entry.mlx5_core_verify_params.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_core_verify_params.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %0, i32 noundef 2, i32 noundef 2) #16
  store i32 2, ptr @prof_sel, align 4
  br label %mlx5_core_verify_params.exit

mlx5_core_verify_params.exit:                     ; preds = %do.end.i, %entry.mlx5_core_verify_params.exit_crit_edge
  tail call void @mlx5_fpga_ipsec_build_fs_cmds() #12
  tail call void @mlx5_register_debugfs() #12
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mlx5_core_driver, ptr noundef null, ptr noundef nonnull @.str.89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool33.not = icmp eq i32 %call, 0
  br i1 %tobool33.not, label %if.end35, label %mlx5_core_verify_params.exit.err_debug_crit_edge

mlx5_core_verify_params.exit.err_debug_crit_edge: ; preds = %mlx5_core_verify_params.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_debug

if.end35:                                         ; preds = %mlx5_core_verify_params.exit
  %call36 = tail call i32 @mlx5_sf_driver_register() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.err_sf_crit_edge

if.end35.err_sf_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sf

if.end39:                                         ; preds = %if.end35
  %call40 = tail call i32 @mlx5e_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %err_en

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_en:                                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_sf_driver_unregister() #12
  br label %err_sf

err_sf:                                           ; preds = %err_en, %if.end35.err_sf_crit_edge
  %err.0 = phi i32 [ %call36, %if.end35.err_sf_crit_edge ], [ %call40, %err_en ]
  tail call void @pci_unregister_driver(ptr noundef nonnull @mlx5_core_driver) #12
  br label %err_debug

err_debug:                                        ; preds = %err_sf, %mlx5_core_verify_params.exit.err_debug_crit_edge
  %err.1 = phi i32 [ %call, %mlx5_core_verify_params.exit.err_debug_crit_edge ], [ %err.0, %err_sf ]
  tail call void @mlx5_unregister_debugfs() #12
  br label %cleanup

cleanup:                                          ; preds = %err_debug, %if.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_debug ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_print_link_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tout_set_def_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_fw_init(ptr noundef %dev, i32 noundef %max_wait_mili, i32 noundef %warn_time_mili) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %warn_time_mili) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call2.i26 = tail call i32 @__msecs_to_jiffies(i32 noundef %max_wait_mili) #12
  %add2 = add i32 %call2.i26, %1
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iseg.i, align 4
  %initializing.i39 = getelementptr inbounds %struct.mlx5_init_seg, ptr %3, i32 0, i32 7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initializing.i39) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not40 = icmp sgt i32 %4, -1
  br i1 %tobool.not40, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add = add i32 %call2.i, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn_time_mili)
  %tobool4.not = icmp eq i32 %warn_time_mili, 0
  br label %while.body

while.body:                                       ; preds = %if.end13.while.body_crit_edge, %while.body.lr.ph
  %warn.041 = phi i32 [ %add, %while.body.lr.ph ], [ %warn.1, %if.end13.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub5 = sub i32 %warn.041, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %do.end, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %sub9 = sub i32 %add2, %warn.041
  %call10 = tail call i32 @jiffies_to_msecs(i32 noundef %sub9) #12
  %div = udiv i32 %call10, 1000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 201, i32 noundef %14, i32 noundef %div) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %call2.i35 = tail call i32 @__msecs_to_jiffies(i32 noundef %warn_time_mili) #12
  %add12 = add i32 %call2.i35, %15
  br label %if.end13

if.end13:                                         ; preds = %do.end, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %warn.1 = phi i32 [ %add12, %do.end ], [ %warn.041, %land.lhs.true.if.end13_crit_edge ], [ %warn.041, %if.end.if.end13_crit_edge ]
  %call14 = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 2) #12
  %conv = trunc i64 %call14 to i32
  tail call void @msleep(i32 noundef %conv) #12
  %16 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iseg.i, align 4
  %initializing.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %17, i32 0, i32 7
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %initializing.i) #12, !srcloc !465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !469
  %tobool.not = icmp sgt i32 %18, -1
  br i1 %tobool.not, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end13.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.while.end_crit_edge ], [ -16, %while.body.while.end_crit_edge ], [ 0, %if.end13.while.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tout_query_iseg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_satisfy_startup_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_tout_query_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_init_hca(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_hca_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_start_health_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_reclaim_startup_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_mbox_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_hca_cap(ptr noundef %dev, ptr noundef %set_ctx) unnamed_addr #0 align 64 {
entry:
  %_out.i = alloca [4 x i32], align 4
  %val.i475 = alloca %union.devlink_param_value, align 4
  %val.i = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 18
  %call.i = tail call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlx5_core_get_caps.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_core_get_caps.exit:                          ; preds = %entry
  %call1.i = tail call fastcc i32 @mlx5_core_get_caps_mode(ptr noundef %dev, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5_core_get_caps.exit.cleanup_crit_edge

mlx5_core_get_caps.exit.cleanup_crit_edge:        ; preds = %mlx5_core_get_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_core_get_caps.exit
  %add.ptr = getelementptr i8, ptr %set_ctx, i32 16
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %2 = call ptr @memcpy(ptr %add.ptr, ptr %1, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_hca_cap.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_hca_cap, %if.then5)) #12
          to label %do.body15 [label %if.then5], !srcloc !473

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 8
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 8
  %add.ptr12 = getelementptr i32, ptr %12, i32 12
  %13 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr12, align 4
  %and = and i32 %14, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp.i = icmp ugt i32 %and, 5
  %shl.i = shl i32 128, %and
  %15 = and i32 %shl.i, 65408
  %conv = select i1 %cmp.i, i32 0, i32 %15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_hca_cap.__UNIQUE_ID_ddebug714, ptr noundef %4, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i32 noundef 522, i32 noundef %10, i32 noundef %conv, i32 noundef 128) #12
  br label %do.body15

do.body15:                                        ; preds = %if.then5, %if.end
  %add.ptr21 = getelementptr i8, ptr %set_ctx, i32 64
  %16 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr21, align 4
  %and22 = and i32 %17, -65536
  store i32 %and22, ptr %add.ptr21, align 4
  %log_max_qp = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %log_max_qp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %log_max_qp, align 8
  %conv27 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp = icmp eq i8 %19, -1
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps, align 8
  %add.ptr34 = getelementptr %struct.mlx5_hca_cap, ptr %21, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr34, align 4
  %conv37 = and i32 %23, 31
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.umin.i32(i32 %conv37, i32 17)
  %25 = trunc i32 %24 to i8
  br label %if.end88.sink.split

if.else:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37, i32 %conv27)
  %cmp57 = icmp ult i32 %conv37, %conv27
  br i1 %cmp57, label %do.end62, label %if.else.if.end88_crit_edge

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

do.end62:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i470 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i470 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task65, align 8
  %pid66 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid66, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef 533, i32 noundef %33, i32 noundef %conv27, i32 noundef %conv37) #16
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps, align 8
  %add.ptr82 = getelementptr %struct.mlx5_hca_cap, ptr %35, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr82, align 4
  %38 = trunc i32 %37 to i8
  %conv85 = and i8 %38, 31
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %do.end62, %if.then29
  %conv85.sink = phi i8 [ %conv85, %do.end62 ], [ %25, %if.then29 ]
  %39 = ptrtoint ptr %log_max_qp to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv85.sink, ptr %log_max_qp, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %if.else.if.end88_crit_edge
  %40 = ptrtoint ptr %profile to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %profile, align 8
  %and89 = and i64 %41, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and89)
  %tobool90.not = icmp eq i64 %and89, 0
  br i1 %tobool90.not, label %if.end88.do.body108_crit_edge, label %do.body92

if.end88.do.body108_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body108

do.body92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %log_max_qp to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %log_max_qp, align 8
  %add.ptr99 = getelementptr i8, ptr %set_ctx, i32 32
  %44 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr99, align 4
  %and100 = and i32 %45, -32
  %46 = and i8 %43, 31
  %and101 = zext i8 %46 to i32
  %or103 = or i32 %and100, %and101
  store i32 %or103, ptr %add.ptr99, align 4
  br label %do.body108

do.body108:                                       ; preds = %do.body92, %if.end88.do.body108_crit_edge
  %add.ptr113 = getelementptr i8, ptr %set_ctx, i32 80
  %47 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr113, align 4
  %and114 = and i32 %48, -49153
  store i32 %and114, ptr %add.ptr113, align 4
  %add.ptr150 = getelementptr i8, ptr %set_ctx, i32 160
  %49 = ptrtoint ptr %add.ptr150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr150, align 4
  %and151 = and i32 %50, -65536
  store i32 %and151, ptr %add.ptr150, align 4
  %51 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %caps, align 8
  %add.ptr163 = getelementptr %struct.mlx5_hca_cap, ptr %52, i32 0, i32 1, i32 11
  %53 = ptrtoint ptr %add.ptr163 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr163, align 4
  %55 = and i32 %54, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool166.not = icmp eq i32 %55, 0
  br i1 %tobool166.not, label %do.body108.if.end181_crit_edge, label %do.body168

do.body108.if.end181_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end181

do.body168:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr173 = getelementptr i8, ptr %set_ctx, i32 60
  %56 = ptrtoint ptr %add.ptr173 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr173, align 4
  %or177 = or i32 %57, 134217728
  store i32 %or177, ptr %add.ptr173, align 4
  br label %if.end181

if.end181:                                        ; preds = %do.body168, %do.body108.if.end181_crit_edge
  %58 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %caps, align 8
  %add.ptr187 = getelementptr %struct.mlx5_hca_cap, ptr %59, i32 0, i32 1, i32 16
  %60 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr187, align 4
  %62 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool190.not = icmp eq i32 %62, 0
  br i1 %tobool190.not, label %if.end181.if.end205_crit_edge, label %do.body192

if.end181.if.end205_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

do.body192:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #14
  %or201 = or i32 %and114, 32
  %63 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or201, ptr %add.ptr113, align 4
  br label %if.end205

if.end205:                                        ; preds = %do.body192, %if.end181.if.end205_crit_edge
  %64 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %caps, align 8
  %add.ptr211 = getelementptr %struct.mlx5_hca_cap, ptr %65, i32 0, i32 1, i32 15
  %66 = ptrtoint ptr %add.ptr211 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr211, align 4
  %68 = and i32 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool214.not = icmp eq i32 %68, 0
  br i1 %tobool214.not, label %if.end205.if.end229_crit_edge, label %do.body216

if.end205.if.end229_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229

do.body216:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr221 = getelementptr i8, ptr %set_ctx, i32 76
  %69 = ptrtoint ptr %add.ptr221 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr221, align 4
  %or225 = or i32 %70, 16384
  store i32 %or225, ptr %add.ptr221, align 4
  br label %if.end229

if.end229:                                        ; preds = %do.body216, %if.end205.if.end229_crit_edge
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %caps, align 8
  %add.ptr235 = getelementptr %struct.mlx5_hca_cap, ptr %72, i32 0, i32 1, i32 48
  %73 = ptrtoint ptr %add.ptr235 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr235, align 4
  %shr236 = lshr i32 %74, 8
  %and237 = and i32 %shr236, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.end229.if.end261_crit_edge, label %do.body240

if.end229.if.end261_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261

do.body240:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr253 = getelementptr i8, ptr %set_ctx, i32 208
  %75 = ptrtoint ptr %add.ptr253 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr253, align 4
  %and254 = and i32 %76, -65281
  %shl256 = shl nuw nsw i32 %and237, 8
  %or257 = or i32 %and254, %shl256
  store i32 %or257, ptr %add.ptr253, align 4
  br label %if.end261

if.end261:                                        ; preds = %do.body240, %if.end229.if.end261_crit_edge
  %77 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %caps, align 8
  %add.ptr267 = getelementptr %struct.mlx5_hca_cap, ptr %78, i32 0, i32 1, i32 10
  %79 = ptrtoint ptr %add.ptr267 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr267, align 4
  %81 = and i32 %80, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool270.not = icmp eq i32 %81, 0
  br i1 %tobool270.not, label %if.end261.if.end285_crit_edge, label %do.body272

if.end261.if.end285_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end285

do.body272:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr277 = getelementptr i8, ptr %set_ctx, i32 56
  %82 = ptrtoint ptr %add.ptr277 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr277, align 4
  %or281 = or i32 %83, 33554432
  store i32 %or281, ptr %add.ptr277, align 4
  br label %if.end285

if.end285:                                        ; preds = %do.body272, %if.end261.if.end285_crit_edge
  %84 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %caps, align 8
  %add.ptr291 = getelementptr %struct.mlx5_hca_cap, ptr %85, i32 0, i32 1, i32 19
  %86 = ptrtoint ptr %add.ptr291 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr291, align 4
  %88 = and i32 %87, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool294.not = icmp eq i32 %88, 0
  br i1 %tobool294.not, label %if.end285.if.end309_crit_edge, label %do.body296

if.end285.if.end309_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end309

do.body296:                                       ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr301 = getelementptr i8, ptr %set_ctx, i32 92
  %89 = ptrtoint ptr %add.ptr301 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr301, align 4
  %or305 = or i32 %90, 33554432
  store i32 %or305, ptr %add.ptr301, align 4
  br label %if.end309

if.end309:                                        ; preds = %do.body296, %if.end285.if.end309_crit_edge
  tail call void @mlx5_vhca_state_cap_handle(ptr noundef %dev, ptr noundef %add.ptr) #12
  %91 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %caps, align 8
  %add.ptr315 = getelementptr %struct.mlx5_hca_cap, ptr %92, i32 0, i32 1, i32 56
  %93 = ptrtoint ptr %add.ptr315 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr315, align 4
  %and317 = and i32 %94, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %if.end309.if.end341_crit_edge, label %do.body320

if.end309.if.end341_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end341

do.body320:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr333 = getelementptr i8, ptr %set_ctx, i32 240
  %95 = ptrtoint ptr %add.ptr333 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr333, align 4
  %and334 = and i32 %96, -16777216
  %or337 = or i32 %and334, %and317
  store i32 %or337, ptr %add.ptr333, align 4
  br label %if.end341

if.end341:                                        ; preds = %do.body320, %if.end309.if.end341_crit_edge
  %97 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %caps, align 8
  %add.ptr347 = getelementptr i32, ptr %98, i32 29
  %99 = ptrtoint ptr %add.ptr347 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr347, align 4
  %101 = and i32 %100, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool350.not = icmp eq i32 %101, 0
  br i1 %tobool350.not, label %if.end341.if.end367_crit_edge, label %do.body352

if.end341.if.end367_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end367

do.body352:                                       ; preds = %if.end341
  %call.i471 = tail call ptr @priv_to_devlink(ptr noundef %dev) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #12
  %102 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %call1.i472 = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i471, i32 noundef 9, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i472)
  %tobool.not.i473 = icmp eq i32 %call1.i472, 0
  br i1 %tobool.not.i473, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #14
  %103 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %caps, align 8
  %add.ptr.i = getelementptr i32, ptr %104, i32 16
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %106, 2
  %and.i474 = and i32 %shr.i, 1
  br label %mlx5_is_roce_init_enabled.exit

cond.false.i:                                     ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %val.i, align 4, !range !471
  %109 = zext i8 %108 to i32
  br label %mlx5_is_roce_init_enabled.exit

mlx5_is_roce_init_enabled.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %and.i474, %cond.true.i ], [ %109, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool3.i.not = icmp eq i32 %cond.i, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #12
  %110 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %add.ptr113, align 4
  %and360 = and i32 %111, -5
  %shl362 = select i1 %tobool3.i.not, i32 0, i32 4
  %or363 = or i32 %and360, %shl362
  store i32 %or363, ptr %add.ptr113, align 4
  br label %if.end367

if.end367:                                        ; preds = %mlx5_is_roce_init_enabled.exit, %if.end341.if.end367_crit_edge
  %call.i476 = call ptr @priv_to_devlink(ptr noundef %dev) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i475) #12
  %112 = call ptr @memset(ptr %val.i475, i32 255, i32 32)
  %call1.i477 = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i476, i32 noundef 1, ptr noundef nonnull %val.i475) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i477)
  %tobool.not.i478 = icmp eq i32 %call1.i477, 0
  br i1 %tobool.not.i478, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %val.i475 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i475, align 4
  br label %max_uc_list_get_devlink_param.exit

do.body.i:                                        ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max_uc_list_get_devlink_param.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_hca_cap, %if.then6.i)) #12
          to label %max_uc_list_get_devlink_param.exit [label %if.then6.i], !srcloc !473

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 8
  %117 = call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 68
  %121 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max_uc_list_get_devlink_param.__UNIQUE_ID_ddebug713, ptr noundef %116, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, i32 noundef 500, i32 noundef %122, i32 noundef %call1.i477) #12
  br label %max_uc_list_get_devlink_param.exit

max_uc_list_get_devlink_param.exit:               ; preds = %if.then6.i, %do.body.i, %if.then.i
  %retval.0.i479 = phi i32 [ %114, %if.then.i ], [ %call1.i477, %if.then6.i ], [ %call1.i477, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i475) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i479)
  %cmp369 = icmp sgt i32 %retval.0.i479, 0
  br i1 %cmp369, label %cond.end384, label %max_uc_list_get_devlink_param.exit.if.end397_crit_edge

max_uc_list_get_devlink_param.exit.if.end397_crit_edge: ; preds = %max_uc_list_get_devlink_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end397

cond.end384:                                      ; preds = %max_uc_list_get_devlink_param.exit
  call void @__sanitizer_cov_trace_pc() #14
  %123 = call i32 @llvm.ctlz.i32(i32 %retval.0.i479, i1 true) #12, !range !474
  %add.ptr389 = getelementptr i8, ptr %set_ctx, i32 140
  %124 = ptrtoint ptr %add.ptr389 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr389, align 4
  %and390 = and i32 %125, -32
  %126 = or i32 %123, %and390
  %or393 = xor i32 %126, 31
  store i32 %or393, ptr %add.ptr389, align 4
  br label %if.end397

if.end397:                                        ; preds = %cond.end384, %max_uc_list_get_devlink_param.exit.if.end397_crit_edge
  %127 = ptrtoint ptr %set_ctx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %set_ctx, align 4
  %and.i480 = and i32 %128, 65535
  %or.i = or i32 %and.i480, 17367040
  store i32 %or.i, ptr %set_ctx, align 4
  %add.ptr12.i = getelementptr i32, ptr %set_ctx, i32 1
  %129 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %add.ptr12.i, align 4
  %and13.i = and i32 %130, -65536
  store i32 %and13.i, ptr %add.ptr12.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #12
  %131 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i481 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %set_ctx, i32 noundef 4112, ptr noundef nonnull %_out.i, i32 noundef 16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end397, %mlx5_core_get_caps.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i481, %if.end397 ], [ %call1.i, %mlx5_core_get_caps.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_state_cap_handle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_devcom_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_board_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_table_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_table_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_events_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_reset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cq_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_init_reserved_gids(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_init_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_vxlan_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_geneve_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_init_rl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sriov_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_vhca_event_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sf_hw_table_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sf_table_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_dm_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fw_tracer_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_rsc_dump_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_hw_table_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eswitch_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sriov_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_mpfs_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cleanup_rl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_geneve_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vxlan_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cq_debugfs_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_reset_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_events_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_table_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_irq_table_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devcom_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_uars_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_events_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_pagealloc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_irq_table_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_table_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fw_tracer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_tracer_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_reset_events_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_rsc_dump_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_rsc_dump_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_device_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_ipsec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_tls_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_init_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sf_hw_table_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_add_mdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sriov_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_dev_table_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_remove_mdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ec_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_hw_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_vhca_event_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cleanup_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_tls_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_ipsec_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_device_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_rsc_dump_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_reset_events_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fw_tracer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_irq_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_pagealloc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_events_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_put_uars_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_update_local_lb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_dev_table_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sriov_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_dm_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_sf_table_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cleanup_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cleanup_reserved_gids(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_stop_health_poll(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_teardown_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_health_check_fatal_sensors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @probe_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @mlx5_devlink_alloc(ptr noundef %dev1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.198) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devlink_priv(ptr noundef nonnull %call) #12
  %0 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call3, align 8
  %pdev5 = getelementptr inbounds %struct.mlx5_core_dev, ptr %call3, i32 0, i32 2
  %1 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev5, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %and = and i32 %3, 1
  %coredev_type = getelementptr inbounds %struct.mlx5_core_dev, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %coredev_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %coredev_type, align 4
  %call7 = tail call i32 @mlx5_adev_idx_alloc() #12
  %adev_idx = getelementptr inbounds %struct.mlx5_core_dev, ptr %call3, i32 0, i32 17, i32 24
  %5 = ptrtoint ptr %adev_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call7, ptr %adev_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.adev_init_err_crit_edge, label %if.end13

if.end.adev_init_err_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %adev_init_err

if.end13:                                         ; preds = %if.end
  %6 = load i32, ptr @prof_sel, align 4
  %call14 = tail call i32 @mlx5_mdev_init(ptr noundef %call3, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.mdev_init_err_crit_edge

if.end13.mdev_init_err_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %mdev_init_err

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc i32 @mlx5_pci_init(ptr noundef %call3, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call3, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.199, i32 noundef 1586, i32 noundef %14, i32 noundef %call18) #16
  br label %pci_init_err

if.end26:                                         ; preds = %if.end17
  %call27 = tail call i32 @mlx5_init_one(ptr noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end37, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call3, align 8
  %17 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i82 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i82 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.199, i32 noundef 1593, i32 noundef %22, i32 noundef %call27) #16
  tail call fastcc void @mlx5_pci_close(ptr noundef %call3)
  br label %pci_init_err

if.end37:                                         ; preds = %if.end26
  %call38 = tail call i32 @mlx5_crdump_enable(ptr noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.if.end45_crit_edge, label %do.end43

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.207, i32 noundef %call38) #16
  br label %if.end45

if.end45:                                         ; preds = %do.end43, %if.end37.if.end45_crit_edge
  %call46 = tail call i32 @pci_save_state(ptr noundef %pdev) #12
  tail call void @devlink_register(ptr noundef nonnull %call) #12
  br label %cleanup

pci_init_err:                                     ; preds = %do.end32, %do.end23
  %err.0 = phi i32 [ %call18, %do.end23 ], [ %call27, %do.end32 ]
  tail call void @mlx5_mdev_uninit(ptr noundef %call3)
  br label %mdev_init_err

mdev_init_err:                                    ; preds = %pci_init_err, %if.end13.mdev_init_err_crit_edge
  %err.1 = phi i32 [ %call14, %if.end13.mdev_init_err_crit_edge ], [ %err.0, %pci_init_err ]
  %23 = ptrtoint ptr %adev_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %adev_idx, align 4
  tail call void @mlx5_adev_idx_free(i32 noundef %24) #12
  br label %adev_init_err

adev_init_err:                                    ; preds = %mdev_init_err, %if.end.adev_init_err_crit_edge
  %err.2 = phi i32 [ %err.1, %mdev_init_err ], [ %call7, %if.end.adev_init_err_crit_edge ]
  tail call void @mlx5_devlink_free(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %adev_init_err, %if.end45, %do.end
  %retval.0 = phi i32 [ %err.2, %adev_init_err ], [ 0, %if.end45 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @remove_one(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @priv_to_devlink(ptr noundef %1) #12
  tail call void @devlink_unregister(ptr noundef %call1) #12
  tail call void @mlx5_crdump_disable(ptr noundef %1) #12
  tail call void @mlx5_drain_health_wq(ptr noundef %1) #12
  tail call void @mlx5_uninit_one(ptr noundef %1)
  tail call fastcc void @mlx5_pci_close(ptr noundef %1)
  tail call void @mlx5_mdev_uninit(ptr noundef %1)
  %adev_idx = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 24
  %2 = ptrtoint ptr %adev_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adev_idx, align 4
  tail call void @mlx5_adev_idx_free(i32 noundef %3) #12
  tail call void @mlx5_devlink_free(ptr noundef %call1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mlx5_unload_one(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mlx5_load_one(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.232) #16
  %call1 = tail call fastcc i32 @mlx5_try_fast_unload(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_unload_one(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pdev1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev1.i, align 8
  %pci_status_mutex.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex.i, i32 noundef 0) #12
  %pci_status.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.mlx5_pci_disable_device.exit_crit_edge

if.end.mlx5_pci_disable_device.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_pci_disable_device.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %5) #12
  %8 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pci_status.i, align 8
  br label %mlx5_pci_disable_device.exit

mlx5_pci_disable_device.exit:                     ; preds = %if.then.i, %if.end.mlx5_pci_disable_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_sriov_configure(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_sriov_set_msix_vec_count(ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_sriov_get_vf_total_msix(ptr nocapture noundef readonly %pdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr %struct.mlx5_hca_cap, ptr %3, i32 0, i32 1, i32 56
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 16777215
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_devlink_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_adev_idx_alloc() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_pci_init(ptr noundef %dev, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_status_mutex = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %pci_status_mutex, ptr noundef nonnull @.str.209, ptr noundef nonnull @mlx5_pci_init.__key) #12
  %pdev1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %bar_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %bar_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bar_addr, align 8
  %6 = load ptr, ptr %pdev1, align 8
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex, i32 noundef 0) #12
  %pci_status.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pci_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @pci_enable_device(ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %do.end4

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %pci_status.i, align 8
  br label %if.end

do.end4:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex) #12
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, i32 noundef 790, i32 noundef %17) #16
  br label %cleanup

if.end:                                           ; preds = %if.then2.i, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex) #12
  %flags.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i1 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i2 = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i2, label %if.end.do.end11_crit_edge, label %if.end.i

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.end.i:                                         ; preds = %if.end
  %call.i3 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool1.not.i = icmp eq i32 %call.i3, 0
  br i1 %tobool1.not.i, label %if.end16, label %if.end.i.do.end11_crit_edge

if.end.i.do.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end11:                                         ; preds = %if.end.i.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %.str.225.sink.i = phi ptr [ @.str.222, %if.end.do.end11_crit_edge ], [ @.str.225, %if.end.i.do.end11_crit_edge ]
  %retval.0.ph.i = phi i32 [ -19, %if.end.do.end11_crit_edge ], [ %call.i3, %if.end.i.do.end11_crit_edge ]
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull %.str.225.sink.i) #16
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i5 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i5 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.211, i32 noundef 796, i32 noundef %27) #16
  br label %err_disable

if.end16:                                         ; preds = %if.end.i
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end16.if.end10.i_crit_edge, label %do.end.i

if.end16.if.end10.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

do.end.i:                                         ; preds = %if.end16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.227) #16
  %call.i20.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %do.end.i.if.end10.i_crit_edge, label %do.end22

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i.if.end10.i_crit_edge, %if.end16.if.end10.i_crit_edge
  %.sink.i = phi i64 [ -1, %if.end16.if.end10.i_crit_edge ], [ 4294967295, %do.end.i.if.end10.i_crit_edge ]
  %call1.i22.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef %.sink.i) #12
  %dma_parms.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 22
  %28 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end10.i.if.end27_crit_edge, label %if.then.i25.i

if.end10.i.if.end27_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then.i25.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -2147483648, ptr %29, align 4
  br label %if.end27

do.end22:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.230) #16
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i7 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i7 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task25, align 8
  %pid26 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.211, i32 noundef 804, i32 noundef %38) #16
  br label %err_clr_master

if.end27:                                         ; preds = %if.then.i25.i, %if.end10.i.if.end27_crit_edge
  %call28 = tail call i32 @pci_enable_atomic_ops_to_root(ptr noundef %pdev, i32 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end49_crit_edge, label %land.lhs.true

if.end27.if.end49_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end27
  %call30 = tail call i32 @pci_enable_atomic_ops_to_root(ptr noundef %pdev, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true32

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

land.lhs.true32:                                  ; preds = %land.lhs.true
  %call33 = tail call i32 @pci_enable_atomic_ops_to_root(ptr noundef %pdev, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end49_crit_edge, label %do.body36

land.lhs.true32.if.end49_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.body36:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_pci_init.__UNIQUE_ID_ddebug741, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_pci_init, %if.then41)) #12
          to label %if.end49 [label %if.then41], !srcloc !473

if.then41:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i8 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i8 to ptr
  %task44 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task44, align 8
  %pid45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_pci_init.__UNIQUE_ID_ddebug741, ptr noundef %40, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.211, i32 noundef 811, i32 noundef %46) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then41, %do.body36, %land.lhs.true32.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end27.if.end49_crit_edge
  %47 = ptrtoint ptr %bar_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bar_addr, align 8
  %iseg_base = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 11
  %49 = ptrtoint ptr %iseg_base to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %iseg_base, align 8
  %call52 = tail call ptr @ioremap(i32 noundef %48, i32 noundef 8208) #12
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %50 = ptrtoint ptr %iseg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call52, ptr %iseg, align 4
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i9 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i9 to ptr
  %task61 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task61, align 8
  %pid62 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 68
  %57 = ptrtoint ptr %pid62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pid62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.211, i32 noundef 817, i32 noundef %58) #16
  br label %err_clr_master

if.end63:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_pci_vsc_init(ptr noundef %dev) #12
  %call64 = tail call zeroext i1 @mlx5_read_embedded_cpu(ptr noundef %dev) #12
  %conv = zext i1 %call64 to i8
  %embedded_cpu = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %59 = ptrtoint ptr %embedded_cpu to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv, ptr %embedded_cpu, align 8
  br label %cleanup

err_clr_master:                                   ; preds = %if.then55, %do.end22
  %err.0 = phi i32 [ %call.i20.i, %do.end22 ], [ -12, %if.then55 ]
  %60 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev1, align 8
  tail call void @pci_clear_master(ptr noundef %61) #12
  %62 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev1, align 8
  tail call void @pci_release_regions(ptr noundef %63) #12
  br label %err_disable

err_disable:                                      ; preds = %err_clr_master, %do.end11
  %err.1 = phi i32 [ %retval.0.ph.i, %do.end11 ], [ %err.0, %err_clr_master ]
  %64 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev1, align 8
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex, i32 noundef 0) #12
  %66 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pci_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i13 = icmp eq i32 %67, 1
  br i1 %cmp.i13, label %if.then.i14, label %err_disable.mlx5_pci_disable_device.exit_crit_edge

err_disable.mlx5_pci_disable_device.exit_crit_edge: ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_pci_disable_device.exit

if.then.i14:                                      ; preds = %err_disable
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %65) #12
  %68 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %pci_status.i, align 8
  br label %mlx5_pci_disable_device.exit

mlx5_pci_disable_device.exit:                     ; preds = %if.then.i14, %err_disable.mlx5_pci_disable_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %mlx5_pci_disable_device.exit, %if.end63, %do.end4
  %retval.0 = phi i32 [ %call.i, %do.end4 ], [ %err.1, %mlx5_pci_disable_device.exit ], [ 0, %if.end63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_crdump_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_pci_close(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5_drain_health_wq(ptr noundef %dev) #12
  %iseg = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iseg, align 4
  tail call void @iounmap(ptr noundef %1) #12
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  tail call void @pci_clear_master(ptr noundef %3) #12
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  tail call void @pci_release_regions(ptr noundef %5) #12
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %pci_status_mutex.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex.i, i32 noundef 0) #12
  %pci_status.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pci_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %entry.mlx5_pci_disable_device.exit_crit_edge

entry.mlx5_pci_disable_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_pci_disable_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %7) #12
  %10 = ptrtoint ptr %pci_status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pci_status.i, align 8
  br label %mlx5_pci_disable_device.exit

mlx5_pci_disable_device.exit:                     ; preds = %if.then.i, %entry.mlx5_pci_disable_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_adev_idx_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_atomic_ops_to_root(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_pci_vsc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_read_embedded_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_drain_health_wq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_crdump_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_try_fast_unload(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 7
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  %add.ptr6 = getelementptr i32, ptr %1, i32 8
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp ne i32 %7, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug742, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_try_fast_unload, %if.then)) #12
          to label %do.body17 [label %if.then], !srcloc !473

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !455) #12
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
  %.lobit114 = lshr exact i32 %7, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_try_fast_unload.__UNIQUE_ID_ddebug742, ptr noundef %9, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.234, i32 noundef 1756, i32 noundef %15, i32 noundef %.lobit114) #12
  br label %do.body17

do.body17:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug743, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_try_fast_unload, %if.then29)) #12
          to label %do.end38 [label %if.then29], !srcloc !473

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i124 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i124 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid33, align 8
  %.lobit = lshr exact i32 %4, 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_try_fast_unload.__UNIQUE_ID_ddebug743, ptr noundef %17, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.234, i32 noundef 1757, i32 noundef %23, i32 noundef %.lobit) #12
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %do.body17
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %if.end42, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %do.end38
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  br i1 %cmp, label %do.body45, label %if.end65

do.body45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug744, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_try_fast_unload, %if.then57)) #12
          to label %cleanup [label %if.then57], !srcloc !473

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i125 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i125 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task60, align 8
  %pid61 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid61, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_try_fast_unload.__UNIQUE_ID_ddebug744, ptr noundef %27, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.234, i32 noundef 1763, i32 noundef %33) #12
  br label %cleanup

if.end65:                                         ; preds = %if.end42
  tail call void @mlx5_drain_health_wq(ptr noundef %dev) #12
  tail call void @mlx5_stop_health_poll(ptr noundef %dev, i1 noundef zeroext false) #12
  %call66 = tail call i32 @mlx5_cmd_fast_teardown_hca(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end65.succeed_crit_edge, label %if.end69

if.end65.succeed_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %succeed

if.end69:                                         ; preds = %if.end65
  %call70 = tail call i32 @mlx5_cmd_force_teardown_hca(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end69.succeed_crit_edge, label %do.body74

if.end69.succeed_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %succeed

do.body74:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug745, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_try_fast_unload, %if.then86)) #12
          to label %do.end93 [label %if.then86], !srcloc !473

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !455) #12
  %and.i126 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i126 to ptr
  %task89 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task89, align 8
  %pid90 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid90, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_try_fast_unload.__UNIQUE_ID_ddebug745, ptr noundef %35, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.234, i32 noundef 1781, i32 noundef %41, i32 noundef %call70) #12
  br label %do.end93

do.end93:                                         ; preds = %if.then86, %do.body74
  tail call void @mlx5_start_health_poll(ptr noundef %dev) #12
  br label %cleanup

succeed:                                          ; preds = %if.end69.succeed_crit_edge, %if.end65.succeed_crit_edge
  tail call void @mlx5_enter_error_state(ptr noundef %dev, i1 noundef zeroext true) #12
  tail call void @mlx5_core_eq_free_irqs(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %succeed, %do.end93, %if.then57, %do.body45, %do.end38.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %do.end93 ], [ 0, %succeed ], [ -95, %do.end38.cleanup_crit_edge ], [ -11, %if.then57 ], [ -11, %do.body45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_fast_teardown_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_force_teardown_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_enter_error_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_eq_free_irqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_pci_err_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state1, align 4
  %call2 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %pci_status = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_status, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240, i32 noundef %5, i32 noundef %call2, i32 noundef %7, i32 noundef %state) #16
  tail call void @mlx5_enter_error_state(ptr noundef %1, i1 noundef zeroext false) #12
  tail call void @mlx5_error_sw_reset(ptr noundef %1) #12
  tail call void @mlx5_unload_one(ptr noundef %1)
  tail call void @mlx5_drain_health_wq(ptr noundef %1) #12
  %pdev1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev1.i, align 8
  %pci_status_mutex.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %pci_status_mutex.i, i32 noundef 0) #12
  %10 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pci_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %if.then.i, label %entry.mlx5_pci_disable_device.exit_crit_edge

entry.mlx5_pci_disable_device.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_pci_disable_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_device(ptr noundef %9) #12
  %12 = ptrtoint ptr %pci_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pci_status, align 8
  br label %mlx5_pci_disable_device.exit

mlx5_pci_disable_device.exit:                     ; preds = %if.then.i, %entry.mlx5_pci_disable_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %pci_status_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  %cond = select i1 %cmp, i32 4, i32 3
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state1, align 4
  %call9 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %17 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pci_status, align 8
  %switch.select11.i = select i1 %cmp, ptr @.str.195, ptr @.str.194
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.240, i32 noundef %16, i32 noundef %call9, i32 noundef %18, i32 noundef %cond, ptr noundef nonnull %switch.select11.i) #16
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_pci_resume(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %call1 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %pci_status = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_status, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.245, i32 noundef %5, i32 noundef %call1, i32 noundef %7) #16
  %call2 = tail call i32 @mlx5_load_one(ptr noundef %1)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %call9 = tail call i32 @mlx5_health_check_fatal_sensors(ptr noundef %1) #12
  %12 = ptrtoint ptr %pci_status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %cond = select i1 %tobool.not, ptr @.str.196, ptr @.str.249
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.245, i32 noundef %11, i32 noundef %call9, i32 noundef %13, i32 noundef %call2, ptr noundef nonnull %cond) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_ipsec_build_fs_cmds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_register_debugfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_sf_driver_register() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 230)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !338, !340, !342, !344, !346, !348, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !401, !402, !403, !404, !406, !407, !408, !410, !411, !412, !413, !415, !416, !417, !419, !420, !422, !423, !425, !426, !428, !430, !431, !432, !433, !435, !436, !437, !439, !440, !441, !442, !444, !445, !446, !447, !449, !450, !452, !453, !454}
!llvm.named.register.sp = !{!455}
!llvm.module.flags = !{!456, !457, !458, !459, !460, !461, !462, !463}
!llvm.ident = !{!464}

!0 = !{ptr @__UNIQUE_ID_author677, !1, !"__UNIQUE_ID_author677", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 82, i32 1}
!2 = !{ptr @__UNIQUE_ID_description678, !3, !"__UNIQUE_ID_description678", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 83, i32 1}
!4 = !{ptr @__UNIQUE_ID_file679, !5, !"__UNIQUE_ID_file679", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 84, i32 1}
!6 = !{ptr @__UNIQUE_ID_license680, !5, !"__UNIQUE_ID_license680", i1 false, i1 false}
!7 = !{ptr @__param_debug_mask, !8, !"__param_debug_mask", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 87, i32 1}
!9 = !{ptr @__UNIQUE_ID_debug_masktype681, !8, !"__UNIQUE_ID_debug_masktype681", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug_mask682, !11, !"__UNIQUE_ID_debug_mask682", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 88, i32 1}
!12 = !{ptr @__param_prof_sel, !13, !"__param_prof_sel", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 91, i32 1}
!14 = !{ptr @__UNIQUE_ID_prof_seltype683, !13, !"__UNIQUE_ID_prof_seltype683", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_prof_sel684, !16, !"__UNIQUE_ID_prof_sel684", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 92, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1297, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_init_one._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_init_one._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1341, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlx5_uninit_one._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_uninit_one._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1361, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlx5_load_one._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx5_load_one._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1403, i32 3}
!38 = !{ptr @mlx5_unload_one._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx5_unload_one._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mlx5_mdev_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1478, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5_mdev_init.__key.12, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1479, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx5_mdev_init.__key.14, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1481, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlx5_mdev_init.__key.16, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1482, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5_mdev_init.__key.18, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1486, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mlx5_mdev_init.__key.20, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1487, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1497, i32 3}
!60 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mlx5_mdev_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx5_mdev_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @__initcall__kmod_mlx5_core__746_1940_init6, !64, !"__initcall__kmod_mlx5_core__746_1940_init6", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1940, i32 1}
!65 = !{ptr @__exitcall_cleanup, !66, !"__exitcall_cleanup", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1941, i32 1}
!67 = !{ptr @mlx5_core_debug_mask, !68, !"mlx5_core_debug_mask", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 86, i32 14}
!69 = !{ptr @__param_str_debug_mask, !8, !"__param_str_debug_mask", i1 false, i1 false}
!70 = !{ptr @__param_str_prof_sel, !13, !"__param_str_prof_sel", i1 false, i1 false}
!71 = !{ptr @prof_sel, !72, !"prof_sel", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 90, i32 21}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 366, i32 3}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mlx5_core_get_caps_mode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlx5_core_get_caps_mode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 384, i32 3}
!80 = !{ptr @mlx5_core_get_caps_mode._entry.26, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mlx5_core_get_caps_mode._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1013, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx5_function_setup._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @mlx5_function_setup._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1027, i32 3}
!90 = !{ptr @mlx5_function_setup._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mlx5_function_setup._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1034, i32 3}
!94 = !{ptr @mlx5_function_setup._entry.35, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlx5_function_setup._entry_ptr.37, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1042, i32 3}
!98 = !{ptr @mlx5_function_setup._entry.38, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlx5_function_setup._entry_ptr.40, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1051, i32 3}
!102 = !{ptr @mlx5_function_setup._entry.41, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mlx5_function_setup._entry_ptr.43, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1057, i32 3}
!106 = !{ptr @mlx5_function_setup._entry.44, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mlx5_function_setup._entry_ptr.46, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1063, i32 3}
!110 = !{ptr @mlx5_function_setup._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mlx5_function_setup._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1069, i32 3}
!114 = !{ptr @mlx5_function_setup._entry.50, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mlx5_function_setup._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1075, i32 3}
!118 = !{ptr @mlx5_function_setup._entry.53, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mlx5_function_setup._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1081, i32 3}
!122 = !{ptr @mlx5_function_setup._entry.56, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mlx5_function_setup._entry_ptr.58, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1087, i32 3}
!126 = !{ptr @mlx5_function_setup._entry.59, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mlx5_function_setup._entry_ptr.61, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1093, i32 3}
!130 = !{ptr @mlx5_function_setup._entry.62, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mlx5_function_setup._entry_ptr.64, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1101, i32 3}
!134 = !{ptr @mlx5_function_setup._entry.65, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @mlx5_function_setup._entry_ptr.67, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 200, i32 4}
!138 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @wait_fw_init._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @wait_fw_init._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 744, i32 4}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @mlx5_core_set_issi._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @mlx5_core_set_issi._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 749, i32 3}
!148 = !{ptr @mlx5_core_set_issi._entry.72, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mlx5_core_set_issi._entry_ptr.74, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 763, i32 4}
!152 = !{ptr @mlx5_core_set_issi._entry.75, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mlx5_core_set_issi._entry_ptr.77, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 649, i32 3}
!156 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @set_hca_cap._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @set_hca_cap._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 656, i32 3}
!161 = !{ptr @set_hca_cap._entry.80, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @set_hca_cap._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 663, i32 3}
!165 = !{ptr @set_hca_cap._entry.83, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @set_hca_cap._entry_ptr.85, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 670, i32 3}
!169 = !{ptr @set_hca_cap._entry.86, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @set_hca_cap._entry_ptr.88, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 520, i32 2}
!173 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @handle_hca_cap.__UNIQUE_ID_ddebug714, !172, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 531, i32 3}
!178 = !{ptr @handle_hca_cap._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @handle_hca_cap._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 342, i32 3}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @to_fw_pkey_sz._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @to_fw_pkey_sz._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 500, i32 2}
!187 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @max_uc_list_get_devlink_param.__UNIQUE_ID_ddebug713, !186, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!189 = !{ptr @sw_owner_id, !190, !"sw_owner_id", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 94, i32 12}
!191 = distinct !{null, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 223, i32 18}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 226, i32 18}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 236, i32 52}
!197 = !{ptr @.str.100, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 852, i32 3}
!199 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mlx5_init_once._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @mlx5_init_once._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 857, i32 3}
!204 = !{ptr @mlx5_init_once._entry.102, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @mlx5_init_once._entry_ptr.104, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.106, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 863, i32 3}
!208 = !{ptr @mlx5_init_once._entry.105, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @mlx5_init_once._entry_ptr.107, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 869, i32 3}
!212 = !{ptr @mlx5_init_once._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @mlx5_init_once._entry_ptr.110, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 875, i32 3}
!216 = !{ptr @mlx5_init_once._entry.111, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @mlx5_init_once._entry_ptr.113, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 881, i32 3}
!220 = !{ptr @mlx5_init_once._entry.114, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @mlx5_init_once._entry_ptr.116, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.118, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 896, i32 3}
!224 = !{ptr @mlx5_init_once._entry.117, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @mlx5_init_once._entry_ptr.119, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.121, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 902, i32 3}
!228 = !{ptr @mlx5_init_once._entry.120, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @mlx5_init_once._entry_ptr.122, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 908, i32 3}
!232 = !{ptr @mlx5_init_once._entry.123, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @mlx5_init_once._entry_ptr.125, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.127, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 914, i32 3}
!236 = !{ptr @mlx5_init_once._entry.126, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @mlx5_init_once._entry_ptr.128, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.130, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 920, i32 3}
!240 = !{ptr @mlx5_init_once._entry.129, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @mlx5_init_once._entry_ptr.131, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 926, i32 3}
!244 = !{ptr @mlx5_init_once._entry.132, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @mlx5_init_once._entry_ptr.134, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.136, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 932, i32 3}
!248 = !{ptr @mlx5_init_once._entry.135, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @mlx5_init_once._entry_ptr.137, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.139, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 938, i32 3}
!252 = !{ptr @mlx5_init_once._entry.138, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @mlx5_init_once._entry_ptr.140, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.142, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 944, i32 3}
!256 = !{ptr @mlx5_init_once._entry.141, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @mlx5_init_once._entry_ptr.143, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.144, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1144, i32 3}
!260 = !{ptr @.str.145, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @mlx5_load._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @mlx5_load._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.147, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1154, i32 3}
!265 = !{ptr @mlx5_load._entry.146, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @mlx5_load._entry_ptr.148, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.150, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1160, i32 3}
!269 = !{ptr @mlx5_load._entry.149, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @mlx5_load._entry_ptr.151, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.153, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1166, i32 3}
!273 = !{ptr @mlx5_load._entry.152, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @mlx5_load._entry_ptr.154, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.156, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1176, i32 3}
!277 = !{ptr @mlx5_load._entry.155, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @mlx5_load._entry_ptr.157, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.159, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1183, i32 3}
!281 = !{ptr @mlx5_load._entry.158, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @mlx5_load._entry_ptr.160, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.162, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1191, i32 3}
!285 = !{ptr @mlx5_load._entry.161, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @mlx5_load._entry_ptr.163, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.165, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1197, i32 3}
!289 = !{ptr @mlx5_load._entry.164, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @mlx5_load._entry_ptr.166, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.168, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1203, i32 3}
!293 = !{ptr @mlx5_load._entry.167, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @mlx5_load._entry_ptr.169, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.171, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1211, i32 3}
!297 = !{ptr @mlx5_load._entry.170, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @mlx5_load._entry_ptr.172, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.174, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1217, i32 3}
!301 = !{ptr @mlx5_load._entry.173, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @mlx5_load._entry_ptr.175, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.177, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1224, i32 3}
!305 = !{ptr @mlx5_load._entry.176, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @mlx5_load._entry_ptr.178, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1127, i32 3}
!309 = !{ptr @.str.180, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @mlx5_function_teardown._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @mlx5_function_teardown._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @profile, !313, !"profile", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 103, i32 28}
!314 = !{ptr @types, !315, !"types", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1415, i32 18}
!316 = !{ptr @.str.181, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1703, i32 2}
!318 = !{ptr @.str.182, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @mlx5_pci_slot_reset._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @mlx5_pci_slot_reset._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.184, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1707, i32 3}
!323 = !{ptr @mlx5_pci_slot_reset._entry.183, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @mlx5_pci_slot_reset._entry_ptr.185, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.187, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1718, i32 3}
!327 = !{ptr @mlx5_pci_slot_reset._entry.186, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @mlx5_pci_slot_reset._entry_ptr.188, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.190, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1725, i32 2}
!331 = !{ptr @mlx5_pci_slot_reset._entry.189, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @mlx5_pci_slot_reset._entry_ptr.191, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.192, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1684, i32 5}
!335 = !{ptr @.str.193, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @wait_vital._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @wait_vital._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.194, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1641, i32 48}
!340 = !{ptr @.str.195, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1642, i32 41}
!342 = !{ptr @.str.196, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1643, i32 41}
!344 = distinct !{null, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1644, i32 3}
!346 = !{ptr @mlx5_core_driver, !347, !"mlx5_core_driver", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1871, i32 26}
!348 = !{ptr @mlx5_core_pci_table, !349, !"mlx5_core_pci_table", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1826, i32 35}
!350 = !{ptr @.str.198, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1562, i32 3}
!352 = !{ptr @.str.199, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @probe_one._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @probe_one._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.201, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1585, i32 3}
!357 = !{ptr @probe_one._entry.200, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @probe_one._entry_ptr.202, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.204, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1592, i32 3}
!361 = !{ptr @probe_one._entry.203, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @probe_one._entry_ptr.205, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.207, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1599, i32 3}
!365 = !{ptr @probe_one._entry.206, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @probe_one._entry_ptr.208, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @mlx5_pci_init.__key, !368, !"__key", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 783, i32 2}
!369 = !{ptr @.str.209, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.210, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 790, i32 3}
!372 = !{ptr @.str.211, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @mlx5_pci_init._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @mlx5_pci_init._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.213, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 796, i32 3}
!377 = !{ptr @mlx5_pci_init._entry.212, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @mlx5_pci_init._entry_ptr.214, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.216, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 804, i32 3}
!381 = !{ptr @mlx5_pci_init._entry.215, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @mlx5_pci_init._entry_ptr.217, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.218, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 811, i32 3}
!385 = !{ptr @mlx5_pci_init.__UNIQUE_ID_ddebug741, !384, !"__UNIQUE_ID_ddebug741", i1 false, i1 false}
!386 = !{ptr @.str.220, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 817, i32 3}
!388 = !{ptr @mlx5_pci_init._entry.219, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @mlx5_pci_init._entry_ptr.221, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.222, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 298, i32 3}
!392 = !{ptr @.str.223, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @request_bar._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @request_bar._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.225, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 304, i32 3}
!397 = !{ptr @request_bar._entry.224, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @request_bar._entry_ptr.226, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.227, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 253, i32 3}
!401 = !{ptr @.str.228, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @set_dma_caps._entry, !400, !"_entry", i1 false, i1 false}
!403 = !{ptr @set_dma_caps._entry_ptr, !400, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.230, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 256, i32 4}
!406 = !{ptr @set_dma_caps._entry.229, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @set_dma_caps._entry_ptr.231, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.232, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1803, i32 2}
!410 = !{ptr @.str.233, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @shutdown._entry, !409, !"_entry", i1 false, i1 false}
!412 = !{ptr @shutdown._entry_ptr, !409, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.234, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1756, i32 2}
!415 = !{ptr @.str.235, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug742, !414, !"__UNIQUE_ID_ddebug742", i1 false, i1 false}
!417 = !{ptr @.str.236, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1757, i32 2}
!419 = !{ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug743, !418, !"__UNIQUE_ID_ddebug743", i1 false, i1 false}
!420 = !{ptr @.str.237, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1763, i32 3}
!422 = !{ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug744, !421, !"__UNIQUE_ID_ddebug744", i1 false, i1 false}
!423 = !{ptr @.str.238, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1781, i32 2}
!425 = !{ptr @mlx5_try_fast_unload.__UNIQUE_ID_ddebug745, !424, !"__UNIQUE_ID_ddebug745", i1 false, i1 false}
!426 = !{ptr @mlx5_err_handler, !427, !"mlx5_err_handler", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1742, i32 40}
!428 = !{ptr @.str.239, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1653, i32 2}
!430 = !{ptr @.str.240, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @mlx5_pci_err_detected._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @mlx5_pci_err_detected._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.242, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1664, i32 2}
!435 = !{ptr @mlx5_pci_err_detected._entry.241, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @mlx5_pci_err_detected._entry_ptr.243, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.244, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1734, i32 2}
!439 = !{ptr @.str.245, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @mlx5_pci_resume._entry, !438, !"_entry", i1 false, i1 false}
!441 = !{ptr @mlx5_pci_resume._entry_ptr, !438, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.247, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1738, i32 2}
!444 = !{ptr @mlx5_pci_resume._entry.246, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @mlx5_pci_resume._entry_ptr.248, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.249, !443, !"<string literal>", i1 false, i1 false}
!447 = distinct !{null, !448, !"__already_done", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1900, i32 2}
!449 = distinct !{null, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.251, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/main.c", i32 1888, i32 3}
!452 = !{ptr @.str.252, !451, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @mlx5_core_verify_params._entry, !451, !"_entry", i1 false, i1 false}
!454 = !{ptr @mlx5_core_verify_params._entry_ptr, !451, !"_entry_ptr", i1 false, i1 false}
!455 = !{!"sp"}
!456 = !{i32 1, !"wchar_size", i32 2}
!457 = !{i32 1, !"min_enum_size", i32 4}
!458 = !{i32 8, !"branch-target-enforcement", i32 0}
!459 = !{i32 8, !"sign-return-address", i32 0}
!460 = !{i32 8, !"sign-return-address-all", i32 0}
!461 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!462 = !{i32 7, !"uwtable", i32 1}
!463 = !{i32 7, !"frame-pointer", i32 2}
!464 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!465 = !{i64 5925732}
!466 = !{i64 2158622708}
!467 = !{i64 2158623179}
!468 = !{i64 2158623670}
!469 = !{i64 2160645406}
!470 = !{!"auto-init"}
!471 = !{i8 0, i8 2}
!472 = !{i64 2161166957}
!473 = !{i64 2148535228, i64 2148535233, i64 2148535246, i64 2148535290, i64 2148535324, i64 2148535345}
!474 = !{i32 0, i32 33}
