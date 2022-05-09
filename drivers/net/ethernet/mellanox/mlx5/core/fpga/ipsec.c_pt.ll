; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_flow_cmds = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_accel_ipsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.184, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.183] }
%struct.anon.183 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.155 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.155 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.184 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_fpga_device = type { ptr, %struct.mlx5_nb, %struct.mlx5_nb, %struct.spinlock, i32, i32, i32, %struct.anon.185, ptr, ptr }
%struct.anon.185 = type { i32, i32, ptr }
%struct.mlx5_fpga_ipsec = type { ptr, %struct.list_head, %struct.spinlock, [8 x i32], ptr, %struct.notifier_block, %struct.notifier_block, %struct.rhashtable, %struct.mutex, %struct.rb_root, %struct.mutex, %struct.ida }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.mlx5_flow_root_namespace = type { %struct.mlx5_flow_namespace, i32, %struct.mlx5_fs_dr_domain, i32, ptr, ptr, %struct.mutex, %struct.list_head, ptr }
%struct.mlx5_flow_namespace = type { %struct.fs_node, i32 }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_fs_dr_domain = type { ptr }
%struct.fs_fte = type { %struct.fs_node, %struct.mlx5_fs_dr_rule, [112 x i32], i32, i32, %struct.mlx5_flow_context, %struct.mlx5_flow_act, i32, ptr, %struct.rhash_head, i32 }
%struct.mlx5_fs_dr_rule = type { ptr, ptr, i32 }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.132, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.132 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.rhash_head = type { ptr }
%struct.mlx5_flow_group = type { %struct.fs_node, %struct.mlx5_fs_dr_matcher, %struct.mlx5_flow_group_mask, i32, i32, %struct.ida, i32, %struct.rhashtable, %struct.rhlist_head }
%struct.mlx5_fs_dr_matcher = type { ptr }
%struct.mlx5_flow_group_mask = type { i8, [112 x i32] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.mlx5_fpga_ipsec_rule = type { %struct.rb_node, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mlx5_fpga_ipsec_sa_ctx = type { %struct.rhash_head, %struct.mlx5_ifc_fpga_ipsec_sa, i32, ptr, ptr }
%struct.mlx5_ifc_fpga_ipsec_sa = type { %struct.mlx5_ifc_fpga_ipsec_sa_v1, i16, i16, [4 x i8], i32, i16, i16 }
%struct.mlx5_ifc_fpga_ipsec_sa_v1 = type { i32, [32 x i8], [32 x i8], [4 x i32], [4 x i32], %union.anon.194, i32, i32, i16, i8, [2 x i8], i8, [2 x i8] }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { i32, [8 x i8], i32 }
%struct.mlx5_fpga_esp_xfrm = type { i32, ptr, %struct.mutex, %struct.mlx5_accel_esp_xfrm }
%struct.mlx5_accel_esp_xfrm = type { ptr, %struct.mlx5_accel_esp_xfrm_attrs }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.186, i32, %union.anon.188, %union.anon.189, %union.anon.190, i8 }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { i32 }
%union.anon.188 = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i64, i32, i32, i32, i32, [8 x i32] }
%union.anon.189 = type { [4 x i32] }
%union.anon.190 = type { [4 x i32] }
%struct.mlx5_fpga_ipsec_cmd_context = type { %struct.mlx5_fpga_dma_buf, i32, %struct.mlx5_ifc_fpga_ipsec_cmd_resp, i32, %struct.completion, ptr, %struct.list_head, [0 x i8] }
%struct.mlx5_fpga_dma_buf = type { i32, [2 x %struct.mlx5_fpga_dma_entry], %struct.list_head, ptr }
%struct.mlx5_fpga_dma_entry = type { ptr, i32, i32 }
%struct.mlx5_ifc_fpga_ipsec_cmd_resp = type { i32, %union.anon.197, [24 x i8] }
%union.anon.197 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.mlx5_ifc_fpga_ipsec_cmd_cap = type { i32, i32, [24 x i8] }
%struct.mlx5_fpga_conn_attr = type { i32, i32, ptr, ptr }

@fpga_ipsec_ingress = internal global { %struct.mlx5_flow_cmds, [56 x i8] } zeroinitializer, align 32
@fpga_ipsec_egress = internal global { %struct.mlx5_flow_cmds, [56 x i8] } zeroinitializer, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c\00", [43 x i8] zeroinitializer }, align 32
@fpga_ipsec_ops = internal constant { %struct.mlx5_accel_ipsec_ops, [56 x i8] } { %struct.mlx5_accel_ipsec_ops { ptr @mlx5_fpga_ipsec_device_caps, ptr @mlx5_fpga_ipsec_counters_count, ptr @mlx5_fpga_ipsec_counters_read, ptr @mlx5_fpga_ipsec_create_sa_ctx, ptr @mlx5_fpga_ipsec_delete_sa_ctx, ptr @mlx5_fpga_ipsec_init, ptr @mlx5_fpga_ipsec_cleanup, ptr @mlx5_fpga_esp_create_xfrm, ptr @mlx5_fpga_esp_modify_xfrm, ptr @mlx5_fpga_esp_destroy_xfrm }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rhash_sa = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 144, i16 8, i16 0, i32 0, i16 1, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlx5_fpga_ipsec_update_hw_sa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 318, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): mismatch SA handle. cmd 0x%08x vs resp 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_fpga_ipsec_update_hw_sa\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_update_hw_sa._entry_ptr = internal global ptr @mlx5_fpga_ipsec_update_hw_sa._entry, section ".printk_index", align 4
@mlx5_fpga_ipsec_cmd_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 252, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to send IPSec command: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fpga_ipsec_cmd_exec\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_cmd_exec._entry_ptr = internal global ptr @mlx5_fpga_ipsec_cmd_exec._entry, section ".printk_index", align 4
@mlx5_fpga_ipsec_send_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 154, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): IPSec command send failed with status %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_fpga_ipsec_send_complete\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_send_complete._entry_ptr = internal global ptr @mlx5_fpga_ipsec_send_complete._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_cmd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 270, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failure waiting for IPSec command response\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fpga_ipsec_cmd_wait\00", [39 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_cmd_wait._entry_ptr = internal global ptr @mlx5_fpga_ipsec_cmd_wait._entry, section ".printk_index", align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_fpga_ipsec_counters_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 403, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to read IPSec counters from HW: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_fpga_ipsec_counters_read\00", [34 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_counters_read._entry_ptr = internal global ptr @mlx5_fpga_ipsec_counters_read._entry, section ".printk_index", align 4
@mlx5_fpga_ipsec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 1286, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to retrieve IPSec extended capabilities: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fpga_ipsec_init\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init._entry_ptr = internal global ptr @mlx5_fpga_ipsec_init._entry, section ".printk_index", align 4
@mlx5_fpga_ipsec_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&fdev->ipsec->pending_cmds_lock\00", [32 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str, i32 1301, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Error creating IPSec command connection %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init._entry_ptr.33 = internal global ptr @mlx5_fpga_ipsec_init._entry.31, section ".printk_index", align 4
@mlx5_fpga_ipsec_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&fdev->ipsec->sa_hash_lock\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&fdev->ipsec->rules_rb_lock\00", [36 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.29, ptr @.str, i32 1317, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to enable IPSec extended capabilities: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_init._entry_ptr.40 = internal global ptr @mlx5_fpga_ipsec_init._entry.38, section ".printk_index", align 4
@mlx5_fpga_ipsec_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 186, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Short receive from FPGA IPSec: %u < %zu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fpga_ipsec_recv\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_recv._entry_ptr = internal global ptr @mlx5_fpga_ipsec_recv._entry, section ".printk_index", align 4
@mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.42, ptr @.str, ptr @.str.44, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): mlx5_ipsec recv_cb syndrome %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_recv._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str, i32 202, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Received IPSec offload response without pending command request\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_recv._entry_ptr.47 = internal global ptr @mlx5_fpga_ipsec_recv._entry.45, section ".printk_index", align 4
@mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.42, ptr @.str, ptr @.str.48, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Handling response for %p\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_recv._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str, i32 214, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): IPSec command failed with syndrome %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_recv._entry_ptr.51 = internal global ptr @mlx5_fpga_ipsec_recv._entry.49, section ".printk_index", align 4
@mlx5_fpga_ipsec_set_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str, i32 440, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to set capabilities. cmd 0x%08x vs resp 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_fpga_ipsec_set_caps\00", [39 x i8] zeroinitializer }, align 32
@mlx5_fpga_ipsec_set_caps._entry_ptr = internal global ptr @mlx5_fpga_ipsec_set_caps._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_create_xfrm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 1461, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Tried to create an esp action without metadata\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_fpga_esp_create_xfrm\00", [38 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_create_xfrm._entry_ptr = internal global ptr @mlx5_fpga_esp_create_xfrm._entry, section ".printk_index", align 4
@mlx5_fpga_esp_create_xfrm._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str, i32 1466, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Tried to create an esp with unsupported attrs\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_create_xfrm._entry_ptr.59 = internal global ptr @mlx5_fpga_esp_create_xfrm._entry.57, section ".printk_index", align 4
@mlx5_fpga_esp_create_xfrm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fpga_xfrm->lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str, i32 1412, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with tfc padding\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_fpga_esp_validate_xfrm_attrs\00", [62 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str, i32 1417, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with anti replay\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.65 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.63, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str, i32 1422, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Only aes gcm keymat is supported\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.68 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.66, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str, i32 1428, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Only iv sequence algo is supported\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.71 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.69, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str, i32 1433, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with AEAD ICV length other than 128bit\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.74 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.72, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str, i32 1439, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.77 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.75, section ".printk_index", align 4
@mlx5_fpga_esp_validate_xfrm_attrs._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str, i32 1446, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.79 = internal global ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.78, section ".printk_index", align 4
@mlx5_fpga_esp_modify_xfrm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.80, ptr @.str, i32 1505, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_fpga_esp_modify_xfrm\00", [38 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_modify_xfrm._entry_ptr = internal global ptr @mlx5_fpga_esp_modify_xfrm._entry, section ".printk_index", align 4
@mlx5_fpga_esp_modify_xfrm._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str, i32 1510, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Modify esp is not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_fpga_esp_modify_xfrm._entry_ptr.83 = internal global ptr @mlx5_fpga_esp_modify_xfrm._entry.81, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 256]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 256]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 256]
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"fpga_ipsec_ingress\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1250, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"fpga_ipsec_egress\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1251, i32 30 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1261, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"fpga_ipsec_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1563, i32 42 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"rhash_sa\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 86, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 715, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 755, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 695, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 723, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 316, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 252, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 153, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 87, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 270, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 402, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1285, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1291, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1300, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1309, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1312, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1316, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 185, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 190, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 202, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 205, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 213, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 438, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 378, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1461, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1466, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1474, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1412, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1417, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1422, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1428, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1433, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1439, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1446, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1505, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1510, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @mlx5_fpga_esp_create_xfrm._entry, ptr @mlx5_fpga_esp_create_xfrm._entry.57, ptr @mlx5_fpga_esp_create_xfrm._entry_ptr, ptr @mlx5_fpga_esp_create_xfrm._entry_ptr.59, ptr @mlx5_fpga_esp_modify_xfrm._entry, ptr @mlx5_fpga_esp_modify_xfrm._entry.81, ptr @mlx5_fpga_esp_modify_xfrm._entry_ptr, ptr @mlx5_fpga_esp_modify_xfrm._entry_ptr.83, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.63, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.66, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.69, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.72, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.75, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.78, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.65, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.68, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.71, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.74, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.77, ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.79, ptr @mlx5_fpga_ipsec_cmd_exec._entry, ptr @mlx5_fpga_ipsec_cmd_exec._entry_ptr, ptr @mlx5_fpga_ipsec_cmd_wait._entry, ptr @mlx5_fpga_ipsec_cmd_wait._entry_ptr, ptr @mlx5_fpga_ipsec_counters_read._entry, ptr @mlx5_fpga_ipsec_counters_read._entry_ptr, ptr @mlx5_fpga_ipsec_init._entry, ptr @mlx5_fpga_ipsec_init._entry.31, ptr @mlx5_fpga_ipsec_init._entry.38, ptr @mlx5_fpga_ipsec_init._entry_ptr, ptr @mlx5_fpga_ipsec_init._entry_ptr.33, ptr @mlx5_fpga_ipsec_init._entry_ptr.40, ptr @mlx5_fpga_ipsec_recv._entry, ptr @mlx5_fpga_ipsec_recv._entry.45, ptr @mlx5_fpga_ipsec_recv._entry.49, ptr @mlx5_fpga_ipsec_recv._entry_ptr, ptr @mlx5_fpga_ipsec_recv._entry_ptr.47, ptr @mlx5_fpga_ipsec_recv._entry_ptr.51, ptr @mlx5_fpga_ipsec_send_complete._entry, ptr @mlx5_fpga_ipsec_send_complete._entry_ptr, ptr @mlx5_fpga_ipsec_set_caps._entry, ptr @mlx5_fpga_ipsec_set_caps._entry_ptr, ptr @mlx5_fpga_ipsec_update_hw_sa._entry, ptr @mlx5_fpga_ipsec_update_hw_sa._entry_ptr, ptr @fpga_ipsec_ingress, ptr @fpga_ipsec_egress, ptr @.str, ptr @fpga_ipsec_ops, ptr @rhash_sa, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @init_completion.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mlx5_fpga_ipsec_init.__key, ptr @.str.30, ptr @.str.32, ptr @mlx5_fpga_ipsec_init.__key.34, ptr @.str.35, ptr @mlx5_fpga_ipsec_init.__key.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @xa_init_flags.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @mlx5_fpga_esp_create_xfrm.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.80, ptr @.str.82], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_ipsec_ingress to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_ipsec_egress to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_ipsec_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rhash_sa to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_update_hw_sa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_cmd_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_send_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_cmd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_counters_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_recv._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_recv._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_ipsec_set_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_create_xfrm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_create_xfrm._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_create_xfrm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_modify_xfrm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_esp_modify_xfrm._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_fpga_is_ipsec_device(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr13 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13, align 4
  %and15 = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 2
  br label %return

return:                                           ; preds = %if.end9, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp16.not, %if.end9 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_fpga_ipsec_device_caps(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr5.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %7 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5.i, align 4
  %and7.i = and i32 %8, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i)
  %cmp.not.i = icmp eq i32 %and7.i, 713
  br i1 %cmp.not.i, label %mlx5_fpga_is_ipsec_device.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_fpga_is_ipsec_device.exit:                   ; preds = %if.end.i
  %add.ptr13.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13.i, align 4
  %and15.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i)
  %cmp16.not.i = icmp eq i32 %and15.i, 2
  br i1 %cmp16.not.i, label %if.then, label %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge

mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge: ; preds = %mlx5_fpga_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %mlx5_fpga_is_ipsec_device.exit
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.mlx5_fpga_ipsec, ptr %12, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = and i32 %14, 4
  %16 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  %ret.1.v = select i1 %tobool15.not, i32 3, i32 11
  %17 = lshr i32 %14, 3
  %18 = and i32 %17, 16
  %19 = lshr i32 %14, 6
  %20 = and i32 %19, 32
  %ret.1 = or i32 %18, %15
  %21 = or i32 %ret.1, %20
  %22 = or i32 %21, %ret.1.v
  %23 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool45.not = icmp eq i32 %23, 0
  %or48 = or i32 %22, 192
  %ret.4 = select i1 %tobool45.not, i32 %22, i32 %or48
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge, %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %if.end3 ], [ 0, %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge ], [ 3, %if.then.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_fs_cmd_get_default_ipsec_fpga_cmds(i32 noundef %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1261, i32 noundef 9, ptr noundef null) #12
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ @fpga_ipsec_egress, %sw.bb1 ], [ @fpga_ipsec_ingress, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_ipsec_build_fs_cmds() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call1, align 4
  store ptr %1, ptr @fpga_ipsec_ingress, align 4
  %call3 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %destroy_flow_table = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %destroy_flow_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destroy_flow_table, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 1), align 4
  %call5 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %modify_flow_table = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %modify_flow_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modify_flow_table, align 4
  store ptr %5, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 2), align 4
  store ptr @mlx5_fpga_ipsec_fs_create_flow_group_ingress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 3), align 4
  %call7 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %destroy_flow_group = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call7, i32 0, i32 4
  %6 = ptrtoint ptr %destroy_flow_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy_flow_group, align 4
  store ptr %7, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 4), align 4
  store ptr @mlx5_fpga_ipsec_fs_create_fte_ingress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 5), align 4
  store ptr @mlx5_fpga_ipsec_fs_update_fte_ingress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 6), align 4
  store ptr @mlx5_fpga_ipsec_fs_delete_fte_ingress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 7), align 4
  %call9 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %update_root_ft = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call9, i32 0, i32 8
  %8 = ptrtoint ptr %update_root_ft to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_root_ft, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_ingress, i32 0, i32 8), align 4
  %call11 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %10 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call11, align 4
  store ptr %11, ptr @fpga_ipsec_egress, align 4
  %call14 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %destroy_flow_table15 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call14, i32 0, i32 1
  %12 = ptrtoint ptr %destroy_flow_table15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %destroy_flow_table15, align 4
  store ptr %13, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 1), align 4
  %call17 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %modify_flow_table18 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call17, i32 0, i32 2
  %14 = ptrtoint ptr %modify_flow_table18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %modify_flow_table18, align 4
  store ptr %15, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 2), align 4
  store ptr @mlx5_fpga_ipsec_fs_create_flow_group_egress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 3), align 4
  %call20 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %destroy_flow_group21 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call20, i32 0, i32 4
  %16 = ptrtoint ptr %destroy_flow_group21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destroy_flow_group21, align 4
  store ptr %17, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 4), align 4
  store ptr @mlx5_fpga_ipsec_fs_create_fte_egress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 5), align 4
  store ptr @mlx5_fpga_ipsec_fs_update_fte_egress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 6), align 4
  store ptr @mlx5_fpga_ipsec_fs_delete_fte_egress, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 7), align 4
  %call23 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %update_root_ft24 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call23, i32 0, i32 8
  %18 = ptrtoint ptr %update_root_ft24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update_root_ft24, align 4
  store ptr %19, ptr getelementptr inbounds (%struct.mlx5_flow_cmds, ptr @fpga_ipsec_egress, i32 0, i32 8), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fs_cmd_get_default(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_create_flow_group_ingress(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_create_flow_group(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_create_fte_ingress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_create_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_update_fte_ingress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 0) #12
  %update_fte2.i = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1.i, i32 0, i32 6
  %0 = ptrtoint ptr %update_fte2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_fte2.i, align 4
  %dev3.i = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3.i, align 4
  %4 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %action.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %7 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %action.i, align 4
  %and.i = and i32 %8, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call10.i = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #12
  br label %fpga_ipsec_fs_update_fte.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr3.i.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 28
  %9 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %and8.i.i = and i32 %8, -393217
  %12 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and8.i.i, ptr %action.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr10.i.i = getelementptr i32, ptr %14, i32 26
  %15 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr10.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end.i.modify_spec_mailbox.exit.i_crit_edge

if.end.i.modify_spec_mailbox.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %modify_spec_mailbox.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr3.i.i, align 4
  br label %modify_spec_mailbox.exit.i

modify_spec_mailbox.exit.i:                       ; preds = %do.body.i.i, %if.end.i.modify_spec_mailbox.exit.i_crit_edge
  %call11.i = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #12
  %19 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %add.ptr3.i.i, align 4
  %20 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action.i, align 4
  %or8.i.i = or i32 %21, %and.i
  store i32 %or8.i.i, ptr %action.i, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %6, ptr %4, align 4
  br label %fpga_ipsec_fs_update_fte.exit

fpga_ipsec_fs_update_fte.exit:                    ; preds = %modify_spec_mailbox.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call11.i, %modify_spec_mailbox.exit.i ], [ %call10.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_delete_fte_ingress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_delete_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_create_flow_group_egress(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_create_flow_group(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_create_fte_egress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_create_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_update_fte_egress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef 1) #12
  %update_fte2.i = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1.i, i32 0, i32 6
  %0 = ptrtoint ptr %update_fte2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %update_fte2.i, align 4
  %dev3.i = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3.i, align 4
  %4 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %action.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %7 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %action.i, align 4
  %and.i = and i32 %8, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call10.i = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #12
  br label %fpga_ipsec_fs_update_fte.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr3.i.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 28
  %9 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %and8.i.i = and i32 %8, -393217
  %12 = ptrtoint ptr %action.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and8.i.i, ptr %action.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr10.i.i = getelementptr i32, ptr %14, i32 26
  %15 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr10.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.end.i.modify_spec_mailbox.exit.i_crit_edge

if.end.i.modify_spec_mailbox.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %modify_spec_mailbox.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %add.ptr3.i.i, align 4
  br label %modify_spec_mailbox.exit.i

modify_spec_mailbox.exit.i:                       ; preds = %do.body.i.i, %if.end.i.modify_spec_mailbox.exit.i_crit_edge
  %call11.i = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, i32 noundef %modify_mask, ptr noundef %fte) #12
  %19 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %add.ptr3.i.i, align 4
  %20 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %action.i, align 4
  %or8.i.i = or i32 %21, %and.i
  store i32 %or8.i.i, ptr %action.i, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %6, ptr %4, align 4
  br label %fpga_ipsec_fs_update_fte.exit

fpga_ipsec_fs_update_fte.exit:                    ; preds = %modify_spec_mailbox.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call11.i, %modify_spec_mailbox.exit.i ], [ %call10.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_fs_delete_fte_egress(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fpga_ipsec_fs_delete_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_fpga_ipsec_ops(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_is_ipsec_device.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_is_ipsec_device.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr5.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %7 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5.i, align 4
  %and7.i = and i32 %8, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i)
  %cmp.not.i = icmp eq i32 %and7.i, 713
  br i1 %cmp.not.i, label %mlx5_fpga_is_ipsec_device.exit, label %if.end.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge

if.end.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_is_ipsec_device.exit.thread

mlx5_fpga_is_ipsec_device.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr13.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13.i, align 4
  %and15.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i)
  %cmp16.not.i = icmp eq i32 %and15.i, 2
  %spec.select = select i1 %cmp16.not.i, ptr @fpga_ipsec_ops, ptr null
  br label %mlx5_fpga_is_ipsec_device.exit.thread

mlx5_fpga_is_ipsec_device.exit.thread:            ; preds = %mlx5_fpga_is_ipsec_device.exit, %if.end.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge, %lor.lhs.false.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge, %entry.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge
  %11 = phi ptr [ null, %lor.lhs.false.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge ], [ null, %entry.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge ], [ null, %if.end.i.mlx5_fpga_is_ipsec_device.exit.thread_crit_edge ], [ %spec.select, %mlx5_fpga_is_ipsec_device.exit ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fpga_ipsec_fs_create_flow_group(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg, i1 noundef zeroext %is_egress) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond.i = zext i1 %is_egress to i32
  %call1 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef %cond.i) #12
  %create_flow_group2 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %create_flow_group2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_flow_group2, align 4
  %add.ptr = getelementptr i8, ptr %in, i32 128
  %dev3 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr4 = getelementptr i32, ptr %5, i32 26
  %6 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr4, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr i32, ptr %in, i32 15
  %9 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr7, align 4
  %conv = trunc i32 %10 to i8
  %add.ptr10 = getelementptr i8, ptr %in, i32 176
  %11 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool13.not = icmp eq i8 %conv, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.then15, label %do.body

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr10, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %land.lhs.true, label %do.body.if.end45_crit_edge

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true:                                    ; preds = %do.body
  %add.ptr26 = getelementptr i8, ptr %in, i32 129
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(63) %add.ptr, ptr noundef dereferenceable(63) %add.ptr26, i32 63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %do.body30, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or41 = and i32 %10, -3
  %16 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or41, ptr %add.ptr7, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.body30, %land.lhs.true.if.end45_crit_edge, %do.body.if.end45_crit_edge
  %call46 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %in, ptr noundef %fg) #12
  %17 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %12, ptr %add.ptr10, align 4
  %conv62 = and i32 %10, 255
  %18 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr7, align 4
  %and67 = and i32 %19, -256
  %or70 = or i32 %and67, %conv62
  store i32 %or70, ptr %add.ptr7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then15, %if.then
  %retval.0 = phi i32 [ %call6, %if.then ], [ %call46, %if.end45 ], [ %call16, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fpga_ipsec_fs_create_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte, i1 noundef zeroext %is_egress) unnamed_addr #2 align 64 {
entry:
  %saddr.i = alloca [4 x i32], align 4
  %daddr.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond.i = zext i1 %is_egress to i32
  %call1 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef %cond.i) #12
  %create_fte2 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 5
  %0 = ptrtoint ptr %create_fte2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_fte2, align 4
  %dev3 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fpga, align 4
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipsec, align 4
  %8 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %action = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action, align 4
  %and = and i32 %12, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call10 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 20) #16
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i) #12
  %14 = getelementptr inbounds [4 x i32], ptr %saddr.i, i32 0, i32 3
  %15 = call ptr @memset(ptr %saddr.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %daddr.i) #12
  %16 = getelementptr inbounds [4 x i32], ptr %daddr.i, i32 0, i32 3
  %parent.i = getelementptr inbounds %struct.fs_node, ptr %fte, i32 0, i32 3
  %17 = call ptr @memset(ptr %daddr.i, i32 255, i32 12)
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 4
  br i1 %is_egress, label %land.lhs.true.i, label %if.end14.if.else.i_crit_edge

if.end14.if.else.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end14
  %mask.i = getelementptr inbounds %struct.mlx5_flow_group, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mask.i, align 4
  %match_criteria.i = getelementptr inbounds %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1
  %val.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 2
  %flow_context.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 5
  %add.ptr1.i.i = getelementptr %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1, i32 2
  %22 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %land.lhs.true.i.lor.end.i.i_crit_edge

land.lhs.true.i.lor.end.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2.i.i = getelementptr %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1, i32 3
  %24 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %25)
  %tobool5.i.i = icmp ugt i32 %25, 65535
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %land.lhs.true.i.lor.end.i.i_crit_edge
  %26 = phi i1 [ true, %land.lhs.true.i.lor.end.i.i_crit_edge ], [ %tobool5.i.i, %lor.rhs.i.i ]
  %27 = ptrtoint ptr %match_criteria.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %match_criteria.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool9.not.i.i, label %lor.rhs10.i.i, label %lor.end.i.i.lor.end15.i.i_crit_edge

lor.end.i.i.lor.end15.i.i_crit_edge:              ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end15.i.i

lor.rhs10.i.i:                                    ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr11.i.i = getelementptr %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1, i32 1
  %29 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %30)
  %tobool14.i.i = icmp ugt i32 %30, 65535
  br label %lor.end15.i.i

lor.end15.i.i:                                    ; preds = %lor.rhs10.i.i, %lor.end.i.i.lor.end15.i.i_crit_edge
  %31 = phi i1 [ true, %lor.end.i.i.lor.end15.i.i_crit_edge ], [ %tobool14.i.i, %lor.rhs10.i.i ]
  %call.i.i = tail call fastcc zeroext i1 @mlx5_is_fpga_ipsec_rule(ptr noundef %3, i8 noundef zeroext %21, ptr noundef %match_criteria.i, ptr noundef %val.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %lor.end15.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge

lor.end15.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge: ; preds = %lor.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread

if.end.i.i:                                       ; preds = %lor.end15.i.i
  %brmerge.i.i = select i1 %26, i1 true, i1 %31
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %tobool26.not.i.i = icmp ugt i8 %21, 3
  %32 = or i1 %tobool26.not.i.i, %brmerge.i.i
  br i1 %32, label %if.end.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge, label %lor.lhs.false27.i.i

if.end.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread

lor.lhs.false27.i.i:                              ; preds = %if.end.i.i
  %33 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %action, align 4
  %and28.i.i = and i32 %34, -131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i)
  %tobool29.not.i.i = icmp eq i32 %and28.i.i, 0
  br i1 %tobool29.not.i.i, label %mlx5_is_fpga_egress_ipsec_rule.exit.i, label %lor.lhs.false27.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge

lor.lhs.false27.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge: ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread

mlx5_is_fpga_egress_ipsec_rule.exit.i:            ; preds = %lor.lhs.false27.i.i
  %35 = ptrtoint ptr %flow_context.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flow_context.i, align 4
  %and31.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %mlx5_is_fpga_egress_ipsec_rule.exit.i.if.else.i_crit_edge, label %mlx5_is_fpga_egress_ipsec_rule.exit.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge

mlx5_is_fpga_egress_ipsec_rule.exit.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge: ; preds = %mlx5_is_fpga_egress_ipsec_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread

mlx5_is_fpga_egress_ipsec_rule.exit.i.if.else.i_crit_edge: ; preds = %mlx5_is_fpga_egress_ipsec_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.else.i:                                        ; preds = %mlx5_is_fpga_egress_ipsec_rule.exit.i.if.else.i_crit_edge, %if.end14.if.else.i_crit_edge
  %mask4.i = getelementptr inbounds %struct.mlx5_flow_group, ptr %19, i32 0, i32 2
  %37 = ptrtoint ptr %mask4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mask4.i, align 4
  %match_criteria7.i = getelementptr inbounds %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1
  %val9.i = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 2
  %call11.i = tail call fastcc zeroext i1 @mlx5_is_fpga_ipsec_rule(ptr noundef %3, i8 noundef zeroext %38, ptr noundef %match_criteria7.i, ptr noundef %val9.i) #12
  br i1 %call11.i, label %if.end14.i, label %if.else.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge

if.else.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread

if.end14.i:                                       ; preds = %if.else.i
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %8, align 4
  %41 = inttoptr i32 %40 to ptr
  %arrayidx.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %43, i32 24
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i.i, align 4
  %46 = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end14.i
  %add.ptr4.i.i.i = getelementptr %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1, i32 1
  %47 = ptrtoint ptr %add.ptr4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr4.i.i.i, align 4
  %and6.i.i.i = and i32 %48, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and6.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and6.i.i.i, 65535
  br i1 %cmp.i.i.i, label %if.then.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge, label %if.then.i.i.i.if.else30.i_crit_edge

if.then.i.i.i.if.else30.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30.i

if.then.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  %add.ptr12.i.i.i = getelementptr %struct.mlx5_flow_group, ptr %19, i32 0, i32 2, i32 1, i32 4
  %49 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr12.i.i.i, align 4
  %51 = and i32 %50, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %51)
  %cmp15.i.i.i = icmp eq i32 %51, 7680
  br i1 %cmp15.i.i.i, label %if.end.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge, label %if.end.i.i.i.if.else30.i_crit_edge

if.end.i.i.i.if.else30.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30.i

if.end.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit.i

mlx5_fs_is_outer_ipv4_flow.exit.i:                ; preds = %if.end.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge, %if.then.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge
  %.sink.i.i = phi i32 [ 1, %if.then.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge ], [ 4, %if.end.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge ]
  %.sink1.i.i = phi i32 [ 65535, %if.then.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge ], [ 7680, %if.end.i.i.i.mlx5_fs_is_outer_ipv4_flow.exit.i_crit_edge ]
  %add.ptr7.i.i.i = getelementptr i32, ptr %val9.i, i32 %.sink.i.i
  %52 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr7.i.i.i, align 4
  %and9.i.i.i = and i32 %53, %.sink1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and9.i.i.i)
  %cmp10.i.i.i = icmp eq i32 %and9.i.i.i, 2048
  br i1 %cmp10.i.i.i, label %if.then22.i, label %mlx5_fs_is_outer_ipv4_flow.exit.i.if.else30.i_crit_edge

mlx5_fs_is_outer_ipv4_flow.exit.i.if.else30.i_crit_edge: ; preds = %mlx5_fs_is_outer_ipv4_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else30.i

if.then22.i:                                      ; preds = %mlx5_fs_is_outer_ipv4_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr25.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 11
  %54 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %add.ptr25.i, align 1
  %56 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %14, align 4
  %add.ptr29.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 15
  %57 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %add.ptr29.i, align 1
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %16, align 4
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit

if.else30.i:                                      ; preds = %mlx5_fs_is_outer_ipv4_flow.exit.i.if.else30.i_crit_edge, %if.end.i.i.i.if.else30.i_crit_edge, %if.then.i.i.i.if.else30.i_crit_edge
  %add.ptr34.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 8
  %60 = call ptr @memcpy(ptr %saddr.i, ptr %add.ptr34.i, i32 16)
  %add.ptr38.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 12
  %61 = call ptr @memcpy(ptr %daddr.i, ptr %add.ptr38.i, i32 16)
  br label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit

mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread:     ; preds = %if.else.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge, %mlx5_is_fpga_egress_ipsec_rule.exit.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge, %lor.lhs.false27.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge, %if.end.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge, %lor.end15.i.i.mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daddr.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #12
  %ctx94 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %call7.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %ctx94 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -22 to ptr), ptr %ctx94, align 8
  br label %if.then19

mlx5_fpga_ipsec_fs_create_sa_ctx.exit:            ; preds = %if.else30.i, %if.then22.i
  %retval.1.i.i74.i = phi i1 [ true, %if.else30.i ], [ false, %if.then22.i ]
  %add.ptr43.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 28
  %63 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr43.i, align 4
  %call48.i = call ptr @mlx5_fpga_ipsec_create_sa_ctx(ptr noundef %3, ptr noundef %41, ptr noundef nonnull %saddr.i, ptr noundef nonnull %daddr.i, i32 noundef %64, i1 noundef zeroext %retval.1.i.i74.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %daddr.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #12
  %ctx = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %call7.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call48.i, ptr %ctx, align 8
  %cmp.i = icmp ugt ptr %call48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.if.then19_crit_edge, label %if.end22

mlx5_fpga_ipsec_fs_create_sa_ctx.exit.if.then19_crit_edge: ; preds = %mlx5_fpga_ipsec_fs_create_sa_ctx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.if.then19_crit_edge, %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread
  %retval.0.i96 = phi ptr [ inttoptr (i32 -22 to ptr), %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.thread ], [ %call48.i, %mlx5_fpga_ipsec_fs_create_sa_ctx.exit.if.then19_crit_edge ]
  %66 = ptrtoint ptr %retval.0.i96 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end22:                                         ; preds = %mlx5_fpga_ipsec_fs_create_sa_ctx.exit
  %fte23 = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %fte23 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %fte, ptr %fte23, align 4
  %rules_rb_lock.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %7, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %rules_rb_lock.i, i32 noundef 0) #12
  %rules_rb.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %7, i32 0, i32 9
  %68 = ptrtoint ptr %rules_rb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rules_rb.i, align 4
  %tobool.not26.i.i = icmp eq ptr %69, null
  br i1 %tobool.not26.i.i, label %if.end22.rule_insert.exit.thread_crit_edge, label %while.body.lr.ph.i.i

if.end22.rule_insert.exit.thread_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rule_insert.exit.thread

while.body.lr.ph.i.i:                             ; preds = %if.end22
  %70 = ptrtoint ptr %fte23 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fte23, align 4
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %cmp.i.i = icmp ult ptr %71, %76
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 2
  %cmp4.i.i = icmp ugt ptr %71, %76
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %74, i32 0, i32 1
  %spec.select.i.i = select i1 %cmp4.i.i, ptr %rb_right.i.i, ptr %new.027.i.i
  %new.2.i.i = select i1 %cmp.i.i, ptr %rb_left.i.i, ptr %spec.select.i.i
  %72 = ptrtoint ptr %new.2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %new.2.i.i, align 4
  %tobool.not.i.i86 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i86, label %while.cond.i.i.rule_insert.exit.thread_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.i.i.rule_insert.exit.thread_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rule_insert.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %74 = phi ptr [ %69, %while.body.lr.ph.i.i ], [ %73, %while.cond.i.i.while.body.i.i_crit_edge ]
  %new.027.i.i = phi ptr [ %rules_rb.i, %while.body.lr.ph.i.i ], [ %new.2.i.i, %while.cond.i.i.while.body.i.i_crit_edge ]
  %fte1.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %fte1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fte1.i.i, align 4
  %.not.i.i = icmp eq ptr %71, %76
  br i1 %.not.i.i, label %do.end, label %while.cond.i.i

rule_insert.exit.thread:                          ; preds = %while.cond.i.i.rule_insert.exit.thread_crit_edge, %if.end22.rule_insert.exit.thread_crit_edge
  %parent.0.lcssa.i.i = phi ptr [ null, %if.end22.rule_insert.exit.thread_crit_edge ], [ %74, %while.cond.i.i.rule_insert.exit.thread_crit_edge ]
  %new.0.lcssa.i.i = phi ptr [ %rules_rb.i, %if.end22.rule_insert.exit.thread_crit_edge ], [ %new.2.i.i, %while.cond.i.i.rule_insert.exit.thread_crit_edge ]
  %77 = ptrtoint ptr %parent.0.lcssa.i.i to i32
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %call7.i.i, align 8
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_left.i.i.i, align 8
  %81 = ptrtoint ptr %new.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %new.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i, ptr noundef %rules_rb.i) #12
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  br label %if.end40

do.end:                                           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 9, ptr noundef null) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end, %rule_insert.exit.thread
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %8, align 4
  %84 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %action, align 4
  %and.i = and i32 %85, 393216
  %86 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr43.i, align 4
  store i32 0, ptr %8, align 4
  %and8.i = and i32 %85, -393217
  store i32 %and8.i, ptr %action, align 4
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr10.i = getelementptr i32, ptr %89, i32 26
  %90 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr10.i, align 4
  %92 = and i32 %91, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end40.modify_spec_mailbox.exit_crit_edge

if.end40.modify_spec_mailbox.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %modify_spec_mailbox.exit

do.body.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %add.ptr43.i, align 4
  br label %modify_spec_mailbox.exit

modify_spec_mailbox.exit:                         ; preds = %do.body.i, %if.end40.modify_spec_mailbox.exit_crit_edge
  %call47 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fg, ptr noundef %fte) #12
  %94 = ptrtoint ptr %add.ptr43.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %87, ptr %add.ptr43.i, align 4
  %95 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %action, align 4
  %or8.i = or i32 %96, %and.i
  store i32 %or8.i, ptr %action, align 4
  %97 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %83, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %modify_spec_mailbox.exit.cleanup_crit_edge, label %if.then49

modify_spec_mailbox.exit.cleanup_crit_edge:       ; preds = %modify_spec_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %modify_spec_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef %rules_rb_lock.i, i32 noundef 0) #12
  tail call void @rb_erase(ptr noundef nonnull %call7.i.i, ptr noundef %rules_rb.i) #12
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  %98 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ctx, align 8
  tail call void @mlx5_fpga_ipsec_delete_sa_ctx(ptr noundef %99)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %modify_spec_mailbox.exit.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %66, %if.then19 ], [ %call10, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %call47, %if.then49 ], [ 0, %modify_spec_mailbox.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_ipsec_delete_sa_ctx(ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga_xfrm1 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %fpga_xfrm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga_xfrm1, align 4
  %lock = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %sa_ctx = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sa_ctx, align 4
  %dev.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %fpga.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %fpga.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fpga.i, align 4
  %ipsec.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ipsec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipsec.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %11, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.not.i = icmp eq i32 %14, 0
  %cond.i = select i1 %tobool.not.i.not.i, i32 1, i32 3
  %hw_sa.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %5, i32 0, i32 1
  %call2.i = tail call fastcc i32 @mlx5_fpga_ipsec_update_hw_sa(ptr noundef %9, ptr noundef %hw_sa.i, i32 noundef %cond.i) #12
  %15 = ptrtoint ptr %hw_sa.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hw_sa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end25.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 849, i32 noundef 9, ptr noundef null) #12
  br label %mlx5_fpga_ipsec_release_sa_ctx.exit

if.end25.i:                                       ; preds = %if.then
  %fpga_xfrm.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %fpga_xfrm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fpga_xfrm.i, align 4
  %attrs.i = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %17, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i = icmp eq i32 %19, 0
  br i1 %cmp.i, label %if.then26.i, label %if.end25.i.if.end27.i_crit_edge

if.end25.i.if.end27.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  %halloc.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %11, i32 0, i32 11
  %sa_handle.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %sa_handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sa_handle.i, align 4
  tail call void @ida_free(ptr noundef %halloc.i, i32 noundef %21) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end25.i.if.end27.i_crit_edge
  %sa_hash_lock.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %11, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sa_hash_lock.i, i32 noundef 0) #12
  %sa_hash.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %11, i32 0, i32 7
  %call29.i = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %sa_hash.i, ptr noundef %5, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end52.i_crit_edge, label %do.end46.i, !prof !181

if.end27.i.if.end52.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

do.end46.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 859, i32 noundef 9, ptr noundef null) #12
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %if.end27.i.if.end52.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %sa_hash_lock.i) #12
  br label %mlx5_fpga_ipsec_release_sa_ctx.exit

mlx5_fpga_ipsec_release_sa_ctx.exit:              ; preds = %if.end52.i, %do.end.i
  %22 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sa_ctx, align 4
  tail call void @kfree(ptr noundef %23) #12
  %24 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sa_ctx, align 4
  br label %if.end

if.end:                                           ; preds = %mlx5_fpga_ipsec_release_sa_ctx.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5_is_fpga_ipsec_rule(ptr nocapture noundef readonly %dev, i8 noundef zeroext %match_criteria_enable, ptr noundef %match_c, ptr nocapture noundef readonly %match_v) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.mlx5_fpga_ipsec_device_caps.exit_crit_edge, label %lor.lhs.false.i.i

entry.mlx5_fpga_ipsec_device_caps.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add.ptr5.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 3, i32 28
  %7 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5.i.i, align 4
  %and7.i.i = and i32 %8, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i.i)
  %cmp.not.i.i = icmp eq i32 %and7.i.i, 713
  br i1 %cmp.not.i.i, label %mlx5_fpga_is_ipsec_device.exit.i, label %if.end.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge

if.end.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit

mlx5_fpga_is_ipsec_device.exit.i:                 ; preds = %if.end.i.i
  %add.ptr13.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13.i.i, align 4
  %and15.i.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i.i)
  %cmp16.not.i.i = icmp eq i32 %and15.i.i, 2
  br i1 %cmp16.not.i.i, label %if.then.i, label %mlx5_fpga_is_ipsec_device.exit.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge

mlx5_fpga_is_ipsec_device.exit.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge: ; preds = %mlx5_fpga_is_ipsec_device.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit

if.then.i:                                        ; preds = %mlx5_fpga_is_ipsec_device.exit.i
  %ipsec.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %ipsec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipsec.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, label %if.end3.i

if.then.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit

if.end3.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %12, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = and i32 %14, 4
  %16 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not.i = icmp eq i32 %16, 0
  %ret.1.v.i = select i1 %tobool15.not.i, i32 3, i32 11
  %17 = or i32 %15, %ret.1.v.i
  %18 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool45.not.i = icmp eq i32 %18, 0
  %or48.i = or i32 %17, 192
  %ret.4.i = select i1 %tobool45.not.i, i32 %17, i32 %or48.i
  br label %mlx5_fpga_ipsec_device_caps.exit

mlx5_fpga_ipsec_device_caps.exit:                 ; preds = %if.end3.i, %if.then.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, %mlx5_fpga_is_ipsec_device.exit.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, %if.end.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, %lor.lhs.false.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge, %entry.mlx5_fpga_ipsec_device_caps.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.4.i, %if.end3.i ], [ 0, %mlx5_fpga_is_ipsec_device.exit.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge ], [ 3, %if.then.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge ], [ 0, %entry.mlx5_fpga_ipsec_device_caps.exit_crit_edge ], [ 0, %if.end.i.i.mlx5_fpga_ipsec_device_caps.exit_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i54 = getelementptr i32, ptr %20, i32 24
  %21 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i54, align 4
  %23 = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i55 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i55, label %if.then.i.i, label %if.end.i.i56

if.then.i.i:                                      ; preds = %mlx5_fpga_ipsec_device_caps.exit
  %add.ptr4.i.i = getelementptr i32, ptr %match_c, i32 1
  %24 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr4.i.i, align 4
  %and6.i.i = and i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and6.i.i)
  %cmp.i.i = icmp eq i32 %and6.i.i, 65535
  br i1 %cmp.i.i, label %if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge, label %if.then.i.i.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge

if.then.i.i.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv6_flow.exit

if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i

if.end.i.i56:                                     ; preds = %mlx5_fpga_ipsec_device_caps.exit
  %add.ptr12.i.i = getelementptr i32, ptr %match_c, i32 4
  %26 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr12.i.i, align 4
  %28 = and i32 %27, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %28)
  %cmp15.i.i = icmp eq i32 %28, 7680
  br i1 %cmp15.i.i, label %if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge, label %if.end.i.i56.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge

if.end.i.i56.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge: ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv6_flow.exit

if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge: ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i

_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i:     ; preds = %if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge, %if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge
  %.sink3.i = phi i32 [ 1, %if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ], [ 4, %if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ]
  %.sink2.i = phi i32 [ 65535, %if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ], [ 7680, %if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 34525, %if.then.i.i._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ], [ 3072, %if.end.i.i56._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i_crit_edge ]
  %add.ptr7.i.i = getelementptr i32, ptr %match_v, i32 %.sink3.i
  %29 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr7.i.i, align 4
  %and9.i.i = and i32 %30, %.sink2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and9.i.i, i32 %.sink.i)
  %cmp10.i.i = icmp eq i32 %and9.i.i, %.sink.i
  br label %mlx5_fs_is_outer_ipv6_flow.exit

mlx5_fs_is_outer_ipv6_flow.exit:                  ; preds = %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i, %if.end.i.i56.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge, %if.then.i.i.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge
  %retval.1.i.i = phi i1 [ false, %if.then.i.i.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge ], [ false, %if.end.i.i56.mlx5_fs_is_outer_ipv6_flow.exit_crit_edge ], [ %cmp10.i.i, %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i ]
  %31 = and i8 %match_criteria_enable, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %mlx5_fs_is_outer_ipv6_flow.exit.cleanup_crit_edge, label %lor.lhs.false

mlx5_fs_is_outer_ipv6_flow.exit.cleanup_crit_edge: ; preds = %mlx5_fs_is_outer_ipv6_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlx5_fs_is_outer_ipv6_flow.exit
  %add.ptr2.i.i = getelementptr i32, ptr %match_c, i32 4
  %32 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %33)
  %cmp.i.i57 = icmp ugt i32 %33, -16777217
  br i1 %cmp.i.i57, label %mlx5_fs_is_outer_udp_flow.exit, label %lor.lhs.false.lor.lhs.false7_crit_edge

lor.lhs.false.lor.lhs.false7_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false7

mlx5_fs_is_outer_udp_flow.exit:                   ; preds = %lor.lhs.false
  %add.ptr3.i.i = getelementptr i32, ptr %match_v, i32 4
  %34 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr3.i.i, align 4
  %shr4.i.mask.i = and i32 %35, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %shr4.i.mask.i)
  %cmp6.i.i = icmp eq i32 %shr4.i.mask.i, 285212672
  br i1 %cmp6.i.i, label %mlx5_fs_is_outer_udp_flow.exit.cleanup_crit_edge, label %mlx5_fs_is_outer_tcp_flow.exit

mlx5_fs_is_outer_udp_flow.exit.cleanup_crit_edge: ; preds = %mlx5_fs_is_outer_udp_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_fs_is_outer_tcp_flow.exit:                   ; preds = %mlx5_fs_is_outer_udp_flow.exit
  %36 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr3.i.i, align 4
  %shr4.i.mask.i61 = and i32 %37, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %shr4.i.mask.i61)
  %cmp6.i.i62 = icmp eq i32 %shr4.i.mask.i61, 100663296
  br i1 %cmp6.i.i62, label %mlx5_fs_is_outer_tcp_flow.exit.cleanup_crit_edge, label %mlx5_fs_is_outer_tcp_flow.exit.lor.lhs.false7_crit_edge

mlx5_fs_is_outer_tcp_flow.exit.lor.lhs.false7_crit_edge: ; preds = %mlx5_fs_is_outer_tcp_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false7

mlx5_fs_is_outer_tcp_flow.exit.cleanup_crit_edge: ; preds = %mlx5_fs_is_outer_tcp_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false7:                                   ; preds = %mlx5_fs_is_outer_tcp_flow.exit.lor.lhs.false7_crit_edge, %lor.lhs.false.lor.lhs.false7_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %match_c, i32 84
  %38 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %39)
  %tobool.i = icmp ugt i32 %39, 255
  br i1 %tobool.i, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  br i1 %tobool.not.i.i55, label %if.then.i.i70, label %if.end.i.i73

if.then.i.i70:                                    ; preds = %lor.lhs.false10
  %add.ptr4.i.i67 = getelementptr i32, ptr %match_c, i32 1
  %40 = ptrtoint ptr %add.ptr4.i.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr4.i.i67, align 4
  %and6.i.i68 = and i32 %41, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and6.i.i68)
  %cmp.i.i69 = icmp eq i32 %and6.i.i68, 65535
  br i1 %cmp.i.i69, label %if.then.i.i70._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge, label %if.then.i.i70.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge

if.then.i.i70.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge: ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit

if.then.i.i70._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge: ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78

if.end.i.i73:                                     ; preds = %lor.lhs.false10
  %42 = and i32 %33, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %42)
  %cmp15.i.i72 = icmp eq i32 %42, 7680
  br i1 %cmp15.i.i72, label %if.end.i.i73._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge, label %if.end.i.i73.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge

if.end.i.i73.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge: ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit

if.end.i.i73._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge: ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78

_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78:   ; preds = %if.end.i.i73._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge, %if.then.i.i70._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge
  %.sink.i74 = phi i32 [ 1, %if.then.i.i70._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge ], [ 4, %if.end.i.i73._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge ]
  %.sink1.i = phi i32 [ 65535, %if.then.i.i70._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge ], [ 7680, %if.end.i.i73._mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78_crit_edge ]
  %add.ptr7.i.i75 = getelementptr i32, ptr %match_v, i32 %.sink.i74
  %43 = ptrtoint ptr %add.ptr7.i.i75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr7.i.i75, align 4
  %and9.i.i76 = and i32 %44, %.sink1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and9.i.i76)
  %cmp10.i.i77 = icmp eq i32 %and9.i.i76, 2048
  %phi.sel = select i1 %cmp10.i.i77, i1 true, i1 %retval.1.i.i
  br label %mlx5_fs_is_outer_ipv4_flow.exit

mlx5_fs_is_outer_ipv4_flow.exit:                  ; preds = %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78, %if.end.i.i73.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge, %if.then.i.i70.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge
  %retval.1.i.i79 = phi i1 [ %retval.1.i.i, %if.then.i.i70.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ], [ %retval.1.i.i, %if.end.i.i73.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ], [ %phi.sel, %_mlx5_fs_is_outer_ipv_flow.exit.sink.split.i78 ]
  %brmerge.not = xor i1 %retval.1.i.i79, true
  %and16 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = select i1 %brmerge.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %mlx5_fs_is_outer_ipv4_flow.exit.cleanup_crit_edge, label %if.end19

mlx5_fs_is_outer_ipv4_flow.exit.cleanup_crit_edge: ; preds = %mlx5_fs_is_outer_ipv4_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %mlx5_fs_is_outer_ipv4_flow.exit
  %and20 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %add.ptr1.i80 = getelementptr i8, ptr %match_c, i32 112
  %45 = ptrtoint ptr %add.ptr1.i80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr1.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i81.not = icmp eq i32 %46, 0
  br i1 %tobool.i81.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end19.if.end25_crit_edge
  %and26 = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp ne i32 %and26, 0
  %call1.not = xor i1 %retval.1.i.i, true
  %brmerge53 = select i1 %tobool27.not, i1 true, i1 %call1.not
  br i1 %brmerge53, label %if.end32, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = tail call fastcc zeroext i1 @validate_fpga_full_mask(ptr noundef %dev, ptr noundef %match_c, ptr noundef %match_v)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %mlx5_fs_is_outer_ipv4_flow.exit.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %mlx5_fs_is_outer_tcp_flow.exit.cleanup_crit_edge, %mlx5_fs_is_outer_udp_flow.exit.cleanup_crit_edge, %mlx5_fs_is_outer_ipv6_flow.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %mlx5_fs_is_outer_ipv4_flow.exit.cleanup_crit_edge ], [ false, %lor.lhs.false7.cleanup_crit_edge ], [ false, %mlx5_fs_is_outer_tcp_flow.exit.cleanup_crit_edge ], [ false, %mlx5_fs_is_outer_udp_flow.exit.cleanup_crit_edge ], [ false, %mlx5_fs_is_outer_ipv6_flow.exit.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ], [ %call33, %if.end32 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_fpga_ipsec_create_sa_ctx(ptr noundef %mdev, ptr noundef %accel_xfrm, ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %spi, i1 noundef zeroext %is_ipv6, ptr noundef writeonly %sa_handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %accel_xfrm, i32 -104
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 164) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mdev, ptr %dev, align 4
  %attrs = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1
  %hw_sa = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1
  %keymat.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10
  %key_enc.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %aes_key.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 5
  %key_len.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %key_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_len.i.i, align 4
  %div1.i.i = lshr i32 %7, 3
  %8 = call ptr @memcpy(ptr %key_enc.i.i, ptr %aes_key.i.i, i32 %div1.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.if.end.i.i_crit_edge

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 16
  %9 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %aes_key.i.i, i32 16)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.if.end.i.i_crit_edge
  %salt_iv.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %keymat.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %keymat.i.i, align 8
  %12 = ptrtoint ptr %salt_iv.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %salt_iv.i.i, align 4
  %salt.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %salt10.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %salt10.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %salt10.i.i, align 4
  %15 = ptrtoint ptr %salt.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %salt.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %flags25.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 11
  %18 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags25.i.i, align 1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = trunc i32 %17 to i8
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 2
  %23 = or i8 %19, %22
  %conv22.i.i = or i8 %23, 1
  %24 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22.i.i, ptr %flags25.i.i, align 1
  %esn.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %esn.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %esn.i.i, align 4
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = and i8 %19, 2
  %28 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %flags25.i.i, align 1
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.else.i.i, %if.then11.i.i
  %.sink.i.i = phi i32 [ 0, %if.else.i.i ], [ %26, %if.then11.i.i ]
  %29 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i.i, ptr %29, align 8
  %sa_handle.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 6
  %31 = ptrtoint ptr %sa_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sa_handle.i.i, align 8
  %sw_sa_handle.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 7
  %33 = ptrtoint ptr %sw_sa_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sw_sa_handle.i.i, align 4
  %34 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %7, label %if.end39.i.i.mlx5_fpga_ipsec_build_hw_xfrm.exit.i_crit_edge [
    i32 128, label %if.end39.i.i.sw.epilog.sink.split.i.i_crit_edge
    i32 256, label %sw.bb43.i.i
  ]

if.end39.i.i.sw.epilog.sink.split.i.i_crit_edge:  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i.i

if.end39.i.i.mlx5_fpga_ipsec_build_hw_xfrm.exit.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_build_hw_xfrm.exit.i

sw.bb43.i.i:                                      ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb43.i.i, %if.end39.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink2.i.i = phi i8 [ 3, %sw.bb43.i.i ], [ 1, %if.end39.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %enc_mode45.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 9
  %35 = ptrtoint ptr %enc_mode45.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink2.i.i, ptr %enc_mode45.i.i, align 2
  br label %mlx5_fpga_ipsec_build_hw_xfrm.exit.i

mlx5_fpga_ipsec_build_hw_xfrm.exit.i:             ; preds = %sw.epilog.sink.split.i.i, %if.end39.i.i.mlx5_fpga_ipsec_build_hw_xfrm.exit.i_crit_edge
  %36 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags25.i.i, align 1
  %38 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attrs, align 8
  %and51.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i)
  %tobool52.not.i.i = icmp eq i32 %and51.i.i, 0
  %40 = and i8 %37, -121
  %41 = or i8 %40, 112
  %42 = or i8 %37, 120
  %storemerge.i.i = select i1 %tobool52.not.i.i, i8 %41, i8 %42
  %43 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge.i.i, ptr %flags25.i.i, align 1
  %sip.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %44 = call ptr @memcpy(ptr %sip.i, ptr %saddr, i32 16)
  %dip.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %45 = call ptr @memcpy(ptr %dip.i, ptr %daddr, i32 16)
  %spi4.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 6
  %46 = ptrtoint ptr %spi4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spi, ptr %spi4.i, align 8
  br i1 %is_ipv6, label %if.then.i, label %mlx5_fpga_ipsec_build_hw_xfrm.exit.i.mlx5_fpga_ipsec_build_hw_sa.exit_crit_edge

mlx5_fpga_ipsec_build_hw_xfrm.exit.i.mlx5_fpga_ipsec_build_hw_sa.exit_crit_edge: ; preds = %mlx5_fpga_ipsec_build_hw_xfrm.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_build_hw_sa.exit

if.then.i:                                        ; preds = %mlx5_fpga_ipsec_build_hw_xfrm.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = or i8 %storemerge.i.i, 4
  %48 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flags25.i.i, align 1
  br label %mlx5_fpga_ipsec_build_hw_sa.exit

mlx5_fpga_ipsec_build_hw_sa.exit:                 ; preds = %if.then.i, %mlx5_fpga_ipsec_build_hw_xfrm.exit.i.mlx5_fpga_ipsec_build_hw_sa.exit_crit_edge
  %lock = getelementptr i8, ptr %accel_xfrm, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %sa_ctx3 = getelementptr i8, ptr %accel_xfrm, i32 -100
  %49 = ptrtoint ptr %sa_ctx3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sa_ctx3, align 4
  %tobool4.not = icmp eq ptr %50, null
  br i1 %tobool4.not, label %if.end15, label %if.then5

if.then5:                                         ; preds = %mlx5_fpga_ipsec_build_hw_sa.exit
  %hw_sa8 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %50, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(148) %hw_sa, ptr noundef dereferenceable(148) %hw_sa8, i32 148) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end13, label %if.then5.exists_crit_edge

if.then5.exists_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %exists

if.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %add.ptr, align 8
  br label %exists

if.end15:                                         ; preds = %mlx5_fpga_ipsec_build_hw_sa.exit
  %53 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp = icmp eq i32 %54, 0
  br i1 %cmp, label %if.then17, label %if.end15.if.end28_crit_edge

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then17:                                        ; preds = %if.end15
  %halloc = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 11
  %call.i = tail call i32 @ida_alloc_range(ptr noundef %halloc, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %55 = inttoptr i32 %call.i to ptr
  br label %exists

if.end22:                                         ; preds = %if.then17
  %sa_handle23 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %sa_handle23 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i, ptr %sa_handle23, align 8
  %tobool24.not = icmp eq ptr %sa_handle, null
  br i1 %tobool24.not, label %if.end22.if.end28_crit_edge, label %if.then25

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %sa_handle to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i, ptr %sa_handle, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end22.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  %sa_hash_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sa_hash_lock, i32 noundef 0) #12
  %sa_hash = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 7
  %obj_hashfn.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 7, i32 3, i32 8
  %58 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %rhashtable_lookup_insert_fast.exit, label %do.body3.i, !prof !181

do.body3.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #12, !srcloc !182
  unreachable

rhashtable_lookup_insert_fast.exit:               ; preds = %if.end28
  %head_offset.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 7, i32 3, i32 3
  %60 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %61 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 7, i32 3, i32 2
  %62 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %63 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %sa_hash, ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0]) #12
  %cmp.i = icmp eq ptr %call10.i, null
  br i1 %cmp.i, label %if.end33, label %rhashtable_lookup_insert_fast.exit.unlock_hash_crit_edge

rhashtable_lookup_insert_fast.exit.unlock_hash_crit_edge: ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_hash

if.end33:                                         ; preds = %rhashtable_lookup_insert_fast.exit
  %64 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ipsec, align 4
  %add.ptr.i146 = getelementptr %struct.mlx5_fpga_ipsec, ptr %65, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %add.ptr.i146 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i146, align 4
  %68 = lshr i32 %67, 12
  %69 = and i32 %68, 2
  %call37 = tail call fastcc i32 @mlx5_fpga_ipsec_update_hw_sa(ptr noundef %1, ptr noundef %hw_sa, i32 noundef %69)
  %70 = ptrtoint ptr %hw_sa to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %hw_sa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end33
  %71 = inttoptr i32 %call37 to ptr
  %call51 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %sa_hash, ptr noundef nonnull %call7.i.i, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then40.unlock_hash_crit_edge, label %do.end, !prof !181

if.then40.unlock_hash_crit_edge:                  ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_hash

if.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %sa_hash_lock) #12
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr, align 8
  %inc45 = add i32 %73, 1
  store i32 %inc45, ptr %add.ptr, align 8
  %74 = ptrtoint ptr %sa_ctx3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %sa_ctx3, align 4
  %fpga_xfrm47 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %fpga_xfrm47 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr, ptr %fpga_xfrm47, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef null) #12
  br label %unlock_hash

unlock_hash:                                      ; preds = %do.end, %if.then40.unlock_hash_crit_edge, %rhashtable_lookup_insert_fast.exit.unlock_hash_crit_edge
  %context.0 = phi ptr [ %71, %do.end ], [ %71, %if.then40.unlock_hash_crit_edge ], [ inttoptr (i32 -17 to ptr), %rhashtable_lookup_insert_fast.exit.unlock_hash_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sa_hash_lock) #12
  %76 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp78 = icmp eq i32 %77, 0
  br i1 %cmp78, label %if.then79, label %unlock_hash.exists_crit_edge

unlock_hash.exists_crit_edge:                     ; preds = %unlock_hash
  call void @__sanitizer_cov_trace_pc() #14
  br label %exists

if.then79:                                        ; preds = %unlock_hash
  call void @__sanitizer_cov_trace_pc() #14
  %halloc80 = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 11
  %sa_handle81 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %sa_handle81 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sa_handle81, align 8
  tail call void @ida_free(ptr noundef %halloc80, i32 noundef %79) #12
  br label %exists

exists:                                           ; preds = %if.then79, %unlock_hash.exists_crit_edge, %if.then20, %if.end13, %if.then5.exists_crit_edge
  %context.1 = phi ptr [ %50, %if.end13 ], [ %55, %if.then20 ], [ %context.0, %if.then79 ], [ %context.0, %unlock_hash.exists_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then5.exists_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exists, %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %context.1, %exists ], [ %call7.i.i, %if.end42 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @validate_fpga_full_mask(ptr nocapture noundef readonly %dev, ptr noundef %match_c, ptr nocapture noundef readonly %match_v) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 7
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %add.ptr4.i.i = getelementptr i32, ptr %match_c, i32 1
  %5 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr4.i.i, align 4
  %and6.i.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and6.i.i)
  %cmp.i.i = icmp eq i32 %and6.i.i, 65535
  br i1 %cmp.i.i, label %if.then.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge, label %if.then.i.i.if.else_crit_edge

if.then.i.i.if.else_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit

if.end.i.i:                                       ; preds = %entry
  %add.ptr12.i.i = getelementptr i32, ptr %match_c, i32 4
  %7 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr12.i.i, align 4
  %9 = and i32 %8, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %9)
  %cmp15.i.i = icmp eq i32 %9, 7680
  br i1 %cmp15.i.i, label %if.end.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge, label %if.end.i.i.if.else_crit_edge

if.end.i.i.if.else_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fs_is_outer_ipv4_flow.exit

mlx5_fs_is_outer_ipv4_flow.exit:                  ; preds = %if.end.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge, %if.then.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge
  %.sink.i = phi i32 [ 1, %if.then.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ], [ 4, %if.end.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ]
  %.sink1.i = phi i32 [ 65535, %if.then.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ], [ 7680, %if.end.i.i.mlx5_fs_is_outer_ipv4_flow.exit_crit_edge ]
  %add.ptr7.i.i = getelementptr i32, ptr %match_v, i32 %.sink.i
  %10 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr7.i.i, align 4
  %and9.i.i = and i32 %11, %.sink1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and9.i.i)
  %cmp10.i.i = icmp eq i32 %and9.i.i, 2048
  br i1 %cmp10.i.i, label %if.then, label %mlx5_fs_is_outer_ipv4_flow.exit.if.else_crit_edge

mlx5_fs_is_outer_ipv4_flow.exit.if.else_crit_edge: ; preds = %mlx5_fs_is_outer_ipv4_flow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %mlx5_fs_is_outer_ipv4_flow.exit
  %add.ptr3 = getelementptr i8, ptr %match_c, i32 44
  %call.i = tail call ptr @memchr_inv(ptr noundef %add.ptr3, i32 noundef 255, i32 noundef 4) #12
  %tobool20.not.i = icmp eq ptr %call.i, null
  br i1 %tobool20.not.i, label %lor.lhs.false, label %if.then.cleanup25_crit_edge

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

lor.lhs.false:                                    ; preds = %if.then
  %add.ptr4 = getelementptr i8, ptr %match_c, i32 60
  %call.i36 = tail call ptr @memchr_inv(ptr noundef %add.ptr4, i32 noundef 255, i32 noundef 4) #12
  %tobool20.not.i37 = icmp eq ptr %call.i36, null
  br i1 %tobool20.not.i37, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.cleanup25_crit_edge

lor.lhs.false.cleanup25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else:                                          ; preds = %mlx5_fs_is_outer_ipv4_flow.exit.if.else_crit_edge, %if.end.i.i.if.else_crit_edge, %if.then.i.i.if.else_crit_edge
  %add.ptr9 = getelementptr i8, ptr %match_c, i32 32
  %call.i38 = tail call ptr @memchr_inv(ptr noundef %add.ptr9, i32 noundef 255, i32 noundef 16) #12
  %tobool20.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool20.not.i39, label %lor.lhs.false12, label %if.else.cleanup25_crit_edge

if.else.cleanup25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

lor.lhs.false12:                                  ; preds = %if.else
  %add.ptr10 = getelementptr i8, ptr %match_c, i32 48
  %call.i40 = tail call ptr @memchr_inv(ptr noundef %add.ptr10, i32 noundef 255, i32 noundef 16) #12
  %tobool20.not.i41 = icmp eq ptr %call.i40, null
  br i1 %tobool20.not.i41, label %lor.lhs.false12.if.end20_crit_edge, label %lor.lhs.false12.cleanup25_crit_edge

lor.lhs.false12.cleanup25_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup25

lor.lhs.false12.if.end20_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %lor.lhs.false12.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge
  %add.ptr21 = getelementptr i8, ptr %match_c, i32 112
  %call.i42 = tail call ptr @memchr_inv(ptr noundef %add.ptr21, i32 noundef 255, i32 noundef 4) #12
  %tobool20.not.i43 = icmp eq ptr %call.i42, null
  br label %cleanup25

cleanup25:                                        ; preds = %if.end20, %lor.lhs.false12.cleanup25_crit_edge, %if.else.cleanup25_crit_edge, %lor.lhs.false.cleanup25_crit_edge, %if.then.cleanup25_crit_edge
  %retval.2 = phi i1 [ false, %if.then.cleanup25_crit_edge ], [ false, %lor.lhs.false.cleanup25_crit_edge ], [ false, %if.else.cleanup25_crit_edge ], [ false, %lor.lhs.false12.cleanup25_crit_edge ], [ %tobool20.not.i43, %if.end20 ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_ipsec_update_hw_sa(ptr nocapture noundef readonly %fdev, ptr nocapture noundef %hw_sa, i32 noundef %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdev, align 4
  %2 = ptrtoint ptr %hw_sa to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %opcode, ptr %hw_sa, align 1
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 8
  %3 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipsec, align 4
  %add.ptr.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %4, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  %. = select i1 %tobool.not.i.not, i32 132, i32 148
  %call1 = tail call fastcc ptr @mlx5_fpga_ipsec_cmd_exec(ptr noundef %1, ptr noundef %hw_sa, i32 noundef %.)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %entry
  %complete.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 0, i32 4
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 6000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i36 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i36, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 270, i32 noundef %20, ptr noundef nonnull @.str.20, i32 noundef 270, i32 noundef %20) #17
  br label %out

if.end.i:                                         ; preds = %if.end5
  %status.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i37 = icmp eq i32 %22, 2
  br i1 %cmp.i37, label %mlx5_fpga_ipsec_cmd_wait.exit, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlx5_fpga_ipsec_cmd_wait.exit:                    ; preds = %if.end.i
  %status_code.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 0, i32 3
  %23 = ptrtoint ptr %status_code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end8, label %mlx5_fpga_ipsec_cmd_wait.exit.out_crit_edge

mlx5_fpga_ipsec_cmd_wait.exit.out_crit_edge:      ; preds = %mlx5_fpga_ipsec_cmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %mlx5_fpga_ipsec_cmd_wait.exit
  %sw_sa_handle = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 1, i32 4, i32 1, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %sw_sa_handle to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %sw_sa_handle, align 1
  %27 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %29)
  %cmp.not = icmp eq i32 %26, %29
  br i1 %cmp.not, label %if.end8.out_crit_edge, label %do.end

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fdev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 318, i32 noundef %39, ptr noundef nonnull @.str.10, i32 noundef 318, i32 noundef %39, i32 noundef %26, i32 noundef %29) #17
  br label %out

out:                                              ; preds = %do.end, %if.end8.out_crit_edge, %mlx5_fpga_ipsec_cmd_wait.exit.out_crit_edge, %if.end.i.out_crit_edge, %do.end.i
  %err.0 = phi i32 [ %24, %mlx5_fpga_ipsec_cmd_wait.exit.out_crit_edge ], [ -5, %do.end ], [ 0, %if.end8.out_crit_edge ], [ -5, %if.end.i.out_crit_edge ], [ -110, %do.end.i ]
  tail call void @kfree(ptr noundef %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3
  %retval.0 = phi i32 [ %8, %if.then3 ], [ %err.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1076, ptr noundef nonnull @.str.2) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !184

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !181

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i21.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i21.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i22.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1032, ptr noundef nonnull @.str.4) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !185
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i22.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1004, ptr noundef nonnull @.str.4) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i22.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !186
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !184

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.21, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1085, ptr noundef nonnull @.str.2) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %retval.0.i15.i = phi i32 [ 0, %if.then160.i.i.while.end.i_crit_edge ], [ 0, %if.then168.i.i ], [ 0, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge ], [ 0, %land.rhs162.i.i.while.end.i_crit_edge ], [ -2, %do.end33.i.while.end.i_crit_edge ]
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %46 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %retval.0.i15.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #12
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @.str.2) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i4 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !184

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #12
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #12
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !181

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #12
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !181

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %29 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #12
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i25, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i24.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i9 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i84 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not85, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %head.087 = phi ptr [ %37, %for.body.lr.ph ], [ %51, %do.end147.for.body_crit_edge ]
  %elasticity.086 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.086, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29 = zext i16 %39 to i32
  %idx.neg.i30 = sub nsw i32 0, %conv.i29
  %add.ptr.i31 = getelementptr i8, ptr %head.087, i32 %idx.neg.i30
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i32 = zext i16 %43 to i32
  %add.ptr.i33 = getelementptr i8, ptr %add.ptr.i31, i32 %conv.i32
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i36 = zext i16 %49 to i32
  %idx.neg.i37 = sub nsw i32 0, %conv.i36
  %add.ptr.i38 = getelementptr i8, ptr %head.087, i32 %idx.neg.i37
  br label %out_unlock

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.5, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 732, ptr noundef nonnull @.str.4) #12
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %50 = ptrtoint ptr %head.087 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.087, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i = and i32 %52, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !181

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %57 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %nelems.i, align 4
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i42 = icmp ugt i32 %58, %60
  br i1 %cmp.i42, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i43 = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp4.i = icmp ult i32 %60, %62
  %spec.select.i = select i1 %tobool.not.i43, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !184

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 377, ptr noundef nonnull @.str.4) #12
  br label %rht_ptr.exit56

rht_ptr.exit56:                                   ; preds = %if.then.i51, %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, %land.lhs.true.i48.rht_ptr.exit56_crit_edge, %if.end171.rht_ptr.exit56_crit_edge
  %63 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond.i9, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i52 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  %cond.i.i55 = select i1 %tobool.not.i.i53, i32 %or.i.i, i32 %and.i.i52
  %66 = inttoptr i32 %cond.i.i55 to ptr
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %obj, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #12
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #12, !srcloc !189
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #12
  %69 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %nelems.i, align 4
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %72, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul.i)
  %cmp.i59 = icmp ugt i32 %70, %mul.i
  br i1 %cmp.i59, label %rht_grow_above_75.exit, label %rht_ptr.exit56.out_crit_edge

rht_ptr.exit56.out_crit_edge:                     ; preds = %rht_ptr.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

rht_grow_above_75.exit:                           ; preds = %rht_ptr.exit56
  %max_size.i60 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %max_size.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_size.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i61 = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp4.i62 = icmp ult i32 %72, %74
  %spec.select.i63 = select i1 %tobool.not.i61, i1 true, i1 %cmp4.i62
  br i1 %spec.select.i63, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #14
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #12
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %76 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !190
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !191

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !192
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !193
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !181

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !194
  %7 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !196
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !197
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !184

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !198
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !200
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !201
  %3 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !202
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !203
  %2 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_fpga_ipsec_cmd_exec(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %cmd, i32 noundef %cmd_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and = and i32 %cmd_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %add = add i32 %cmd_size, 148
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #18
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  %status = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 8
  %dev = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %dev, align 8
  %complete = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlx5_fpga_ipsec_send_complete, ptr %complete, align 4
  %complete11 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %complete11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %complete11, align 16
  %wait.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #12
  %command = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 7
  %8 = call ptr @memcpy(ptr %command, ptr %cmd, i32 %cmd_size)
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call9.i.i, i32 0, i32 1
  %size = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %call9.i.i, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cmd_size, ptr %size, align 8
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %command, ptr %sg, align 4
  %11 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %12, i32 0, i32 2
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pending_cmds_lock) #12
  %13 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipsec, align 4
  %conn = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conn, align 4
  %call25 = tail call i32 @mlx5_fpga_sbu_conn_sendmsg(ptr noundef %16, ptr noundef nonnull %call9.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %do.end36.critedge

if.then27:                                        ; preds = %if.end10
  %list = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipsec, align 4
  %pending_cmds = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %18, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %18, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %20, ptr noundef %pending_cmds) #12
  br i1 %call.i.i, label %if.end.i.i73, label %if.then27.list_add_tail.exit_crit_edge

if.then27.list_add_tail.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i73:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pending_cmds, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call9.i.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 16
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i73, %if.then27.list_add_tail.exit_crit_edge
  %25 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock31.c = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %26, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock31.c, i32 noundef %call20) #12
  br label %cleanup

do.end36.critedge:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock31.c72 = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %28, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock31.c72, i32 noundef %call20) #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 252, i32 noundef %38, ptr noundef nonnull @.str.14, i32 noundef 252, i32 noundef %38, i32 noundef %call25) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %39 = inttoptr i32 %call25 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end36.critedge, %list_add_tail.exit, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %39, %do.end36.critedge ], [ %call9.i.i, %list_add_tail.exit ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_ipsec_send_complete(ptr nocapture noundef readnone %conn, ptr nocapture noundef readonly %fdev, ptr noundef %buf, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !171) #12
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
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 154, i32 noundef %9, ptr noundef nonnull @.str.17, i32 noundef 154, i32 noundef %9, i32 noundef %conv) #17
  %status4 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %buf, i32 0, i32 1
  %10 = ptrtoint ptr %status4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %status4, align 4
  %complete = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %buf, i32 0, i32 4
  tail call void @complete(ptr noundef %complete) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_sbu_conn_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fpga_ipsec_fs_delete_fte(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte, i1 noundef zeroext %is_egress) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cond.i = zext i1 %is_egress to i32
  %call1 = tail call ptr @mlx5_fs_cmd_get_default(i32 noundef %cond.i) #12
  %delete_fte2 = getelementptr inbounds %struct.mlx5_flow_cmds, ptr %call1, i32 0, i32 7
  %0 = ptrtoint ptr %delete_fte2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delete_fte2, align 4
  %dev3 = getelementptr inbounds %struct.mlx5_flow_root_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fpga, align 4
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipsec, align 4
  %8 = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %action = getelementptr inbounds %struct.fs_fte, ptr %fte, i32 0, i32 6
  %11 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action, align 4
  %and = and i32 %12, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call10 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rules_rb_lock.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %7, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %rules_rb_lock.i, i32 noundef 0) #12
  %rules_rb.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %7, i32 0, i32 9
  %13 = ptrtoint ptr %rules_rb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.017.i.i = load ptr, ptr %rules_rb.i, align 4
  %tobool.not18.i.i = icmp eq ptr %node.017.i.i, null
  br i1 %tobool.not18.i.i, label %if.end.rule_search.exit.thread_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.rule_search.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rule_search.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %node.019.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.017.i.i, %if.end.while.body.i.i_crit_edge ]
  %fte1.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %node.019.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %fte1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fte1.i.i, align 4
  %cmp.i.i = icmp ult ptr %15, %fte
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.019.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp3.i.i = icmp ugt ptr %15, %fte
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end14

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.019.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %16 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.rule_search.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.rule_search.exit.thread_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rule_search.exit.thread

rule_search.exit.thread:                          ; preds = %cleanup.i.i.rule_search.exit.thread_crit_edge, %if.end.rule_search.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.else.i.i
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  %ctx = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %node.019.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  tail call void @mlx5_fpga_ipsec_delete_sa_ctx(ptr noundef %18)
  tail call void @mutex_lock_nested(ptr noundef %rules_rb_lock.i, i32 noundef 0) #12
  tail call void @rb_erase(ptr noundef nonnull %node.019.i.i, ptr noundef %rules_rb.i) #12
  tail call void @mutex_unlock(ptr noundef %rules_rb_lock.i) #12
  tail call void @kfree(ptr noundef nonnull %node.019.i.i) #12
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %21 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action, align 4
  %and.i = and i32 %22, 393216
  %add.ptr3.i = getelementptr %struct.fs_fte, ptr %fte, i32 0, i32 2, i32 28
  %23 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr3.i, align 4
  store i32 0, ptr %8, align 4
  %and8.i = and i32 %22, -393217
  store i32 %and8.i, ptr %action, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr10.i = getelementptr i32, ptr %26, i32 26
  %27 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr10.i, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end14.modify_spec_mailbox.exit_crit_edge

if.end14.modify_spec_mailbox.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %modify_spec_mailbox.exit

do.body.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %add.ptr3.i, align 4
  br label %modify_spec_mailbox.exit

modify_spec_mailbox.exit:                         ; preds = %do.body.i, %if.end14.modify_spec_mailbox.exit_crit_edge
  %call15 = tail call i32 %1(ptr noundef %ns, ptr noundef %ft, ptr noundef %fte) #12
  %31 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %24, ptr %add.ptr3.i, align 4
  %32 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %action, align 4
  %or8.i = or i32 %33, %and.i
  store i32 %or8.i, ptr %action, align 4
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %20, ptr %8, align 4
  br label %cleanup

cleanup:                                          ; preds = %modify_spec_mailbox.exit, %rule_search.exit.thread, %if.then
  %retval.0 = phi i32 [ %call15, %modify_spec_mailbox.exit ], [ %call10, %if.then ], [ -2, %rule_search.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_counters_count(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_counters_read(ptr nocapture noundef readonly %mdev, ptr nocapture noundef writeonly %counters, i32 noundef %counters_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipsec, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %mlx5_fpga_ipsec_counters_count.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_fpga_ipsec_counters_count.exit:              ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %add.ptr6 = getelementptr %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr6, align 4
  %add.ptr.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %3, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %9, 65535
  %10 = shl nuw nsw i32 %and.i, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #18
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %mlx5_fpga_ipsec_counters_count.exit.out_crit_edge, label %if.end14

mlx5_fpga_ipsec_counters_count.exit.out_crit_edge: ; preds = %mlx5_fpga_ipsec_counters_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14:                                         ; preds = %mlx5_fpga_ipsec_counters_count.exit
  %conv = zext i32 %5 to i64
  %conv9 = zext i32 %7 to i64
  %shl = shl nuw i64 %conv9, 32
  %add = or i64 %shl, %conv
  %call15 = tail call i32 @mlx5_fpga_mem_read(ptr noundef nonnull %1, i32 noundef %10, i64 noundef %add, ptr noundef nonnull %call9.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i66 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i66 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 403, i32 noundef %20, ptr noundef nonnull @.str.27, i32 noundef 403, i32 noundef %20, i32 noundef %call15) #17
  br label %out

if.end23:                                         ; preds = %if.end14
  %21 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 %counters_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2871.not = icmp eq i32 %21, 0
  br i1 %cmp2871.not, label %if.end23.out_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %mul30 = shl nuw i32 %i.072, 1
  %arrayidx = getelementptr i32, ptr %call9.i.i, i32 %mul30
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 8
  %conv31 = zext i32 %23 to i64
  %add33 = or i32 %mul30, 1
  %arrayidx34 = getelementptr i32, ptr %call9.i.i, i32 %add33
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 4
  %conv35 = zext i32 %25 to i64
  %shl36 = shl nuw i64 %conv35, 32
  %or = or i64 %shl36, %conv31
  %arrayidx37 = getelementptr i64, ptr %counters, i32 %i.072
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or, ptr %arrayidx37, align 8
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end23.out_crit_edge, %do.end, %mlx5_fpga_ipsec_counters_count.exit.out_crit_edge
  %retval.1.i.i70 = phi ptr [ %call9.i.i, %do.end ], [ null, %mlx5_fpga_ipsec_counters_count.exit.out_crit_edge ], [ %call9.i.i, %if.end23.out_crit_edge ], [ %call9.i.i, %for.body.out_crit_edge ]
  %ret.0 = phi i32 [ %call15, %do.end ], [ -12, %mlx5_fpga_ipsec_counters_count.exit.out_crit_edge ], [ 0, %if.end23.out_crit_edge ], [ 0, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i.i70) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_ipsec_init(ptr nocapture noundef readonly %mdev) #2 align 64 {
entry:
  %cmd.i.i = alloca %struct.mlx5_ifc_fpga_ipsec_cmd_cap, align 4
  %init_attr = alloca %struct.mlx5_fpga_conn_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_attr) #12
  %0 = call ptr @memset(ptr %init_attr, i32 0, i32 16)
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %1 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fpga, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr5.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %8 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr5.i, align 4
  %and7.i = and i32 %9, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i)
  %cmp.not.i = icmp eq i32 %and7.i, 713
  br i1 %cmp.not.i, label %mlx5_fpga_is_ipsec_device.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_fpga_is_ipsec_device.exit:                   ; preds = %if.end.i
  %add.ptr13.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr13.i, align 4
  %and15.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i)
  %cmp16.not.i = icmp eq i32 %and15.i, 2
  br i1 %cmp16.not.i, label %if.end, label %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge

mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge: ; preds = %mlx5_fpga_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_fpga_is_ipsec_device.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 584) #16
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %2, i32 0, i32 8
  %13 = ptrtoint ptr %ipsec to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ipsec, align 4
  %caps = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %16, i32 0, i32 3
  %call8 = tail call i32 @mlx5_fpga_get_sbu_caps(ptr noundef nonnull %2, i32 noundef 32, ptr noundef %caps) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 1286, i32 noundef %26, ptr noundef nonnull @.str.29, i32 noundef 1286, i32 noundef %26, i32 noundef %call8) #17
  br label %error

if.end16:                                         ; preds = %if.end4
  %27 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipsec, align 4
  %pending_cmds = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pending_cmds to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %pending_cmds, ptr %pending_cmds, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %28, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pending_cmds, ptr %prev.i, align 4
  %31 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %31, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %pending_cmds_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @mlx5_fpga_ipsec_init.__key, i16 noundef signext 3) #12
  %rx_size = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 1
  %32 = ptrtoint ptr %rx_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %rx_size, align 4
  %33 = ptrtoint ptr %init_attr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %init_attr, align 4
  %recv_cb = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 2
  %34 = ptrtoint ptr %recv_cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mlx5_fpga_ipsec_recv, ptr %recv_cb, align 4
  %cb_arg = getelementptr inbounds %struct.mlx5_fpga_conn_attr, ptr %init_attr, i32 0, i32 3
  %35 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %2, ptr %cb_arg, align 4
  %call23 = call ptr @mlx5_fpga_sbu_conn_create(ptr noundef nonnull %2, ptr noundef nonnull %init_attr) #12
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end38

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %call23 to i32
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i110 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i110 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task33, align 8
  %pid34 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef 1301, i32 noundef %46, ptr noundef nonnull @.str.29, i32 noundef 1301, i32 noundef %46, i32 noundef %36) #17
  br label %error

if.end38:                                         ; preds = %if.end16
  %47 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ipsec, align 4
  %conn40 = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %conn40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call23, ptr %conn40, align 4
  %50 = load ptr, ptr %ipsec, align 4
  %sa_hash = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %50, i32 0, i32 7
  %call42 = call i32 @rhashtable_init(ptr noundef %sa_hash, ptr noundef nonnull @rhash_sa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body46, label %if.end38.err_destroy_conn_crit_edge

if.end38.err_destroy_conn_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_destroy_conn

do.body46:                                        ; preds = %if.end38
  %51 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ipsec, align 4
  %sa_hash_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %52, i32 0, i32 8
  call void @__mutex_init(ptr noundef %sa_hash_lock, ptr noundef nonnull @.str.35, ptr noundef nonnull @mlx5_fpga_ipsec_init.__key.34) #12
  %53 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ipsec, align 4
  %rules_rb = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %rules_rb to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %rules_rb, align 4
  %56 = load ptr, ptr %ipsec, align 4
  %rules_rb_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %56, i32 0, i32 10
  call void @__mutex_init(ptr noundef %rules_rb_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @mlx5_fpga_ipsec_init.__key.36) #12
  %57 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fpga, align 4
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %do.body46.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, label %lor.lhs.false.i.i.i

do.body46.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge: ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit.i

lor.lhs.false.i.i.i:                              ; preds = %do.body46
  %59 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %caps.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %60, i32 14
  %61 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i, align 4
  %63 = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool1.not.i.i.i = icmp eq i32 %63, 0
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %64 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr5.i, align 4
  %and7.i.i.i = and i32 %65, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and7.i.i.i, 713
  br i1 %cmp.not.i.i.i, label %mlx5_fpga_is_ipsec_device.exit.i.i, label %if.end.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge

if.end.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit.i

mlx5_fpga_is_ipsec_device.exit.i.i:               ; preds = %if.end.i.i.i
  %66 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr13.i, align 4
  %and15.i.i.i = and i32 %67, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %and15.i.i.i, 2
  br i1 %cmp16.not.i.i.i, label %if.then.i.i, label %mlx5_fpga_is_ipsec_device.exit.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge

mlx5_fpga_is_ipsec_device.exit.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge: ; preds = %mlx5_fpga_is_ipsec_device.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit.i

if.then.i.i:                                      ; preds = %mlx5_fpga_is_ipsec_device.exit.i.i
  %ipsec.i.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %58, i32 0, i32 8
  %68 = ptrtoint ptr %ipsec.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ipsec.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.then.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, label %if.end3.i.i

if.then.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_device_caps.exit.i

if.end3.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %69, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i, align 4
  %72 = lshr i32 %71, 11
  %phi.bo.lobit.i = and i32 %72, 1
  br label %mlx5_fpga_ipsec_device_caps.exit.i

mlx5_fpga_ipsec_device_caps.exit.i:               ; preds = %if.end3.i.i, %if.then.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, %mlx5_fpga_is_ipsec_device.exit.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, %if.end.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, %lor.lhs.false.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge, %do.body46.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.lobit.i, %if.end3.i.i ], [ 0, %mlx5_fpga_is_ipsec_device.exit.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge ], [ 0, %if.then.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge ], [ 0, %do.body46.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge ], [ 0, %if.end.i.i.i.mlx5_fpga_ipsec_device_caps.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i.i) #12
  %73 = getelementptr inbounds i8, ptr %cmd.i.i, i32 8
  %74 = call ptr @memset(ptr %73, i32 0, i32 24)
  %75 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 5, ptr %cmd.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, ptr %cmd.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i.i, ptr %flags2.i.i, align 4
  %call.i.i = call fastcc ptr @mlx5_fpga_ipsec_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %cmd.i.i, i32 noundef 32) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i4.i, label %if.end.i.i

if.then.i4.i:                                     ; preds = %mlx5_fpga_ipsec_device_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %call.i.i to i32
  br label %mlx5_fpga_ipsec_enable_supported_caps.exit

if.end.i.i:                                       ; preds = %mlx5_fpga_ipsec_device_caps.exit.i
  %complete.i.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 4
  %call1.i.i.i = call i32 @wait_for_completion_timeout(ptr noundef %complete.i.i.i, i32 noundef 6000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i5.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i5.i, label %do.end.i.i.i, label %if.end.i.i6.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 5
  %78 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  %84 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 68
  %88 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pid.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 270, i32 noundef %89, ptr noundef nonnull @.str.20, i32 noundef 270, i32 noundef %89) #17
  br label %out.i.i

if.end.i.i6.i:                                    ; preds = %if.end.i.i
  %status.i.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp.i28.i.i = icmp eq i32 %91, 2
  br i1 %cmp.i28.i.i, label %mlx5_fpga_ipsec_cmd_wait.exit.i.i, label %if.end.i.i6.i.out.i.i_crit_edge

if.end.i.i6.i.out.i.i_crit_edge:                  ; preds = %if.end.i.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

mlx5_fpga_ipsec_cmd_wait.exit.i.i:                ; preds = %if.end.i.i6.i
  %status_code.i.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %status_code.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %status_code.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i7.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i7.i, label %if.end7.i.i, label %mlx5_fpga_ipsec_cmd_wait.exit.i.i.out.i.i_crit_edge

mlx5_fpga_ipsec_cmd_wait.exit.i.i.out.i.i_crit_edge: ; preds = %mlx5_fpga_ipsec_cmd_wait.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

if.end7.i.i:                                      ; preds = %mlx5_fpga_ipsec_cmd_wait.exit.i.i
  %94 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %and.i.i = and i32 %96, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %retval.0.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %retval.0.i.i
  br i1 %cmp.not.i.i, label %if.end7.i.i.out.i.i_crit_edge, label %do.end.i.i

if.end7.i.i.out.i.i_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, ptr %call.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 8
  %103 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 68
  %107 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 440, i32 noundef %108, ptr noundef nonnull @.str.53, i32 noundef 440, i32 noundef %108, i32 noundef %retval.0.i.i, i32 noundef %96) #17
  br label %out.i.i

out.i.i:                                          ; preds = %do.end.i.i, %if.end7.i.i.out.i.i_crit_edge, %mlx5_fpga_ipsec_cmd_wait.exit.i.i.out.i.i_crit_edge, %if.end.i.i6.i.out.i.i_crit_edge, %do.end.i.i.i
  %err.0.i.i = phi i32 [ %93, %mlx5_fpga_ipsec_cmd_wait.exit.i.i.out.i.i_crit_edge ], [ -5, %do.end.i.i ], [ 0, %if.end7.i.i.out.i.i_crit_edge ], [ -5, %if.end.i.i6.i.out.i.i_crit_edge ], [ -110, %do.end.i.i.i ]
  call void @kfree(ptr noundef %call.i.i) #12
  br label %mlx5_fpga_ipsec_enable_supported_caps.exit

mlx5_fpga_ipsec_enable_supported_caps.exit:       ; preds = %out.i.i, %if.then.i4.i
  %retval.0.i8.i = phi i32 [ %77, %if.then.i4.i ], [ %err.0.i.i, %out.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8.i)
  %tobool56.not = icmp eq i32 %retval.0.i8.i, 0
  br i1 %tobool56.not, label %if.end69, label %do.end60

do.end60:                                         ; preds = %mlx5_fpga_ipsec_enable_supported_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %2, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %113 = call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i111 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i111 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task64, align 8
  %pid65 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 68
  %117 = ptrtoint ptr %pid65 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pid65, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, i32 noundef 1317, i32 noundef %118, ptr noundef nonnull @.str.29, i32 noundef 1317, i32 noundef %118, i32 noundef %retval.0.i8.i) #17
  %119 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ipsec, align 4
  %sa_hash72 = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %120, i32 0, i32 7
  call void @rhashtable_destroy(ptr noundef %sa_hash72) #12
  br label %err_destroy_conn

if.end69:                                         ; preds = %mlx5_fpga_ipsec_enable_supported_caps.exit
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ipsec, align 4
  %halloc = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %122, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %halloc, ptr noundef nonnull @.str.54, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %122, i32 0, i32 11, i32 0, i32 1
  %123 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %122, i32 0, i32 11, i32 0, i32 2
  br label %cleanup.sink.split

err_destroy_conn:                                 ; preds = %do.end60, %if.end38.err_destroy_conn_crit_edge
  %err.0 = phi i32 [ %call42, %if.end38.err_destroy_conn_crit_edge ], [ %retval.0.i8.i, %do.end60 ]
  call void @mlx5_fpga_sbu_conn_destroy(ptr noundef %call23) #12
  br label %error

error:                                            ; preds = %err_destroy_conn, %if.then25, %do.end
  %err.1 = phi i32 [ %call8, %do.end ], [ %36, %if.then25 ], [ %err.0, %err_destroy_conn ]
  %124 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ipsec, align 4
  call void @kfree(ptr noundef %125) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error, %if.end69
  %ipsec.sink = phi ptr [ %ipsec, %error ], [ %xa_head.i.i, %if.end69 ]
  %retval.0.ph = phi i32 [ %err.1, %error ], [ 0, %if.end69 ]
  %126 = ptrtoint ptr %ipsec.sink to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %ipsec.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_attr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_ipsec_cleanup(ptr nocapture noundef readonly %mdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr5.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 28
  %7 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr5.i, align 4
  %and7.i = and i32 %8, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %and7.i)
  %cmp.not.i = icmp eq i32 %and7.i, 713
  br i1 %cmp.not.i, label %mlx5_fpga_is_ipsec_device.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_fpga_is_ipsec_device.exit:                   ; preds = %if.end.i
  %add.ptr13.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 29
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr13.i, align 4
  %and15.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and15.i)
  %cmp16.not.i = icmp eq i32 %and15.i, 2
  br i1 %cmp16.not.i, label %if.end, label %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge

mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge: ; preds = %mlx5_fpga_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_fpga_is_ipsec_device.exit
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ipsec, align 4
  %halloc = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %12, i32 0, i32 11
  tail call void @ida_destroy(ptr noundef %halloc) #12
  %13 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipsec, align 4
  %rules_rb = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %14, i32 0, i32 9
  %call.i = tail call ptr @rb_first_postorder(ptr noundef %rules_rb) #12
  %tobool3.not26.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not26.i, label %if.end.destroy_rules_rb.exit_crit_edge, label %if.end.land.rhs.i_crit_edge

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

if.end.destroy_rules_rb.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_rules_rb.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %r.027.i = phi ptr [ %call5.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i, %if.end.land.rhs.i_crit_edge ]
  %call5.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %r.027.i) #12
  tail call void @rb_erase(ptr noundef nonnull %r.027.i, ptr noundef %rules_rb) #12
  %ctx.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_rule, ptr %r.027.i, i32 0, i32 2
  %15 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx.i, align 4
  tail call void @mlx5_fpga_ipsec_delete_sa_ctx(ptr noundef %16) #12
  tail call void @kfree(ptr noundef nonnull %r.027.i) #12
  %tobool3.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.destroy_rules_rb.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

land.rhs.i.destroy_rules_rb.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_rules_rb.exit

destroy_rules_rb.exit:                            ; preds = %land.rhs.i.destroy_rules_rb.exit_crit_edge, %if.end.destroy_rules_rb.exit_crit_edge
  %17 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipsec, align 4
  %sa_hash = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %18, i32 0, i32 7
  tail call void @rhashtable_destroy(ptr noundef %sa_hash) #12
  %19 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipsec, align 4
  %conn = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn, align 4
  tail call void @mlx5_fpga_sbu_conn_destroy(ptr noundef %22) #12
  %23 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipsec, align 4
  tail call void @kfree(ptr noundef %24) #12
  %25 = ptrtoint ptr %ipsec to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ipsec, align 4
  br label %cleanup

cleanup:                                          ; preds = %destroy_rules_rb.exit, %mlx5_fpga_is_ipsec_device.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_fpga_esp_create_xfrm(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %attrs, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !171) #12
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef 1461, i32 noundef %7) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mlx5_fpga_esp_validate_xfrm_attrs(ptr noundef %mdev, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end13, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i30 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i30 to ptr
  %task10 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task10, align 8
  %pid11 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef 1466, i32 noundef %15) #17
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 248) #16
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %do.body19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.60, ptr noundef nonnull @mlx5_fpga_esp_create_xfrm.__key) #12
  %accel_xfrm = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %call7.i.i, i32 0, i32 3
  %attrs22 = getelementptr inbounds %struct.mlx5_fpga_esp_xfrm, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = call ptr @memcpy(ptr %attrs22, ptr %attrs, i32 136)
  br label %cleanup

cleanup:                                          ; preds = %do.body19, %if.end13.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %do.end7 ], [ %accel_xfrm, %do.body19 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_fpga_esp_modify_xfrm(ptr noundef %xfrm, ptr nocapture noundef readonly %attrs) #2 align 64 {
entry:
  %org_hw_sa = alloca %struct.mlx5_ifc_fpga_ipsec_sa, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfrm, align 8
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fpga, align 4
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ipsec, align 4
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %org_hw_sa)
  %attrs2 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %xfrm, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(136) %attrs2, ptr noundef dereferenceable(136) %attrs, i32 136) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @mlx5_fpga_esp_validate_xfrm_attrs(ptr noundef %1, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !171) #12
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, i32 noundef 1505, i32 noundef %13) #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr.i = getelementptr %struct.mlx5_fpga_ipsec, ptr %5, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.not = icmp eq i32 %16, 0
  br i1 %tobool.not.i.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i213 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i213 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task15, align 8
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef 1510, i32 noundef %24) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %lock = getelementptr i8, ptr %xfrm, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %sa_ctx = getelementptr i8, ptr %xfrm, i32 -100
  %25 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sa_ctx, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.end17.if.then145_crit_edge, label %if.end20

if.end17.if.then145_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

if.end20:                                         ; preds = %if.end17
  %hw_sa = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %26, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %org_hw_sa, ptr %hw_sa, i32 148)
  %sa_hash_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sa_hash_lock, i32 noundef 0) #12
  %sa_hash = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sa_ctx, align 4
  %call23 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %sa_hash, ptr noundef %29, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.if.end42_crit_edge, label %do.end36, !prof !181

if.end20.if.end42_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end36:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1527, i32 noundef 9, ptr noundef null) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end20.if.end42_crit_edge
  %30 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sa_ctx, align 4
  %keymat.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10
  %key_enc.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 1
  %aes_key.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 5
  %key_len.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %32 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %key_len.i, align 4
  %div1.i = lshr i32 %33, 3
  %34 = call ptr @memcpy(ptr %key_enc.i, ptr %aes_key.i, i32 %div1.i)
  %35 = load i32, ptr %key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %35)
  %cmp.i = icmp eq i32 %35, 128
  br i1 %cmp.i, label %if.then.i, label %if.end42.if.end.i_crit_edge

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 1, i32 16
  %36 = call ptr @memcpy(ptr %arrayidx.i, ptr %aes_key.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end42.if.end.i_crit_edge
  %salt_iv.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %keymat.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %keymat.i, align 8
  %39 = ptrtoint ptr %salt_iv.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %salt_iv.i, align 1
  %salt.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %salt10.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 2
  %40 = ptrtoint ptr %salt10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %salt10.i, align 4
  %42 = ptrtoint ptr %salt.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %salt.i, align 1
  %flags.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and.i214 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214)
  %tobool.not.i215 = icmp eq i32 %and.i214, 0
  %flags25.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 11
  %45 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flags25.i, align 1
  br i1 %tobool.not.i215, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = or i8 %46, 1
  %48 = ptrtoint ptr %flags25.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flags25.i, align 1
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %51 = trunc i32 %50 to i8
  %52 = lshr i8 %51, 1
  %53 = and i8 %52, 2
  %conv22.i = or i8 %53, %47
  store i8 %conv22.i, ptr %flags25.i, align 1
  %esn.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 1
  %54 = ptrtoint ptr %esn.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %esn.i, align 4
  br label %if.end39.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = and i8 %46, 2
  %57 = ptrtoint ptr %flags25.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %flags25.i, align 1
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %if.then11.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %55, %if.then11.i ]
  %58 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %.sink.i, ptr %58, align 1
  %sa_handle.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 6
  %60 = ptrtoint ptr %sa_handle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sa_handle.i, align 8
  %sw_sa_handle.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 7
  %62 = ptrtoint ptr %sw_sa_handle.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %sw_sa_handle.i, align 1
  %63 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %key_len.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %64, label %if.end39.i.mlx5_fpga_ipsec_build_hw_xfrm.exit_crit_edge [
    i32 128, label %if.end39.i.sw.epilog.sink.split.i_crit_edge
    i32 256, label %sw.bb43.i
  ]

if.end39.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

if.end39.i.mlx5_fpga_ipsec_build_hw_xfrm.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_fpga_ipsec_build_hw_xfrm.exit

sw.bb43.i:                                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb43.i, %if.end39.i.sw.epilog.sink.split.i_crit_edge
  %.sink2.i = phi i8 [ 3, %sw.bb43.i ], [ 1, %if.end39.i.sw.epilog.sink.split.i_crit_edge ]
  %enc_mode45.i = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %31, i32 0, i32 1, i32 0, i32 9
  %66 = ptrtoint ptr %enc_mode45.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink2.i, ptr %enc_mode45.i, align 1
  br label %mlx5_fpga_ipsec_build_hw_xfrm.exit

mlx5_fpga_ipsec_build_hw_xfrm.exit:               ; preds = %sw.epilog.sink.split.i, %if.end39.i.mlx5_fpga_ipsec_build_hw_xfrm.exit_crit_edge
  %67 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags25.i, align 1
  %69 = or i8 %68, 112
  store i8 %69, ptr %flags25.i, align 1
  %70 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %attrs, align 8
  %and51.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  %72 = and i8 %69, -9
  %73 = or i8 %68, 120
  %storemerge.i = select i1 %tobool52.not.i, i8 %72, i8 %73
  %74 = ptrtoint ptr %flags25.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %storemerge.i, ptr %flags25.i, align 1
  %75 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sa_ctx, align 4
  %call.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %sa_hash, ptr noundef null, ptr noundef %76, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0]) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %77 = ptrtoint ptr %call.i to i32
  %cmp.i216 = icmp eq ptr %call.i, null
  %cond.i = select i1 %cmp.i216, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %77, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool57.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool57.not, label %if.end59, label %mlx5_fpga_ipsec_build_hw_xfrm.exit.if.then104_crit_edge

mlx5_fpga_ipsec_build_hw_xfrm.exit.if.then104_crit_edge: ; preds = %mlx5_fpga_ipsec_build_hw_xfrm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104

if.end59:                                         ; preds = %mlx5_fpga_ipsec_build_hw_xfrm.exit
  %78 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sa_ctx, align 4
  %hw_sa61 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %79, i32 0, i32 1
  %call62 = tail call fastcc i32 @mlx5_fpga_ipsec_update_hw_sa(ptr noundef %3, ptr noundef %hw_sa61, i32 noundef 4)
  %80 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sa_ctx, align 4
  %hw_sa64 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %hw_sa64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %hw_sa64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool65.not = icmp eq i32 %call62, 0
  br i1 %tobool65.not, label %change_sw_xfrm_attrs, label %if.then66

if.then66:                                        ; preds = %if.end59
  %83 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sa_ctx, align 4
  %call71 = tail call fastcc i32 @rhashtable_remove_fast(ptr noundef %sa_hash, ptr noundef %84, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then66.if.then104_crit_edge, label %do.end88, !prof !181

if.then66.if.then104_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then104

do.end88:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1544, i32 noundef 9, ptr noundef null) #12
  br label %if.then104

if.then104:                                       ; preds = %do.end88, %if.then66.if.then104_crit_edge, %mlx5_fpga_ipsec_build_hw_xfrm.exit.if.then104_crit_edge
  %err.0.ph = phi i32 [ %call62, %if.then66.if.then104_crit_edge ], [ %call62, %do.end88 ], [ %retval.0.i, %mlx5_fpga_ipsec_build_hw_xfrm.exit.if.then104_crit_edge ]
  %85 = ptrtoint ptr %sa_ctx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sa_ctx, align 4
  %hw_sa106 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, ptr %86, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %hw_sa106, ptr %org_hw_sa, i32 148)
  %88 = load ptr, ptr %sa_ctx, align 4
  %call.i217 = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %sa_hash, ptr noundef null, ptr noundef %88, [7 x i32] [i32 144, i32 524288, i32 0, i32 65792, i32 0, i32 0, i32 0]) #12
  %cmp.i219 = icmp eq ptr %call.i217, null
  br i1 %cmp.i219, label %if.then104.change_sw_xfrm_attrs.thread230_crit_edge, label %do.end128, !prof !181

if.then104.change_sw_xfrm_attrs.thread230_crit_edge: ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %change_sw_xfrm_attrs.thread230

do.end128:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1552, i32 noundef 9, ptr noundef null) #12
  br label %change_sw_xfrm_attrs.thread230

change_sw_xfrm_attrs.thread230:                   ; preds = %do.end128, %if.then104.change_sw_xfrm_attrs.thread230_crit_edge
  tail call void @mutex_unlock(ptr noundef %sa_hash_lock) #12
  br label %if.end147

change_sw_xfrm_attrs:                             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %sa_hash_lock) #12
  br label %if.then145

if.then145:                                       ; preds = %change_sw_xfrm_attrs, %if.end17.if.then145_crit_edge
  %89 = call ptr @memcpy(ptr %attrs2, ptr %attrs, i32 136)
  br label %if.end147

if.end147:                                        ; preds = %if.then145, %change_sw_xfrm_attrs.thread230
  %err.1228 = phi i32 [ 0, %if.then145 ], [ %err.0.ph, %change_sw_xfrm_attrs.thread230 ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %do.end12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end12 ], [ %err.1228, %if.end147 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %org_hw_sa)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_esp_destroy_xfrm(ptr noundef %xfrm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %xfrm, i32 -104
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_mem_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_get_sbu_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_fpga_ipsec_recv(ptr nocapture noundef readonly %cb_arg, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %size = getelementptr inbounds %struct.mlx5_fpga_dma_buf, ptr %buf, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ult i32 %3, 32
  br i1 %cmp, label %do.end, label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_arg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !171) #12
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 186, i32 noundef %13, ptr noundef nonnull @.str.42, i32 noundef 186, i32 noundef %13, i32 noundef %3, i32 noundef 32) #17
  br label %cleanup

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_ipsec_recv, %if.then13)) #12
          to label %do.body27 [label %if.then13], !srcloc !204

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_arg, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i137 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i137 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task17, align 8
  %pid18 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid18, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %1, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug544, ptr noundef %17, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 191, i32 noundef %23, ptr noundef nonnull @.str.42, i32 noundef 191, i32 noundef %23, i32 noundef %25) #12
  br label %do.body27

do.body27:                                        ; preds = %if.then13, %do.body9
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %cb_arg, i32 0, i32 8
  %26 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %27, i32 0, i32 2
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pending_cmds_lock) #12
  %28 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ipsec, align 4
  %pending_cmds = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pending_cmds to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %pending_cmds, align 4
  %cmp42.not = icmp eq ptr %31, %pending_cmds
  %add.ptr = getelementptr i8, ptr %31, i32 -140
  %tobool45.not149 = icmp eq ptr %add.ptr, null
  %tobool45.not = or i1 %cmp42.not, %tobool45.not149
  br i1 %tobool45.not, label %do.end54.critedge, label %if.then46

if.then46:                                        ; preds = %do.body27
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del.exit_crit_edge

if.then46.list_del.exit_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then46.list_del.exit_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %40 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ipsec, align 4
  %pending_cmds_lock49.c = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %41, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock49.c, i32 noundef %call31) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_ipsec_recv, %if.then76)) #12
          to label %do.end87 [label %if.then76], !srcloc !204

do.end54.critedge:                                ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %pending_cmds_lock49.c133 = getelementptr inbounds %struct.mlx5_fpga_ipsec, ptr %29, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pending_cmds_lock49.c133, i32 noundef %call31) #12
  %42 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cb_arg, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %46 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i138 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i138 to ptr
  %task58 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task58, align 8
  %pid59 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid59, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.42, i32 noundef 202, i32 noundef %51, ptr noundef nonnull @.str.42, i32 noundef 202, i32 noundef %51) #17
  br label %cleanup

if.then76:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cb_arg, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i139 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i139 to ptr
  %task80 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task80 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task80, align 8
  %pid81 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 68
  %60 = ptrtoint ptr %pid81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pid81, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug546, ptr noundef %55, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef 205, i32 noundef %61, ptr noundef nonnull @.str.42, i32 noundef 205, i32 noundef %61, ptr noundef nonnull %add.ptr) #12
  br label %do.end87

do.end87:                                         ; preds = %if.then76, %list_del.exit
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %1, align 1
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %63, label %sw.epilog.i [
    i32 0, label %syndrome_to_errno.exit
    i32 2, label %do.end87.do.end96_crit_edge
    i32 1, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

do.end87.do.end96_crit_edge:                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

sw.bb2.i:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

sw.bb3.i:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

sw.epilog.i:                                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end96

syndrome_to_errno.exit:                           ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  %status_code = getelementptr i8, ptr %31, i32 -64
  %65 = ptrtoint ptr %status_code to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %status_code, align 4
  %status = getelementptr i8, ptr %31, i32 -100
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %status, align 4
  %resp90 = getelementptr i8, ptr %31, i32 -96
  %67 = call ptr @memcpy(ptr %resp90, ptr %1, i32 32)
  br label %if.end105

do.end96:                                         ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %do.end87.do.end96_crit_edge
  %retval.0.i140.ph = phi i32 [ -22, %sw.bb2.i ], [ -5, %sw.bb3.i ], [ -5, %sw.epilog.i ], [ -17, %do.end87.do.end96_crit_edge ]
  %status_code145 = getelementptr i8, ptr %31, i32 -64
  %68 = ptrtoint ptr %status_code145 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i140.ph, ptr %status_code145, align 4
  %status146 = getelementptr i8, ptr %31, i32 -100
  %69 = ptrtoint ptr %status146 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %status146, align 4
  %resp90147 = getelementptr i8, ptr %31, i32 -96
  %70 = call ptr @memcpy(ptr %resp90147, ptr %1, i32 32)
  %71 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cb_arg, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i141 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i141 to ptr
  %task100 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task100, align 8
  %pid101 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid101 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid101, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.42, i32 noundef 214, i32 noundef %80, ptr noundef nonnull @.str.42, i32 noundef 214, i32 noundef %80, i32 noundef %63) #17
  br label %if.end105

if.end105:                                        ; preds = %do.end96, %syndrome_to_errno.exit
  %complete = getelementptr i8, ptr %31, i32 -60
  tail call void @complete(ptr noundef %complete) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end54.critedge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fpga_sbu_conn_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_sbu_conn_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_esp_validate_xfrm_attrs(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %attrs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tfc_pad = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 4
  %0 = ptrtoint ptr %tfc_pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tfc_pad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !171) #12
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 1412, i32 noundef %9) #17
  br label %return

if.end:                                           ; preds = %entry
  %replay_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 7
  %10 = ptrtoint ptr %replay_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %replay_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end8, label %do.end3

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i76 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i76 to ptr
  %task6 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task6, align 8
  %pid7 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef 1417, i32 noundef %19) #17
  br label %return

if.end8:                                          ; preds = %if.end
  %keymat_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 9
  %20 = ptrtoint ptr %keymat_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keymat_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp9.not = icmp eq i32 %21, 1
  br i1 %cmp9.not, label %if.end17, label %do.end12

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i77 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i77 to ptr
  %task15 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task15, align 8
  %pid16 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef 1422, i32 noundef %29) #17
  br label %return

if.end17:                                         ; preds = %if.end8
  %iv_algo = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 1
  %30 = ptrtoint ptr %iv_algo to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iv_algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp18.not = icmp eq i32 %31, 0
  br i1 %cmp18.not, label %if.end26, label %do.end21

do.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 8
  %34 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i78 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i78 to ptr
  %task24 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task24, align 8
  %pid25 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.62, i32 noundef 1428, i32 noundef %39) #17
  br label %return

if.end26:                                         ; preds = %if.end17
  %icv_len = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 3
  %40 = ptrtoint ptr %icv_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %icv_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %41)
  %cmp28.not = icmp eq i32 %41, 128
  br i1 %cmp28.not, label %if.end36, label %do.end31

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mdev, align 8
  %44 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i79 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i79 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 68
  %48 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.62, i32 noundef 1433, i32 noundef %49) #17
  br label %return

if.end36:                                         ; preds = %if.end26
  %key_len = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %50 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %key_len, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %51, label %do.end44 [
    i32 128, label %if.end36.if.end49_crit_edge
    i32 256, label %if.end36.if.end49_crit_edge82
  ]

if.end36.if.end49_crit_edge82:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mdev, align 8
  %55 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i80 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i80 to ptr
  %task47 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task47, align 8
  %pid48 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid48, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.62, i32 noundef 1439, i32 noundef %60) #17
  br label %return

if.end49:                                         ; preds = %if.end36.if.end49_crit_edge, %if.end36.if.end49_crit_edge82
  %flags = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end49.return_crit_edge, label %land.lhs.true51

if.end49.return_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true51:                                  ; preds = %if.end49
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %63 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fpga, align 4
  %ipsec = getelementptr inbounds %struct.mlx5_fpga_device, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ipsec, align 4
  %add.ptr = getelementptr %struct.mlx5_fpga_ipsec, ptr %66, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr, align 4
  %69 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool53.not = icmp eq i32 %69, 0
  br i1 %tobool53.not, label %do.end56, label %land.lhs.true51.return_crit_edge

land.lhs.true51.return_crit_edge:                 ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end56:                                         ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdev, align 8
  %72 = tail call i32 @llvm.read_register.i32(metadata !171) #12
  %and.i81 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i81 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task59, align 8
  %pid60 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 68
  %76 = ptrtoint ptr %pid60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pid60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.62, i32 noundef 1446, i32 noundef %77) #17
  br label %return

return:                                           ; preds = %do.end56, %land.lhs.true51.return_crit_edge, %if.end49.return_crit_edge, %do.end44, %do.end31, %do.end21, %do.end12, %do.end3, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end3 ], [ -95, %do.end12 ], [ -95, %do.end21 ], [ -95, %do.end31 ], [ -95, %do.end44 ], [ -95, %do.end56 ], [ 0, %land.lhs.true51.return_crit_edge ], [ 0, %if.end49.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1261, i32 3}
!2 = !{ptr @fpga_ipsec_ingress, !3, !"fpga_ipsec_ingress", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1250, i32 30}
!4 = !{ptr @fpga_ipsec_egress, !5, !"fpga_ipsec_egress", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1251, i32 30}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!24 = !{ptr @rhash_sa, !25, !"rhash_sa", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 86, i32 39}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 316, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlx5_fpga_ipsec_update_hw_sa._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlx5_fpga_ipsec_update_hw_sa._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 252, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mlx5_fpga_ipsec_cmd_exec._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlx5_fpga_ipsec_cmd_exec._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 153, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx5_fpga_ipsec_send_complete._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx5_fpga_ipsec_send_complete._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 270, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlx5_fpga_ipsec_cmd_wait._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx5_fpga_ipsec_cmd_wait._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!66 = !{ptr @fpga_ipsec_ops, !67, !"fpga_ipsec_ops", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1563, i32 42}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 402, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlx5_fpga_ipsec_counters_read._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlx5_fpga_ipsec_counters_read._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1285, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mlx5_fpga_ipsec_init._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlx5_fpga_ipsec_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mlx5_fpga_ipsec_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1291, i32 2}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1300, i32 3}
!83 = !{ptr @mlx5_fpga_ipsec_init._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mlx5_fpga_ipsec_init._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @mlx5_fpga_ipsec_init.__key.34, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1309, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mlx5_fpga_ipsec_init.__key.36, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1312, i32 2}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1316, i32 3}
!93 = !{ptr @mlx5_fpga_ipsec_init._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mlx5_fpga_ipsec_init._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 185, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mlx5_fpga_ipsec_recv._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mlx5_fpga_ipsec_recv._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 190, i32 2}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug544, !101, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 202, i32 3}
!106 = !{ptr @mlx5_fpga_ipsec_recv._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mlx5_fpga_ipsec_recv._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 205, i32 2}
!110 = !{ptr @mlx5_fpga_ipsec_recv.__UNIQUE_ID_ddebug546, !109, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 213, i32 3}
!113 = !{ptr @mlx5_fpga_ipsec_recv._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mlx5_fpga_ipsec_recv._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 438, i32 3}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @mlx5_fpga_ipsec_set_caps._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @mlx5_fpga_ipsec_set_caps._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @xa_init_flags.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!122 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1461, i32 3}
!125 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mlx5_fpga_esp_create_xfrm._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @mlx5_fpga_esp_create_xfrm._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1466, i32 3}
!130 = !{ptr @mlx5_fpga_esp_create_xfrm._entry.57, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mlx5_fpga_esp_create_xfrm._entry_ptr.59, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @mlx5_fpga_esp_create_xfrm.__key, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1474, i32 2}
!134 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1412, i32 3}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1417, i32 3}
!142 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.63, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.65, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1422, i32 3}
!146 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.66, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.68, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1428, i32 3}
!150 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.69, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.71, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1433, i32 3}
!154 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.72, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.74, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1439, i32 3}
!158 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.75, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.77, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry.78, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1446, i32 3}
!162 = !{ptr @mlx5_fpga_esp_validate_xfrm_attrs._entry_ptr.79, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1505, i32 3}
!165 = !{ptr @mlx5_fpga_esp_modify_xfrm._entry, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mlx5_fpga_esp_modify_xfrm._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/ipsec.c", i32 1510, i32 3}
!169 = !{ptr @mlx5_fpga_esp_modify_xfrm._entry.81, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @mlx5_fpga_esp_modify_xfrm._entry_ptr.83, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{!"branch_weights", i32 2000, i32 1}
!182 = !{i64 2149725381, i64 2149725872, i64 2149725418, i64 2149725474, i64 2149725508, i64 2149725532, i64 2149725573, i64 2149725594, i64 2149725622, i64 2149725656}
!183 = !{i64 2149444279}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2149751301}
!186 = !{i64 2148262919, i64 2148262945, i64 2148262974, i64 2148263008, i64 2148263039, i64 2148263062}
!187 = !{i8 0, i8 2}
!188 = !{i64 2149444545}
!189 = !{i64 2148260454, i64 2148260480, i64 2148260509, i64 2148260543, i64 2148260574, i64 2148260597}
!190 = !{i64 2149635104}
!191 = !{!"branch_weights", i32 2146410443, i32 1073205}
!192 = !{i64 2148269312, i64 2148269344, i64 2148269373, i64 2148269407, i64 2148269438, i64 2148269461}
!193 = !{i64 2148358393}
!194 = !{i64 2149635264}
!195 = !{i64 2149635541}
!196 = !{i64 2149635383}
!197 = !{i64 2149635746}
!198 = !{i64 2149636809, i64 2149637301, i64 2149636846, i64 2149636902, i64 2149636936, i64 2149636960, i64 2149637001, i64 2149637022, i64 2149637050, i64 2149637084}
!199 = !{i64 2148357280}
!200 = !{i64 2148267699, i64 2148267731, i64 2148267760, i64 2148267794, i64 2148267825, i64 2148267848}
!201 = !{i64 2149638204}
!202 = !{i64 2149676998}
!203 = !{i64 2149679297}
!204 = !{i64 2149015822, i64 2149015827, i64 2149015840, i64 2149015884, i64 2149015918, i64 2149015939}
