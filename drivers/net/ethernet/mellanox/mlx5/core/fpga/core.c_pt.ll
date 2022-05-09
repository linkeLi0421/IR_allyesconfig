; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_fpga_query = type { i32, i32, i32 }
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
%struct.mlx5_fpga_device = type { ptr, %struct.mlx5_nb, %struct.mlx5_nb, %struct.spinlock, i32, i32, i32, %struct.anon.152, ptr, ptr }
%struct.anon.152 = type { i32, i32, ptr }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }

@mlx5_fpga_device_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FPGA: FPGA card %s:%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_fpga_device_start\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_start._entry_ptr = internal global ptr @mlx5_fpga_device_start._entry, section ".printk_index", align 4
@mlx5_fpga_device_start._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"FPGA: %s(%d): image, version %u; SBU %06x:%04x version %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_start._entry_ptr.7 = internal global ptr @mlx5_fpga_device_start._entry.5, section ".printk_index", align 4
@mlx5_fpga_device_start._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 214, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): FPGA reports 0 QPs in SHELL_CAPS\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_start._entry_ptr.11 = internal global ptr @mlx5_fpga_device_start._entry.8, section ".printk_index", align 4
@mlx5_fpga_init.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_fpga_init\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): FPGA capability not present\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_fpga_init.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): Initializing FPGA\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 300, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to re-set SBU bypass on: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_fpga_device_stop\00", [42 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_stop._entry_ptr = internal global ptr @mlx5_fpga_device_stop._entry, section ".printk_index", align 4
@mlx5_fpga_device_load_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 115, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to query status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_fpga_device_load_check\00", [36 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_load_check._entry_ptr = internal global ptr @mlx5_fpga_device_load_check._entry, section ".printk_index", align 4
@mlx5_fpga_device_load_check._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"FPGA: Status %u; Admin image %u; Oper image %u\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_load_check._entry_ptr.22 = internal global ptr @mlx5_fpga_device_load_check._entry.20, section ".printk_index", align 4
@mlx5_fpga_device_load_check._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 132, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): %s image failed to load; status %u\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_load_check._entry_ptr.25 = internal global ptr @mlx5_fpga_device_load_check._entry.23, section ".printk_index", align 4
@mlx5_fpga_name.ret = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Newton\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Edison\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Morse\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MorseQ\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Unknown %d\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"factory\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@mlx5_fpga_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 359, ptr @.str.36, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Error %u: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_fpga_event\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_fpga_event._entry_ptr = internal global ptr @mlx5_fpga_event._entry, section ".printk_index", align 4
@mlx5_fpga_event._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@mlx5_fpga_event._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.2, i32 364, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): FPGA: %s:%d: Unexpected error event %u: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_fpga_event._entry_ptr.40 = internal global ptr @mlx5_fpga_event._entry.38, section ".printk_index", align 4
@mlx5_fpga_error_strings = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Null Syndrome\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Corrupted DDR\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flash Timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Internal Link Error\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Watchdog HW Failure\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2C Failure\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Image Changed\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Temperature Critical\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fpga_qp_error_strings = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.42, ptr @.str.50, ptr @.str.51], [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retry Counter Expired\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RNR Expired\00", [20 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_brb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 146, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to set bypass on: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_fpga_device_brb\00", [43 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_brb._entry_ptr = internal global ptr @mlx5_fpga_device_brb._entry, section ".printk_index", align 4
@mlx5_fpga_device_brb._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 151, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to reset SBU: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_brb._entry_ptr.56 = internal global ptr @mlx5_fpga_device_brb._entry.54, section ".printk_index", align 4
@mlx5_fpga_device_brb._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 156, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): FPGA: %s:%d:(pid %d): Failed to set bypass off: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_fpga_device_brb._entry_ptr.59 = internal global ptr @mlx5_fpga_device_brb._entry.57, section ".printk_index", align 4
@mlx5_fpga_device_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fdev->state_lock\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.mlx5_fpga_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 33]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 198, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 204, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 214, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 259, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 263, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 299, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 115, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 122, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 130, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 86, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 90, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 92, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 94, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 96, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 99, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 76, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 78, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 80, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 359, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 363, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"mlx5_fpga_error_strings\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 43, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 324, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 44, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 45, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 46, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 47, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 48, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 49, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 50, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 51, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [27 x i8] c"mlx5_fpga_qp_error_strings\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 54, i32 27 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 56, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 57, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 146, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 151, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 156, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 67, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [28 x i8] c"switch.table.mlx5_fpga_name\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @mlx5_fpga_device_brb._entry, ptr @mlx5_fpga_device_brb._entry.54, ptr @mlx5_fpga_device_brb._entry.57, ptr @mlx5_fpga_device_brb._entry_ptr, ptr @mlx5_fpga_device_brb._entry_ptr.56, ptr @mlx5_fpga_device_brb._entry_ptr.59, ptr @mlx5_fpga_device_load_check._entry, ptr @mlx5_fpga_device_load_check._entry.20, ptr @mlx5_fpga_device_load_check._entry.23, ptr @mlx5_fpga_device_load_check._entry_ptr, ptr @mlx5_fpga_device_load_check._entry_ptr.22, ptr @mlx5_fpga_device_load_check._entry_ptr.25, ptr @mlx5_fpga_device_start._entry, ptr @mlx5_fpga_device_start._entry.5, ptr @mlx5_fpga_device_start._entry.8, ptr @mlx5_fpga_device_start._entry_ptr, ptr @mlx5_fpga_device_start._entry_ptr.11, ptr @mlx5_fpga_device_start._entry_ptr.7, ptr @mlx5_fpga_device_stop._entry, ptr @mlx5_fpga_device_stop._entry_ptr, ptr @mlx5_fpga_event._entry, ptr @mlx5_fpga_event._entry.38, ptr @mlx5_fpga_event._entry_ptr, ptr @mlx5_fpga_event._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @mlx5_fpga_name.ret, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mlx5_fpga_event._rs, ptr @.str.37, ptr @.str.39, ptr @mlx5_fpga_error_strings, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mlx5_fpga_qp_error_strings, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @mlx5_fpga_device_alloc.__key, ptr @.str.60, ptr @switch.table.mlx5_fpga_name], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_start._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_start._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_load_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_load_check._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_load_check._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_name.ret to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_event._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_event._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_error_strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_qp_error_strings to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_brb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_brb._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_brb._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_fpga_device_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_fpga_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_device_start(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  %query.i = alloca %struct.mlx5_fpga_query, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @mlx5_fpga_caps(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.body109_crit_edge

if.end.do.body109_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %query.i) #8
  %4 = ptrtoint ptr %query.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %query.i, align 4, !annotation !125
  %5 = getelementptr inbounds %struct.mlx5_fpga_query, ptr %query.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !125
  %7 = getelementptr inbounds %struct.mlx5_fpga_query, ptr %query.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !125
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i = call i32 @mlx5_fpga_query(ptr noundef %10, ptr noundef nonnull %query.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = call i32 @llvm.read_register.i32(metadata !115) #8
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 115, i32 noundef %20, ptr noundef nonnull @.str.19, i32 noundef 115, i32 noundef %20, i32 noundef %call.i) #11
  br label %mlx5_fpga_device_load_check.exit

if.end.i:                                         ; preds = %if.end4
  %21 = ptrtoint ptr %query.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %query.i, align 4
  %last_admin_image.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %last_admin_image.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_admin_image.i, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  %last_oper_image.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %last_oper_image.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %last_oper_image.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.21, i32 noundef %32, i32 noundef %22, i32 noundef %25) #11
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %fpga.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %34, i32 0, i32 8, i32 3
  %35 = ptrtoint ptr %fpga.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fpga.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %36)
  %37 = icmp ult i32 %36, 33554432
  br i1 %37, label %if.end17.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end17.i:                                       ; preds = %if.end.i
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %if.end17.i.if.end8_crit_edge, label %do.end22.i

if.end17.i.if.end8_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %34, align 8
  %42 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i45.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i45.i to ptr
  %task26.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task26.i, align 8
  %pid27.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid27.i, align 8
  %48 = ptrtoint ptr %last_oper_image.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_oper_image.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %switch.selectcmp.i.i = icmp eq i32 %49, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @.str.32, ptr @.str.33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %switch.selectcmp2.i.i = icmp eq i32 %49, 0
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, ptr @.str.31, ptr %switch.select.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef 132, i32 noundef %47, ptr noundef nonnull @.str.19, i32 noundef 132, i32 noundef %47, ptr noundef nonnull %switch.select3.i.i, i32 noundef %39) #11
  br label %mlx5_fpga_device_load_check.exit

mlx5_fpga_device_load_check.exit:                 ; preds = %do.end22.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ -5, %do.end22.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %query.i) #8
  br label %do.body109

if.end8:                                          ; preds = %if.end17.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %query.i) #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %fpga10 = getelementptr inbounds %struct.mlx5_core_dev, ptr %51, i32 0, i32 8, i32 3
  %52 = ptrtoint ptr %fpga10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fpga10, align 4
  %shr = lshr i32 %53, 24
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 8
  %call12 = call fastcc ptr @mlx5_fpga_name(i32 noundef %shr)
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull %call12, i32 noundef %shr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %53)
  %56 = icmp ult i32 %53, 33554432
  br i1 %56, label %do.end19, label %if.end8.do.body109_crit_edge

if.end8.do.body109_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

do.end19:                                         ; preds = %if.end8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %61 = ptrtoint ptr %last_oper_image.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %last_oper_image.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %switch.selectcmp.i = icmp eq i32 %62, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.32, ptr @.str.33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %switch.selectcmp2.i = icmp eq i32 %62, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.31, ptr %switch.select.i
  %add.ptr28 = getelementptr %struct.mlx5_core_dev, ptr %58, i32 0, i32 8, i32 3, i32 4
  %63 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr28, align 4
  %add.ptr35 = getelementptr %struct.mlx5_core_dev, ptr %58, i32 0, i32 8, i32 3, i32 28
  %65 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr35, align 4
  %and37 = and i32 %66, 16777215
  %add.ptr42 = getelementptr %struct.mlx5_core_dev, ptr %58, i32 0, i32 8, i32 3, i32 29
  %67 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr42, align 4
  %and44 = and i32 %68, 65535
  %shr50 = lshr i32 %68, 16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.6, ptr noundef nonnull %switch.select3.i, i32 noundef %62, i32 noundef %64, i32 noundef %and37, i32 noundef %and44, i32 noundef %shr50) #11
  %add.ptr55 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 12
  %69 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr55, align 4
  %shr56 = lshr i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %70)
  %tobool58.not = icmp ult i32 %70, 65536
  br i1 %tobool58.not, label %do.end62, label %if.end69

do.end62:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef %80, ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef %80) #11
  br label %do.body109

if.end69:                                         ; preds = %do.end19
  %call70 = call i32 @mlx5_core_reserve_gids(ptr noundef %mdev, i32 noundef %shr56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.body74, label %if.end69.do.body109_crit_edge

if.end69.do.body109_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

do.body74:                                        ; preds = %if.end69
  %fpga_err_nb = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 1
  %81 = ptrtoint ptr %fpga_err_nb to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @fpga_err_event, ptr %fpga_err_nb, align 4
  %event_type = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 32, ptr %event_type, align 4
  %fpga_qp_err_nb = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 2
  %83 = ptrtoint ptr %fpga_qp_err_nb to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @fpga_qp_err_event, ptr %fpga_qp_err_nb, align 4
  %event_type82 = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %event_type82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 33, ptr %event_type82, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call87 = call i32 @mlx5_eq_notifier_register(ptr noundef %86, ptr noundef %fpga_err_nb) #8
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call90 = call i32 @mlx5_eq_notifier_register(ptr noundef %88, ptr noundef %fpga_qp_err_nb) #8
  %call91 = call i32 @mlx5_fpga_conn_device_init(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %do.body74.err_rsvd_gid_crit_edge

do.body74.err_rsvd_gid_crit_edge:                 ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rsvd_gid

if.end94:                                         ; preds = %do.body74
  %89 = ptrtoint ptr %last_oper_image.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %last_oper_image.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp = icmp eq i32 %90, 0
  br i1 %cmp, label %if.then96, label %if.end94.do.body109_crit_edge

if.end94.do.body109_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

if.then96:                                        ; preds = %if.end94
  %call97 = call fastcc i32 @mlx5_fpga_device_brb(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.do.body109_crit_edge, label %err_conn_init

if.then96.do.body109_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

err_conn_init:                                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  call void @mlx5_fpga_conn_device_cleanup(ptr noundef nonnull %1) #8
  br label %err_rsvd_gid

err_rsvd_gid:                                     ; preds = %err_conn_init, %do.body74.err_rsvd_gid_crit_edge
  %err.0 = phi i32 [ %call91, %do.body74.err_rsvd_gid_crit_edge ], [ %call97, %err_conn_init ]
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call104 = call i32 @mlx5_eq_notifier_unregister(ptr noundef %92, ptr noundef %fpga_err_nb) #8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call107 = call i32 @mlx5_eq_notifier_unregister(ptr noundef %94, ptr noundef %fpga_qp_err_nb) #8
  call void @mlx5_core_unreserve_gids(ptr noundef %mdev, i32 noundef %shr56) #8
  br label %do.body109

do.body109:                                       ; preds = %err_rsvd_gid, %if.then96.do.body109_crit_edge, %if.end94.do.body109_crit_edge, %if.end69.do.body109_crit_edge, %do.end62, %if.end8.do.body109_crit_edge, %mlx5_fpga_device_load_check.exit, %if.end.do.body109_crit_edge
  %err.1 = phi i32 [ %call, %if.end.do.body109_crit_edge ], [ %retval.0.i, %mlx5_fpga_device_load_check.exit ], [ 0, %if.end8.do.body109_crit_edge ], [ %call70, %if.end69.do.body109_crit_edge ], [ %err.0, %err_rsvd_gid ], [ 0, %if.then96.do.body109_crit_edge ], [ 0, %if.end94.do.body109_crit_edge ], [ -524, %do.end62 ]
  %state_lock = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 3
  %call112 = call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool117.not = icmp ne i32 %err.1, 0
  %cond = zext i1 %tobool117.not to i32
  %state = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 4
  %95 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cond, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call112) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body109, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %do.body109 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @mlx5_fpga_name(i32 noundef %fpga_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fpga_id)
  %0 = icmp ult i32 %fpga_id, 4
  br i1 %0, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @mlx5_fpga_name.ret, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %fpga_id)
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.mlx5_fpga_name, i32 0, i32 %fpga_id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi ptr [ @mlx5_fpga_name.ret, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_reserve_gids(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fpga_err_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -4
  %call = tail call fastcc i32 @mlx5_fpga_event(ptr noundef %add.ptr3, i32 noundef %event, ptr noundef %eqe)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fpga_qp_err_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -20
  %call = tail call fastcc i32 @mlx5_fpga_event(ptr noundef %add.ptr3, i32 noundef %event, ptr noundef %eqe)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_conn_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_device_brb(ptr nocapture noundef readonly %fdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdev, align 4
  %call = tail call i32 @mlx5_fpga_ctrl_op(ptr noundef %1, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !115) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 146, i32 noundef %11, ptr noundef nonnull @.str.53, i32 noundef 146, i32 noundef %11, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @mlx5_fpga_ctrl_op(ptr noundef %1, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end21, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fdev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i51 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i51 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 151, i32 noundef %21, ptr noundef nonnull @.str.53, i32 noundef 151, i32 noundef %21, i32 noundef %call7) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %call22 = tail call i32 @mlx5_fpga_ctrl_op(ptr noundef %1, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %do.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fdev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i52 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i52 to ptr
  %task31 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task31, align 8
  %pid32 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef 156, i32 noundef %31, ptr noundef nonnull @.str.53, i32 noundef 156, i32 noundef %31, i32 noundef %call22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end21.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call7, %do.end12 ], [ %call22, %do.end27 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fpga_conn_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_unreserve_gids(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_fpga_init(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_init.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_init, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !126

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !115) #8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_init.__UNIQUE_ID_ddebug502, ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 259, i32 noundef %12) #8
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_fpga_init.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_fpga_init, %if.then19)) #8
          to label %do.end26 [label %if.then19], !srcloc !126

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i41 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid23, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_fpga_init.__UNIQUE_ID_ddebug503, ptr noundef %14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef 263, i32 noundef %20) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 112) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end26.cleanup_crit_edge, label %if.end30

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %state_lock.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @mlx5_fpga_device_alloc.__key, i16 noundef signext 3) #8
  %state.i = getelementptr inbounds %struct.mlx5_fpga_device, ptr %call7.i.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 65535, ptr %state.i, align 8
  %23 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mdev, ptr %call7.i.i.i, align 8
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %24 = ptrtoint ptr %fpga to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %fpga, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end26.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end30 ], [ 0, %if.then4 ], [ 0, %do.body ], [ -12, %do.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_device_stop(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fpga2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %fpga2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fpga2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %5)
  %6 = icmp ult i32 %5, 33554432
  br i1 %6, label %do.body6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body6:                                         ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #8
  %state = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11.not = icmp eq i32 %8, 0
  br i1 %cmp11.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call8) #8
  br label %cleanup

if.end15:                                         ; preds = %do.body6
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call8) #8
  %last_oper_image = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %last_oper_image to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_oper_image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then20, label %if.end15.if.end33_crit_edge

if.end15.if.end33_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then20:                                        ; preds = %if.end15
  %call21 = tail call i32 @mlx5_fpga_ctrl_op(ptr noundef %mdev, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end33_crit_edge, label %do.end26

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 300, i32 noundef %21, ptr noundef nonnull @.str.17, i32 noundef 300, i32 noundef %21, i32 noundef %call21) #11
  br label %if.end33

if.end33:                                         ; preds = %do.end26, %if.then20.if.end33_crit_edge, %if.end15.if.end33_crit_edge
  tail call void @mlx5_fpga_conn_device_cleanup(ptr noundef nonnull %1) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %fpga_err_nb = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 1
  %call35 = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %23, ptr noundef %fpga_err_nb) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %fpga_qp_err_nb = getelementptr inbounds %struct.mlx5_fpga_device, ptr %1, i32 0, i32 2
  %call37 = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %25, ptr noundef %fpga_qp_err_nb) #8
  %add.ptr41 = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 3, i32 12
  %26 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr41, align 4
  %shr42 = lshr i32 %27, 16
  tail call void @mlx5_core_unreserve_gids(ptr noundef %mdev, i32 noundef %shr42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_ctrl_op(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_fpga_cleanup(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fpga = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 25
  %0 = ptrtoint ptr %fpga to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fpga, align 4
  tail call void @mlx5_fpga_device_stop(ptr noundef %mdev)
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %fpga to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fpga, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fpga_query(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_fpga_event(ptr noundef %fdev, i32 noundef %event, ptr nocapture noundef readonly %eqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 33, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr %struct.mlx5_eqe, ptr %eqe, i32 0, i32 5, i32 0, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %2 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv)
  %cmp.i = icmp ult i8 %conv, 8
  br i1 %cmp.i, label %if.then.i, label %sw.bb.do.body8_crit_edge

sw.bb.do.body8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = and i32 %2, 255
  %arrayidx.i = getelementptr [8 x ptr], ptr @mlx5_fpga_error_strings, i32 0, i32 %conv.i
  br label %do.body8.sink.split

sw.bb2:                                           ; preds = %entry
  %add.ptr3 = getelementptr %struct.mlx5_eqe, ptr %eqe, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr3, align 4
  %conv6 = trunc i32 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv6)
  %cmp.i58 = icmp ult i8 %conv6, 3
  br i1 %cmp.i58, label %if.then.i61, label %sw.bb2.do.body8_crit_edge

sw.bb2.do.body8_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

if.then.i61:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i59 = and i32 %4, 255
  %arrayidx.i60 = getelementptr [3 x ptr], ptr @mlx5_fpga_qp_error_strings, i32 0, i32 %conv.i59
  br label %do.body8.sink.split

do.body8.sink.split:                              ; preds = %if.then.i61, %if.then.i
  %arrayidx.i60.sink = phi ptr [ %arrayidx.i60, %if.then.i61 ], [ %arrayidx.i, %if.then.i ]
  %syndrome.0.ph = phi i8 [ %conv6, %if.then.i61 ], [ %conv, %if.then.i ]
  %5 = ptrtoint ptr %arrayidx.i60.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i60.sink, align 4
  br label %do.body8

do.body8:                                         ; preds = %do.body8.sink.split, %sw.bb2.do.body8_crit_edge, %sw.bb.do.body8_crit_edge
  %event_name.0 = phi ptr [ @.str.41, %sw.bb.do.body8_crit_edge ], [ @.str.41, %sw.bb2.do.body8_crit_edge ], [ %6, %do.body8.sink.split ]
  %syndrome.0 = phi i8 [ %conv, %sw.bb.do.body8_crit_edge ], [ %conv6, %sw.bb2.do.body8_crit_edge ], [ %syndrome.0.ph, %do.body8.sink.split ]
  %state_lock = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 3
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #8
  %state = getelementptr inbounds %struct.mlx5_fpga_device, ptr %fdev, i32 0, i32 4
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond = icmp eq i32 %8, 0
  br i1 %cond, label %do.end17, label %do.body24

do.end17:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fdev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 8
  %conv22 = zext i8 %syndrome.0 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 359, i32 noundef %18, ptr noundef nonnull @.str.35, i32 noundef 359, i32 noundef %18, i32 noundef %conv22, ptr noundef %event_name.0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call11) #8
  %19 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fdev, align 4
  tail call void @mlx5_trigger_health_work(ptr noundef %20) #8
  br label %cleanup

do.body24:                                        ; preds = %do.body8
  %call25 = tail call i32 @___ratelimit(ptr noundef nonnull @mlx5_fpga_event._rs, ptr noundef nonnull @.str.35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end42.critedge, label %do.end28

do.end28:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %fdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fdev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !115) #8
  %and.i63 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i63 to ptr
  %task32 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task32, align 8
  %pid33 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid33, align 8
  %conv34 = zext i8 %syndrome.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.35, i32 noundef 364, i32 noundef %30, ptr noundef nonnull @.str.35, i32 noundef 364, i32 noundef %conv34, ptr noundef %event_name.0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call11) #8
  br label %cleanup

if.end42.critedge:                                ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42.critedge, %do.end28, %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end28 ], [ 1, %if.end42.critedge ], [ 1, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_trigger_health_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 198, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_fpga_device_start._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_fpga_device_start._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 204, i32 2}
!10 = !{ptr @mlx5_fpga_device_start._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_fpga_device_start._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 214, i32 3}
!14 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_fpga_device_start._entry.8, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_fpga_device_start._entry_ptr.11, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 259, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx5_fpga_init.__UNIQUE_ID_ddebug502, !18, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 263, i32 2}
!24 = !{ptr @mlx5_fpga_init.__UNIQUE_ID_ddebug503, !23, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 299, i32 4}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mlx5_fpga_device_stop._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlx5_fpga_device_stop._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 115, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mlx5_fpga_device_load_check._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mlx5_fpga_device_load_check._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 122, i32 2}
!37 = !{ptr @mlx5_fpga_device_load_check._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mlx5_fpga_device_load_check._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 130, i32 3}
!41 = !{ptr @mlx5_fpga_device_load_check._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5_fpga_device_load_check._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mlx5_fpga_name.ret, !44, !"ret", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 86, i32 14}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 90, i32 10}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 92, i32 10}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 94, i32 10}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 96, i32 10}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 99, i32 29}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 76, i32 10}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 78, i32 10}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 80, i32 10}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 359, i32 3}
!63 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mlx5_fpga_event._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @mlx5_fpga_event._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 363, i32 3}
!69 = !{ptr @mlx5_fpga_event._rs, !68, !"_rs", i1 false, i1 false}
!70 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlx5_fpga_event._entry.38, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlx5_fpga_event._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 324, i32 9}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 44, i32 2}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 45, i32 2}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 46, i32 2}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 47, i32 2}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 48, i32 2}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 49, i32 2}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 50, i32 2}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 51, i32 2}
!91 = !{ptr @mlx5_fpga_error_strings, !92, !"mlx5_fpga_error_strings", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 43, i32 26}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 56, i32 2}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 57, i32 2}
!97 = !{ptr @mlx5_fpga_qp_error_strings, !98, !"mlx5_fpga_qp_error_strings", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 54, i32 27}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 146, i32 3}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mlx5_fpga_device_brb._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mlx5_fpga_device_brb._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 151, i32 3}
!106 = !{ptr @mlx5_fpga_device_brb._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mlx5_fpga_device_brb._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 156, i32 3}
!110 = !{ptr @mlx5_fpga_device_brb._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mlx5_fpga_device_brb._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mlx5_fpga_device_alloc.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/fpga/core.c", i32 67, i32 2}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i64 2148961701, i64 2148961706, i64 2148961719, i64 2148961763, i64 2148961797, i64 2148961818}
