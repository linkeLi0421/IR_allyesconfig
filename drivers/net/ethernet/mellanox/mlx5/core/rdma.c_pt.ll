; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/rdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.174, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.148] }
%struct.anon.148 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.174 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.183 }
%struct.anon.183 = type { i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.184, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.184 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%union.ib_gid = type { %struct.anon.182 }
%struct.anon.182 = type { i64, i64 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.145, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.147, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.140, i32 }
%union.anon.140 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.144, ptr }
%struct.anon.144 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.145 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.147 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@mlx5_rdma_enable_roce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%d:(pid %d): Failed to enable RoCE: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_rdma_enable_roce\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/rdma.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce._entry_ptr = internal global ptr @mlx5_rdma_enable_roce._entry, section ".printk_index", align 4
@mlx5_rdma_enable_roce._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Failed to add RoCE address: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce._entry_ptr.7 = internal global ptr @mlx5_rdma_enable_roce._entry.5, section ".printk_index", align 4
@mlx5_rdma_enable_roce._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Failed to enable RoCE steering: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce._entry_ptr.10 = internal global ptr @mlx5_rdma_enable_roce._entry.8, section ".printk_index", align 4
@mlx5_rdma_enable_roce_steering._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Failed to get RDMA RX namespace\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_rdma_enable_roce_steering\00", [33 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce_steering._entry_ptr = internal global ptr @mlx5_rdma_enable_roce_steering._entry, section ".printk_index", align 4
@mlx5_rdma_enable_roce_steering._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Failed to create RDMA RX flow table\00", [44 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce_steering._entry_ptr.15 = internal global ptr @mlx5_rdma_enable_roce_steering._entry.13, section ".printk_index", align 4
@mlx5_rdma_enable_roce_steering._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed to create RDMA RX flow group err(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce_steering._entry_ptr.18 = internal global ptr @mlx5_rdma_enable_roce_steering._entry.16, section ".printk_index", align 4
@mlx5_rdma_enable_roce_steering._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Failed to add RoCE allow rule, err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_rdma_enable_roce_steering._entry_ptr.21 = internal global ptr @mlx5_rdma_enable_roce_steering._entry.19, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 164, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 170, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 176, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 53, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 61, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 76, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [50 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 93, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mlx5_rdma_enable_roce._entry, ptr @mlx5_rdma_enable_roce._entry.5, ptr @mlx5_rdma_enable_roce._entry.8, ptr @mlx5_rdma_enable_roce._entry_ptr, ptr @mlx5_rdma_enable_roce._entry_ptr.10, ptr @mlx5_rdma_enable_roce._entry_ptr.7, ptr @mlx5_rdma_enable_roce_steering._entry, ptr @mlx5_rdma_enable_roce_steering._entry.13, ptr @mlx5_rdma_enable_roce_steering._entry.16, ptr @mlx5_rdma_enable_roce_steering._entry.19, ptr @mlx5_rdma_enable_roce_steering._entry_ptr, ptr @mlx5_rdma_enable_roce_steering._entry_ptr.15, ptr @mlx5_rdma_enable_roce_steering._entry_ptr.18, ptr @mlx5_rdma_enable_roce_steering._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce_steering._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce_steering._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce_steering._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rdma_enable_roce_steering._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rdma_disable_roce(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %roce1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34
  %0 = ptrtoint ptr %roce1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %roce1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %allow_rule.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34, i32 2
  %2 = ptrtoint ptr %allow_rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %allow_rule.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %3) #6
  %fg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34, i32 1
  %4 = ptrtoint ptr %fg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fg.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %5) #6
  %6 = ptrtoint ptr %roce1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %roce1, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %7) #6
  %call.i5 = tail call i32 @mlx5_core_roce_gid_set(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i16 noundef zeroext 0, i8 noundef zeroext 1) #6
  %call = tail call i32 @mlx5_nic_vport_disable_roce(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_disable_roce(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rdma_enable_roce(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  %hw_id.i.i = alloca [6 x i8], align 1
  %gid.i = alloca %union.ib_gid, align 8
  %mac.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mlx5_nic_vport_enable_roce(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !33) #6
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 164, i32 noundef %12, i32 noundef %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i) #6
  %13 = getelementptr inbounds %struct.anon.182, ptr %gid.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #6
  %14 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %hw_id.i.i) #6
  %15 = getelementptr inbounds [6 x i8], ptr %hw_id.i.i, i32 0, i32 3
  %16 = call ptr @memset(ptr %hw_id.i.i, i32 255, i32 6)
  %call.i.i = call i32 @mlx5_query_mac_address(ptr noundef %dev, ptr noundef nonnull %hw_id.i.i) #6
  %17 = ptrtoint ptr %gid.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -108086391056891904, ptr %gid.i, align 8
  %18 = call ptr @memcpy(ptr %13, ptr %hw_id.i.i, i32 3)
  %arrayidx.i.i.i.i = getelementptr inbounds [16 x i8], ptr %gid.i, i32 0, i32 11
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %arrayidx.i.i.i.i, align 1
  %arrayidx1.i.i.i.i = getelementptr inbounds [16 x i8], ptr %gid.i, i32 0, i32 12
  %20 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %arrayidx1.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr inbounds [16 x i8], ptr %gid.i, i32 0, i32 13
  %21 = call ptr @memcpy(ptr %add.ptr.i.i.i.i, ptr %15, i32 3)
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %13, align 8
  %24 = xor i8 %23, 2
  store i8 %24, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %hw_id.i.i) #6
  %call.i = call i32 @mlx5_core_roce_gid_set(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %gid.i, ptr noundef nonnull %mac.i, i1 noundef zeroext false, i16 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end15, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i41 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i41 to ptr
  %task13 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task13, align 8
  %pid14 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid14, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef %32, i32 noundef %call.i) #9
  br label %disable_roce

if.end15:                                         ; preds = %if.end4
  %roce1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #6
  %33 = call ptr @memset(ptr %ft_attr.i, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %34 = call ptr @memset(ptr %flow_act.i, i32 0, i32 36)
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %36, i32 32
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %39 = and i32 %38, -2147483392
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483392, i32 %39)
  %.not.i = icmp eq i32 %39, -2147483392
  br i1 %.not.i, label %if.end.i, label %if.end15.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge

if.end15.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_rdma_enable_roce_steering.exit.thread

if.end.i:                                         ; preds = %if.end15
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #10
  %tobool11.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool11.not.i, label %if.end.i.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge, label %if.end13.i

if.end.i.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_rdma_enable_roce_steering.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %call.i.i164.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool15.not.i = icmp eq ptr %call.i.i164.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %mlx5_rdma_enable_roce_steering.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %call18.i = call ptr @mlx5_get_flow_namespace(ptr noundef %dev, i32 noundef 16) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %do.end.i, label %if.end22.i

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %42 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 53, i32 noundef %47) #9
  br label %mlx5_rdma_enable_roce_steering.exit

if.end22.i:                                       ; preds = %if.end17.i
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %48 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %max_fte.i, align 4
  %call23.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call18.i, ptr noundef nonnull %ft_attr.i) #6
  %cmp.i.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end28.i, label %do.body35.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %51 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i165.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i165.i to ptr
  %task31.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task31.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task31.i, align 8
  %pid32.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid32.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid32.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef 61, i32 noundef %56) #9
  %57 = ptrtoint ptr %call23.i to i32
  br label %mlx5_rdma_enable_roce_steering.exit

do.body35.i:                                      ; preds = %if.end22.i
  %add.ptr39.i = getelementptr i32, ptr %call.i.i.i, i32 15
  %58 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr39.i, align 4
  %and40.i = and i32 %59, -256
  %or.i = or i32 %and40.i, 2
  store i32 %or.i, ptr %add.ptr39.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %call.i.i.i, i32 132
  %60 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr50.i, align 4
  %or52.i = or i32 %61, 65535
  store i32 %or52.i, ptr %add.ptr50.i, align 4
  %call56.i = call ptr @mlx5_create_flow_group(ptr noundef %call23.i, ptr noundef nonnull %call.i.i.i) #6
  %cmp.i166.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166.i, label %if.then58.i, label %if.end67.i

if.then58.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call56.i to i32
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %65 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i167.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i167.i to ptr
  %task65.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task65.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task65.i, align 8
  %pid66.i = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid66.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid66.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 76, i32 noundef %70, i32 noundef %62) #9
  br label %destroy_flow_table.i

if.end67.i:                                       ; preds = %do.body35.i
  %71 = ptrtoint ptr %call.i.i164.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %call.i.i164.i, align 4
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %72 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %eswitch.i, align 4
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %73, i32 0, i32 17
  %74 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %manager_vport.i, align 4
  %conv.i = zext i16 %75 to i32
  %add.ptr76.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i164.i, i32 0, i32 2, i32 17
  %76 = ptrtoint ptr %add.ptr76.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %add.ptr76.i, align 4
  %and77.i = and i32 %77, -65536
  %or80.i = or i32 %and77.i, %conv.i
  store i32 %or80.i, ptr %add.ptr76.i, align 4
  %add.ptr91.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i164.i, i32 0, i32 1, i32 17
  %78 = ptrtoint ptr %add.ptr91.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr91.i, align 4
  %or93.i = or i32 %79, 65535
  store i32 %or93.i, ptr %add.ptr91.i, align 4
  %80 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %flow_act.i, align 4
  %call97.i = call ptr @mlx5_add_flow_rules(ptr noundef %call23.i, ptr noundef nonnull %call.i.i164.i, ptr noundef nonnull %flow_act.i, ptr noundef null, i32 noundef 0) #6
  %cmp.i168.i = icmp ugt ptr %call97.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168.i, label %if.then99.i, label %mlx5_rdma_enable_roce_steering.exit.thread47

if.then99.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %call97.i to i32
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 8
  %84 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i169.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i169.i to ptr
  %task106.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task106.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task106.i, align 8
  %pid107.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 68
  %88 = ptrtoint ptr %pid107.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pid107.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef 94, i32 noundef %89, i32 noundef %81) #9
  call void @mlx5_destroy_flow_group(ptr noundef %call56.i) #6
  br label %destroy_flow_table.i

mlx5_rdma_enable_roce_steering.exit.thread47:     ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i.i164.i) #6
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  %90 = ptrtoint ptr %roce1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call23.i, ptr %roce1.i, align 4
  %fg110.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34, i32 1
  %91 = ptrtoint ptr %fg110.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call56.i, ptr %fg110.i, align 4
  %allow_rule.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 34, i32 2
  %92 = ptrtoint ptr %allow_rule.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call97.i, ptr %allow_rule.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #6
  br label %cleanup

destroy_flow_table.i:                             ; preds = %if.then99.i, %if.then58.i
  %err.0.i = phi i32 [ %62, %if.then58.i ], [ %81, %if.then99.i ]
  %call111.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call23.i) #6
  br label %mlx5_rdma_enable_roce_steering.exit

mlx5_rdma_enable_roce_steering.exit.thread:       ; preds = %if.then16.i, %if.end.i.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge, %if.end15.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge ], [ -95, %if.end15.mlx5_rdma_enable_roce_steering.exit.thread_crit_edge ], [ -12, %if.then16.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #6
  br label %do.end21

mlx5_rdma_enable_roce_steering.exit:              ; preds = %destroy_flow_table.i, %do.end28.i, %do.end.i
  %err.1.i = phi i32 [ %57, %do.end28.i ], [ %err.0.i, %destroy_flow_table.i ], [ -95, %do.end.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i164.i) #6
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #6
  br label %do.end21

do.end21:                                         ; preds = %mlx5_rdma_enable_roce_steering.exit, %mlx5_rdma_enable_roce_steering.exit.thread
  %retval.0.i46 = phi i32 [ %retval.0.i.ph, %mlx5_rdma_enable_roce_steering.exit.thread ], [ %err.1.i, %mlx5_rdma_enable_roce_steering.exit ]
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 8
  %95 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i42 = and i32 %95, -16384
  %96 = inttoptr i32 %and.i42 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task24, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 68
  %99 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pid25, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef %100, i32 noundef %retval.0.i46) #9
  %call.i43 = call i32 @mlx5_core_roce_gid_set(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i16 noundef zeroext 0, i8 noundef zeroext 1) #6
  br label %disable_roce

disable_roce:                                     ; preds = %do.end21, %do.end10
  %call27 = call i32 @mlx5_nic_vport_disable_roce(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_roce, %mlx5_rdma_enable_roce_steering.exit.thread47, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_enable_roce(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_roce_gid_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 164, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_rdma_enable_roce._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_rdma_enable_roce._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 170, i32 3}
!10 = !{ptr @mlx5_rdma_enable_roce._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_rdma_enable_roce._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 176, i32 3}
!14 = !{ptr @mlx5_rdma_enable_roce._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_rdma_enable_roce._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 53, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5_rdma_enable_roce_steering._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mlx5_rdma_enable_roce_steering._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 61, i32 3}
!23 = !{ptr @mlx5_rdma_enable_roce_steering._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_rdma_enable_roce_steering._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 76, i32 3}
!27 = !{ptr @mlx5_rdma_enable_roce_steering._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx5_rdma_enable_roce_steering._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rdma.c", i32 93, i32 3}
!31 = !{ptr @mlx5_rdma_enable_roce_steering._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlx5_rdma_enable_roce_steering._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
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
