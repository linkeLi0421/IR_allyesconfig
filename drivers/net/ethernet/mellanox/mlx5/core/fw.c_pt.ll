; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fw.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_core_query_vendor_id\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_query_vendor_id\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_query_vendor_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_query_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_query_vendor_id\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_query_vendor_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxfw_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.mlx5_mlxfw_dev = type { %struct.mlxfw_dev, ptr }
%struct.mlxfw_dev = type { ptr, ptr, i16, ptr }

@__kstrtab_mlx5_core_query_vendor_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_query_vendor_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_query_vendor_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_query_vendor_id to i32), ptr @__kstrtab_mlx5_core_query_vendor_id, ptr @__kstrtabns_mlx5_core_query_vendor_id }, section "___ksymtab+mlx5_core_query_vendor_id", align 4
@mlx5_cmd_force_teardown_hca.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_cmd_force_teardown_hca\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fw.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): force teardown is not supported in the firmware\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_cmd_force_teardown_hca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): teardown with force mode failed, doing normal teardown\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_cmd_force_teardown_hca._entry_ptr = internal global ptr @mlx5_cmd_force_teardown_hca._entry, section ".printk_index", align 4
@mlx5_cmd_fast_teardown_hca.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_cmd_fast_teardown_hca\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): fast teardown is not supported in the firmware\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_cmd_fast_teardown_hca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): teardown with fast mode failed\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_cmd_fast_teardown_hca._entry_ptr = internal global ptr @mlx5_cmd_fast_teardown_hca._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_cmd_fast_teardown_hca._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 373, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NIC IFC still %d after %lums.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_cmd_fast_teardown_hca._entry_ptr.13 = internal global ptr @mlx5_cmd_fast_teardown_hca._entry.10, section ".printk_index", align 4
@mlx5_mlxfw_dev_ops = internal constant { %struct.mlxfw_dev_ops, [56 x i8] } { %struct.mlxfw_dev_ops { ptr @mlx5_component_query, ptr @mlx5_fsm_lock, ptr @mlx5_fsm_component_update, ptr @mlx5_fsm_block_download, ptr @mlx5_fsm_component_verify, ptr @mlx5_fsm_activate, ptr @mlx5_fsm_reactivate, ptr @mlx5_fsm_query_state, ptr @mlx5_fsm_cancel, ptr @mlx5_fsm_release }, [56 x i8] zeroinitializer }, align 32
@mlx5_firmware_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s flashing isn't supported by the running FW\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_firmware_flash\00", [44 x i8] zeroinitializer }, align 32
@mlx5_firmware_flash._entry_ptr = internal global ptr @mlx5_firmware_flash._entry, section ".printk_index", align 4
@mlx5_fw_version_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 802, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): fw query isn't supported by the FW\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fw_version_query\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fw_version_query._entry_ptr = internal global ptr @mlx5_fw_version_query._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_component_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): caps query isn't supported by running FW\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_component_query\00", [43 x i8] zeroinitializer }, align 32
@mlx5_component_query._entry_ptr = internal global ptr @mlx5_component_query._entry, section ".printk_index", align 4
@mlx5_get_boot_img_component_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): mcqs: can't find boot_img component ix, last scanned idx %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_get_boot_img_component_index\00", [62 x i8] zeroinitializer }, align 32
@mlx5_get_boot_img_component_index._entry_ptr = internal global ptr @mlx5_get_boot_img_component_index._entry, section ".printk_index", align 4
@mlx5_fw_image_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 786, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): mcqs: can't read pending fw version while fw state is %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fw_image_pending\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fw_image_pending._entry_ptr = internal global ptr @mlx5_fw_image_pending._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 313, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 326, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 342, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 356, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 372, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"mlx5_mlxfw_dev_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 672, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 703, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 802, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 524, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 756, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fw.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 784, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_mlx5_core_query_vendor_id, ptr @mlx5_cmd_fast_teardown_hca._entry, ptr @mlx5_cmd_fast_teardown_hca._entry.10, ptr @mlx5_cmd_fast_teardown_hca._entry_ptr, ptr @mlx5_cmd_fast_teardown_hca._entry_ptr.13, ptr @mlx5_cmd_force_teardown_hca._entry, ptr @mlx5_cmd_force_teardown_hca._entry_ptr, ptr @mlx5_component_query._entry, ptr @mlx5_component_query._entry_ptr, ptr @mlx5_firmware_flash._entry, ptr @mlx5_firmware_flash._entry_ptr, ptr @mlx5_fw_image_pending._entry, ptr @mlx5_fw_image_pending._entry_ptr, ptr @mlx5_fw_version_query._entry, ptr @mlx5_fw_version_query._entry_ptr, ptr @mlx5_get_boot_img_component_index._entry, ptr @mlx5_get_boot_img_component_index._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @mlx5_mlxfw_dev_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_force_teardown_hca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_fast_teardown_hca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_fast_teardown_hca._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_mlxfw_dev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_firmware_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_version_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_component_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_get_boot_img_component_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fw_image_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_board_id(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 272) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %and = and i32 %3, 65535
  %or = or i32 %and, 16842752
  store i32 %or, ptr %in, align 4
  %call8 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 272) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.out14_crit_edge

do.body.out14_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out14

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %board_id = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 6
  %add.ptr13 = getelementptr i8, ptr %call7.i.i, i32 256
  %4 = call ptr @memcpy(ptr %board_id, ptr %add.ptr13, i32 16)
  br label %out14

out14:                                            ; preds = %if.end11, %do.body.out14_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %out14 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_query_vendor_id(ptr noundef %mdev, ptr nocapture noundef writeonly %vendor_id) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 272) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %and = and i32 %3, 65535
  %or = or i32 %and, 16842752
  store i32 %or, ptr %in, align 4
  %call8 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 272) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.body.out14_crit_edge

do.body.out14_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out14

if.end11:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr12 = getelementptr i32, ptr %call7.i.i, i32 10
  %4 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr12, align 8
  %and13 = and i32 %5, 16777215
  %6 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and13, ptr %vendor_id, align 4
  br label %out14

out14:                                            ; preds = %if.end11, %do.body.out14_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %out14 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_query_hca_caps(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 18
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps, align 8
  %add.ptr13 = getelementptr i32, ptr %6, i32 1
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool16.not = icmp sgt i32 %8, -1
  br i1 %tobool16.not, label %if.end7.if.end22_crit_edge, label %if.then17

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then17:                                        ; preds = %if.end7
  %call18 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps, align 8
  %add.ptr28 = getelementptr i32, ptr %10, i32 16
  %11 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr28, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %if.end22.if.end37_crit_edge, label %if.then32

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then32:                                        ; preds = %if.end22
  %call33 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end22.if.end37_crit_edge
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 8
  %add.ptr43 = getelementptr i32, ptr %15, i32 16
  %16 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr43, align 4
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not = icmp eq i32 %18, 0
  br i1 %tobool46.not, label %if.end37.if.end52_crit_edge, label %if.then47

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then47:                                        ; preds = %if.end37
  %call48 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end37.if.end52_crit_edge
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %caps, align 8
  %add.ptr58 = getelementptr i32, ptr %20, i32 17
  %21 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr58, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool61.not = icmp eq i32 %23, 0
  br i1 %tobool61.not, label %if.end52.if.end67_crit_edge, label %if.then62

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then62:                                        ; preds = %if.end52
  %call63 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.end67_crit_edge, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %24 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps, align 8
  %add.ptr73 = getelementptr i32, ptr %25, i32 16
  %26 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr73, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool76.not = icmp eq i32 %28, 0
  br i1 %tobool76.not, label %if.end67.if.end82_crit_edge, label %if.then77

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then77:                                        ; preds = %if.end67
  %call78 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then77.if.end82_crit_edge, label %if.then77.cleanup_crit_edge

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.end82:                                         ; preds = %if.then77.if.end82_crit_edge, %if.end67.if.end82_crit_edge
  %29 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps, align 8
  %add.ptr88 = getelementptr i32, ptr %30, i32 16
  %31 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr88, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool91.not = icmp eq i32 %33, 0
  br i1 %tobool91.not, label %if.end82.if.end97_crit_edge, label %if.then92

if.end82.if.end97_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then92:                                        ; preds = %if.end82
  %call93 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.if.end97_crit_edge, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then92.if.end97_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.end97:                                         ; preds = %if.then92.if.end97_crit_edge, %if.end82.if.end97_crit_edge
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %caps, align 8
  %add.ptr103 = getelementptr i32, ptr %35, i32 13
  %36 = ptrtoint ptr %add.ptr103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr103, align 4
  %38 = and i32 %37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool106.not = icmp eq i32 %38, 0
  br i1 %tobool106.not, label %lor.lhs.false, label %if.end97.if.then116_crit_edge

if.end97.if.then116_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

lor.lhs.false:                                    ; preds = %if.end97
  %add.ptr112 = getelementptr i32, ptr %35, i32 16
  %39 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr112, align 4
  %41 = and i32 %40, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool115.not = icmp eq i32 %41, 0
  br i1 %tobool115.not, label %lor.lhs.false.if.end121_crit_edge, label %lor.lhs.false.if.then116_crit_edge

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

lor.lhs.false.if.end121_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %if.end97.if.then116_crit_edge
  %call117 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.then116.if.end121_crit_edge, label %if.then116.cleanup_crit_edge

if.then116.cleanup_crit_edge:                     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then116.if.end121_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.end121:                                        ; preds = %if.then116.if.end121_crit_edge, %lor.lhs.false.if.end121_crit_edge
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %caps, align 8
  %add.ptr127 = getelementptr i32, ptr %43, i32 13
  %44 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr127, align 4
  %46 = and i32 %45, -2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2130706432, i32 %46)
  %.not = icmp eq i32 %46, -2130706432
  br i1 %.not, label %if.then140, label %if.end121.if.end145_crit_edge

if.end121.if.end145_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then140:                                       ; preds = %if.end121
  %call141 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.then140.if.end145_crit_edge, label %if.then140.cleanup_crit_edge

if.then140.cleanup_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then140.if.end145_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.end145:                                        ; preds = %if.then140.if.end145_crit_edge, %if.end121.if.end145_crit_edge
  %47 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %caps, align 8
  %add.ptr151 = getelementptr i32, ptr %48, i32 13
  %49 = ptrtoint ptr %add.ptr151 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr151, align 4
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool154.not = icmp eq i32 %51, 0
  br i1 %tobool154.not, label %if.end145.if.end160_crit_edge, label %if.then155

if.end145.if.end160_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then155:                                       ; preds = %if.end145
  %call156 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then155.if.end160_crit_edge, label %if.then155.cleanup_crit_edge

if.then155.cleanup_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then155.if.end160_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.end160:                                        ; preds = %if.then155.if.end160_crit_edge, %if.end145.if.end160_crit_edge
  %52 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caps, align 8
  %add.ptr166 = getelementptr i32, ptr %53, i32 17
  %54 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr166, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool169.not = icmp eq i32 %56, 0
  br i1 %tobool169.not, label %if.end160.if.end175_crit_edge, label %if.then170

if.end160.if.end175_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then170:                                       ; preds = %if.end160
  %call171 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.then170.if.end175_crit_edge, label %if.then170.cleanup_crit_edge

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then170.if.end175_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.end175:                                        ; preds = %if.then170.if.end175_crit_edge, %if.end160.if.end175_crit_edge
  %57 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %caps, align 8
  %add.ptr181 = getelementptr i32, ptr %58, i32 16
  %59 = ptrtoint ptr %add.ptr181 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr181, align 4
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool184.not = icmp eq i32 %61, 0
  br i1 %tobool184.not, label %if.end175.if.end190_crit_edge, label %if.then185

if.end175.if.end190_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.then185:                                       ; preds = %if.end175
  %call186 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then185.if.end190_crit_edge, label %if.then185.cleanup_crit_edge

if.then185.cleanup_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then185.if.end190_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end190

if.end190:                                        ; preds = %if.then185.if.end190_crit_edge, %if.end175.if.end190_crit_edge
  %62 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %caps, align 8
  %add.ptr196 = getelementptr i32, ptr %63, i32 12
  %64 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr196, align 4
  %66 = and i32 %65, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool199.not = icmp eq i32 %66, 0
  br i1 %tobool199.not, label %if.end190.if.end202_crit_edge, label %if.then200

if.end190.if.end202_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then200:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  %call201 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 13) #9
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.end190.if.end202_crit_edge
  %67 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %caps, align 8
  %add.ptr208 = getelementptr i32, ptr %68, i32 13
  %69 = ptrtoint ptr %add.ptr208 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr208, align 4
  %71 = and i32 %70, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool211.not = icmp eq i32 %71, 0
  br i1 %tobool211.not, label %if.end202.if.end214_crit_edge, label %if.then212

if.end202.if.end214_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then212:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %pcam.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 1
  %call.i = tail call i32 @mlx5_query_pcam_reg(ptr noundef %dev, ptr noundef %pcam.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %if.end214

if.end214:                                        ; preds = %if.then212, %if.end202.if.end214_crit_edge
  %72 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %caps, align 8
  %add.ptr220 = getelementptr i32, ptr %73, i32 13
  %74 = ptrtoint ptr %add.ptr220 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr220, align 4
  %76 = and i32 %75, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool223.not = icmp eq i32 %76, 0
  br i1 %tobool223.not, label %if.end214.if.end228_crit_edge, label %if.then224

if.end214.if.end228_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then224:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 0
  %call.i410 = tail call i32 @mlx5_query_mcam_reg(ptr noundef %dev, ptr noundef %arrayidx.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %arrayidx.i411 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 1
  %call.i412 = tail call i32 @mlx5_query_mcam_reg(ptr noundef %dev, ptr noundef %arrayidx.i411, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %arrayidx.i413 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 2
  %call.i414 = tail call i32 @mlx5_query_mcam_reg(ptr noundef %dev, ptr noundef %arrayidx.i413, i8 noundef zeroext 0, i8 noundef zeroext 2) #9
  br label %if.end228

if.end228:                                        ; preds = %if.then224, %if.end214.if.end228_crit_edge
  %77 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %caps, align 8
  %add.ptr234 = getelementptr i32, ptr %78, i32 11
  %79 = ptrtoint ptr %add.ptr234 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr234, align 4
  %81 = and i32 %80, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool237.not = icmp eq i32 %81, 0
  br i1 %tobool237.not, label %if.end228.if.end240_crit_edge, label %if.then238

if.end228.if.end240_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

if.then238:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  %qcam.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 4
  %call.i415 = tail call i32 @mlx5_query_qcam_reg(ptr noundef %dev, ptr noundef %qcam.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end228.if.end240_crit_edge
  %82 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %caps, align 8
  %add.ptr246 = getelementptr i32, ptr %83, i32 13
  %84 = ptrtoint ptr %add.ptr246 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr246, align 4
  %86 = and i32 %85, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool249.not = icmp eq i32 %86, 0
  br i1 %tobool249.not, label %if.end240.if.end255_crit_edge, label %if.then250

if.end240.if.end255_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

if.then250:                                       ; preds = %if.end240
  %call251 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call251)
  %tobool252.not = icmp eq i32 %call251, 0
  br i1 %tobool252.not, label %if.then250.if.end255_crit_edge, label %if.then250.cleanup_crit_edge

if.then250.cleanup_crit_edge:                     ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then250.if.end255_crit_edge:                   ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end255

if.end255:                                        ; preds = %if.then250.if.end255_crit_edge, %if.end240.if.end255_crit_edge
  %87 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %caps, align 8
  %add.ptr261 = getelementptr i32, ptr %88, i32 4
  %89 = ptrtoint ptr %add.ptr261 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr261, align 4
  %91 = and i32 %90, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool264.not = icmp eq i32 %91, 0
  br i1 %tobool264.not, label %if.end255.if.end270_crit_edge, label %if.then265

if.end255.if.end270_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

if.then265:                                       ; preds = %if.end255
  %call266 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %if.then265.if.end270_crit_edge, label %if.then265.cleanup_crit_edge

if.then265.cleanup_crit_edge:                     ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then265.if.end270_crit_edge:                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end270

if.end270:                                        ; preds = %if.then265.if.end270_crit_edge, %if.end255.if.end270_crit_edge
  %92 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %caps, align 8
  %add.ptr.i = getelementptr i32, ptr %93, i32 36
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i, align 4
  %96 = and i32 %95, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %.not420 = icmp eq i32 %96, 0
  br i1 %.not420, label %if.end270.if.end279_crit_edge, label %if.then274

if.end270.if.end279_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

if.then274:                                       ; preds = %if.end270
  %call275 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.then274.if.end279_crit_edge, label %if.then274.cleanup_crit_edge

if.then274.cleanup_crit_edge:                     ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then274.if.end279_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end279

if.end279:                                        ; preds = %if.then274.if.end279_crit_edge, %if.end270.if.end279_crit_edge
  %97 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %caps, align 8
  %add.ptr285 = getelementptr i64, ptr %98, i32 16
  %99 = ptrtoint ptr %add.ptr285 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %add.ptr285, align 8
  %and286 = and i64 %100, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and286)
  %tobool287.not = icmp eq i64 %and286, 0
  br i1 %tobool287.not, label %if.end279.if.end293_crit_edge, label %if.then288

if.end279.if.end293_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

if.then288:                                       ; preds = %if.end279
  %call289 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.then288.if.end293_crit_edge, label %if.then288.cleanup_crit_edge

if.then288.cleanup_crit_edge:                     ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then288.if.end293_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end293

if.end293:                                        ; preds = %if.then288.if.end293_crit_edge, %if.end279.if.end293_crit_edge
  %101 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %caps, align 8
  %add.ptr299 = getelementptr i32, ptr %102, i32 35
  %103 = ptrtoint ptr %add.ptr299 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr299, align 4
  %105 = and i32 %104, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool302.not = icmp eq i32 %105, 0
  br i1 %tobool302.not, label %if.end293.if.end308_crit_edge, label %if.then303

if.end293.if.end308_crit_edge:                    ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end308

if.then303:                                       ; preds = %if.end293
  %call304 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %tobool305.not = icmp eq i32 %call304, 0
  br i1 %tobool305.not, label %if.then303.if.end308_crit_edge, label %if.then303.cleanup_crit_edge

if.then303.cleanup_crit_edge:                     ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then303.if.end308_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end308

if.end308:                                        ; preds = %if.then303.if.end308_crit_edge, %if.end293.if.end308_crit_edge
  %106 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %caps, align 8
  %add.ptr314 = getelementptr i32, ptr %107, i32 5
  %108 = ptrtoint ptr %add.ptr314 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr314, align 4
  %110 = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool317.not = icmp eq i32 %110, 0
  br i1 %tobool317.not, label %if.end308.if.end323_crit_edge, label %if.then318

if.end308.if.end323_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end323

if.then318:                                       ; preds = %if.end308
  %call319 = tail call i32 @mlx5_core_get_caps(ptr noundef %dev, i32 noundef 29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.then318.if.end323_crit_edge, label %if.then318.cleanup_crit_edge

if.then318.cleanup_crit_edge:                     ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then318.if.end323_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end323

if.end323:                                        ; preds = %if.then318.if.end323_crit_edge, %if.end308.if.end323_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end323, %if.then318.cleanup_crit_edge, %if.then303.cleanup_crit_edge, %if.then288.cleanup_crit_edge, %if.then274.cleanup_crit_edge, %if.then265.cleanup_crit_edge, %if.then250.cleanup_crit_edge, %if.then185.cleanup_crit_edge, %if.then170.cleanup_crit_edge, %if.then155.cleanup_crit_edge, %if.then140.cleanup_crit_edge, %if.then116.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end323 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call48, %if.then47.cleanup_crit_edge ], [ %call63, %if.then62.cleanup_crit_edge ], [ %call78, %if.then77.cleanup_crit_edge ], [ %call93, %if.then92.cleanup_crit_edge ], [ %call117, %if.then116.cleanup_crit_edge ], [ %call141, %if.then140.cleanup_crit_edge ], [ %call156, %if.then155.cleanup_crit_edge ], [ %call171, %if.then170.cleanup_crit_edge ], [ %call186, %if.then185.cleanup_crit_edge ], [ %call251, %if.then250.cleanup_crit_edge ], [ %call266, %if.then265.cleanup_crit_edge ], [ %call275, %if.then274.cleanup_crit_edge ], [ %call289, %if.then288.cleanup_crit_edge ], [ %call304, %if.then303.cleanup_crit_edge ], [ %call319, %if.then318.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_get_caps(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_init_hca(ptr noundef %dev, ptr nocapture noundef readonly %sw_owner_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16908288, ptr %in, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr8 = getelementptr i32, ptr %4, i32 48
  %5 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr8, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body14.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body14.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep = getelementptr inbounds i8, ptr %in, i32 16
  %8 = call ptr @memcpy(ptr %uglygep, ptr %sw_owner_id, i32 16)
  br label %if.end

if.end:                                           ; preds = %do.body14.preheader, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %9 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_teardown_hca(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16973824, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %3 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_force_teardown_hca(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %1 = call ptr @memset(ptr %in, i32 0, i32 16)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_force_teardown_hca.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_force_teardown_hca, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !64

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_force_teardown_hca.__UNIQUE_ID_ddebug506, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef %14) #9
  br label %cleanup

do.body7:                                         ; preds = %entry
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  %and13 = and i32 %16, 65535
  %or = or i32 %and13, 16973824
  store i32 %or, ptr %in, align 4
  %add.ptr25 = getelementptr inbounds i32, ptr %in, i32 2
  %17 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %18, -65536
  %or29 = or i32 %and26, 1
  store i32 %or29, ptr %add.ptr25, align 4
  %call36 = call i32 @mlx5_cmd_exec_polling(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %do.body7
  %add.ptr41 = getelementptr inbounds i32, ptr %out, i32 3
  %19 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr41, align 4
  %and43 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp.not = icmp eq i32 %and43, 0
  br i1 %cmp.not, label %if.end39.cleanup_crit_edge, label %do.end47

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i60 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i60 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task50, align 8
  %pid51 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid51, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 326, i32 noundef %28) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end39.cleanup_crit_edge, %do.body7.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -5, %do.end47 ], [ -95, %if.then4 ], [ %call36, %do.body7.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -95, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec_polling(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_fast_teardown_hca(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 11) #9
  %conv = trunc i64 %call to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #9
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %1 = call ptr @memset(ptr %in, i32 0, i32 16)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_fast_teardown_hca.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_fast_teardown_hca, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !64

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_fast_teardown_hca.__UNIQUE_ID_ddebug509, ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 342, i32 noundef %14) #9
  br label %cleanup

do.body8:                                         ; preds = %entry
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  %and14 = and i32 %16, 65535
  %or = or i32 %and14, 16973824
  store i32 %or, ptr %in, align 4
  %add.ptr26 = getelementptr inbounds i32, ptr %in, i32 2
  %17 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %18, -65536
  %or30 = or i32 %and27, 2
  store i32 %or30, ptr %add.ptr26, align 4
  %call38 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %do.body8.cleanup_crit_edge

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %do.body8
  %add.ptr43 = getelementptr inbounds i32, ptr %out, i32 3
  %19 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr43, align 4
  %and45 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp.not = icmp eq i32 %and45, 0
  br i1 %cmp.not, label %if.end55, label %do.end50

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i101 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i101 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task53, align 8
  %pid54 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid54, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 356, i32 noundef %28) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  call void @mlx5_set_nic_state(ptr noundef %dev, i8 noundef zeroext 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv) #9
  %add = add i32 %call2.i, %29
  br label %do.body57

do.body57:                                        ; preds = %if.end63.do.body57_crit_edge, %if.end55
  %call58 = call zeroext i8 @mlx5_get_nic_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call58)
  %cmp60 = icmp eq i8 %call58, 1
  br i1 %cmp60, label %do.body57.do.end71_crit_edge, label %if.end63

do.body57.do.end71_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

if.end63:                                         ; preds = %do.body57
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 368, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %30
  %cmp67 = icmp sgt i32 %sub, -1
  br i1 %cmp67, label %if.end63.do.body57_crit_edge, label %if.end63.do.end71_crit_edge

if.end63.do.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

if.end63.do.body57_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body57

do.end71:                                         ; preds = %if.end63.do.end71_crit_edge, %do.body57.do.end71_crit_edge
  %call72 = call zeroext i8 @mlx5_get_nic_state(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call72)
  %cmp74.not = icmp eq i8 %call72, 1
  br i1 %cmp74.not, label %do.end71.cleanup_crit_edge, label %do.end79

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end79:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call81 = call zeroext i8 @mlx5_get_nic_state(ptr noundef %dev) #9
  %conv82 = zext i8 %call81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.11, i32 noundef %conv82, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %do.end71.cleanup_crit_edge, %do.end50, %do.body8.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -5, %do.end50 ], [ -5, %do.end79 ], [ -95, %if.then5 ], [ %call38, %do.body8.cleanup_crit_edge ], [ 0, %do.end71.cleanup_crit_edge ], [ -95, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_set_nic_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_get_nic_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_firmware_flash(ptr noundef %dev, ptr noundef %firmware, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %mlx5_mlxfw_dev = alloca %struct.mlx5_mlxfw_dev, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mlx5_mlxfw_dev) #9
  %0 = getelementptr inbounds i8, ptr %mlx5_mlxfw_dev, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %mlx5_mlxfw_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mlx5_mlxfw_dev_ops, ptr %mlx5_mlxfw_dev, align 4
  %psid = getelementptr inbounds %struct.mlxfw_dev, ptr %mlx5_mlxfw_dev, i32 0, i32 1
  %board_id = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %psid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %board_id, ptr %psid, align 4
  %psid_size = getelementptr inbounds %struct.mlxfw_dev, ptr %mlx5_mlxfw_dev, i32 0, i32 2
  %call = tail call i32 @strlen(ptr noundef %board_id) #14
  %conv = trunc i32 %call to i16
  %4 = ptrtoint ptr %psid_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %psid_size, align 4
  %devlink = getelementptr inbounds %struct.mlxfw_dev, ptr %mlx5_mlxfw_dev, i32 0, i32 3
  %call3 = tail call ptr @priv_to_devlink(ptr noundef %dev) #9
  %5 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %devlink, align 4
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlx5_mlxfw_dev, i32 0, i32 1
  %6 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %mlx5_core_dev, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add.ptr8 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr8, align 4
  %14 = and i32 %13, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %.not = icmp eq i32 %14, 14
  br i1 %.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = call i32 @mlxfw_firmware_flash(ptr noundef nonnull %mlx5_mlxfw_dev, ptr noundef %firmware, ptr noundef %extack) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call32, %if.end ], [ -95, %do.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mlx5_mlxfw_dev) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxfw_firmware_flash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fw_version_query(ptr noundef %dev, ptr nocapture noundef writeonly %running_ver, ptr nocapture noundef writeonly %pending_ver) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i78 = alloca [37 x i32], align 4
  %in.i.i79 = alloca [6 x i32], align 4
  %in.i.i68 = alloca [4 x i32], align 4
  %out.i69 = alloca [4 x i32], align 4
  %out.i.i = alloca [37 x i32], align 4
  %in.i.i66 = alloca [6 x i32], align 4
  %in.i.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 2, i32 0, i32 2
  %5 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr4, align 4
  %7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not = icmp eq i32 %7, 3
  br i1 %.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 802, i32 noundef %15) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %16 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %add.ptr.i = getelementptr inbounds i32, ptr %out.i, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %if.end ]
  %component_idx.0.i = phi i16 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %if.end ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #9
  %17 = call ptr @memset(ptr %16, i32 0, i32 12)
  %18 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %19 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %indvars.iv.i, ptr %in.i.i, align 4
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16, i16 noundef zeroext -28576, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mlx5_get_boot_img_component_index.exit

if.end.i:                                         ; preds = %do.body.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out.i, align 4
  %conv8.i = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv8.i)
  %cmp.i = icmp eq i32 %conv8.i, 1
  %conv9.i = zext i1 %cmp.i to i32
  %.lobit.i = lshr i32 %23, 31
  %or.i = or i32 %.lobit.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool12.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool12.not.i, label %land.rhs.i, label %do.end.split.loop.exit.i

land.rhs.i:                                       ; preds = %if.end.i
  %inc.i = add i16 %component_idx.0.i, 1
  %tobool16.not.i = icmp eq i16 %inc.i, 0
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  br i1 %tobool16.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.split.loop.exit.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.i = and i32 %indvars.iv.i, 65535
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.split.loop.exit.i, %land.rhs.i.do.end.i_crit_edge
  %component_idx.1.i = phi i32 [ %phi.cast.i, %do.end.split.loop.exit.i ], [ 0, %land.rhs.i.do.end.i_crit_edge ]
  br i1 %cmp.i, label %mlx5_get_boot_img_component_index.exit.thread94, label %mlx5_get_boot_img_component_index.exit.thread

mlx5_get_boot_img_component_index.exit.thread94:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  br label %if.end19

mlx5_get_boot_img_component_index.exit.thread:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 757, i32 noundef %31, i32 noundef %component_idx.1.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  br label %cleanup

mlx5_get_boot_img_component_index.exit:           ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %mlx5_get_boot_img_component_index.exit.cleanup_crit_edge, label %mlx5_get_boot_img_component_index.exit.if.end19_crit_edge

mlx5_get_boot_img_component_index.exit.if.end19_crit_edge: ; preds = %mlx5_get_boot_img_component_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

mlx5_get_boot_img_component_index.exit.cleanup_crit_edge: ; preds = %mlx5_get_boot_img_component_index.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %mlx5_get_boot_img_component_index.exit.if.end19_crit_edge, %mlx5_get_boot_img_component_index.exit.thread94
  %retval.0.i97 = phi i32 [ %component_idx.1.i, %mlx5_get_boot_img_component_index.exit.thread94 ], [ %call.i.i, %mlx5_get_boot_img_component_index.exit.if.end19_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %out.i.i) #9
  %32 = call ptr @memset(ptr %out.i.i, i32 0, i32 148)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %in.i.i66) #9
  %33 = getelementptr inbounds i8, ptr %in.i.i66, i32 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 16)
  %conv.i.i = and i32 %retval.0.i97, 65535
  %35 = ptrtoint ptr %in.i.i66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv.i.i, ptr %in.i.i66, align 4
  %add.ptr30.i.i = getelementptr inbounds i32, ptr %in.i.i66, i32 2
  %36 = ptrtoint ptr %add.ptr30.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %add.ptr30.i.i, align 4
  %add.ptr46.i.i = getelementptr inbounds i32, ptr %in.i.i66, i32 5
  %37 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 124, ptr %add.ptr46.i.i, align 4
  %call.i.i67 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i.i66, i32 noundef 24, ptr noundef nonnull %out.i.i, i32 noundef 148, i16 noundef zeroext -28575, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool58.not.i.i = icmp eq i32 %call.i.i67, 0
  br i1 %tobool58.not.i.i, label %if.end24, label %mlx5_reg_mcqi_version_query.exit

mlx5_reg_mcqi_version_query.exit:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i66) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %reg_mcqi_version.sroa.5.0.add.ptr60.i.i.sroa_idx = getelementptr inbounds i8, ptr %out.i.i, i32 28
  %38 = ptrtoint ptr %reg_mcqi_version.sroa.5.0.add.ptr60.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %reg_mcqi_version.sroa.5.0.copyload = load i32, ptr %reg_mcqi_version.sroa.5.0.add.ptr60.i.i.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i66) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i) #9
  %39 = ptrtoint ptr %running_ver to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %reg_mcqi_version.sroa.5.0.copyload, ptr %running_ver, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i69) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i68) #9
  %40 = getelementptr inbounds i8, ptr %in.i.i68, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 12)
  %42 = call ptr @memset(ptr %out.i69, i32 0, i32 16)
  %43 = ptrtoint ptr %in.i.i68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i.i, ptr %in.i.i68, align 4
  %call.i.i70 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i.i68, i32 noundef 16, ptr noundef nonnull %out.i69, i32 noundef 16, i16 noundef zeroext -28576, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i71, label %if.end.i72, label %if.end24.mlx5_fw_image_pending.exit_crit_edge

if.end24.mlx5_fw_image_pending.exit_crit_edge:    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_fw_image_pending.exit

if.end.i72:                                       ; preds = %if.end24
  %44 = getelementptr inbounds [4 x i32], ptr %out.i69, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %conv2.i = and i32 %46, 15
  %47 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv2.i, label %do.end.i76 [
    i32 0, label %if.then34
    i32 4, label %if.end35
  ]

do.end.i76:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %50 = call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i73 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i73 to ptr
  %task.i74 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i74, align 8
  %pid.i75 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid.i75, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 786, i32 noundef %55, i32 noundef %conv2.i) #13
  br label %mlx5_fw_image_pending.exit

mlx5_fw_image_pending.exit:                       ; preds = %do.end.i76, %if.end24.mlx5_fw_image_pending.exit_crit_edge
  %retval.0.i77 = phi i32 [ -61, %do.end.i76 ], [ %call.i.i70, %if.end24.mlx5_fw_image_pending.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i69) #9
  br label %cleanup

if.then34:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i69) #9
  %56 = ptrtoint ptr %pending_ver to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %pending_ver, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end.i72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i69) #9
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %out.i.i78) #9
  %57 = call ptr @memset(ptr %out.i.i78, i32 0, i32 148)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %in.i.i79) #9
  %58 = getelementptr inbounds i8, ptr %in.i.i79, i32 4
  %59 = call ptr @memset(ptr %58, i32 0, i32 16)
  %or.i.i = or i32 %conv.i.i, -2147483648
  %60 = ptrtoint ptr %in.i.i79 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i, ptr %in.i.i79, align 4
  %add.ptr30.i.i81 = getelementptr inbounds i32, ptr %in.i.i79, i32 2
  %61 = ptrtoint ptr %add.ptr30.i.i81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %add.ptr30.i.i81, align 4
  %add.ptr46.i.i82 = getelementptr inbounds i32, ptr %in.i.i79, i32 5
  %62 = ptrtoint ptr %add.ptr46.i.i82 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 124, ptr %add.ptr46.i.i82, align 4
  %call.i.i83 = call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef nonnull %in.i.i79, i32 noundef 24, ptr noundef nonnull %out.i.i78, i32 noundef 148, i16 noundef zeroext -28575, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool58.not.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %tobool58.not.i.i84, label %if.end41, label %mlx5_reg_mcqi_version_query.exit87

mlx5_reg_mcqi_version_query.exit87:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i79) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i78) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %reg_mcqi_version.sroa.5.0.add.ptr60.i.i85.sroa_idx = getelementptr inbounds i8, ptr %out.i.i78, i32 28
  %63 = ptrtoint ptr %reg_mcqi_version.sroa.5.0.add.ptr60.i.i85.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %reg_mcqi_version.sroa.5.0.copyload89 = load i32, ptr %reg_mcqi_version.sroa.5.0.add.ptr60.i.i85.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i79) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i78) #9
  %64 = ptrtoint ptr %pending_ver to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %reg_mcqi_version.sroa.5.0.copyload89, ptr %pending_ver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %mlx5_reg_mcqi_version_query.exit87, %if.then34, %mlx5_fw_image_pending.exit, %mlx5_reg_mcqi_version_query.exit, %mlx5_get_boot_img_component_index.exit.cleanup_crit_edge, %mlx5_get_boot_img_component_index.exit.thread, %do.end
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %if.then34 ], [ -95, %do.end ], [ %call.i.i, %mlx5_get_boot_img_component_index.exit.cleanup_crit_edge ], [ %call.i.i67, %mlx5_reg_mcqi_version_query.exit ], [ %retval.0.i77, %mlx5_fw_image_pending.exit ], [ %call.i.i83, %mlx5_reg_mcqi_version_query.exit87 ], [ -95, %mlx5_get_boot_img_component_index.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_pcam_reg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_mcam_reg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_qcam_reg(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_component_query(ptr nocapture noundef readonly %mlxfw_dev, i16 noundef zeroext %component_index, ptr nocapture noundef writeonly %p_max_size, ptr nocapture noundef writeonly %p_align_bits, ptr nocapture noundef writeonly %p_max_write_size) #0 align 64 {
entry:
  %out.i.i = alloca [37 x i32], align 4
  %in.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr1 = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr1, align 4
  %6 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %add.ptr5 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 2
  %7 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !54) #9
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 524, i32 noundef %17) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %out.i.i) #9
  %18 = call ptr @memset(ptr %out.i.i, i32 0, i32 148)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %in.i.i) #9
  %19 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 16)
  %conv.i.i = zext i16 %component_index to i32
  %21 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i.i, ptr %in.i.i, align 4
  %add.ptr46.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 5
  %22 = ptrtoint ptr %add.ptr46.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %add.ptr46.i.i, align 4
  %call.i.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i.i, i32 noundef 24, ptr noundef nonnull %out.i.i, i32 noundef 44, i16 noundef zeroext -28575, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool58.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end.i, label %mlx5_reg_mcqi_query.exit.i

mlx5_reg_mcqi_query.exit.i:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mcqi_reg.sroa.4.0.add.ptr60.i.sroa_idx.i = getelementptr inbounds i8, ptr %out.i.i, i32 32
  %23 = ptrtoint ptr %mcqi_reg.sroa.4.0.add.ptr60.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %mcqi_reg.sroa.4.0.copyload.i = load i32, ptr %mcqi_reg.sroa.4.0.add.ptr60.i.sroa_idx.i, align 4
  %mcqi_reg.sroa.5.0.add.ptr60.i.sroa_idx.i = getelementptr inbounds i8, ptr %out.i.i, i32 36
  %24 = ptrtoint ptr %mcqi_reg.sroa.5.0.add.ptr60.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %mcqi_reg.sroa.5.0.copyload.i = load i32, ptr %mcqi_reg.sroa.5.0.add.ptr60.i.sroa_idx.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %in.i.i) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %out.i.i) #9
  %25 = ptrtoint ptr %p_max_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mcqi_reg.sroa.4.0.copyload.i, ptr %p_max_size, align 4
  %shr4.i = lshr i32 %mcqi_reg.sroa.5.0.copyload.i, 28
  %conv.i = trunc i32 %shr4.i to i8
  %26 = ptrtoint ptr %p_align_bits to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %p_align_bits, align 1
  %conv10.i = trunc i32 %mcqi_reg.sroa.5.0.copyload.i to i16
  %27 = ptrtoint ptr %p_max_write_size to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv10.i, ptr %p_max_write_size, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %mlx5_reg_mcqi_query.exit.i, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call.i.i, %mlx5_reg_mcqi_query.exit.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_lock(ptr nocapture noundef readonly %mlxfw_dev, ptr nocapture noundef %fwhandle) #0 align 64 {
entry:
  %out.i13 = alloca [8 x i32], align 4
  %in.i14 = alloca [8 x i32], align 4
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  %2 = ptrtoint ptr %fwhandle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fwhandle, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 32)
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 32)
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlx5_reg_mcc_query.exit

mlx5_reg_mcc_query.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds [8 x i32], ptr %out.i, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i32], ptr %out.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and13.i = and i32 %8, 16777215
  %9 = ptrtoint ptr %fwhandle to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and13.i, ptr %fwhandle, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  %conv22.i18 = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv22.i18)
  %cmp.not = icmp eq i32 %conv22.i18, 0
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %fwhandle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwhandle, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i13) #9
  %14 = call ptr @memset(ptr %out.i13, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i14) #9
  %15 = getelementptr inbounds [8 x i32], ptr %in.i14, i32 0, i32 1
  %16 = getelementptr inbounds [8 x i32], ptr %in.i14, i32 0, i32 2
  %17 = getelementptr inbounds i8, ptr %in.i14, i32 12
  %18 = call ptr @memset(ptr %17, i32 0, i32 20)
  %19 = ptrtoint ptr %in.i14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %in.i14, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %15, align 4
  %and31.i = and i32 %13, 16777215
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and31.i, ptr %16, align 4
  %call.i15 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i14, i32 noundef 32, ptr noundef nonnull %out.i13, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i14) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %mlx5_reg_mcc_query.exit
  %retval.0 = phi i32 [ %call.i15, %if.end3 ], [ %call.i, %mlx5_reg_mcc_query.exit ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_component_update(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle, i16 noundef zeroext %component_index, i32 noundef %component_size) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %in.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 20)
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %in.i, align 4
  %conv.i = zext i16 %component_index to i32
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %3, align 4
  %and31.i = and i32 %fwhandle, 16777215
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and31.i, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %component_size, ptr %5, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_block_download(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle, ptr nocapture noundef readonly %data, i16 noundef zeroext %size, i32 noundef %offset) #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  %conv.i = zext i16 %size to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #9
  %2 = lshr i32 %conv.i, 2
  %3 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.mlx5_reg_mcda_set.exit_crit_edge, label %do.body.i

entry.mlx5_reg_mcda_set.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_reg_mcda_set.exit

do.body.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call9.i.i.i, align 128
  %and.i = and i32 %5, -16777216
  %and3.i = and i32 %fwhandle, 16777215
  %or.i = or i32 %and.i, %and3.i
  store i32 %or.i, ptr %call9.i.i.i, align 128
  %add.ptr12.i = getelementptr i32, ptr %call9.i.i.i, i32 1
  %6 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %offset, ptr %add.ptr12.i, align 4
  %add.ptr26.i = getelementptr i32, ptr %call9.i.i.i, i32 2
  %7 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr26.i, align 8
  %and27.i = and i32 %8, -65536
  %or30.i = or i32 %and27.i, %conv.i
  store i32 %or30.i, ptr %add.ptr26.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %size)
  %cmp60.not.i = icmp ult i16 %size, 4
  br i1 %cmp60.not.i, label %do.body.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr35.i = getelementptr i8, ptr %call9.i.i.i, i32 16
  %umax.i = tail call i32 @llvm.umax.i32(i32 %2, i32 1) #9
  %9 = shl nuw nsw i32 %umax.i, 2
  %10 = call ptr @memcpy(ptr %add.ptr35.i, ptr %data, i32 %9)
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.lr.ph.i, %do.body.i.for.end.i_crit_edge
  %call37.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, ptr noundef nonnull %out.i, i32 noundef 16, i16 noundef zeroext -28573, i32 noundef 0, i32 noundef 1) #9
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %mlx5_reg_mcda_set.exit

mlx5_reg_mcda_set.exit:                           ; preds = %for.end.i, %entry.mlx5_reg_mcda_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call37.i, %for.end.i ], [ -12, %entry.mlx5_reg_mcda_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_component_verify(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle, i16 noundef zeroext %component_index) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %in.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %in.i, align 4
  %conv.i = zext i16 %component_index to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %3, align 4
  %and31.i = and i32 %fwhandle, 16777215
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and31.i, ptr %4, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_activate(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %in.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %in.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %and31.i = and i32 %fwhandle, 16777215
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and31.i, ptr %4, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_reactivate(ptr nocapture noundef readonly %mlxfw_dev, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %out = alloca [2 x i32], align 8
  %in = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #9
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %out, align 8, !annotation !65
  %3 = getelementptr inbounds [2 x i32], ptr %out, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %1, i32 noundef 12) #9
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #9
  %add.ptr2 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 2, i32 2
  %6 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr2, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %in, align 8
  %call6 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext -28318, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %if.end
  %10 = add i32 %call2.i, %5
  br label %do.body

do.body:                                          ; preds = %if.end25.do.body_crit_edge, %do.body.preheader
  %11 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %out, align 8
  %call13 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 8, ptr noundef nonnull %out, i32 noundef 8, i16 noundef zeroext -28318, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.body
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 8
  %conv21 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %status, align 1
  %conv22 = and i32 %13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv22)
  %cmp.not = icmp eq i32 %conv22, 1
  br i1 %cmp.not, label %if.end25, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @msleep(i32 noundef 20) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %15, %10
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %if.end25.do.body_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25.do.body_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call13, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fsm_query_state(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle, ptr nocapture noundef writeonly %fsm_state, ptr nocapture noundef writeonly %fsm_state_err) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %2 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 32)
  %4 = call ptr @memset(ptr %out.i, i32 0, i32 32)
  %and4.i = and i32 %fwhandle, 16777215
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and4.i, ptr %2, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %mlx5_reg_mcc_query.exit

mlx5_reg_mcc_query.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds [8 x i32], ptr %out.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shr16.i = lshr i32 %8, 8
  %conv.i = trunc i32 %shr16.i to i8
  %conv22.i = and i32 %8, 15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  %9 = ptrtoint ptr %fsm_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv22.i, ptr %fsm_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %conv.i)
  %cmp = icmp ult i8 %conv.i, 10
  %conv1 = and i32 %shr16.i, 255
  %cond = select i1 %cmp, i32 %conv1, i32 10
  %10 = ptrtoint ptr %fsm_state_err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %fsm_state_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_reg_mcc_query.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fsm_cancel(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %in.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %in.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %and31.i = and i32 %fwhandle, 16777215
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and31.i, ptr %4, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fsm_release(ptr nocapture noundef readonly %mlxfw_dev, i32 noundef %fwhandle) #0 align 64 {
entry:
  %out.i = alloca [8 x i32], align 4
  %in.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mlx5_core_dev = getelementptr inbounds %struct.mlx5_mlxfw_dev, ptr %mlxfw_dev, i32 0, i32 1
  %0 = ptrtoint ptr %mlx5_core_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlx5_core_dev, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i) #9
  %2 = call ptr @memset(ptr %out.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in.i) #9
  %3 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i32], ptr %in.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %in.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 20)
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %in.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %and31.i = and i32 %fwhandle, 16777215
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and31.i, ptr %4, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 32, ptr noundef nonnull %out.i, i32 noundef 32, i16 noundef zeroext -28574, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__ksymtab_mlx5_core_query_vendor_id, !1, !"__ksymtab_mlx5_core_query_vendor_id", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 121, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 313, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlx5_cmd_force_teardown_hca.__UNIQUE_ID_ddebug506, !3, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 326, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mlx5_cmd_force_teardown_hca._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5_cmd_force_teardown_hca._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 342, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5_cmd_fast_teardown_hca.__UNIQUE_ID_ddebug509, !15, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 356, i32 3}
!20 = !{ptr @mlx5_cmd_fast_teardown_hca._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5_cmd_fast_teardown_hca._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 372, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx5_cmd_fast_teardown_hca._entry.10, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5_cmd_fast_teardown_hca._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 703, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_firmware_flash._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_firmware_flash._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 802, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_fw_version_query._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_fw_version_query._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mlx5_mlxfw_dev_ops, !38, !"mlx5_mlxfw_dev_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 672, i32 35}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 524, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx5_component_query._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx5_component_query._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 756, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mlx5_get_boot_img_component_index._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mlx5_get_boot_img_component_index._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fw.c", i32 784, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5_fw_image_pending._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mlx5_fw_image_pending._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148745666, i64 2148745671, i64 2148745684, i64 2148745728, i64 2148745762, i64 2148745783}
!65 = !{!"auto-init"}
