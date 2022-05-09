; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.195, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.167 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.168] }
%struct.anon.168 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.169 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.169 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.195 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_fpga_device = type { ptr, %struct.mlx5_nb, %struct.mlx5_nb, %struct.spinlock, i32, i32, i32, %struct.anon.196, ptr, ptr }
%struct.anon.196 = type { i32, i32, ptr }
%struct.mlx5_fpga_tls = type { %struct.list_head, %struct.spinlock, i32, ptr, %struct.idr, %struct.idr, %struct.spinlock, %struct.spinlock }
%struct.mlx5_fpga_dma_buf = type { i32, [2 x %struct.mlx5_fpga_dma_entry], %struct.list_head, ptr }
%struct.mlx5_fpga_dma_entry = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.148, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.148 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_fpga_tls_command_context = type { %struct.list_head, %struct.refcount_struct, %struct.mlx5_fpga_dma_buf, ptr }
%struct.mlx5_fpga_conn_attr = type { i32, i32, ptr, ptr }
%struct.tls_crypto_info = type { i16, i16 }
%struct.mlx5_setup_stream_context = type { %struct.mlx5_fpga_tls_command_context, %struct.atomic_t, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }

@mlx5_fpga_tls_resync_rx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Received NULL pointer for handle\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_del_flow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): No flow information for swid %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fpga_tls_del_flow\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_del_flow._entry_ptr = internal global ptr @mlx5_fpga_tls_del_flow._entry, section ".printk_index", align 4
@mlx5_fpga_tls_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Error creating TLS command connection %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_fpga_tls_init\00", [45 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_init._entry_ptr = internal global ptr @mlx5_fpga_tls_init._entry, section ".printk_index", align 4
@mlx5_fpga_tls_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&tls->pending_cmds_lock\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tls->tx_idr_spinlock\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tls->rx_idr_spinlock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_teardown_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Teardown stream failed with syndrome = %d\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_fpga_tls_teardown_completion\00", [62 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_teardown_completion._entry_ptr = internal global ptr @mlx5_fpga_tls_teardown_completion._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_setup_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Command was abandoned, syndrome = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_fpga_tls_setup_completion\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_tls_setup_completion._entry_ptr = internal global ptr @mlx5_fpga_tls_setup_completion._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 216, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 281, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 477, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 483, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 488, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 489, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 695, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 723, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 180, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 378, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 36, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 87, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @mlx5_fpga_tls_del_flow._entry, ptr @mlx5_fpga_tls_del_flow._entry_ptr, ptr @mlx5_fpga_tls_init._entry, ptr @mlx5_fpga_tls_init._entry_ptr, ptr @mlx5_fpga_tls_setup_completion._entry, ptr @mlx5_fpga_tls_setup_completion._entry_ptr, ptr @mlx5_fpga_tls_teardown_completion._entry, ptr @mlx5_fpga_tls_teardown_completion._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mlx5_fpga_tls_init.__key, ptr @.str.8, ptr @mlx5_fpga_tls_init.__key.9, ptr @.str.10, ptr @mlx5_fpga_tls_init.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @xa_init_flags.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_del_flow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_teardown_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_tls_setup_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_tls_resync_rx(ptr nocapture noundef readonly %mdev, i32 noundef %handle, i32 noundef %seq, i64 noundef %rcd_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 296) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %5 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fpga, align 4
  %tls = getelementptr inbounds %struct.mlx5_fpga_device, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tls, align 4
  %rx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %8, i32 0, i32 5
  %call1 = tail call ptr @idr_find(ptr noundef %rx_idr, i32 noundef %handle) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then6, label %if.end47, !prof !63

if.then6:                                         ; preds = %rcu_read_lock.exit
  tail call fastcc void @rcu_read_unlock()
  %.b129 = load i1, ptr @mlx5_fpga_tls_resync_rx.__already_done, align 1
  br i1 %.b129, label %if.then6.cleanup.sink.split_crit_edge, label %if.then17, !prof !64

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then17:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mlx5_fpga_tls_resync_rx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 216, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %cleanup.sink.split

if.end47:                                         ; preds = %rcu_read_lock.exit
  %add.ptr = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 1
  %add.ptr.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 1, i32 1, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %call1, i32 36)
  %add.ptr1.i = getelementptr i32, ptr %call1, i32 9
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1.i, align 4
  %shr.i = and i32 %11, -2147483648
  %add.ptr3.i = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr3.i, align 4
  %and4.i = and i32 %13, 1073741823
  %or.i = or i32 %and4.i, %shr.i
  %and13.i = and i32 %11, 1073741824
  %or21.i = or i32 %or.i, %and13.i
  store i32 %or21.i, ptr %add.ptr3.i, align 4
  %call.i130 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i130, label %if.end47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

if.end47.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %if.end47
  %call1.i131 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %if.end47.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %14 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i137 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %add.ptr52 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %handle, ptr %add.ptr52, align 8
  %add.ptr65 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 2, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %rcd_sn, ptr %add.ptr65, align 8
  %add.ptr75 = getelementptr %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %seq, ptr %add.ptr75, align 8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4099, ptr %add.ptr, align 8
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %sg, align 4
  %size98 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %size98 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %size98, align 8
  %complete = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mlx_tls_kfree_complete, ptr %complete, align 4
  %25 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fpga, align 4
  %tls100 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %tls100 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tls100, align 4
  %conn = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %conn, align 4
  %call101 = tail call i32 @mlx5_fpga_sbu_conn_sendmsg(ptr noundef %30, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp = icmp slt i32 %call101, 0
  br i1 %cmp, label %rcu_read_unlock.exit.cleanup.sink.split_crit_edge, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rcu_read_unlock.exit.cleanup.sink.split_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit.cleanup.sink.split_crit_edge, %if.then17, %if.then6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %if.then17 ], [ -22, %if.then6.cleanup.sink.split_crit_edge ], [ %call101, %rcu_read_unlock.exit.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call101, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx_tls_kfree_complete(ptr nocapture noundef readnone %conn, ptr nocapture noundef readnone %fdev, ptr noundef %buf, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_sbu_conn_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_tls_del_flow(ptr nocapture noundef readonly %mdev, i32 noundef %swid, i32 noundef %flags, i1 noundef zeroext %direction_sx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tls1 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tls1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tls1, align 4
  %rx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 5
  %rx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 7
  %tx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 4
  %tx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 6
  %rx_idr_spinlock.sink24 = select i1 %direction_sx, ptr %tx_idr_spinlock, ptr %rx_idr_spinlock
  %rx_idr.sink = select i1 %direction_sx, ptr %tx_idr, ptr %rx_idr
  %call2.i22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_idr_spinlock.sink24) #9
  %call5.i23 = tail call ptr @idr_remove(ptr noundef %rx_idr.sink, i32 noundef %swid) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_idr_spinlock.sink24, i32 noundef %call2.i22) #9
  %tobool3.not = icmp eq ptr %call5.i23, null
  br i1 %tobool3.not, label %do.end, label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fpga, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !52) #9
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 282, i32 noundef %15, ptr noundef nonnull @.str.3, i32 noundef 282, i32 noundef %15, i32 noundef %swid) #13
  br label %cleanup

if.end11:                                         ; preds = %entry
  tail call void @synchronize_rcu() #9
  %or.i.i = or i32 %flags, 256
  %and.i.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %if.end11.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !64

if.end11.kzalloc.exit.i_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end11
  %and2.i.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end11.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %if.end11.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 9
  %16 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %or.i.i, i32 noundef 312) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.cleanup_crit_edge, label %if.end.i

kzalloc.exit.i.cleanup_crit_edge:                 ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 1
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4098, ptr %add.ptr.i, align 8
  %add.ptr13.i = getelementptr %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %swid, ptr %add.ptr13.i, align 8
  %add.ptr.i.i = getelementptr %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 1, i32 2
  %20 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %call5.i23, i32 36)
  %add.ptr1.i.i = getelementptr i32, ptr %call5.i23, i32 9
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr1.i.i, align 4
  %add.ptr3.i.i = getelementptr %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr3.i.i, align 4
  %and4.i.i = and i32 %24, 1073741823
  %or.i35.i = and i32 %22, -1073741824
  %or21.i.i = or i32 %and4.i.i, %or.i35.i
  store i32 %or21.i.i, ptr %add.ptr3.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call5.i23) #9
  %sg.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %sg.i, align 8
  %size.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 256, ptr %size.i, align 4
  %27 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fpga, align 4
  tail call fastcc void @mlx5_fpga_tls_cmd_send(ptr noundef %28, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mlx5_fpga_tls_teardown_completion) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %kzalloc.exit.i.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_fpga_is_tls_device(ptr nocapture noundef readonly %mdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr5 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %7 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5, align 4
  %and7 = and i32 %8, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 713
  br i1 %cmp.not, label %if.end9, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr13 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %11 = icmp eq i32 %10, 3
  br label %return

return:                                           ; preds = %if.end9, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %11, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_tls_init(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  %init_attr = alloca %struct.mlx5_fpga_conn_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_attr) #9
  %2 = call ptr @memset(ptr %init_attr, i32 0, i32 16)
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr5.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %8 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr5.i, align 4
  %and7.i = and i32 %9, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i)
  %cmp.not.i = icmp eq i32 %and7.i, 713
  br i1 %cmp.not.i, label %mlx5_fpga_is_tls_device.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlx5_fpga_is_tls_device.exit:                     ; preds = %if.end.i
  %add.ptr13.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %.not = icmp eq i32 %11, 3
  br i1 %.not, label %if.end, label %mlx5_fpga_is_tls_device.exit.cleanup_crit_edge

mlx5_fpga_is_tls_device.exit.cleanup_crit_edge:   ; preds = %mlx5_fpga_is_tls_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_fpga_is_tls_device.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 268) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %caps = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not.i62 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i62, label %if.end4.error_crit_edge, label %if.end.i63

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end.i63:                                       ; preds = %if.end4
  %call1.i = tail call i32 @mlx5_fpga_get_sbu_caps(ptr noundef nonnull %1, i32 noundef 36, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %mlx5_fpga_tls_get_caps.exit

mlx5_fpga_tls_get_caps.exit:                      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %error

if.end8:                                          ; preds = %if.end.i63
  %add.ptr.i64 = getelementptr i32, ptr %call7.i.i.i, i32 8
  %14 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i64, align 8
  %16 = lshr i32 %15, 30
  %.lobit.i = and i32 %16, 1
  %or13.i = or i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not80.i = icmp slt i32 %15, 0
  %caps.1.i = select i1 %tobool11.not80.i, i32 %or13.i, i32 %.lobit.i
  %17 = lshr i32 %15, 27
  %18 = and i32 %17, 4
  %19 = lshr i32 %15, 25
  %20 = and i32 %19, 8
  %21 = lshr i32 %15, 23
  %22 = and i32 %21, 16
  %23 = lshr i32 %15, 21
  %24 = and i32 %23, 32
  %25 = or i32 %20, %18
  %26 = or i32 %25, %22
  %27 = or i32 %26, %24
  %28 = or i32 %27, %caps.1.i
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i.i, align 8
  %or48.i = or i32 %28, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not81.i = icmp slt i32 %30, 0
  %caps.6.i = select i1 %tobool46.not81.i, i32 %or48.i, i32 %28
  %31 = shl i32 %30, 1
  %32 = and i32 %31, -2147483648
  %33 = or i32 %caps.6.i, %32
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %caps, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps, align 4
  %and = and i32 %36, 1073741828
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end8.error_crit_edge, label %if.end12

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end12:                                         ; preds = %if.end8
  %rx_size = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 1
  %37 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %rx_size, align 4
  %38 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %init_attr, align 4
  %recv_cb = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 2
  %39 = ptrtoint ptr %recv_cb to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mlx5_fpga_tls_hw_qp_recv_cb, ptr %recv_cb, align 4
  %cb_arg = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 3
  %40 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %cb_arg, align 4
  %call13 = call ptr @mlx5_fpga_sbu_conn_create(ptr noundef nonnull %1, ptr noundef nonnull %init_attr) #9
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call13 to i32
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 478, i32 noundef %51, ptr noundef nonnull @.str.7, i32 noundef 478, i32 noundef %51, i32 noundef %41) #13
  br label %error

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %conn23 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %conn23 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call13, ptr %conn23, align 8
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %pending_cmds_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx5_fpga_tls_init.__key, i16 noundef signext 3) #9
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %tx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %tx_idr, ptr noundef nonnull @.str.18, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %56 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %idr_next.i.i, align 4
  %rx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %rx_idr, ptr noundef nonnull @.str.18, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i66 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %59 = ptrtoint ptr %xa_flags.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 67108868, ptr %xa_flags.i.i.i66, align 4
  %xa_head.i.i.i67 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %60 = ptrtoint ptr %xa_head.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %xa_head.i.i.i67, align 8
  %idr_base.i.i68 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %idr_base.i.i68 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %idr_base.i.i68, align 4
  %idr_next.i.i69 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 5, i32 2
  %62 = ptrtoint ptr %idr_next.i.i69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %idr_next.i.i69, align 8
  %tx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %tx_idr_spinlock, ptr noundef nonnull @.str.10, ptr noundef nonnull @mlx5_fpga_tls_init.__key.9, i16 noundef signext 3) #9
  %rx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %call7.i.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %rx_idr_spinlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlx5_fpga_tls_init.__key.11, i16 noundef signext 3) #9
  %tls36 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %tls36 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %tls36, align 4
  br label %cleanup

error:                                            ; preds = %if.then15, %if.end8.error_crit_edge, %mlx5_fpga_tls_get_caps.exit, %if.end4.error_crit_edge
  %err.0 = phi i32 [ %call1.i, %mlx5_fpga_tls_get_caps.exit ], [ %41, %if.then15 ], [ -524, %if.end8.error_crit_edge ], [ -12, %if.end4.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end22, %if.end.cleanup_crit_edge, %mlx5_fpga_is_tls_device.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end22 ], [ 0, %mlx5_fpga_is_tls_device.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_attr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_tls_hw_qp_recv_cb(ptr noundef %cb_arg, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tls.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %cb_arg, i32 0, i32 9
  %0 = ptrtoint ptr %tls.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls.i, align 4
  %conn1.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1.i, align 4
  %pending_cmds_lock.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 1
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pending_cmds_lock.i) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.mlx5_fpga_tls_cmd_complete.exit_crit_edge

entry.mlx5_fpga_tls_cmd_complete.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_fpga_tls_cmd_complete.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %mlx5_fpga_tls_cmd_complete.exit

mlx5_fpga_tls_cmd_complete.exit:                  ; preds = %if.end.i.i.i, %entry.mlx5_fpga_tls_cmd_complete.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock.i, i32 noundef %call5.i) #9
  %complete.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 4
  tail call void %15(ptr noundef %3, ptr noundef %cb_arg, ptr noundef %5, ptr noundef %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fpga_sbu_conn_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_tls_cleanup(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tls = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tls, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conn = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  tail call void @mlx5_fpga_sbu_conn_destroy(ptr noundef %5) #9
  %6 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tls, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %tls to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %tls, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_sbu_conn_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_tls_add_flow(ptr nocapture noundef readonly %mdev, ptr noundef %flow, ptr nocapture noundef readonly %crypto_info, i32 noundef %start_offload_tcp_sn, ptr nocapture noundef writeonly %p_swid, i1 noundef zeroext %direction_sx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tls1 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tls1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tls1, align 4
  br i1 %direction_sx, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 4
  %tx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 6
  tail call void @idr_preload(i32 noundef 3264) #9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_idr_spinlock) #9
  %call8.i = tail call i32 @idr_alloc(ptr noundef %tx_idr, ptr noundef %flow, i32 noundef 0, i32 noundef 16777216, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_idr_spinlock, i32 noundef %call3.i) #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %9, ptrtoint (ptr @radix_tree_preloads to i32)
  %10 = inttoptr i32 %add.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %10) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_idr = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 5
  %rx_idr_spinlock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 7
  tail call void @idr_preload(i32 noundef 3264) #9
  %call3.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_idr_spinlock) #9
  %call8.i51 = tail call i32 @idr_alloc(ptr noundef %rx_idr, ptr noundef %flow, i32 noundef 0, i32 noundef 16777216, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_idr_spinlock, i32 noundef %call3.i50) #9
  %11 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i52 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i52 to ptr
  %cpu.i.i53 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i53, align 4
  %arrayidx.i.i54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i54, align 4
  %add.i.i55 = add i32 %16, ptrtoint (ptr @radix_tree_preloads to i32)
  %17 = inttoptr i32 %add.i.i55 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %17) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call8.i, %if.then ], [ %call8.i51, %if.else ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i56 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i58 = add i32 %21, -1
  store volatile i32 %sub.i.i.i58, ptr %preempt_count.i.i.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i32, ptr %flow, i32 9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %and = and i32 %23, -1073741825
  %shl = select i1 %direction_sx, i32 1073741824, i32 0
  %or = or i32 %and, %shl
  store i32 %or, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fpga, align 4
  %tls.i.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %tls.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tls.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 376) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end4.free_swid_crit_edge, label %if.end.i

if.end4.free_swid_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_swid

if.end.i:                                         ; preds = %if.end4
  %cipher_type.i.i = getelementptr inbounds %struct.tls_crypto_info, ptr %crypto_info, i32 0, i32 1
  %31 = ptrtoint ptr %cipher_type.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cipher_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %32)
  %cond.i.i = icmp ne i16 %32, 51
  %and.i.i = and i32 %29, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %cond.i.i
  br i1 %or.cond.i.i, label %free_ctx.i, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1
  %add.ptr.i.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 0, i32 2, i32 3
  %rec_seq.i.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 4
  %33 = ptrtoint ptr %rec_seq.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %rec_seq.i.i.i, align 2
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %add.ptr.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 2
  %salt.i.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 3
  %36 = ptrtoint ptr %salt.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %salt.i.i.i, align 2
  %38 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr1.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 3, i32 1, i32 0, i32 1
  %key.i.i.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %crypto_info, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %add.ptr3.i.i.i, ptr %key.i.i.i, i32 16)
  %add.ptr6.i.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 3, i32 1, i32 0, i32 4, i32 1
  %40 = call ptr @memcpy(ptr %add.ptr6.i.i.i, ptr %key.i.i.i, i32 16)
  %add.ptr10.i.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 3, i32 1, i32 0, i32 4, i32 6
  %41 = ptrtoint ptr %add.ptr10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr10.i.i.i, align 8
  %and.i.i.i59 = and i32 %42, 268435455
  store i32 %and.i.i.i59, ptr %add.ptr10.i.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 0, i32 2
  %43 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %flow, i32 36)
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  %add.ptr3.i.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr3.i.i, align 4
  %and4.i.i = and i32 %47, 1073741823
  %or.i.i = and i32 %45, -1073741824
  %or21.i.i = or i32 %and4.i.i, %or.i.i
  store i32 %or21.i.i, ptr %add.ptr3.i.i, align 4
  %add.ptr7.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %ret.0, ptr %add.ptr7.i, align 8
  %add.ptr17.i = getelementptr %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 1, i32 1
  %49 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %start_offload_tcp_sn, ptr %add.ptr17.i, align 8
  %sg.i.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.i, ptr %sg.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 256, ptr %size.i.i, align 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4097, ptr %add.ptr.i, align 8
  %comp.i.i = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %comp.i.i, align 8
  %wait.i.i.i = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %status11.i.i = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %status11.i.i, i32 noundef 4) #9
  %54 = ptrtoint ptr %status11.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %status11.i.i, align 8
  %syndrome.i.i = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %call7.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %syndrome.i.i, align 4
  %56 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fpga, align 4
  tail call fastcc void @mlx5_fpga_tls_cmd_send(ptr noundef %57, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mlx5_fpga_tls_setup_completion) #9
  %call.i.i = tail call i32 @wait_for_completion_killable(ptr noundef %comp.i.i) #9
  %call.i.i43.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %status11.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %status11.i.i, i32 1, i32 3, i32 1) #9
  %58 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 3, ptr %status11.i.i) #9, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.if.end15_crit_edge, label %if.end.i42.i, !prof !63

if.end5.i.if.end15_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i42.i:                                     ; preds = %if.end5.i
  %59 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %syndrome.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool18.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool18.not.i.i, label %if.end.i42.i.if.end26.i.i_crit_edge, label %if.then25.i.i, !prof !64

if.end.i42.i.if.end26.i.i_crit_edge:              ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.end.i42.i.if.end26.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -12, %if.then25.i.i ], [ 0, %if.end.i42.i.if.end26.i.i_crit_edge ]
  %ref.i.i.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i._mlx5_fpga_tls_add_flow.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !64

if.end5.i.i.i.i.i.i._mlx5_fpga_tls_add_flow.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_mlx5_fpga_tls_add_flow.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef 3) #9
  br label %_mlx5_fpga_tls_add_flow.exit

if.then.i.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %_mlx5_fpga_tls_add_flow.exit

free_ctx.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %free_swid

_mlx5_fpga_tls_add_flow.exit:                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i._mlx5_fpga_tls_add_flow.exit_crit_edge
  br i1 %tobool18.not.i.i, label %_mlx5_fpga_tls_add_flow.exit.if.end15_crit_edge, label %_mlx5_fpga_tls_add_flow.exit.free_swid_crit_edge

_mlx5_fpga_tls_add_flow.exit.free_swid_crit_edge: ; preds = %_mlx5_fpga_tls_add_flow.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_swid

_mlx5_fpga_tls_add_flow.exit.if.end15_crit_edge:  ; preds = %_mlx5_fpga_tls_add_flow.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %_mlx5_fpga_tls_add_flow.exit.if.end15_crit_edge, %if.end5.i.if.end15_crit_edge
  %62 = ptrtoint ptr %p_swid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %ret.0, ptr %p_swid, align 4
  br label %cleanup

free_swid:                                        ; preds = %_mlx5_fpga_tls_add_flow.exit.free_swid_crit_edge, %free_ctx.i, %if.end4.free_swid_crit_edge
  %retval.0.i63 = phi i32 [ %ret.0.i.i, %_mlx5_fpga_tls_add_flow.exit.free_swid_crit_edge ], [ -12, %if.end4.free_swid_crit_edge ], [ -22, %free_ctx.i ]
  br i1 %direction_sx, label %if.then17, label %if.else21

if.then17:                                        ; preds = %free_swid
  call void @__sanitizer_cov_trace_pc() #11
  %tx_idr18 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 4
  %tx_idr_spinlock19 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_idr_spinlock19) #9
  %call5.i = tail call ptr @idr_remove(ptr noundef %tx_idr18, i32 noundef %ret.0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_idr_spinlock19, i32 noundef %call2.i) #9
  br label %cleanup

if.else21:                                        ; preds = %free_swid
  call void @__sanitizer_cov_trace_pc() #11
  %rx_idr22 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 5
  %rx_idr_spinlock23 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %3, i32 0, i32 7
  %call2.i60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_idr_spinlock23) #9
  %call5.i61 = tail call ptr @idr_remove(ptr noundef %rx_idr22, i32 noundef %ret.0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_idr_spinlock23, i32 noundef %call2.i60) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then17, %if.end15, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %ret.0, %if.end.cleanup_crit_edge ], [ %retval.0.i63, %if.else21 ], [ %retval.0.i63, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_tls_cmd_send(ptr noundef %fdev, ptr noundef %cmd, ptr noundef %complete) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tls1 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 9
  %0 = ptrtoint ptr %tls1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls1, align 4
  %ref = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %cmd, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  %2 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 2, ptr %ref, align 4
  %complete2 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %complete2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %complete, ptr %complete2, align 4
  %buf = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %cmd, i32 0, i32 2
  %complete3 = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %cmd, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %complete3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5_fpga_cmd_send_complete, ptr %complete3, align 4
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pending_cmds_lock) #9
  %conn = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %call9 = tail call i32 @mlx5_fpga_sbu_conn_sendmsg(ptr noundef %6, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %if.else, !prof !64

if.then:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd, ptr noundef %8, ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmd, ptr %prev.i, align 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %cmd, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %cmd, ptr %8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 4
  tail call void %complete(ptr noundef %14, ptr noundef %fdev, ptr noundef %cmd, ptr noundef null) #9, !callees !73
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_tls_teardown_completion(ptr nocapture noundef readnone %conn, ptr nocapture noundef readonly %fdev, ptr noundef %cmd, ptr noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %resp, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %resp, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 182, i32 noundef %13, ptr noundef nonnull @.str.17, i32 noundef 182, i32 noundef %13, i32 noundef %3) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ref.i = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %cmd, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !64

if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_fpga_tls_put_command_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #9
  br label %mlx5_fpga_tls_put_command_ctx.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @kfree(ptr noundef %cmd) #9
  br label %mlx5_fpga_tls_put_command_ctx.exit

mlx5_fpga_tls_put_command_ctx.exit:               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_cmd_send_complete(ptr nocapture noundef readnone %conn, ptr noundef %fdev, ptr noundef %buf, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ref.i = getelementptr i8, ptr %buf, i32 -4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge, label %if.then10.i.i.i.i, !prof !64

if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_fpga_tls_put_command_ctx.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #9
  br label %mlx5_fpga_tls_put_command_ctx.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buf, i32 -12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @kfree(ptr noundef %add.ptr) #9
  br label %mlx5_fpga_tls_put_command_ctx.exit

mlx5_fpga_tls_put_command_ctx.exit:               ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_fpga_tls_put_command_ctx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  br i1 %tobool.not, label %mlx5_fpga_tls_put_command_ctx.exit.if.end_crit_edge, label %if.then, !prof !64

mlx5_fpga_tls_put_command_ctx.exit.if.end_crit_edge: ; preds = %mlx5_fpga_tls_put_command_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_fpga_tls_put_command_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mlx5_fpga_tls_cmd_complete(ptr noundef %fdev, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_fpga_tls_put_command_ctx.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_tls_put_command_ctx(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %ctx, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !64

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  tail call void @kfree(ptr noundef %ctx) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_fpga_tls_cmd_complete(ptr noundef %fdev, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tls = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 9
  %0 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tls, align 4
  %conn1 = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 4
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_tls, ptr %1, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pending_cmds_lock) #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock, i32 noundef %call5) #9
  %complete = getelementptr inbounds %struct.mlx5_fpga_tls_command_context, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete, align 4
  tail call void %15(ptr noundef %3, ptr noundef %fdev, ptr noundef %5, ptr noundef %resp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_get_sbu_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !64

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_tls_setup_completion(ptr nocapture noundef readnone %conn, ptr nocapture noundef readonly %fdev, ptr noundef %cmd, ptr noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %resp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %resp, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %syndrome = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %syndrome to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %syndrome, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %status3 = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %cmd, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %status3, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %status3, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %status.0, ptr %status3) #9, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asmresult.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i, 3
  br i1 %cmp.not, label %do.end, label %if.then6, !prof !63

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %comp = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %cmd, i32 0, i32 3
  tail call void @complete(ptr noundef %comp) #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  %6 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !52) #9
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
  %syndrome12 = getelementptr inbounds %struct.mlx5_setup_stream_context, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %syndrome12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syndrome12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 328, i32 noundef %15, ptr noundef nonnull @.str.24, i32 noundef 328, i32 noundef %15, i32 noundef %17) #13
  %18 = ptrtoint ptr %syndrome12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %syndrome12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.then15, label %do.end.if.end24_crit_edge

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fdev, align 4
  %add.ptr17 = getelementptr %struct.mlx5_setup_stream_context, ptr %cmd, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr17, align 4
  %add.ptr20 = getelementptr %struct.mlx5_setup_stream_context, ptr %cmd, i32 1, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr20, align 4
  %26 = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23 = icmp ne i32 %26, 0
  tail call void @mlx5_fpga_tls_del_flow(ptr noundef %21, i32 noundef %23, i32 noundef 2592, i1 noundef zeroext %tobool23)
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %do.end.if.end24_crit_edge
  tail call fastcc void @mlx5_fpga_tls_put_command_ctx(ptr noundef %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 216, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 281, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_fpga_tls_del_flow._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @mlx5_fpga_tls_del_flow._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 477, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx5_fpga_tls_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_fpga_tls_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mlx5_fpga_tls_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 483, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mlx5_fpga_tls_init.__key.9, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 488, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mlx5_fpga_tls_init.__key.11, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 489, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 180, i32 4}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx5_fpga_tls_teardown_completion._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_fpga_tls_teardown_completion._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @xa_init_flags.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/tls.c", i32 327, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlx5_fpga_tls_setup_completion._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx5_fpga_tls_setup_completion._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2149633564}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2149633830}
!66 = !{i64 2154066880}
!67 = !{i64 2148675474}
!68 = !{i64 921090, i64 921107, i64 921131, i64 921157, i64 921175}
!69 = !{i64 2148675844}
!70 = !{i64 2148503853}
!71 = !{i64 2148418317, i64 2148418349, i64 2148418378, i64 2148418412, i64 2148418443, i64 2148418466}
!72 = !{i64 2149669979}
!73 = !{ptr @mlx5_fpga_tls_setup_completion, ptr @mlx5_fpga_tls_teardown_completion}
!74 = !{i64 2148676803}
!75 = !{i64 2148677173}
