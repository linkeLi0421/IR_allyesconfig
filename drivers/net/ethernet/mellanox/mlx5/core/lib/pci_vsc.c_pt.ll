; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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

@mlx5_pci_vsc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed to get valid vendor specific ID\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_pci_vsc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_pci_vsc_init._entry_ptr = internal global ptr @mlx5_pci_vsc_init._entry, section ".printk_index", align 4
@mlx5_vsc_gw_set_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed to get max space size\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_vsc_gw_set_space\00", [42 x i8] zeroinitializer }, align 32
@mlx5_vsc_gw_set_space._entry_ptr = internal global ptr @mlx5_vsc_gw_set_space._entry, section ".printk_index", align 4
@mlx5_vsc_sem_set_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Failed to set gw space %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_vsc_sem_set_space\00", [41 x i8] zeroinitializer }, align 32
@mlx5_vsc_sem_set_space._entry_ptr = internal global ptr @mlx5_vsc_sem_set_space._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 61, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 159, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 291, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @mlx5_pci_vsc_init._entry, ptr @mlx5_pci_vsc_init._entry_ptr, ptr @mlx5_vsc_gw_set_space._entry, ptr @mlx5_vsc_gw_set_space._entry_ptr, ptr @mlx5_vsc_sem_set_space._entry, ptr @mlx5_vsc_sem_set_space._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_pci_vsc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vsc_gw_set_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vsc_sem_set_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_pci_vsc_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call1 = tail call zeroext i8 @pci_find_capability(ptr noundef %3, i32 noundef 9) #5
  %conv = zext i8 %call1 to i32
  %vsc_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %vsc_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %tobool.not = icmp eq i8 %call1, 0
  br i1 %tobool.not, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !18) #5
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef %12) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vsc_gw_lock(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %counter = alloca i32, align 4
  %lock_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter) #5
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %counter, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_val) #5
  %1 = ptrtoint ptr %lock_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %lock_val, align 4, !annotation !28
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  tail call void @pci_cfg_access_lock(ptr noundef %3) #5
  %vsc_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %retries.0 = phi i32 [ 0, %entry ], [ %retries.1, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %retries.0)
  %exitcond = icmp eq i32 %retries.0, 2049
  br i1 %exitcond, label %do.body.pci_unlock_crit_edge, label %if.end

do.body.pci_unlock_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_unlock

if.end:                                           ; preds = %do.body
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %6 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsc_addr, align 4
  %add = add i32 %7, 12
  %call = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %lock_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.pci_unlock_crit_edge

if.end.pci_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_unlock

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %lock_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lock_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %do.cond

if.end6:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %12 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsc_addr, align 4
  %add9 = add i32 %13, 8
  %call10 = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef %add9, ptr noundef nonnull %counter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end6.pci_unlock_crit_edge

if.end6.pci_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_unlock

if.end13:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %16 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsc_addr, align 4
  %add16 = add i32 %17, 12
  %18 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter, align 4
  %call17 = call i32 @pci_write_config_dword(ptr noundef %15, i32 noundef %add16, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.pci_unlock_crit_edge

if.end13.pci_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_unlock

if.end20:                                         ; preds = %if.end13
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %22 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsc_addr, align 4
  %add23 = add i32 %23, 12
  %call24 = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef %add23, ptr noundef nonnull %lock_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end20.do.cond_crit_edge, label %if.end20.pci_unlock_crit_edge

if.end20.pci_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_unlock

if.end20.do.cond_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond

do.cond:                                          ; preds = %if.end20.do.cond_crit_edge, %if.then5
  %retries.1 = add nuw nsw i32 %retries.0, 1
  %24 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter, align 4
  %26 = ptrtoint ptr %lock_val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lock_val, align 4
  %cmp29.not = icmp eq i32 %25, %27
  br i1 %cmp29.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pci_unlock:                                       ; preds = %if.end20.pci_unlock_crit_edge, %if.end13.pci_unlock_crit_edge, %if.end6.pci_unlock_crit_edge, %if.end.pci_unlock_crit_edge, %do.body.pci_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.pci_unlock_crit_edge ], [ %call10, %if.end6.pci_unlock_crit_edge ], [ %call17, %if.end13.pci_unlock_crit_edge ], [ %call24, %if.end20.pci_unlock_crit_edge ], [ -16, %do.body.pci_unlock_crit_edge ]
  %28 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev, align 8
  call void @pci_cfg_access_unlock(ptr noundef %29) #5
  br label %cleanup

cleanup:                                          ; preds = %pci_unlock, %do.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %pci_unlock ], [ 0, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vsc_gw_unlock(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %vsc_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %2 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsc_addr, align 4
  %add = add i32 %3, 12
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add, i32 noundef 0) #5
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  tail call void @pci_cfg_access_unlock(ptr noundef %5) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vsc_gw_set_space(ptr nocapture noundef readonly %dev, i16 noundef zeroext %space, ptr noundef writeonly %ret_space_size) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %vsc_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %1 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vsc_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %ret_space_size, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %ret_space_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ret_space_size, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %6 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsc_addr.i, align 4
  %add = add i32 %7, 4
  %call3 = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %conv = zext i16 %space to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and7 = and i32 %9, -65536
  %or = or i32 %and7, %conv
  store i32 %or, ptr %val, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %12 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsc_addr.i, align 4
  %add10 = add i32 %13, 4
  %call11 = call i32 @pci_write_config_dword(ptr noundef %11, i32 noundef %add10, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %16 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vsc_addr.i, align 4
  %add17 = add i32 %17, 4
  %call18 = call i32 @pci_read_config_dword(ptr noundef %15, i32 noundef %add17, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %19)
  %cmp = icmp ult i32 %19, 536870912
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %20 = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %if.end25.cleanup_crit_edge, label %if.then31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end25
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %23 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vsc_addr.i, align 4
  %add34 = add i32 %24, 16
  %call35 = call i32 @pci_read_config_dword(ptr noundef %22, i32 noundef %add34, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end39, label %do.end

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 159, i32 noundef %32) #8
  br label %cleanup

if.end39:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %and41 = and i32 %34, 1073741823
  %35 = ptrtoint ptr %ret_space_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and41, ptr %ret_space_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ 0, %if.end39 ], [ 0, %if.end25.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ %call11, %if.end6.cleanup_crit_edge ], [ %call18, %if.end14.cleanup_crit_edge ], [ %call35, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vsc_gw_read_block_fast(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %next_read_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next_read_addr) #5
  %0 = ptrtoint ptr %next_read_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %next_read_addr, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp8.not = icmp eq i32 %length, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %vsc_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %read_addr.09 = phi i32 [ 0, %while.body.lr.ph ], [ %8, %if.end.while.body_crit_edge ]
  %shr = lshr i32 %read_addr.09, 2
  %arrayidx = getelementptr i32, ptr %data, i32 %shr
  %call.i = call fastcc i32 @mlx5_vsc_gw_read(ptr noundef %dev, i32 noundef %read_addr.09, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %while.body
  %1 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev.i, align 8
  %3 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsc_addr.i, align 4
  %add.i = add i32 %4, 16
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef %add.i, ptr noundef nonnull %next_read_addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %next_read_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_read_addr, align 4
  %and.i = and i32 %6, 1073741823
  store i32 %and.i, ptr %next_read_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %read_addr.09)
  %cmp.not.i = icmp ugt i32 %and.i, %read_addr.09
  br i1 %cmp.not.i, label %if.end, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end4.i
  %7 = ptrtoint ptr %next_read_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_read_addr, align 4
  %cmp = icmp ult i32 %8, %length
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %read_addr.09, %if.end4.i.cleanup_crit_edge ], [ %read_addr.09, %if.end.i.cleanup_crit_edge ], [ %read_addr.09, %while.body.cleanup_crit_edge ], [ %length, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next_read_addr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vsc_sem_set_space(ptr nocapture noundef readonly %dev, i16 noundef zeroext %space, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %flag.i.i = alloca i32, align 4
  %data = alloca i32, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %id, align 4
  %call = tail call i32 @mlx5_vsc_gw_set_space(ptr noundef %dev, i16 noundef zeroext 10, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !18) #5
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 291, i32 noundef %9, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %state)
  %cmp = icmp eq i32 %state, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %vsc_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %12 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vsc_addr, align 4
  %add = add i32 %13, 8
  %call3 = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef %add, ptr noundef nonnull %id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %conv = zext i16 %space to i32
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %vsc_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %18 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vsc_addr.i, align 4
  %add.i = add i32 %19, 20
  %call.i = call i32 @pci_write_config_dword(ptr noundef %17, i32 noundef %add.i, i32 noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end7
  %or.i = or i32 %conv, -2147483648
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 8
  %22 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsc_addr.i, align 4
  %add8.i = add i32 %23, 16
  %call9.i = call i32 @pci_write_config_dword(ptr noundef %21, i32 noundef %add8.i, i32 noundef %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag.i.i) #5
  %24 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %flag.i.i, align 4, !annotation !28
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end12.i
  %retries.0.i.i = phi i32 [ 0, %if.end12.i ], [ %inc.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %retries.0.i.i)
  %exitcond.i.i = icmp eq i32 %retries.0.i.i, 2049
  br i1 %exitcond.i.i, label %do.body.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge, label %if.end.i.i

do.body.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_vsc_gw_write.exit.thread39

if.end.i.i:                                       ; preds = %do.body.i.i
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %27 = ptrtoint ptr %vsc_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vsc_addr.i, align 4
  %add.i.i = add i32 %28, 16
  %call.i.i = call i32 @pci_read_config_dword(ptr noundef %26, i32 noundef %add.i.i, ptr noundef nonnull %flag.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end2.i.i, label %if.end.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge

if.end.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_vsc_gw_write.exit.thread39

if.end2.i.i:                                      ; preds = %if.end.i.i
  %29 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag.i.i, align 4
  %shr.i.i = lshr i32 %30, 31
  store i32 %shr.i.i, ptr %flag.i.i, align 4
  %inc.i.i = add nuw nsw i32 %retries.0.i.i, 1
  %and3.i.i = and i32 %inc.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %cmp4.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end2.i.i.do.cond.i.i_crit_edge

if.end2.i.i.do.cond.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i.i

if.then5.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %31 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr.i = load i32, ptr %flag.i.i, align 4
  br label %do.cond.i.i

do.cond.i.i:                                      ; preds = %if.then5.i.i, %if.end2.i.i.do.cond.i.i_crit_edge
  %32 = phi i32 [ %.pr.i, %if.then5.i.i ], [ %shr.i.i, %if.end2.i.i.do.cond.i.i_crit_edge ]
  %cmp7.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp7.not.i.i, label %if.end11, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

mlx5_vsc_gw_write.exit.thread39:                  ; preds = %if.end.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge, %do.body.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %if.end.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge ], [ -16, %do.body.i.i.mlx5_vsc_gw_write.exit.thread39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i.i) #5
  br label %cleanup

if.end11:                                         ; preds = %do.cond.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i.i) #5
  %call13 = call fastcc i32 @mlx5_vsc_gw_read(ptr noundef %dev, i32 noundef %conv, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp17.not = icmp eq i32 %34, %36
  %. = select i1 %cmp17.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %mlx5_vsc_gw_write.exit.thread39, %if.end5.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %if.then2.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %., %if.end16 ], [ %retval.0.i.i.ph, %mlx5_vsc_gw_write.exit.thread39 ], [ %call9.i, %if.end5.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_vsc_gw_read(ptr nocapture noundef readonly %dev, i32 noundef %address, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %flag.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %address)
  %tobool1.not = icmp ult i32 %address, 1073741824
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %vsc_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 31
  %2 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vsc_addr, align 4
  %add = add i32 %3, 16
  %call = tail call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %add, i32 noundef %address) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag.i) #5
  %4 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flag.i, align 4, !annotation !28
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end4
  %retries.0.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %retries.0.i)
  %exitcond.i = icmp eq i32 %retries.0.i, 2049
  br i1 %exitcond.i, label %do.body.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge, label %if.end.i

do.body.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_vsc_wait_on_flag.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %7 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vsc_addr, align 4
  %add.i = add i32 %8, 16
  %call.i = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %flag.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %if.end.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge

if.end.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_vsc_wait_on_flag.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flag.i, align 4
  %shr.i = lshr i32 %10, 31
  store i32 %shr.i, ptr %flag.i, align 4
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %and3.i = and i32 %inc.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end2.i.do.cond.i_crit_edge

if.end2.i.do.cond.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %11 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %flag.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then5.i, %if.end2.i.do.cond.i_crit_edge
  %12 = phi i32 [ %.pr, %if.then5.i ], [ %shr.i, %if.end2.i.do.cond.i_crit_edge ]
  %cmp7.not.i = icmp eq i32 %12, 1
  br i1 %cmp7.not.i, label %if.end8, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

mlx5_vsc_wait_on_flag.exit.thread:                ; preds = %if.end.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge, %do.body.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge ], [ -16, %do.body.i.mlx5_vsc_wait_on_flag.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i) #5
  br label %cleanup

if.end8:                                          ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i) #5
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %15 = ptrtoint ptr %vsc_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vsc_addr, align 4
  %add11 = add i32 %16, 20
  %call12 = call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef %add11, ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mlx5_vsc_wait_on_flag.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call12, %if.end8 ], [ %retval.0.i.ph, %mlx5_vsc_wait_on_flag.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_pci_vsc_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_pci_vsc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c", i32 159, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx5_vsc_gw_set_space._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mlx5_vsc_gw_set_space._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/pci_vsc.c", i32 291, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx5_vsc_sem_set_space._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5_vsc_sem_set_space._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
