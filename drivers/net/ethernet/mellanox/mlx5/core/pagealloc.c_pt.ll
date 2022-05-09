; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.fw_page = type { %struct.rb_node, i64, ptr, i32, i32, %struct.list_head, i32 }
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
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_eqe_page_req = type { i16, i16, i32, [5 x i32] }
%struct.mlx5_pages_req = type { ptr, i16, i8, i32, %struct.work_struct, i8 }

@mlx5_satisfy_startup_pages.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_satisfy_startup_pages\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): requested %d %s pages for func_id 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"FW pages counter is %d after reclaiming all pages\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VFs FW pages counter is %d after reclaiming all pages\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"External host PF FW pages counter is %d after reclaiming all pages\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_page_allocator\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_wait_for_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 733, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): Skipping wait for vf pages stage\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_wait_for_pages\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_wait_for_pages._entry_ptr = internal global ptr @mlx5_wait_for_pages._entry, section ".printk_index", align 4
@mlx5_wait_for_pages.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): Waiting for %d pages\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5_wait_for_pages._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 740, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): aborting while there are %d pending pages\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_wait_for_pages._entry_ptr.18 = internal global ptr @mlx5_wait_for_pages._entry.16, section ".printk_index", align 4
@mlx5_wait_for_pages.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): All pages received\0A\00", [60 x i8] zeroinitializer }, align 32
@give_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 344, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): vzalloc failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"give_pages\00", [21 x i8] zeroinitializer }, align 32
@give_pages._entry_ptr = internal global ptr @give_pages._entry, section ".printk_index", align 4
@give_pages._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 371, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): func_id 0x%x, npages %d, err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@give_pages._entry_ptr.24 = internal global ptr @give_pages._entry.22, section ".printk_index", align 4
@give_pages.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): npages %d, ec_function %d, func_id 0x%x, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@alloc_4k._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 215, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:(pid %d): alloc 4k bug\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alloc_4k\00", [23 x i8] zeroinitializer }, align 32
@alloc_4k._entry_ptr = internal global ptr @alloc_4k._entry, section ".printk_index", align 4
@alloc_system_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 278, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): failed to allocate page\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_system_page\00", [46 x i8] zeroinitializer }, align 32
@alloc_system_page._entry_ptr = internal global ptr @alloc_system_page._entry, section ".printk_index", align 4
@alloc_system_page._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 284, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): failed dma mapping page\0A\00", [55 x i8] zeroinitializer }, align 32
@alloc_system_page._entry_ptr.32 = internal global ptr @alloc_system_page._entry.30, section ".printk_index", align 4
@alloc_system_page._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 297, ptr @.str.35, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): failed to track allocated page\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@alloc_system_page._entry_ptr.36 = internal global ptr @alloc_system_page._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@free_4k._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.free_4k = private unnamed_addr constant [8 x i8] c"free_4k\00", align 1
@free_4k._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.free_4k, ptr @.str.2, i32 255, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:%d:(pid %d): page not found\0A\00", [32 x i8] zeroinitializer }, align 32
@free_4k._entry_ptr = internal global ptr @free_4k._entry, section ".printk_index", align 4
@find_fw_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_fwp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@page_notify_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 326, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): page notify failed func_id(%d) err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"page_notify_fail\00", [47 x i8] zeroinitializer }, align 32
@page_notify_fail._entry_ptr = internal global ptr @page_notify_fail._entry, section ".printk_index", align 4
@mlx5_reclaim_root_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 651, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): failed reclaiming pages (%d) for func id 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_reclaim_root_pages\00", [40 x i8] zeroinitializer }, align 32
@mlx5_reclaim_root_pages._entry_ptr = internal global ptr @mlx5_reclaim_root_pages._entry, section ".printk_index", align 4
@mlx5_reclaim_root_pages._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 659, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): FW did not return all pages. giving up...\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_reclaim_root_pages._entry_ptr.46 = internal global ptr @mlx5_reclaim_root_pages._entry.44, section ".printk_index", align 4
@reclaim_pages.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reclaim_pages\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): func 0x%x, npages %d, outlen %d\0A\00", [47 x i8] zeroinitializer }, align 32
@reclaim_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 510, ptr @.str.35, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): failed reclaiming pages: err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@reclaim_pages._entry_ptr = internal global ptr @reclaim_pages._entry, section ".printk_index", align 4
@reclaim_pages._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.2, i32 517, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): fw returned %d, driver asked %d => corruption\0A\00", [33 x i8] zeroinitializer }, align 32
@reclaim_pages._entry_ptr.52 = internal global ptr @reclaim_pages._entry.50, section ".printk_index", align 4
@reclaim_pages_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@req_pages_handler.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"req_pages_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): page request for func 0x%x, npages %d, release_all %d\0A\00", [57 x i8] zeroinitializer }, align 32
@req_pages_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 590, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): failed to allocate pages request\0A\00", [46 x i8] zeroinitializer }, align 32
@req_pages_handler._entry_ptr = internal global ptr @req_pages_handler._entry, section ".printk_index", align 4
@req_pages_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&req->work)\00", [34 x i8] zeroinitializer }, align 32
@pages_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 555, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:%d:(pid %d): %s fail %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pages_work_handler\00", [45 x i8] zeroinitializer }, align 32
@pages_work_handler._entry_ptr = internal global ptr @pages_work_handler._entry, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reclaim\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"give\00", [27 x i8] zeroinitializer }, align 32
@release_all_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@release_all_pages.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release_all_pages\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): npages %d, ec_function %d, func_id 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 614, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 682, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 685, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 688, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 698, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 733, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 737, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 740, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 750, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 344, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 370, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 381, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 215, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 278, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 284, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 297, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 255, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 325, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 650, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 659, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 506, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 510, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 516, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 378, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 586, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 590, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 599, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 554, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 424, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @alloc_4k._entry, ptr @alloc_4k._entry_ptr, ptr @alloc_system_page._entry, ptr @alloc_system_page._entry.30, ptr @alloc_system_page._entry.33, ptr @alloc_system_page._entry_ptr, ptr @alloc_system_page._entry_ptr.32, ptr @alloc_system_page._entry_ptr.36, ptr @free_4k._entry, ptr @free_4k._entry_ptr, ptr @give_pages._entry, ptr @give_pages._entry.22, ptr @give_pages._entry_ptr, ptr @give_pages._entry_ptr.24, ptr @mlx5_reclaim_root_pages._entry, ptr @mlx5_reclaim_root_pages._entry.44, ptr @mlx5_reclaim_root_pages._entry_ptr, ptr @mlx5_reclaim_root_pages._entry_ptr.46, ptr @mlx5_wait_for_pages._entry, ptr @mlx5_wait_for_pages._entry.16, ptr @mlx5_wait_for_pages._entry_ptr, ptr @mlx5_wait_for_pages._entry_ptr.18, ptr @page_notify_fail._entry, ptr @page_notify_fail._entry_ptr, ptr @pages_work_handler._entry, ptr @pages_work_handler._entry_ptr, ptr @reclaim_pages._entry, ptr @reclaim_pages._entry.50, ptr @reclaim_pages._entry_ptr, ptr @reclaim_pages._entry_ptr.52, ptr @req_pages_handler._entry, ptr @req_pages_handler._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @free_4k._rs, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @xa_init_flags.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @req_pages_handler.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wait_for_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wait_for_pages._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @give_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @give_pages._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_4k._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_system_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_system_page._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_system_page._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_4k._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_4k._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_notify_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_reclaim_root_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_reclaim_root_pages._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reclaim_pages._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_pages_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_pages_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_satisfy_startup_pages(ptr noundef %dev, i32 noundef %boot) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #7
  %0 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #7
  %1 = getelementptr inbounds i8, ptr %in.i, i32 12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %3 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17235968, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boot)
  %tobool.not.i = icmp eq i32 %boot, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %4 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %add.ptr13.i, align 4
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %5 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not.i = icmp eq i8 %6, 0
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %shl31.i = select i1 %tobool.i.not.i, i32 0, i32 -2147483648
  %7 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl31.i, ptr %add.ptr28.i, align 4
  %call39.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %do.body, label %mlx5_cmd_query_pages.exit

mlx5_cmd_query_pages.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %add.ptr42.i = getelementptr inbounds i32, ptr %out.i, i32 3
  %8 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr42.i, align 4
  %add.ptr45.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %10 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr45.i, align 4
  %conv48.i = trunc i32 %11 to i16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_satisfy_startup_pages.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_satisfy_startup_pages, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !143

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid, align 8
  %cond = select i1 %tobool.not.i, ptr @.str.5, ptr @.str.4
  %conv = and i32 %11, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_satisfy_startup_pages.__UNIQUE_ID_ddebug526, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 615, i32 noundef %19, i32 noundef %9, ptr noundef nonnull %cond, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %20 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i = icmp ne i8 %21, 0
  %call10 = call fastcc i32 @give_pages(ptr noundef %dev, i16 noundef zeroext %conv48.i, i32 noundef %9, i32 noundef 0, i1 noundef zeroext %tobool.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mlx5_cmd_query_pages.exit
  %retval.0 = phi i32 [ %call10, %do.end ], [ %call39.i, %mlx5_cmd_query_pages.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @give_pages(ptr noundef %dev, i16 noundef zeroext %func_id, i32 noundef %npages, i32 noundef %notify_fail, i1 noundef zeroext %ec_function) unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %func_id to i32
  %shl.i = select i1 %ec_function, i32 65536, i32 0
  %or.i = or i32 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #7
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %mul = shl i32 %npages, 3
  %add = add i32 %mul, 16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #10
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages)
  %cmp247 = icmp sgt i32 %npages, 0
  br i1 %cmp247, label %retry.preheader.lr.ph, label %for.cond.preheader.do.body27_crit_edge

for.cond.preheader.do.body27_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

retry.preheader.lr.ph:                            ; preds = %for.cond.preheader
  %free_list.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 7
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %page_root_xa.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  br label %retry.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !133) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 344, i32 noundef %8, i32 noundef %add) #11
  br label %out_free

retry.preheader:                                  ; preds = %do.end22.retry.preheader_crit_edge, %retry.preheader.lr.ph
  %i.0248 = phi i32 [ 0, %retry.preheader.lr.ph ], [ %inc, %do.end22.retry.preheader_crit_edge ]
  br label %retry

retry:                                            ; preds = %if.end10.retry_crit_edge, %retry.preheader
  %9 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn43.i = load ptr, ptr %free_list.i, align 4
  %cmp.not44.i = icmp eq ptr %.pn43.i, %free_list.i
  br i1 %cmp.not44.i, label %for.end.thread.i, label %retry.for.body.i_crit_edge

retry.for.body.i_crit_edge:                       ; preds = %retry
  br label %for.body.i

for.end.thread.i:                                 ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_list.i, align 4
  br label %if.then8

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %retry.for.body.i_crit_edge
  %.pn46.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn43.i, %retry.for.body.i_crit_edge ]
  %fp.045.i = phi ptr [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ null, %retry.for.body.i_crit_edge ]
  %iter.0.i = getelementptr i8, ptr %.pn46.i, i32 -36
  %function3.i = getelementptr i8, ptr %.pn46.i, i32 -8
  %12 = ptrtoint ptr %function3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %function3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %or.i)
  %cmp4.not.i = icmp eq i32 %13, %or.i
  %spec.select.i = select i1 %cmp4.not.i, ptr %iter.0.i, ptr %fp.045.i
  %14 = ptrtoint ptr %.pn46.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn46.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %free_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %free_list.i, align 4
  %cmp.i.i = icmp eq ptr %16, %free_list.i
  %tobool12.not.i = icmp eq ptr %spec.select.i, null
  %or.cond.i = select i1 %cmp.i.i, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i, label %for.end.i.if.then8_crit_edge, label %if.end14.i

for.end.i.if.then8_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end14.i:                                       ; preds = %for.end.i
  %bitmask.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 4
  %call15.i = tail call i32 @_find_first_bit_be(ptr noundef %bitmask.i, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.not.i, label %if.end19.i, label %alloc_4k.exit.thread231

alloc_4k.exit.thread231:                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 215, i32 noundef %24) #11
  br label %out_4k

if.end19.i:                                       ; preds = %if.end14.i
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bitmask.i) #7
  %free_count.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 6
  %25 = ptrtoint ptr %free_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_count.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %free_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end19.i.do.end22_crit_edge

if.end19.i.do.end22_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

if.then23.i:                                      ; preds = %if.end19.i
  %list24.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list24.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.i.list_del.exit.i_crit_edge

if.then23.i.list_del.exit.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %list24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then23.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %list24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %list24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %do.end22

if.then8:                                         ; preds = %for.end.i.if.then8_crit_edge, %for.end.thread.i
  %35 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051842, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i216, label %if.then8.map.i_crit_edge

if.then8.map.i_crit_edge:                         ; preds = %if.then8
  br label %map.i

do.end.i216:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i.i213 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i213 to ptr
  %task.i214 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i214 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i214, align 8
  %pid.i215 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid.i215 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid.i215, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 278, i32 noundef %44) #11
  br label %out_4k

map.i:                                            ; preds = %map.i.map.i_crit_edge, %if.then8.map.i_crit_edge
  %cmp36.i = phi i1 [ true, %map.i.map.i_crit_edge ], [ false, %if.then8.map.i_crit_edge ]
  %call5.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef %call5.i) #7
  %45 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5.i, label %if.end20.i [
    i32 -1, label %do.end12.i
    i32 0, label %map.i.map.i_crit_edge
  ]

map.i.map.i_crit_edge:                            ; preds = %map.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %map.i

do.end12.i:                                       ; preds = %map.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %48 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i64.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i64.i to ptr
  %task15.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task15.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task15.i, align 8
  %pid16.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 68
  %52 = ptrtoint ptr %pid16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pid16.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef 284, i32 noundef %53) #11
  br label %if.then34.i

if.end20.i:                                       ; preds = %map.i
  %conv.le.i = zext i32 %call5.i to i64
  %call.i.i.i217 = tail call ptr @xa_load(ptr noundef %page_root_xa.i.i.i, i32 noundef %or.i) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i217, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i218, label %if.end20.i.page_root_per_function.exit.i.i_crit_edge

if.end20.i.page_root_per_function.exit.i.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %page_root_per_function.exit.i.i

if.end.i.i.i218:                                  ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 4) #12
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i218.do.end26.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i218.do.end26.i_crit_edge:             ; preds = %if.end.i.i.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i218
  tail call void @_raw_spin_lock(ptr noundef %page_root_xa.i.i.i) #7
  %call.i.i.i.i = tail call i32 @__xa_insert(ptr noundef %page_root_xa.i.i.i, i32 noundef %or.i, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 3264) #7
  tail call void @_raw_spin_unlock(ptr noundef %page_root_xa.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end12.i.i.i, label %if.then10.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #7
  %55 = inttoptr i32 %call.i.i.i.i to ptr
  br label %page_root_per_function.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %call7.i.i.i.i.i, align 8
  br label %page_root_per_function.exit.i.i

page_root_per_function.exit.i.i:                  ; preds = %if.end12.i.i.i, %if.then10.i.i.i, %if.end20.i.page_root_per_function.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %55, %if.then10.i.i.i ], [ %call7.i.i.i.i.i, %if.end12.i.i.i ], [ %call.i.i.i217, %if.end20.i.page_root_per_function.exit.i.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %insert_page.exit.i, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %page_root_per_function.exit.i.i
  %57 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %retval.0.i.i.i, align 4
  %tobool.not56.i.i = icmp eq ptr %58, null
  br i1 %tobool.not56.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end10.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %59 = phi ptr [ %63, %if.end10.i.i.while.body.i.i_crit_edge ], [ %58, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %addr3.i.i = getelementptr inbounds %struct.fw_page, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %addr3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv.le.i)
  %cmp.i65.i = icmp ult i64 %61, %conv.le.i
  br i1 %cmp.i65.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 2
  br label %if.end10.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %conv.le.i)
  %cmp6.i.i = icmp ugt i64 %61, %conv.le.i
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.else.i.i.do.end26.i_crit_edge

if.else.i.i.do.end26.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 1
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i, %if.then4.i.i
  %new.1.i.i = phi ptr [ %rb_left.i.i, %if.then4.i.i ], [ %rb_right.i.i, %if.then7.i.i ]
  %62 = ptrtoint ptr %new.1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %new.1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %if.end10.i.i.while.body.i.i_crit_edge

if.end10.i.i.while.body.i.i_crit_edge:            ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le.i.i = ptrtoint ptr %59 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %new.0.lcssa.i.i = phi ptr [ %new.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %retval.0.i.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge ]
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 48) #12
  %tobool12.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool12.not.i.i, label %while.end.i.i.do.end26.i_crit_edge, label %if.end14.i.i

while.end.i.i.do.end26.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

if.end14.i.i:                                     ; preds = %while.end.i.i
  %addr15.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %addr15.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv.le.i, ptr %addr15.i.i, align 8
  %page16.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %page16.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call38.i.i.i, ptr %page16.i.i, align 8
  %function17.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %function17.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i, ptr %function17.i.i, align 4
  %free_count.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %free_count.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %free_count.i.i, align 4
  %bitmask.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bitmask.i.i) #7
  %69 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %parent.0.lcssa.i.i, ptr %call7.i.i.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %72 = ptrtoint ptr %new.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i.i, ptr %new.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %retval.0.i.i.i) #7
  %list.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 5
  %73 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %free_list.i, align 4
  %call.i.i50.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %free_list.i, ptr noundef %74) #7
  br i1 %call.i.i50.i.i, label %if.end.i.i.i.i, label %if.end14.i.i.if.end35.i_crit_edge

if.end14.i.i.if.end35.i_crit_edge:                ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.end.i.i.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i219 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i219 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %list.i.i, ptr %prev1.i.i.i.i219, align 4
  %76 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.fw_page, ptr %call7.i.i.i.i, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %free_list.i, ptr %prev3.i.i.i.i, align 8
  %78 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list.i.i, ptr %free_list.i, align 4
  br label %if.end35.i

insert_page.exit.i:                               ; preds = %page_root_per_function.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %retval.0.i.i.i to i32
  br label %do.end26.i

do.end26.i:                                       ; preds = %insert_page.exit.i, %while.end.i.i.do.end26.i_crit_edge, %if.else.i.i.do.end26.i_crit_edge, %if.end.i.i.i218.do.end26.i_crit_edge
  %retval.0.i73.i = phi i32 [ %79, %insert_page.exit.i ], [ -12, %while.end.i.i.do.end26.i_crit_edge ], [ -12, %if.end.i.i.i218.do.end26.i_crit_edge ], [ -17, %if.else.i.i.do.end26.i_crit_edge ]
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  %82 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i66.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i66.i to ptr
  %task29.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task29.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task29.i, align 8
  %pid30.i = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 68
  %86 = ptrtoint ptr %pid30.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid30.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef 297, i32 noundef %87) #11
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %call5.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  br label %if.then34.i

if.then34.i:                                      ; preds = %do.end26.i, %do.end12.i
  %err.0.i = phi i32 [ -12, %do.end12.i ], [ %retval.0.i73.i, %do.end26.i ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %if.end.i.i.i.i, %if.end14.i.i.if.end35.i_crit_edge
  %err.076.i = phi i32 [ %err.0.i, %if.then34.i ], [ 0, %if.end14.i.i.if.end35.i_crit_edge ], [ 0, %if.end.i.i.i.i ]
  br i1 %cmp36.i, label %if.then38.i, label %if.end35.i.if.end10_crit_edge

if.end35.i.if.end10_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then38.i, %if.end35.i.if.end10_crit_edge
  %tobool11.not = icmp eq i32 %err.076.i, 0
  br i1 %tobool11.not, label %if.end10.retry_crit_edge, label %if.end10.out_4k_crit_edge

if.end10.out_4k_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_4k

if.end10.retry_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

do.end22:                                         ; preds = %list_del.exit.i, %if.end19.i.do.end22_crit_edge
  %addr26.i = getelementptr inbounds %struct.fw_page, ptr %spec.select.i, i32 0, i32 1
  %88 = ptrtoint ptr %addr26.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %addr26.i, align 8
  %90 = add nuw i32 %i.0248, 2
  %div211 = and i32 %90, 67108863
  %add.ptr = getelementptr i64, ptr %call.i.i, i32 %div211
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %89, ptr %add.ptr, align 8
  %inc = add nuw nsw i32 %i.0248, 1
  %exitcond.not = icmp eq i32 %inc, %npages
  br i1 %exitcond.not, label %do.end22.do.body27_crit_edge, label %do.end22.retry.preheader_crit_edge

do.end22.retry.preheader_crit_edge:               ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.preheader

do.end22.do.body27_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

do.body27:                                        ; preds = %do.end22.do.body27_crit_edge, %for.cond.preheader.do.body27_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body27_crit_edge ], [ %npages, %do.end22.do.body27_crit_edge ]
  %92 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %call.i.i, align 4
  %and = and i32 %93, 65535
  %or = or i32 %and, 17301504
  store i32 %or, ptr %call.i.i, align 4
  %add.ptr41 = getelementptr i32, ptr %call.i.i, i32 1
  %94 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr41, align 4
  %and42 = and i32 %95, -65536
  %or45 = or i32 %and42, 1
  store i32 %or45, ptr %add.ptr41, align 4
  %add.ptr54 = getelementptr i32, ptr %call.i.i, i32 2
  %96 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr54, align 4
  %and55 = and i32 %97, 2147418112
  %or58 = or i32 %and55, %conv.i
  %add.ptr67 = getelementptr i32, ptr %call.i.i, i32 3
  %98 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %npages, ptr %add.ptr67, align 4
  %conv78 = zext i1 %ec_function to i32
  %shl85 = select i1 %ec_function, i32 -2147483648, i32 0
  %or86 = or i32 %or58, %shl85
  store i32 %or86, ptr %add.ptr54, align 4
  %call90 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef %add, ptr noundef nonnull %out, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end101, label %do.end95

do.end95:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  %101 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i221 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i221 to ptr
  %task98 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task98 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task98, align 8
  %pid99 = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 68
  %105 = ptrtoint ptr %pid99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pid99, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 371, i32 noundef %106, i32 noundef %conv.i, i32 noundef %npages, i32 noundef %call90) #11
  br label %out_4k

if.end101:                                        ; preds = %do.body27
  %fw_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 5
  %107 = ptrtoint ptr %fw_pages to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fw_pages, align 8
  %add102 = add i32 %108, %npages
  store i32 %add102, ptr %fw_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %func_id)
  %tobool103.not = icmp eq i16 %func_id, 0
  br i1 %tobool103.not, label %if.else, label %if.then104

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %vfs_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 8
  %109 = ptrtoint ptr %vfs_pages to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vfs_pages, align 8
  %add106 = add i32 %110, %npages
  store i32 %add106, ptr %vfs_pages, align 8
  br label %do.body115

if.else:                                          ; preds = %if.end101
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %111 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i.not = icmp eq i8 %112, 0
  %brmerge = or i1 %tobool.i.not, %ec_function
  br i1 %brmerge, label %if.else.do.body115_crit_edge, label %if.then110

if.else.do.body115_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body115

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %host_pf_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 9
  %113 = ptrtoint ptr %host_pf_pages to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %host_pf_pages, align 4
  %add112 = add i32 %114, %npages
  store i32 %add112, ptr %host_pf_pages, align 4
  br label %do.body115

do.body115:                                       ; preds = %if.then110, %if.else.do.body115_crit_edge, %if.then104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @give_pages.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@give_pages, %if.then121)) #7
          to label %do.end131 [label %if.then121], !srcloc !143

if.then121:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 8
  %117 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i222 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i222 to ptr
  %task124 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task124 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task124, align 8
  %pid125 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 68
  %121 = ptrtoint ptr %pid125 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pid125, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @give_pages.__UNIQUE_ID_ddebug514, ptr noundef %116, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef 382, i32 noundef %122, i32 noundef %npages, i32 noundef %conv78, i32 noundef %conv.i, i32 noundef 0) #7
  br label %do.end131

do.end131:                                        ; preds = %if.then121, %do.body115
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

out_4k:                                           ; preds = %do.end95, %if.end10.out_4k_crit_edge, %do.end.i216, %alloc_4k.exit.thread231
  %i.0246 = phi i32 [ %i.0.lcssa, %do.end95 ], [ %i.0248, %do.end.i216 ], [ %i.0248, %alloc_4k.exit.thread231 ], [ %i.0248, %if.end10.out_4k_crit_edge ]
  %err.1 = phi i32 [ %call90, %do.end95 ], [ -12, %do.end.i216 ], [ -2, %alloc_4k.exit.thread231 ], [ %err.076.i, %if.end10.out_4k_crit_edge ]
  %i.1249 = add i32 %i.0246, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1249)
  %cmp133250 = icmp sgt i32 %i.1249, -1
  br i1 %cmp133250, label %out_4k.for.body135_crit_edge, label %out_4k.out_free_crit_edge

out_4k.out_free_crit_edge:                        ; preds = %out_4k
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

out_4k.for.body135_crit_edge:                     ; preds = %out_4k
  br label %for.body135

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %out_4k.for.body135_crit_edge
  %i.1252 = phi i32 [ %i.1, %for.body135.for.body135_crit_edge ], [ %i.1249, %out_4k.for.body135_crit_edge ]
  %i.1.in251 = phi i32 [ %i.1252, %for.body135.for.body135_crit_edge ], [ %i.0246, %out_4k.for.body135_crit_edge ]
  %123 = add nuw i32 %i.1.in251, 1
  %div136210 = and i32 %123, 67108863
  %add.ptr137 = getelementptr i64, ptr %call.i.i, i32 %div136210
  %124 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %add.ptr137, align 8
  call fastcc void @free_4k(ptr noundef %dev, i64 noundef %125, i32 noundef %or.i)
  %i.1 = add nsw i32 %i.1252, -1
  %cmp133.not = icmp eq i32 %i.1252, 0
  br i1 %cmp133.not, label %for.body135.out_free_crit_edge, label %for.body135.for.body135_crit_edge

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body135

for.body135.out_free_crit_edge:                   ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

out_free:                                         ; preds = %for.body135.out_free_crit_edge, %out_4k.out_free_crit_edge, %if.then
  %err.2 = phi i32 [ -12, %if.then ], [ %err.1, %out_4k.out_free_crit_edge ], [ %err.1, %for.body135.out_free_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notify_fail)
  %tobool141.not = icmp eq i32 %notify_fail, 0
  br i1 %tobool141.not, label %out_free.cleanup_crit_edge, label %if.then142

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then142:                                       ; preds = %out_free
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #7
  %126 = getelementptr inbounds i8, ptr %in.i, i32 12
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %126, align 4
  %128 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 17301504, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %129 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %add.ptr13.i, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %shl47.i = select i1 %ec_function, i32 -2147483648, i32 0
  %or32.i = or i32 %shl47.i, %conv.i
  %130 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or32.i, ptr %add.ptr28.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #7
  %131 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool56.not.i, label %if.then142.page_notify_fail.exit_crit_edge, label %do.end59.i

if.then142.page_notify_fail.exit_crit_edge:       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %page_notify_fail.exit

do.end59.i:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 8
  %134 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i.i224 = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i224 to ptr
  %task.i225 = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task.i225 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task.i225, align 8
  %pid.i226 = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 68
  %138 = ptrtoint ptr %pid.i226 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pid.i226, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 326, i32 noundef %139, i32 noundef %conv.i, i32 noundef %call.i) #11
  br label %page_notify_fail.exit

page_notify_fail.exit:                            ; preds = %do.end59.i, %if.then142.page_notify_fail.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #7
  br label %cleanup

cleanup:                                          ; preds = %page_notify_fail.exit, %out_free.cleanup_crit_edge, %do.end131
  %retval.0 = phi i32 [ 0, %do.end131 ], [ %err.2, %page_notify_fail.exit ], [ %err.2, %out_free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_reclaim_startup_pages(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %nclaimed.i = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %page_root_xa = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  %call = call ptr @xa_find(ptr noundef %page_root_xa, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #7
  %tobool.not154 = icmp eq ptr %call, null
  br i1 %tobool.not154, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  br label %for.body

for.body:                                         ; preds = %mlx5_reclaim_root_pages.exit.for.body_crit_edge, %for.body.lr.ph
  %entry1.0155 = phi ptr [ %call, %for.body.lr.ph ], [ %call8, %mlx5_reclaim_root_pages.exit.for.body_crit_edge ]
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %conv = trunc i32 %2 to i16
  %call.i = call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 13) #7
  %conv.i = trunc i64 %call.i to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %entry1.0155 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %entry1.0155, align 4
  %cmp.not7.i = icmp eq ptr %5, null
  br i1 %cmp.not7.i, label %for.body.mlx5_reclaim_root_pages.exit_crit_edge, label %while.body.lr.ph.i

for.body.mlx5_reclaim_root_pages.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_reclaim_root_pages.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %add.i = add i32 %3, %call2.i.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %end.08.i = phi i32 [ %add.i, %while.body.lr.ph.i ], [ %end.1.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nclaimed.i) #7
  %6 = ptrtoint ptr %nclaimed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nclaimed.i, align 4, !annotation !144
  %7 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.i = icmp ne i8 %8, 0
  %call8.i = call fastcc i32 @reclaim_pages(ptr noundef %dev, i16 noundef zeroext %conv, i32 noundef 768, ptr noundef nonnull %nclaimed.i, i1 noundef zeroext %tobool.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.i

do.end11.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  %conv13.i = and i32 %2, 65535
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 651, i32 noundef %16, i32 noundef %call8.i, i32 noundef %conv13.i) #11
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %while.body.i
  %17 = ptrtoint ptr %nclaimed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nclaimed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.i = icmp eq i32 %18, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then15.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add17.i = add i32 %19, %call2.i.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %if.end.i.if.end19.i_crit_edge
  %end.1.i = phi i32 [ %add17.i, %if.then15.i ], [ %end.08.i, %if.end.i.if.end19.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %end.1.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp20.i = icmp slt i32 %sub.i, 0
  br i1 %cmp20.i, label %do.end25.i, label %cleanup.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i1.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i1.i to ptr
  %task28.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task28.i, align 8
  %pid29.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid29.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 659, i32 noundef %28) #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end25.i, %do.end11.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nclaimed.i) #7
  br label %mlx5_reclaim_root_pages.exit

cleanup.i:                                        ; preds = %if.end19.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nclaimed.i) #7
  %29 = ptrtoint ptr %entry1.0155 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %entry1.0155, align 4
  %cmp.not.i = icmp eq ptr %30, null
  br i1 %cmp.not.i, label %cleanup.i.mlx5_reclaim_root_pages.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.mlx5_reclaim_root_pages.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_reclaim_root_pages.exit

mlx5_reclaim_root_pages.exit:                     ; preds = %cleanup.i.mlx5_reclaim_root_pages.exit_crit_edge, %cleanup.thread.i, %for.body.mlx5_reclaim_root_pages.exit_crit_edge
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %call5 = call ptr @xa_erase(ptr noundef %page_root_xa, i32 noundef %32) #7
  call void @kfree(ptr noundef nonnull %entry1.0155) #7
  %call8 = call ptr @xa_find_after(ptr noundef %page_root_xa, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %mlx5_reclaim_root_pages.exit.for.end_crit_edge, label %mlx5_reclaim_root_pages.exit.for.body_crit_edge

mlx5_reclaim_root_pages.exit.for.body_crit_edge:  ; preds = %mlx5_reclaim_root_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

mlx5_reclaim_root_pages.exit.for.end_crit_edge:   ; preds = %mlx5_reclaim_root_pages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %mlx5_reclaim_root_pages.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %xa_head.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4, i32 2
  %33 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %34, null
  br i1 %cmp.i, label %for.end.if.end_crit_edge, label %do.end, !prof !145

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 680, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  %fw_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 5
  %35 = ptrtoint ptr %fw_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fw_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not = icmp eq i32 %36, 0
  br i1 %tobool34.not, label %if.end.if.end58_crit_edge, label %do.end50, !prof !145

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 684, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %36) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end50, %if.end.if.end58_crit_edge
  %vfs_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 8
  %37 = ptrtoint ptr %vfs_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vfs_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool68.not = icmp eq i32 %38, 0
  br i1 %tobool68.not, label %if.end58.if.end92_crit_edge, label %do.end84, !prof !145

if.end58.if.end92_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end84:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 687, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %38) #7
  br label %if.end92

if.end92:                                         ; preds = %do.end84, %if.end58.if.end92_crit_edge
  %host_pf_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 9
  %39 = ptrtoint ptr %host_pf_pages to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %host_pf_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool102.not = icmp eq i32 %40, 0
  br i1 %tobool102.not, label %if.end92.if.end126_crit_edge, label %do.end118, !prof !145

if.end92.if.end126_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

do.end118:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 690, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %40) #7
  br label %if.end126

if.end126:                                        ; preds = %do.end118, %if.end92.if.end126_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_pagealloc_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %free_list = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 7
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %free_list, ptr %prev.i, align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.10) #7
  %pg_wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %pg_wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %pg_wq, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_root_xa = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %page_root_xa, ptr noundef nonnull @.str.53, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4, i32 1
  %3 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4, i32 2
  %4 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_pagealloc_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %page_root_xa = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  tail call void @xa_destroy(ptr noundef %page_root_xa) #7
  %pg_wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %pg_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_pagealloc_start(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_nb = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %pg_nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @req_pages_handler, ptr %pg_nb, align 8
  %event_type = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 2, i32 1
  %1 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 11, ptr %event_type, align 4
  %call = tail call i32 @mlx5_eq_notifier_register(ptr noundef %dev, ptr noundef %pg_nb) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @req_pages_handler(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %nb, i32 -1856
  %data7 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %func_id8 = getelementptr inbounds %struct.mlx5_eqe_page_req, ptr %data7, i32 0, i32 1
  %0 = ptrtoint ptr %func_id8 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %func_id8, align 1
  %num_pages = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %num_pages, align 1
  %4 = ptrtoint ptr %data7 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data7, align 1
  %and.lobit = lshr i16 %5, 15
  %6 = trunc i16 %and.lobit to i8
  %7 = lshr i16 %5, 14
  %.lobit = and i16 %7, 1
  %8 = trunc i16 %.lobit to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @req_pages_handler.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@req_pages_handler, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr6, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  %conv24 = zext i16 %1 to i32
  %17 = zext i16 %.lobit to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @req_pages_handler.__UNIQUE_ID_ddebug525, ptr noundef %10, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef 587, i32 noundef %16, i32 noundef %conv24, i32 noundef %3, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 60) #12
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %do.end32, label %if.end37

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr6, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i87 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i87 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid36, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef 590, i32 noundef %26) #11
  br label %cleanup

if.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr6, ptr %call7.i.i, align 8
  %func_id39 = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %func_id39 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %1, ptr %func_id39, align 4
  %npages40 = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %npages40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %3, ptr %npages40, align 8
  %ec_function43 = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %ec_function43 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %6, ptr %ec_function43, align 2
  %release_all46 = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %release_all46 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %8, ptr %release_all46, align 8
  %work = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %32 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.57, ptr noundef nonnull @req_pages_handler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry52 = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry52, ptr %entry52, align 8
  %prev.i = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry52, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_pages_req, ptr %call7.i.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @pages_work_handler, ptr %func, align 8
  %pg_wq = getelementptr i8, ptr %nb, i32 16
  %36 = ptrtoint ptr %pg_wq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pg_wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end32
  %retval.0 = phi i32 [ 1, %if.end37 ], [ 0, %do.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_pagealloc_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_nb = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 2
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %dev, ptr noundef %pg_nb) #7
  %pg_wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %pg_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_wq, align 8
  tail call void @flush_workqueue(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_wait_for_pages(ptr noundef %dev, ptr nocapture noundef readonly %pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 14) #7
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %call2.i
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pages, align 4
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %do.end, label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 733, i32 noundef %12) #11
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_wait_for_pages.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_wait_for_pages, %if.then11)) #7
          to label %do.end18 [label %if.then11], !srcloc !143

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i75 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i75 to ptr
  %task14 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task14, align 8
  %pid15 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid15, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_wait_for_pages.__UNIQUE_ID_ddebug528, ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef 737, i32 noundef %20, i32 noundef %2) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then11, %do.body7
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not81 = icmp eq i32 %22, 0
  br i1 %tobool19.not81, label %do.end18.do.body38_crit_edge, label %do.end18.while.body_crit_edge

do.end18.while.body_crit_edge:                    ; preds = %do.end18
  br label %while.body

do.end18.do.body38_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %do.end18.while.body_crit_edge
  %23 = phi i32 [ %35, %if.end37.while.body_crit_edge ], [ %22, %do.end18.while.body_crit_edge ]
  %end.083 = phi i32 [ %end.1, %if.end37.while.body_crit_edge ], [ %add, %do.end18.while.body_crit_edge ]
  %prev_pages.082 = phi i32 [ %prev_pages.1, %if.end37.while.body_crit_edge ], [ %2, %do.end18.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %end.083, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20 = icmp slt i32 %sub, 0
  br i1 %cmp20, label %do.end25, label %if.end30

do.end25:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i76 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i76 to ptr
  %task28 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task28, align 8
  %pid29 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid29, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 740, i32 noundef %32, i32 noundef %23) #11
  br label %cleanup

if.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %prev_pages.082)
  %cmp31 = icmp slt i32 %23, %prev_pages.082
  br i1 %cmp31, label %if.then33, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add35 = add i32 %33, %call2.i
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %prev_pages.1 = phi i32 [ %23, %if.then33 ], [ %prev_pages.082, %if.end30.if.end37_crit_edge ]
  %end.1 = phi i32 [ %add35, %if.then33 ], [ %end.083, %if.end30.if.end37_crit_edge ]
  tail call void @msleep(i32 noundef 50) #7
  %34 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pages, align 4
  %tobool19.not = icmp eq i32 %35, 0
  br i1 %tobool19.not, label %if.end37.do.body38_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end37.do.body38_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

do.body38:                                        ; preds = %if.end37.do.body38_crit_edge, %do.end18.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_wait_for_pages.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_wait_for_pages, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !143

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i77 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i77 to ptr
  %task53 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task53, align 8
  %pid54 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid54, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_wait_for_pages.__UNIQUE_ID_ddebug529, ptr noundef %37, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, i32 noundef 750, i32 noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %do.body38, %do.end25, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -110, %do.end25 ], [ 0, %if.then50 ], [ 0, %do.body38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_4k(ptr noundef %dev, i64 noundef %addr, i32 noundef %function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %addr, -4096
  %page_root_xa.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  %call.i = tail call ptr @xa_load(ptr noundef %page_root_xa.i, i32 noundef %function) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.rhs.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.065.i = load ptr, ptr %call.i, align 4
  %tobool41.not66.i = icmp eq ptr %tmp.065.i, null
  br i1 %tobool41.not66.i, label %while.cond.preheader.i.do.body_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.body_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.rhs.i:                                       ; preds = %entry
  %.b63.i = load i1, ptr @find_fw_page.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.do.body_crit_edge, label %if.then.i, !prof !145

land.rhs.i.do.body_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @find_fw_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %do.body

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %tmp.067.i = phi ptr [ %tmp.0.i, %if.end50.i.while.body.i_crit_edge ], [ %tmp.065.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %addr43.i = getelementptr inbounds %struct.fw_page, ptr %tmp.067.i, i32 0, i32 1
  %1 = ptrtoint ptr %addr43.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr43.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %and)
  %cmp.i = icmp ult i64 %2, %and
  br i1 %cmp.i, label %if.then44.i, label %if.else.i

if.then44.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %tmp.067.i, i32 0, i32 2
  br label %if.end50.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %and)
  %cmp46.i = icmp ugt i64 %2, %and
  br i1 %cmp46.i, label %if.then47.i, label %if.end8

if.then47.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %tmp.067.i, i32 0, i32 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.then44.i
  %tmp.1.in.i = phi ptr [ %rb_left.i, %if.then44.i ], [ %rb_right.i, %if.then47.i ]
  %3 = ptrtoint ptr %tmp.1.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0.i = load ptr, ptr %tmp.1.in.i, align 4
  %tobool41.not.i = icmp eq ptr %tmp.0.i, null
  br i1 %tobool41.not.i, label %if.end50.i.do.body_crit_edge, label %if.end50.i.while.body.i_crit_edge

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end50.i.do.body_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end50.i.do.body_crit_edge, %if.then.i, %land.rhs.i.do.body_crit_edge, %while.cond.preheader.i.do.body_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @free_4k._rs, ptr noundef nonnull @__func__.free_4k) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.free_4k, i32 noundef 255, i32 noundef %11) #11
  br label %cleanup

if.end8:                                          ; preds = %if.else.i
  %free_count = getelementptr inbounds %struct.fw_page, ptr %tmp.067.i, i32 0, i32 6
  %12 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %free_count, align 4
  %bitmask = getelementptr inbounds %struct.fw_page, ptr %tmp.067.i, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bitmask) #7
  %14 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %free_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %if.then12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @free_fwp(ptr noundef %dev, ptr noundef nonnull %tmp.067.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_fwp(ptr noundef %dev, ptr noundef %fwp, i1 noundef zeroext %in_free_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %page_root_xa = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  %function = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 3
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function, align 4
  %call = tail call ptr @xa_load(ptr noundef %page_root_xa, i32 noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @free_fwp.__already_done, align 1
  br i1 %.b54, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !145

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @free_fwp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 236, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40:                                         ; preds = %entry
  tail call void @rb_erase(ptr noundef %fwp, ptr noundef nonnull %call) #7
  br i1 %in_free_list, label %if.then42, label %if.end40.if.end43_crit_edge

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  %list = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then42.list_del.exit_crit_edge

if.then42.list_del.exit_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then42.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %list_del.exit, %if.end40.if.end43_crit_edge
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %addr = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %addr, align 8
  %14 = trunc i64 %13 to i32
  %conv = and i32 %14, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %conv, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  %page = getelementptr inbounds %struct.fw_page, ptr %fwp, i32 0, i32 2
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 8
  tail call void @__free_pages(ptr noundef %16, i32 noundef 0) #7
  tail call void @kfree(ptr noundef %fwp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @reclaim_pages(ptr noundef %dev, i16 noundef zeroext %func_id, i32 noundef %npages, ptr noundef writeonly %nclaimed, i1 noundef zeroext %ec_function) unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %func_id to i32
  %shl.i = select i1 %ec_function, i32 65536, i32 0
  %or.i = or i32 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #7
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  %tobool1.not = icmp eq ptr %nclaimed, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %nclaimed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nclaimed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul = shl i32 %npages, 3
  %add = add i32 %mul, 16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #10
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %and = and i32 %3, 65535
  %or = or i32 %and, 17301504
  store i32 %or, ptr %in, align 4
  %add.ptr18 = getelementptr inbounds i32, ptr %in, i32 1
  %4 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %5, -65536
  %or22 = or i32 %and19, 2
  store i32 %or22, ptr %add.ptr18, align 4
  %add.ptr33 = getelementptr inbounds i32, ptr %in, i32 2
  %6 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr33, align 4
  %and34 = and i32 %7, 2147418112
  %or37 = or i32 %and34, %conv.i
  %add.ptr48 = getelementptr inbounds i32, ptr %in, i32 3
  %8 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %npages, ptr %add.ptr48, align 4
  %shl68 = select i1 %ec_function, i32 -2147483648, i32 0
  %or69 = or i32 %or37, %shl68
  store i32 %or69, ptr %add.ptr33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reclaim_pages.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reclaim_pages, %if.then80)) #7
          to label %do.end85 [label %if.then80], !srcloc !143

if.then80:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @reclaim_pages.__UNIQUE_ID_ddebug524, ptr noundef %10, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef 507, i32 noundef %16, i32 noundef %conv.i, i32 noundef %npages, i32 noundef %add) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then80, %do.body
  %call.i = tail call zeroext i1 @mlx5_cmd_is_down(ptr noundef %dev) #7
  br i1 %call.i, label %if.end.i, label %reclaim_pages_cmd.exit

if.end.i:                                         ; preds = %do.end85
  %17 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr48, align 4
  %19 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr33, align 4
  %page_root_xa.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  %conv.i.i = and i32 %20, 65535
  %21 = lshr i32 %20, 15
  %22 = and i32 %21, 65536
  %or.i.i = or i32 %22, %conv.i.i
  %call10.i = tail call ptr @xa_load(ptr noundef %page_root_xa.i, i32 noundef %or.i.i) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %land.rhs.i, label %if.end54.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b1.i = load i1, ptr @reclaim_pages_cmd.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.do.end92_crit_edge, label %if.then22.i, !prof !145

land.rhs.i.do.end92_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

if.then22.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @reclaim_pages_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 466, i32 noundef 9, ptr noundef null) #7
  br label %do.end92

if.end54.i:                                       ; preds = %if.end.i
  %call55.i = tail call ptr @rb_first(ptr noundef nonnull %call10.i) #7
  %tobool56.not3.i = icmp ne ptr %call55.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp ne i32 %18, 0
  %or.cond5.i = select i1 %tobool56.not3.i, i1 %cmp4.i, i1 false
  br i1 %or.cond5.i, label %if.end54.i.while.body.i_crit_edge, label %if.end54.i.reclaim_pages_cmd.exit.thread180_crit_edge

if.end54.i.reclaim_pages_cmd.exit.thread180_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reclaim_pages_cmd.exit.thread180

if.end54.i.while.body.i_crit_edge:                ; preds = %if.end54.i
  br label %while.body.i

while.body.i:                                     ; preds = %fwp_fill_manage_pages_out.exit.i.while.body.i_crit_edge, %if.end54.i.while.body.i_crit_edge
  %p.08.i = phi ptr [ %call62.i, %fwp_fill_manage_pages_out.exit.i.while.body.i_crit_edge ], [ %call55.i, %if.end54.i.while.body.i_crit_edge ]
  %i.06.i = phi i32 [ %add.i, %fwp_fill_manage_pages_out.exit.i.while.body.i_crit_edge ], [ 0, %if.end54.i.while.body.i_crit_edge ]
  %call62.i = tail call ptr @rb_next(ptr noundef nonnull %p.08.i) #7
  %sub.i = sub i32 %18, %i.06.i
  %bitmask.i.i = getelementptr inbounds %struct.fw_page, ptr %p.08.i, i32 0, i32 4
  %call.i.i172 = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmask.i.i, i32 noundef 1, i32 noundef 0) #7
  %addr.i.i = getelementptr inbounds %struct.fw_page, ptr %p.08.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %cmp21.i.i = icmp eq i32 %call.i.i172, 0
  br i1 %cmp21.i.i, label %do.end5.lr.ph.i.i, label %while.body.i.fwp_fill_manage_pages_out.exit.i_crit_edge

while.body.i.fwp_fill_manage_pages_out.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwp_fill_manage_pages_out.exit.i

do.end5.lr.ph.i.i:                                ; preds = %while.body.i
  %add6.i.i = add i32 %i.06.i, 2
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %for.inc.i.i.do.end5.i.i_crit_edge, %do.end5.lr.ph.i.i
  %pages_set.023.i.i = phi i32 [ 0, %do.end5.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.do.end5.i.i_crit_edge ]
  %npages.addr.022.i.i = phi i32 [ %sub.i, %do.end5.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i.do.end5.i.i_crit_edge ]
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %addr.i.i, align 8
  %25 = add i32 %add6.i.i, %pages_set.023.i.i
  %div20.i.i = and i32 %25, 67108863
  %add.ptr.i.i = getelementptr i64, ptr %call.i.i, i32 %div20.i.i
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %24, ptr %add.ptr.i.i, align 8
  %dec.i.i = add i32 %npages.addr.022.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.end5.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge, label %for.inc.i.i

do.end5.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwp_fill_manage_pages_out.exit.i

for.inc.i.i:                                      ; preds = %do.end5.i.i
  %inc.i.i = add i32 %pages_set.023.i.i, 1
  %call13.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %bitmask.i.i, i32 noundef 1, i32 noundef 1) #7
  %cmp.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %cmp.i.i, label %for.inc.i.i.do.end5.i.i_crit_edge, label %for.inc.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge

for.inc.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fwp_fill_manage_pages_out.exit.i

for.inc.i.i.do.end5.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i.i

fwp_fill_manage_pages_out.exit.i:                 ; preds = %for.inc.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge, %do.end5.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge, %while.body.i.fwp_fill_manage_pages_out.exit.i_crit_edge
  %pages_set.1.i.i = phi i32 [ 0, %while.body.i.fwp_fill_manage_pages_out.exit.i_crit_edge ], [ %inc.i.i, %for.inc.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge ], [ %sub.i, %do.end5.i.i.fwp_fill_manage_pages_out.exit.i_crit_edge ]
  %add.i = add i32 %pages_set.1.i.i, %i.06.i
  %tobool56.not.i = icmp ne ptr %call62.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i)
  %cmp.i = icmp ugt i32 %18, %add.i
  %or.cond.i = select i1 %tobool56.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %fwp_fill_manage_pages_out.exit.i.while.body.i_crit_edge, label %fwp_fill_manage_pages_out.exit.i.reclaim_pages_cmd.exit.thread180_crit_edge

fwp_fill_manage_pages_out.exit.i.reclaim_pages_cmd.exit.thread180_crit_edge: ; preds = %fwp_fill_manage_pages_out.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %reclaim_pages_cmd.exit.thread180

fwp_fill_manage_pages_out.exit.i.while.body.i_crit_edge: ; preds = %fwp_fill_manage_pages_out.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

reclaim_pages_cmd.exit.thread180:                 ; preds = %fwp_fill_manage_pages_out.exit.i.reclaim_pages_cmd.exit.thread180_crit_edge, %if.end54.i.reclaim_pages_cmd.exit.thread180_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end54.i.reclaim_pages_cmd.exit.thread180_crit_edge ], [ %add.i, %fwp_fill_manage_pages_out.exit.i.reclaim_pages_cmd.exit.thread180_crit_edge ]
  %add.ptr68.i = getelementptr i32, ptr %call.i.i, i32 2
  %27 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0.lcssa.i, ptr %add.ptr68.i, align 4
  br label %if.end97

reclaim_pages_cmd.exit:                           ; preds = %do.end85
  %call1.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call.i.i, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool88.not = icmp eq i32 %call1.i, 0
  br i1 %tobool88.not, label %reclaim_pages_cmd.exit.if.end97_crit_edge, label %reclaim_pages_cmd.exit.do.end92_crit_edge

reclaim_pages_cmd.exit.do.end92_crit_edge:        ; preds = %reclaim_pages_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end92

reclaim_pages_cmd.exit.if.end97_crit_edge:        ; preds = %reclaim_pages_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end92:                                         ; preds = %reclaim_pages_cmd.exit.do.end92_crit_edge, %if.then22.i, %land.rhs.i.do.end92_crit_edge
  %retval.0.i173179 = phi i32 [ %call1.i, %reclaim_pages_cmd.exit.do.end92_crit_edge ], [ -17, %if.then22.i ], [ -17, %land.rhs.i.do.end92_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i174 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i174 to ptr
  %task95 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task95, align 8
  %pid96 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid96 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid96, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47, i32 noundef 510, i32 noundef %35, i32 noundef %retval.0.i173179) #11
  br label %out_free

if.end97:                                         ; preds = %reclaim_pages_cmd.exit.if.end97_crit_edge, %reclaim_pages_cmd.exit.thread180
  %add.ptr98 = getelementptr i32, ptr %call.i.i, i32 2
  %36 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %npages)
  %cmp = icmp sgt i32 %37, %npages
  br i1 %cmp, label %do.end104, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp110183 = icmp sgt i32 %37, 0
  br i1 %cmp110183, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end104:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %40 = call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i175 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i175 to ptr
  %task107 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task107, align 8
  %pid108 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 68
  %44 = ptrtoint ptr %pid108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid108, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.47, i32 noundef 517, i32 noundef %45, i32 noundef %37, i32 noundef %npages) #11
  br label %out_free

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0184 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %46 = add nuw i32 %i.0184, 2
  %div171 = and i32 %46, 67108863
  %add.ptr112 = getelementptr i64, ptr %call.i.i, i32 %div171
  %47 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr112, align 8
  call fastcc void @free_4k(ptr noundef %dev, i64 noundef %48, i32 noundef %or.i)
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, %37
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  br i1 %tobool1.not, label %for.end.if.end115_crit_edge, label %if.then114

for.end.if.end115_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %nclaimed to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %37, ptr %nclaimed, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.end.if.end115_crit_edge
  %fw_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 5
  %50 = ptrtoint ptr %fw_pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_pages, align 8
  %sub = sub i32 %51, %37
  store i32 %sub, ptr %fw_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %func_id)
  %tobool116.not = icmp eq i16 %func_id, 0
  br i1 %tobool116.not, label %if.else, label %if.then117

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %vfs_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 8
  %52 = ptrtoint ptr %vfs_pages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vfs_pages, align 8
  %sub119 = sub i32 %53, %37
  store i32 %sub119, ptr %vfs_pages, align 8
  br label %out_free

if.else:                                          ; preds = %if.end115
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %54 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i.not = icmp eq i8 %55, 0
  %brmerge = or i1 %tobool.i.not, %ec_function
  br i1 %brmerge, label %if.else.out_free_crit_edge, label %if.then123

if.else.out_free_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

if.then123:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %host_pf_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 9
  %56 = ptrtoint ptr %host_pf_pages to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %host_pf_pages, align 4
  %sub125 = sub i32 %57, %37
  store i32 %sub125, ptr %host_pf_pages, align 4
  br label %out_free

out_free:                                         ; preds = %if.then123, %if.else.out_free_crit_edge, %if.then117, %do.end104, %do.end92
  %err.0 = phi i32 [ %retval.0.i173179, %do.end92 ], [ -22, %do.end104 ], [ 0, %if.then117 ], [ 0, %if.then123 ], [ 0, %if.else.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_cmd_is_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pages_work_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %release_all = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %release_all to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %release_all, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %func_id = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %func_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %func_id, align 4
  %ec_function = getelementptr i8, ptr %work, i32 -6
  %6 = ptrtoint ptr %ec_function to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ec_function, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2 = icmp ne i8 %7, 0
  tail call fastcc void @release_all_pages(ptr noundef %1, i16 noundef zeroext %5, i1 noundef zeroext %tobool2)
  br label %if.end24

if.else:                                          ; preds = %entry
  %npages = getelementptr i8, ptr %work, i32 -4
  %8 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then3, label %if.else8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %func_id4 = getelementptr i8, ptr %work, i32 -8
  %10 = ptrtoint ptr %func_id4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %func_id4, align 4
  %mul = sub i32 0, %9
  %ec_function6 = getelementptr i8, ptr %work, i32 -6
  %12 = ptrtoint ptr %ec_function6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ec_function6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7 = icmp ne i8 %13, 0
  %call = tail call fastcc i32 @reclaim_pages(ptr noundef %1, i16 noundef zeroext %11, i32 noundef %mul, ptr noundef null, i1 noundef zeroext %tobool7)
  br label %if.end18

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10.not = icmp eq i32 %9, 0
  br i1 %cmp10.not, label %if.else8.if.end24_crit_edge, label %if.then11

if.else8.if.end24_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  %func_id12 = getelementptr i8, ptr %work, i32 -8
  %14 = ptrtoint ptr %func_id12 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %func_id12, align 4
  %ec_function14 = getelementptr i8, ptr %work, i32 -6
  %16 = ptrtoint ptr %ec_function14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ec_function14, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15 = icmp ne i8 %17, 0
  %call16 = tail call fastcc i32 @give_pages(ptr noundef %1, i16 noundef zeroext %15, i32 noundef %9, i32 noundef 1, i1 noundef zeroext %tobool15)
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then3
  %err.0 = phi i32 [ %call, %if.then3 ], [ %call16, %if.then11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool19.not = icmp eq i32 %err.0, 0
  br i1 %tobool19.not, label %if.end18.if.end24_crit_edge, label %do.end

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !133) #7
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid, align 8
  %26 = ptrtoint ptr %npages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp23 = icmp slt i32 %27, 0
  %cond = select i1 %cmp23, ptr @.str.60, ptr @.str.61
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 555, i32 noundef %25, ptr noundef nonnull %cond, i32 noundef %err.0) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end18.if.end24_crit_edge, %if.else8.if.end24_crit_edge, %if.then
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_all_pages(ptr noundef %dev, i16 noundef zeroext %func_id, i1 noundef zeroext %ec_function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %func_id to i32
  %shl.i = select i1 %ec_function, i32 65536, i32 0
  %or.i = or i32 %shl.i, %conv.i
  %page_root_xa = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 4
  %call1 = tail call ptr @xa_load(ptr noundef %page_root_xa, i32 noundef %or.i) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %land.rhs, label %if.end42

land.rhs:                                         ; preds = %entry
  %.b104 = load i1, ptr @release_all_pages.__already_done, align 1
  br i1 %.b104, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !145

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @release_all_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 406, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end42:                                         ; preds = %entry
  %call43 = tail call ptr @rb_first(ptr noundef nonnull %call1) #7
  %tobool44.not107 = icmp eq ptr %call43, null
  br i1 %tobool44.not107, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end42.while.body_crit_edge
  %p.0109 = phi ptr [ %call46, %while.body.while.body_crit_edge ], [ %call43, %if.end42.while.body_crit_edge ]
  %npages.0108 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %if.end42.while.body_crit_edge ]
  %call46 = tail call ptr @rb_next(ptr noundef nonnull %p.0109) #7
  %free_count = getelementptr inbounds %struct.fw_page, ptr %p.0109, i32 0, i32 6
  %0 = ptrtoint ptr %free_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_count, align 4
  %sub = add i32 %npages.0108, 1
  %add = sub i32 %sub, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool48 = icmp ne i32 %1, 0
  tail call fastcc void @free_fwp(ptr noundef %dev, ptr noundef nonnull %p.0109, i1 noundef zeroext %tobool48)
  %tobool44.not = icmp eq ptr %call46, null
  br i1 %tobool44.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end42.while.end_crit_edge
  %npages.0.lcssa = phi i32 [ 0, %if.end42.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %fw_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %fw_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_pages, align 8
  %sub50 = sub i32 %3, %npages.0.lcssa
  store i32 %sub50, ptr %fw_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %func_id)
  %tobool51.not = icmp eq i16 %func_id, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %vfs_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 8
  %4 = ptrtoint ptr %vfs_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vfs_pages, align 8
  %sub54 = sub i32 %5, %npages.0.lcssa
  store i32 %sub54, ptr %vfs_pages, align 8
  br label %do.body62

if.else:                                          ; preds = %while.end
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  %brmerge = or i1 %tobool.i.not, %ec_function
  br i1 %brmerge, label %if.else.do.body62_crit_edge, label %if.then57

if.else.do.body62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %host_pf_pages = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 9
  %8 = ptrtoint ptr %host_pf_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_pf_pages, align 4
  %sub59 = sub i32 %9, %npages.0.lcssa
  store i32 %sub59, ptr %host_pf_pages, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.then57, %if.else.do.body62_crit_edge, %if.then52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @release_all_pages.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@release_all_pages, %if.then73)) #7
          to label %cleanup [label %if.then73], !srcloc !143

if.then73:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !133) #7
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
  %conv = zext i1 %ec_function to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @release_all_pages.__UNIQUE_ID_ddebug515, ptr noundef %11, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef 425, i32 noundef %17, i32 noundef %npages.0.lcssa, i32 noundef %conv, i32 noundef %conv.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.body62, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !126, !127, !129, !131, !132}
!llvm.named.register.sp = !{!133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 614, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_satisfy_startup_pages.__UNIQUE_ID_ddebug526, !1, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 682, i32 2}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 685, i32 2}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 688, i32 2}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 698, i32 20}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 733, i32 3}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_wait_for_pages._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx5_wait_for_pages._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 737, i32 2}
!26 = !{ptr @mlx5_wait_for_pages.__UNIQUE_ID_ddebug528, !25, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 740, i32 4}
!29 = !{ptr @mlx5_wait_for_pages._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_wait_for_pages._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 750, i32 2}
!33 = !{ptr @mlx5_wait_for_pages.__UNIQUE_ID_ddebug529, !32, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 344, i32 3}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @give_pages._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @give_pages._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 370, i32 3}
!41 = !{ptr @give_pages._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @give_pages._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 381, i32 2}
!45 = !{ptr @give_pages.__UNIQUE_ID_ddebug514, !44, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 215, i32 3}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @alloc_4k._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @alloc_4k._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 278, i32 3}
!53 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @alloc_system_page._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @alloc_system_page._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 284, i32 3}
!58 = !{ptr @alloc_system_page._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @alloc_system_page._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 297, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @alloc_system_page._entry.33, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @alloc_system_page._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 255, i32 3}
!69 = !{ptr @free_4k._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @__func__.free_4k, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @free_4k._entry, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @free_4k._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 155, i32 6}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 236, i32 6}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 325, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @page_notify_fail._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @page_notify_fail._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 650, i32 4}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx5_reclaim_root_pages._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @mlx5_reclaim_root_pages._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 659, i32 4}
!90 = !{ptr @mlx5_reclaim_root_pages._entry.44, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mlx5_reclaim_root_pages._entry_ptr.46, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 506, i32 2}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @reclaim_pages.__UNIQUE_ID_ddebug524, !93, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 510, i32 3}
!98 = !{ptr @reclaim_pages._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @reclaim_pages._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 516, i32 3}
!102 = !{ptr @reclaim_pages._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @reclaim_pages._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 466, i32 6}
!106 = !{ptr @xa_init_flags.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 586, i32 2}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @req_pages_handler.__UNIQUE_ID_ddebug525, !110, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 590, i32 3}
!115 = !{ptr @req_pages_handler._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @req_pages_handler._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @req_pages_handler.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 599, i32 2}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 554, i32 3}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pages_work_handler._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @pages_work_handler._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 406, i32 6}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/pagealloc.c", i32 424, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @release_all_pages.__UNIQUE_ID_ddebug515, !130, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!133 = !{!"sp"}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148505879, i64 2148505884, i64 2148505897, i64 2148505941, i64 2148505975, i64 2148505996}
!144 = !{!"auto-init"}
!145 = !{!"branch_weights", i32 2000, i32 1}
