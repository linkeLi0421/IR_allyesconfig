; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5_accel_ipsec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.140, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.163, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.140 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.141] }
%struct.anon.141 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.142 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.142 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.163 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_accel_esp_xfrm = type { ptr, %struct.mlx5_accel_esp_xfrm_attrs }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.167, i32, %union.anon.169, %union.anon.170, %union.anon.171, i8 }
%union.anon.167 = type { %struct.anon.168 }
%struct.anon.168 = type { i32 }
%union.anon.169 = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i64, i32, i32, i32, i32, [8 x i32] }
%union.anon.170 = type { [4 x i32] }
%union.anon.171 = type { [4 x i32] }
%struct.mlx5_ipsec_sa_ctx = type { %struct.rhash_head, i32, i32, ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.121, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.121 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_ipsec_esp_xfrm = type { ptr, %struct.mutex, %struct.mlx5_accel_esp_xfrm }

@ipsec_offload_ops = internal constant { %struct.mlx5_accel_ipsec_ops, [56 x i8] } { %struct.mlx5_accel_ipsec_ops { ptr @mlx5_ipsec_offload_device_caps, ptr null, ptr null, ptr @mlx5_ipsec_offload_create_sa_ctx, ptr @mlx5_ipsec_offload_delete_sa_ctx, ptr @mlx5_ipsec_offload_init, ptr null, ptr @mlx5_ipsec_offload_esp_create_xfrm, ptr @mlx5_ipsec_offload_esp_modify_xfrm, ptr @mlx5_ipsec_offload_esp_destroy_xfrm }, [56 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_device_caps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c\00", [34 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_ipsec_offload_create_sa_ctx\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Failed to create encryption key (err = %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed to create IPsec object (err = %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_ipsec_offload_esp_create_xfrm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mxfrm->lock\00", [19 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 62, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with anti replay (replay_type = %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mlx5_ipsec_offload_esp_validate_xfrm_attrs\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr = internal global ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry, section ".printk_index", align 4
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 68, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s:%d:(pid %d): Only aes gcm keymat is supported (keymat_type = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.12 = internal global ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.10, section ".printk_index", align 4
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str, i32 75, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): Only iv sequence algo is supported (iv_algo = %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.15 = internal global ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.13, section ".printk_index", align 4
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str, i32 82, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with key length other than 128/256 bit (key length = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.18 = internal global ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.16, section ".printk_index", align 4
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str, i32 88, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): Cannot offload xfrm states with ESN triggered\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.21 = internal global ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.19, section ".printk_index", align 4
@mlx5_modify_ipsec_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 307, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Query IPsec object failed (Object id %d), err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_modify_ipsec_obj\00", [42 x i8] zeroinitializer }, align 32
@mlx5_modify_ipsec_obj._entry_ptr = internal global ptr @mlx5_modify_ipsec_obj._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 96, i64 128]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 256]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"ipsec_offload_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 369, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 52, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 235, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 246, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 111, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 61, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 67, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 74, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 81, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 88, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [65 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 306, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.10, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.13, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.16, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.19, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.12, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.15, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.18, ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.21, ptr @mlx5_modify_ipsec_obj._entry, ptr @mlx5_modify_ipsec_obj._entry_ptr, ptr @ipsec_offload_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5_ipsec_offload_esp_create_xfrm.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipsec_offload_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_create_xfrm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_modify_ipsec_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_ipsec_offload_ops(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_ipsec_offload_device_caps(ptr noundef %mdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.ipsec_offload_ops = select i1 %tobool.not, ptr null, ptr @ipsec_offload_ops
  ret ptr %.ipsec_offload_ops
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ipsec_offload_device_caps(ptr nocapture noundef readonly %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 35
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr6.i = getelementptr i32, ptr %1, i32 45
  %5 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr6.i, align 4
  %7 = and i32 %6, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not.i = icmp eq i32 %7, 0
  br i1 %tobool9.not.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %add.ptr17.i = getelementptr i64, ptr %1, i32 16
  %8 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr17.i, align 8
  %and18.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end21.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.i:                                       ; preds = %if.end11.i
  %arrayidx24.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 21
  %10 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx24.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool30.not.i = icmp eq i32 %14, 0
  br i1 %tobool30.not.i, label %if.end21.i.cleanup_crit_edge, label %mlx5_is_ipsec_device.exit

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mlx5_is_ipsec_device.exit:                        ; preds = %if.end21.i
  %arrayidx33.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx33.i, align 4
  %add.ptr36.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr36.i, align 4
  %19 = and i32 %18, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool39.i.not = icmp eq i32 %19, 0
  br i1 %tobool39.i.not, label %mlx5_is_ipsec_device.exit.cleanup_crit_edge, label %if.end

mlx5_is_ipsec_device.exit.cleanup_crit_edge:      ; preds = %mlx5_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mlx5_is_ipsec_device.exit
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %21, i32 64
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr7 = getelementptr i32, ptr %21, i32 16
  %25 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr7, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not = icmp eq i32 %27, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %32 = and i32 %31, 167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772160, i32 %32)
  %.not = icmp eq i32 %32, 167772160
  %caps.0 = select i1 %.not, i32 29, i32 25
  %33 = and i32 %31, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool41.not = icmp eq i32 %33, 0
  %or44 = or i32 %caps.0, 192
  %caps.1 = select i1 %tobool41.not, i32 %caps.0, i32 %or44
  %34 = and i32 %31, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %34)
  %cmp = icmp ugt i32 %34, 1572864
  br i1 %cmp, label %land.rhs, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.end12
  %.b102 = load i1, ptr @mlx5_ipsec_offload_device_caps.__already_done, align 1
  br i1 %.b102, label %land.rhs.cleanup_crit_edge, label %if.then61, !prof !54

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5_ipsec_offload_device_caps.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %land.rhs.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlx5_is_ipsec_device.exit.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_is_ipsec_device.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %caps.1, %if.end12.cleanup_crit_edge ], [ %caps.1, %if.then61 ], [ %caps.1, %land.rhs.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ 0, %if.end21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ipsec_offload_create_sa_ctx(ptr noundef %mdev, ptr noundef %accel_xfrm, ptr nocapture noundef readnone %saddr, ptr nocapture noundef readnone %daddr, i32 noundef %spi, i1 noundef zeroext %is_ipv6, ptr nocapture noundef writeonly %hw_handle) #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keymat = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdev, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %accel_xfrm, i32 -96
  %lock = getelementptr i8, ptr %accel_xfrm, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %mxfrm2 = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %mxfrm2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %mxfrm2, align 8
  %aes_key = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 5
  %key_len = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 4
  %3 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_len, align 4
  %div84 = lshr i32 %4, 3
  %enc_key_id = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 1
  %call3 = tail call i32 @mlx5_create_encryption_key(ptr noundef %mdev, ptr noundef %aes_key, i32 noundef %div84, i32 noundef 2, ptr noundef %enc_key_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ipsec_offload_create_sa_ctx, %if.then12)) #8
          to label %err_sa_ctx [label %if.then12], !srcloc !55

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !44) #8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug650, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 235, i32 noundef %12, i32 noundef %call3) #8
  br label %err_sa_ctx

if.end15:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %esn = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %esn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %esn, align 4
  %17 = ptrtoint ptr %enc_key_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enc_key_id, align 4
  %ipsec_obj_id = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %call7.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #8
  %19 = getelementptr inbounds [4 x i32], ptr %out.i, i32 0, i32 2
  %20 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i) #8
  %21 = call ptr @memset(ptr %in.i, i32 0, i32 272)
  %add.ptr2.i = getelementptr inbounds i8, ptr %in.i, i32 36
  %salt.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 2
  %22 = ptrtoint ptr %salt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %salt.i, align 4
  %24 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %add.ptr2.i, align 4
  %icv_len.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %accel_xfrm, i32 0, i32 1, i32 10, i32 0, i32 3
  %25 = ptrtoint ptr %icv_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %icv_len.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %if.end15.do.body24_crit_edge [
    i32 64, label %do.body.i
    i32 96, label %do.body10.i
    i32 128, label %do.body24.i
  ]

if.end15.do.body24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i = getelementptr inbounds i8, ptr %in.i, i32 24
  %28 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr4.i, align 4
  %and.i88 = and i32 %29, -50331649
  %or.i = or i32 %and.i88, 33554432
  store i32 %or.i, ptr %add.ptr4.i, align 4
  br label %sw.epilog.i

do.body10.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr15.i = getelementptr inbounds i8, ptr %in.i, i32 24
  %30 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr15.i, align 4
  %and16.i = and i32 %31, -50331649
  %or19.i = or i32 %and16.i, 16777216
  store i32 %or19.i, ptr %add.ptr15.i, align 4
  br label %sw.epilog.i

do.body24.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr29.i = getelementptr inbounds i8, ptr %in.i, i32 24
  %32 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr29.i, align 4
  %and30.i = and i32 %33, -50331649
  store i32 %and30.i, ptr %add.ptr29.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body24.i, %do.body10.i, %do.body.i
  %add.ptr37.i = getelementptr inbounds i8, ptr %in.i, i32 40
  %34 = ptrtoint ptr %keymat to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %keymat, align 8
  %36 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %add.ptr37.i, align 4
  %and38.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool.not.i, label %sw.epilog.i.do.body83.i_crit_edge, label %do.body39.i

sw.epilog.i.do.body83.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83.i

do.body39.i:                                      ; preds = %sw.epilog.i
  %add.ptr44.i = getelementptr inbounds i8, ptr %in.i, i32 24
  %37 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr44.i, align 4
  %or48.i = or i32 %38, 536870912
  store i32 %or48.i, ptr %add.ptr44.i, align 4
  %add.ptr57.i = getelementptr inbounds i8, ptr %in.i, i32 28
  %39 = ptrtoint ptr %add.ptr57.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %16, ptr %add.ptr57.i, align 4
  %and66.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %do.body39.i.do.body83.i_crit_edge, label %do.body69.i

do.body39.i.do.body83.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83.i

do.body69.i:                                      ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #10
  %or78.i = or i32 %38, 805306368
  %40 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or78.i, ptr %add.ptr44.i, align 4
  br label %do.body83.i

do.body83.i:                                      ; preds = %do.body69.i, %do.body39.i.do.body83.i_crit_edge, %sw.epilog.i.do.body83.i_crit_edge
  %add.ptr88.i = getelementptr inbounds i8, ptr %in.i, i32 32
  %41 = ptrtoint ptr %add.ptr88.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr88.i, align 4
  %and89.i = and i32 %42, -16777216
  %and90.i = and i32 %18, 16777215
  %or92.i = or i32 %and89.i, %and90.i
  store i32 %or92.i, ptr %add.ptr88.i, align 4
  %43 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %in.i, align 4
  %and103.i = and i32 %44, 65535
  %or106.i = or i32 %and103.i, 167772160
  store i32 %or106.i, ptr %in.i, align 4
  %add.ptr117.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %45 = ptrtoint ptr %add.ptr117.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr117.i, align 4
  %and118.i = and i32 %46, -65536
  %or121.i = or i32 %and118.i, 19
  store i32 %or121.i, ptr %add.ptr117.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 272, ptr noundef nonnull %out.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool128.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool128.not.i, label %if.end44, label %do.body83.i.do.body24_crit_edge

do.body83.i.do.body24_crit_edge:                  ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

do.body24:                                        ; preds = %do.body83.i.do.body24_crit_edge, %if.end15.do.body24_crit_edge
  %retval.0.i89.ph = phi i32 [ %call.i, %do.body83.i.do.body24_crit_edge ], [ -22, %if.end15.do.body24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_ipsec_offload_create_sa_ctx, %if.then36)) #8
          to label %err_enc_key [label %if.then36], !srcloc !55

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev, align 8
  %49 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i90 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i90 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task39, align 8
  %pid40 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid40 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid40, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug651, ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 246, i32 noundef %54, i32 noundef %retval.0.i89.ph) #8
  br label %err_enc_key

if.end44:                                         ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %19, align 4
  %57 = ptrtoint ptr %ipsec_obj_id to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ipsec_obj_id, align 8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  %58 = ptrtoint ptr %hw_handle to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %hw_handle, align 4
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %add.ptr, align 8
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

err_enc_key:                                      ; preds = %if.then36, %do.body24
  %60 = ptrtoint ptr %enc_key_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %enc_key_id, align 4
  call void @mlx5_destroy_encryption_key(ptr noundef %mdev, i32 noundef %61) #8
  br label %err_sa_ctx

err_sa_ctx:                                       ; preds = %err_enc_key, %if.then12, %do.body
  %err.0 = phi i32 [ %call3, %if.then12 ], [ %retval.0.i89.ph, %err_enc_key ], [ %call3, %do.body ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %62 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_sa_ctx, %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %62, %err_sa_ctx ], [ %call7.i.i, %if.end44 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ipsec_offload_delete_sa_ctx(ptr noundef %context) #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mxfrm1 = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %mxfrm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mxfrm1, align 4
  %lock = getelementptr inbounds %struct.mlx5_ipsec_esp_xfrm, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ipsec_obj_id = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %context, i32 0, i32 2
  %4 = ptrtoint ptr %ipsec_obj_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ipsec_obj_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #8
  %6 = getelementptr inbounds i8, ptr %in.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #8
  %8 = call ptr @memset(ptr %out.i, i32 255, i32 16)
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 167968768, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 19, ptr %add.ptr13.i, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %11 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %add.ptr28.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %enc_key_id = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %context, i32 0, i32 1
  %14 = ptrtoint ptr %enc_key_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enc_key_id, align 4
  call void @mlx5_destroy_encryption_key(ptr noundef %13, i32 noundef %15) #8
  call void @kfree(ptr noundef %context) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %1, align 8
  call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5_ipsec_offload_init(ptr nocapture noundef readnone %mdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ipsec_offload_esp_create_xfrm(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %attrs, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlx5_ipsec_offload_esp_validate_xfrm_attrs(ptr noundef %mdev, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 240) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.mlx5_ipsec_esp_xfrm, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5_ipsec_offload_esp_create_xfrm.__key) #8
  %accel_xfrm = getelementptr inbounds %struct.mlx5_ipsec_esp_xfrm, ptr %call7.i.i, i32 0, i32 2
  %attrs7 = getelementptr inbounds %struct.mlx5_ipsec_esp_xfrm, ptr %call7.i.i, i32 0, i32 2, i32 1
  %2 = call ptr @memcpy(ptr %attrs7, ptr %attrs, i32 136)
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %0, %if.then ], [ %accel_xfrm, %do.body ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ipsec_offload_esp_modify_xfrm(ptr noundef %xfrm, ptr nocapture noundef readonly %attrs) #0 align 64 {
entry:
  %in.i = alloca [68 x i32], align 4
  %out.i = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfrm, align 8
  %attrs2 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %xfrm, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(136) %attrs2, ptr noundef dereferenceable(136) %attrs, i32 136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @mlx5_ipsec_offload_esp_validate_xfrm_attrs(ptr noundef %1, ptr noundef %attrs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %xfrm, i32 -96
  %lock = getelementptr i8, ptr %xfrm, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.if.then13_crit_edge, label %if.end9

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.end9:                                          ; preds = %if.end6
  %flags = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %esn = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 1
  %6 = ptrtoint ptr %esn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %esn, align 4
  %ipsec_obj_id = getelementptr inbounds %struct.mlx5_ipsec_sa_ctx, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ipsec_obj_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ipsec_obj_id, align 4
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i) #8
  %10 = call ptr @memset(ptr %in.i, i32 0, i32 272)
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %out.i) #8
  %11 = call ptr @memset(ptr %out.i, i32 255, i32 272)
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %change_sw_xfrm_attrs.thread41, label %if.end.i

change_sw_xfrm_attrs.thread41:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  br label %if.then13

if.end.i:                                         ; preds = %if.end9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i64, ptr %13, i32 16
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i, align 8
  %and1.i = and i64 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.change_sw_xfrm_attrs.thread38_crit_edge, label %do.body.i

if.end.i.change_sw_xfrm_attrs.thread38_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_sw_xfrm_attrs.thread38

do.body.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in.i, align 4
  %and8.i = and i32 %17, 65535
  %or.i = or i32 %and8.i, 167903232
  store i32 %or.i, ptr %in.i, align 4
  %add.ptr20.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %18 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr20.i, align 4
  %and21.i = and i32 %19, -65536
  %or24.i = or i32 %and21.i, 19
  store i32 %or24.i, ptr %add.ptr20.i, align 4
  %add.ptr35.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %20 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %add.ptr35.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 272, ptr noundef nonnull %out.i, i32 noundef 272) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool46.not.i, label %if.end52.i, label %do.end50.i

do.end50.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 307, i32 noundef %28, i32 noundef %9, i32 noundef %call.i) #13
  br label %change_sw_xfrm_attrs.thread38

if.end52.i:                                       ; preds = %do.body.i
  %add.ptr54.i = getelementptr inbounds i8, ptr %out.i, i32 16
  %29 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr54.i, align 8
  %31 = and i64 %30, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %31)
  %.not.i = icmp eq i64 %31, 3
  br i1 %.not.i, label %if.end61.i, label %if.end52.i.change_sw_xfrm_attrs.thread38_crit_edge

if.end52.i.change_sw_xfrm_attrs.thread38_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_sw_xfrm_attrs.thread38

if.end61.i:                                       ; preds = %if.end52.i
  %add.ptr69.i = getelementptr inbounds i8, ptr %in.i, i32 28
  %32 = ptrtoint ptr %add.ptr69.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %7, ptr %add.ptr69.i, align 4
  %and78.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  br i1 %tobool79.not.i, label %if.end61.i.change_sw_xfrm_attrs_crit_edge, label %do.body81.i

if.end61.i.change_sw_xfrm_attrs_crit_edge:        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %change_sw_xfrm_attrs

do.body81.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr86.i = getelementptr inbounds i8, ptr %in.i, i32 24
  %33 = ptrtoint ptr %add.ptr86.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr86.i, align 4
  %or90.i = or i32 %34, 268435456
  store i32 %or90.i, ptr %add.ptr86.i, align 4
  br label %change_sw_xfrm_attrs

change_sw_xfrm_attrs.thread38:                    ; preds = %if.end52.i.change_sw_xfrm_attrs.thread38_crit_edge, %do.end50.i, %if.end.i.change_sw_xfrm_attrs.thread38_crit_edge
  %retval.0.i.ph = phi i32 [ -95, %if.end52.i.change_sw_xfrm_attrs.thread38_crit_edge ], [ -22, %if.end.i.change_sw_xfrm_attrs.thread38_crit_edge ], [ %call.i, %do.end50.i ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  br label %if.end15

change_sw_xfrm_attrs:                             ; preds = %do.body81.i, %if.end61.i.change_sw_xfrm_attrs_crit_edge
  %35 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in.i, align 4
  %and102.i = and i32 %36, 65535
  %or105.i = or i32 %and102.i, 167837696
  store i32 %or105.i, ptr %in.i, align 4
  %call112.i = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 272, ptr noundef nonnull %out.i, i32 noundef 272) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %out.i) #8
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool12.not = icmp eq i32 %call112.i, 0
  br i1 %tobool12.not, label %change_sw_xfrm_attrs.if.then13_crit_edge, label %change_sw_xfrm_attrs.if.end15_crit_edge

change_sw_xfrm_attrs.if.end15_crit_edge:          ; preds = %change_sw_xfrm_attrs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

change_sw_xfrm_attrs.if.then13_crit_edge:         ; preds = %change_sw_xfrm_attrs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %change_sw_xfrm_attrs.if.then13_crit_edge, %change_sw_xfrm_attrs.thread41, %if.end6.if.then13_crit_edge
  %37 = call ptr @memcpy(ptr %attrs2, ptr %attrs, i32 136)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %change_sw_xfrm_attrs.if.end15_crit_edge, %change_sw_xfrm_attrs.thread38
  %err.036 = phi i32 [ 0, %if.then13 ], [ %call112.i, %change_sw_xfrm_attrs.if.end15_crit_edge ], [ %retval.0.i.ph, %change_sw_xfrm_attrs.thread38 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.036, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_ipsec_offload_esp_destroy_xfrm(ptr noundef %xfrm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %xfrm, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_create_encryption_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_encryption_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_ipsec_offload_esp_validate_xfrm_attrs(ptr nocapture noundef readonly %mdev, ptr nocapture noundef readonly %attrs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %replay_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 7
  %0 = ptrtoint ptr %replay_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %replay_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !44) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 62, i32 noundef %9, i32 noundef %1) #13
  br label %return

if.end:                                           ; preds = %entry
  %keymat_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 9
  %10 = ptrtoint ptr %keymat_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %keymat_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2.not = icmp eq i32 %11, 1
  br i1 %cmp2.not, label %if.end11, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i66 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i66 to ptr
  %task8 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task8, align 8
  %pid9 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef 68, i32 noundef %19, i32 noundef %11) #13
  br label %return

if.end11:                                         ; preds = %if.end
  %iv_algo = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 1
  %20 = ptrtoint ptr %iv_algo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iv_algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not = icmp eq i32 %21, 0
  br i1 %cmp12.not, label %if.end22, label %do.end15

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdev, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i67 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i67 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 75, i32 noundef %29, i32 noundef %21) #13
  br label %return

if.end22:                                         ; preds = %if.end11
  %key_len = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 10, i32 0, i32 4
  %30 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key_len, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %31, label %do.end30 [
    i32 128, label %if.end22.if.end37_crit_edge
    i32 256, label %if.end22.if.end37_crit_edge70
  ]

if.end22.if.end37_crit_edge70:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  %35 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i68 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i68 to ptr
  %task33 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task33, align 8
  %pid34 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7, i32 noundef 82, i32 noundef %40, i32 noundef %31) #13
  br label %return

if.end37:                                         ; preds = %if.end22.if.end37_crit_edge, %if.end22.if.end37_crit_edge70
  %flags = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 5
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end37.return_crit_edge, label %land.lhs.true38

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true38:                                  ; preds = %if.end37
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 21
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = and i32 %46, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool40.not = icmp eq i32 %47, 0
  br i1 %tobool40.not, label %do.end43, label %land.lhs.true38.return_crit_edge

land.lhs.true38.return_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end43:                                         ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev, align 8
  %50 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i69 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i69 to ptr
  %task46 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task46, align 8
  %pid47 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid47, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7, i32 noundef 88, i32 noundef %55) #13
  br label %return

return:                                           ; preds = %do.end43, %land.lhs.true38.return_crit_edge, %if.end37.return_crit_edge, %do.end30, %do.end15, %do.end5, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end5 ], [ -95, %do.end15 ], [ -95, %do.end30 ], [ -95, %do.end43 ], [ 0, %land.lhs.true38.return_crit_edge ], [ 0, %if.end37.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 52, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ipsec_offload_ops, !4, !"ipsec_offload_ops", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 369, i32 42}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 235, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug650, !6, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 246, i32 3}
!12 = !{ptr @mlx5_ipsec_offload_create_sa_ctx.__UNIQUE_ID_ddebug651, !11, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!13 = !{ptr @mlx5_ipsec_offload_esp_create_xfrm.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 111, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 61, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 67, i32 3}
!25 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 74, i32 3}
!29 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 81, i32 3}
!33 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 88, i32 3}
!37 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlx5_ipsec_offload_esp_validate_xfrm_attrs._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/accel/ipsec_offload.c", i32 306, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mlx5_modify_ipsec_obj._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlx5_modify_ipsec_obj._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2148712165, i64 2148712170, i64 2148712183, i64 2148712227, i64 2148712261, i64 2148712282}
