; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_rsc_dump_cmd_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rsc_dump_cmd_create\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rsc_dump_cmd_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rsc_dump_cmd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rsc_dump_cmd_create\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rsc_dump_cmd_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rsc_dump_cmd_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rsc_dump_cmd_destroy\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rsc_dump_cmd_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rsc_dump_cmd_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rsc_dump_cmd_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rsc_dump_cmd_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rsc_dump_next\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rsc_dump_next\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rsc_dump_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rsc_dump_next:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rsc_dump_next\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rsc_dump_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.mlx5_rsc_dump = type { i32, i32, [21 x i16] }
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
%struct.mlx5_rsc_dump_cmd = type { i64, [256 x i8] }
%struct.mlx5_rsc_key = type { i32, i32, i32, i32, i32, i32 }
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

@mlx5_rsc_dump_cmd_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Resource dump: Failed to allocate command\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5_rsc_dump_cmd_create\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_cmd_create._entry_ptr = internal global ptr @mlx5_rsc_dump_cmd_create._entry, section ".printk_index", align 4
@__kstrtab_mlx5_rsc_dump_cmd_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rsc_dump_cmd_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rsc_dump_cmd_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rsc_dump_cmd_create to i32), ptr @__kstrtab_mlx5_rsc_dump_cmd_create, ptr @__kstrtabns_mlx5_rsc_dump_cmd_create }, section "___ksymtab+mlx5_rsc_dump_cmd_create", align 4
@__kstrtab_mlx5_rsc_dump_cmd_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rsc_dump_cmd_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rsc_dump_cmd_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rsc_dump_cmd_destroy to i32), ptr @__kstrtab_mlx5_rsc_dump_cmd_destroy, ptr @__kstrtabns_mlx5_rsc_dump_cmd_destroy }, section "___ksymtab+mlx5_rsc_dump_cmd_destroy", align 4
@mlx5_rsc_dump_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): Resource dump: Failed to trigger dump, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_rsc_dump_next\00", [45 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_next._entry_ptr = internal global ptr @mlx5_rsc_dump_next._entry, section ".printk_index", align 4
@__kstrtab_mlx5_rsc_dump_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rsc_dump_next = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rsc_dump_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rsc_dump_next to i32), ptr @__kstrtab_mlx5_rsc_dump_next, ptr @__kstrtabns_mlx5_rsc_dump_next }, section "___ksymtab+mlx5_rsc_dump_next", align 4
@mlx5_rsc_dump_create.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_rsc_dump_create\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): Resource dump: capability not present\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 263, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s:%d:(pid %d): Resource dump: Failed to allocate PD %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_rsc_dump_init\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_init._entry_ptr = internal global ptr @mlx5_rsc_dump_init._entry, section ".printk_index", align 4
@mlx5_rsc_dump_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Resource dump: Failed to create mkey, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_init._entry_ptr.15 = internal global ptr @mlx5_rsc_dump_init._entry.13, section ".printk_index", align 4
@mlx5_rsc_dump_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Resource dump: Failed to read menu, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_init._entry_ptr.18 = internal global ptr @mlx5_rsc_dump_init._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5_rsc_dump_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Resource dump: Failed to access err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_rsc_dump_trigger\00", [42 x i8] zeroinitializer }, align 32
@mlx5_rsc_dump_trigger._entry_ptr = internal global ptr @mlx5_rsc_dump_trigger._entry, section ".printk_index", align 4
@mlx5_rsc_sgmt_name = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HW_CQPC\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HW_SQPC\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HW_RQPC\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FULL_SRQC\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FULL_CQC\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FULL_EQC\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FULL_QPC\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SND_BUFF\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RCV_BUFF\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SRQ_BUFF\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CQ_BUFF\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EQ_BUFF\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SX_SLICE\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SX_SLICE_ALL\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RDB\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX_SLICE_ALL\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PRM_QUERY_QP\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PRM_QUERY_CQ\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PRM_QUERY_MKEY\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 124, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 155, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 236, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 263, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 268, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 273, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 98, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"mlx5_rsc_sgmt_name\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 9, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 10, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 11, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 12, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 13, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 14, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 15, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 16, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 17, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 18, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 19, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 20, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 21, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 22, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 23, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 24, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 25, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 26, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 27, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 28, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_mlx5_rsc_dump_cmd_create, ptr @__ksymtab_mlx5_rsc_dump_cmd_destroy, ptr @__ksymtab_mlx5_rsc_dump_next, ptr @mlx5_rsc_dump_cmd_create._entry, ptr @mlx5_rsc_dump_cmd_create._entry_ptr, ptr @mlx5_rsc_dump_init._entry, ptr @mlx5_rsc_dump_init._entry.13, ptr @mlx5_rsc_dump_init._entry.16, ptr @mlx5_rsc_dump_init._entry_ptr, ptr @mlx5_rsc_dump_init._entry_ptr.15, ptr @mlx5_rsc_dump_init._entry_ptr.18, ptr @mlx5_rsc_dump_next._entry, ptr @mlx5_rsc_dump_next._entry_ptr, ptr @mlx5_rsc_dump_trigger._entry, ptr @mlx5_rsc_dump_trigger._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @mlx5_rsc_sgmt_name, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_cmd_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_dump_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rsc_sgmt_name to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_rsc_dump_cmd_create(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_dump = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_dump, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %arrayidx = getelementptr %struct.mlx5_rsc_dump, ptr %1, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp ne i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %3)
  %cmp.not = icmp eq i32 %3, 19
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 264) #11
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end, label %do.body14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef %14) #12
  br label %cleanup

do.body14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %cmd18 = getelementptr inbounds %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %cmd18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd18, align 8
  %and = and i32 %16, -65536
  %or = or i32 %and, %conv
  store i32 %or, ptr %cmd18, align 8
  %index1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 1
  %17 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index1, align 4
  %add.ptr32 = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i, i32 0, i32 1, i32 8
  %19 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr32, align 8
  %index2 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 2
  %20 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index2, align 4
  %add.ptr49 = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i, i32 0, i32 1, i32 12
  %22 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr49, align 4
  %num_of_obj1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 3
  %23 = ptrtoint ptr %num_of_obj1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_obj1, align 4
  %add.ptr66 = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i, i32 0, i32 1, i32 16
  %shl69 = shl i32 %24, 16
  %num_of_obj2 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 4
  %25 = ptrtoint ptr %num_of_obj2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_of_obj2, align 4
  %and85 = and i32 %26, 65535
  %or87 = or i32 %and85, %shl69
  %27 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or87, ptr %add.ptr66, align 8
  %size = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 5
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 4
  %add.ptr100 = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i, i32 0, i32 1, i32 36
  %30 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %add.ptr100, align 4
  %conv111 = sext i32 %29 to i64
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv111, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body14 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rsc_dump_cmd_destroy(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cmd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rsc_dump_next(ptr noundef %dev, ptr noundef %cmd, ptr noundef %page, ptr nocapture noundef writeonly %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_dump = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_dump, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %cmd, align 8
  %conv.i = trunc i64 %5 to i32
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i, ptr noundef %page, i32 noundef 0, i32 noundef %conv.i, i32 noundef 2, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.not.i = icmp eq i32 %call2.i, -1
  br i1 %cmp.i.not.i, label %if.end.do.end_crit_edge, label %if.end.i, !prof !95

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %cmd6.i = getelementptr inbounds %struct.mlx5_rsc_dump_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd6.i, align 4
  %mkey.i = getelementptr inbounds %struct.mlx5_rsc_dump, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mkey.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mkey.i, align 4
  %add.ptr10.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %cmd, i32 0, i32 1, i32 32
  %10 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr10.i, align 4
  %conv26.i = zext i32 %call2.i to i64
  %add.ptr29.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %cmd, i32 0, i32 1, i32 40
  %11 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv26.i, ptr %add.ptr29.i, align 8
  %call38.i = tail call i32 @mlx5_core_access_reg(ptr noundef %dev, ptr noundef %cmd6.i, i32 noundef 256, ptr noundef %cmd6.i, i32 noundef 256, i16 noundef zeroext -16384, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end45.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !85) #8
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 98, i32 noundef %19, i32 noundef %call38.i) #12
  br label %mlx5_rsc_dump_trigger.exit.thread25

if.end45.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %7, 16
  %and.i = and i32 %shr.i, 15
  %20 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd6.i, align 4
  %shr49.i = lshr i32 %21, 16
  %and50.i = and i32 %shr49.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %add.i = add nuw nsw i32 %and.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and50.i)
  %cmp.not.i = icmp eq i32 %add.i, %and50.i
  %or.cond.i = select i1 %tobool51.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end4, label %if.end45.i.mlx5_rsc_dump_trigger.exit.thread25_crit_edge

if.end45.i.mlx5_rsc_dump_trigger.exit.thread25_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rsc_dump_trigger.exit.thread25

mlx5_rsc_dump_trigger.exit.thread25:              ; preds = %if.end45.i.mlx5_rsc_dump_trigger.exit.thread25_crit_edge, %do.end43.i
  %err.0.i.ph = phi i32 [ -5, %if.end45.i.mlx5_rsc_dump_trigger.exit.thread25_crit_edge ], [ %call38.i, %do.end43.i ]
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %cmd, align 8
  %conv56.i27 = trunc i64 %23 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %call2.i, i32 noundef %conv56.i27, i32 noundef 2, i32 noundef 0) #8
  br label %do.end

do.end:                                           ; preds = %mlx5_rsc_dump_trigger.exit.thread25, %if.end.do.end_crit_edge
  %retval.0.i24 = phi i32 [ %err.0.i.ph, %mlx5_rsc_dump_trigger.exit.thread25 ], [ -12, %if.end.do.end_crit_edge ]
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #8
  %and.i21 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i21 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 155, i32 noundef %31, i32 noundef %retval.0.i24) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %cmd, align 8
  %conv56.i = trunc i64 %33 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %call2.i, i32 noundef %conv56.i, i32 noundef 2, i32 noundef 0) #8
  %add.ptr = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %cmd, i32 0, i32 1, i32 36
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr, align 4
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %size, align 4
  %37 = ptrtoint ptr %cmd6.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmd6.i, align 4
  %.lobit = lshr i32 %38, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %do.end ], [ %.lobit, %if.end4 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_rsc_dump_create(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_rsc_dump_create.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_rsc_dump_create, %if.then4)) #8
          to label %cleanup [label %if.then4], !srcloc !96

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !85) #8
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_rsc_dump_create.__UNIQUE_ID_ddebug516, ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 236, i32 noundef %12) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 52) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool8.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.body
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %do.body ], [ %spec.select, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rsc_dump_destroy(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_dump = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_dump, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rsc_dump_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_dump1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %rsc_dump1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_dump1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mlx5_core_alloc_pd(ptr noundef %dev, ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !85) #8
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 263, i32 noundef %9, i32 noundef %call3) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %mkey = getelementptr inbounds %struct.mlx5_rsc_dump, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not.i56 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i56, label %if.end6.do.end13_crit_edge, label %mlx5_rsc_dump_create_mkey.exit

if.end6.do.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

mlx5_rsc_dump_create_mkey.exit:                   ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %and13.i = and i32 %13, -3841
  %or29.i = or i32 %and13.i, 3072
  store i32 %or29.i, ptr %add.ptr.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %14 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr38.i, align 4
  %and39.i = and i32 %15, 2130706432
  %and40.i = and i32 %11, 16777215
  %or42.i = or i32 %and40.i, %and39.i
  %or55.i = or i32 %or42.i, -2147483648
  store i32 %or55.i, ptr %add.ptr38.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %call.i.i.i, i32 20
  %16 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr64.i, align 4
  %or68.i = or i32 %17, -256
  store i32 %or68.i, ptr %add.ptr64.i, align 4
  %call72.i = tail call i32 @mlx5_core_create_mkey(ptr noundef %dev, ptr noundef %mkey, ptr noundef nonnull %call.i.i.i, i32 noundef 272) #8
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool9.not = icmp eq i32 %call72.i, 0
  br i1 %tobool9.not, label %if.end18, label %mlx5_rsc_dump_create_mkey.exit.do.end13_crit_edge

mlx5_rsc_dump_create_mkey.exit.do.end13_crit_edge: ; preds = %mlx5_rsc_dump_create_mkey.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end13:                                         ; preds = %mlx5_rsc_dump_create_mkey.exit.do.end13_crit_edge, %if.end6.do.end13_crit_edge
  %retval.0.i66 = phi i32 [ %call72.i, %mlx5_rsc_dump_create_mkey.exit.do.end13_crit_edge ], [ -12, %if.end6.do.end13_crit_edge ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !85) #8
  %and.i57 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i57 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 268, i32 noundef %25, i32 noundef %retval.0.i66) #12
  br label %free_pd

if.end18:                                         ; preds = %mlx5_rsc_dump_create_mkey.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool.not.i58 = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i58, label %mlx5_rsc_dump_menu.exit.thread, label %if.end.i59

mlx5_rsc_dump_menu.exit.thread:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  br label %do.end24

if.end.i59:                                       ; preds = %if.end18
  %26 = ptrtoint ptr %rsc_dump1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rsc_dump1, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  %cmp.i.i.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end.i59.if.then4.i_crit_edge, label %if.end7.i.i

if.end.i59.if.then4.i_crit_edge:                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.end7.i.i:                                      ; preds = %if.end.i59
  %arrayidx.i.i = getelementptr %struct.mlx5_rsc_dump, ptr %27, i32 0, i32 2, i32 19
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 264) #11
  %tobool9.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool9.not.i.i, label %do.end.i.i, label %mlx5_rsc_dump_cmd_create.exit.i

do.end.i.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !85) #8
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef %38) #12
  br label %if.then4.i

mlx5_rsc_dump_cmd_create.exit.i:                  ; preds = %if.end7.i.i
  %conv.i.i = zext i16 %29 to i32
  %cmd18.i.i = getelementptr inbounds %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %cmd18.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd18.i.i, align 8
  %and.i.i = and i32 %40, -65536
  %or.i.i = or i32 %and.i.i, %conv.i.i
  store i32 %or.i.i, ptr %cmd18.i.i, align 8
  %add.ptr32.i.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i.i.i, i32 0, i32 1, i32 8
  %41 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %add.ptr32.i.i, align 8
  %add.ptr49.i.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i.i.i, i32 0, i32 1, i32 12
  %42 = ptrtoint ptr %add.ptr49.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %add.ptr49.i.i, align 4
  %add.ptr66.i.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i.i.i, i32 0, i32 1, i32 16
  %43 = ptrtoint ptr %add.ptr66.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %add.ptr66.i.i, align 8
  %add.ptr100.i.i = getelementptr %struct.mlx5_rsc_dump_cmd, ptr %call7.i.i.i.i, i32 0, i32 1, i32 36
  %44 = ptrtoint ptr %add.ptr100.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4096, ptr %add.ptr100.i.i, align 4
  %45 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 4096, ptr %call7.i.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_rsc_dump_cmd_create.exit.i.if.then4.i_crit_edge, label %do.body.i

mlx5_rsc_dump_cmd_create.exit.i.if.then4.i_crit_edge: ; preds = %mlx5_rsc_dump_cmd_create.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.then4.i:                                       ; preds = %mlx5_rsc_dump_cmd_create.exit.i.if.then4.i_crit_edge, %do.end.i.i, %if.end.i59.if.then4.i_crit_edge
  %retval.0.i45.i = phi ptr [ %call7.i.i.i.i, %mlx5_rsc_dump_cmd_create.exit.i.if.then4.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.i59.if.then4.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.i.i ]
  %46 = ptrtoint ptr %retval.0.i45.i to i32
  br label %mlx5_rsc_dump_menu.exit

do.body.i:                                        ; preds = %mlx5_rsc_dump_cmd_create.exit.i
  %or.i = or i32 %40, 65535
  %47 = ptrtoint ptr %cmd18.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or.i, ptr %cmd18.i.i, align 8
  br label %do.body15.i

do.body15.i:                                      ; preds = %mlx5_rsc_dump_read_menu_sgmt.exit.i.do.body15.i_crit_edge, %do.body.i
  %call16.i = call i32 @mlx5_rsc_dump_next(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %call38.i.i.i.i, ptr noundef nonnull %size.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i60 = icmp slt i32 %call16.i, 0
  br i1 %cmp.i60, label %do.body15.i.destroy_cmd.i_crit_edge, label %if.end18.i

do.body15.i.destroy_cmd.i_crit_edge:              ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_cmd.i

if.end18.i:                                       ; preds = %do.body15.i
  %48 = ptrtoint ptr %rsc_dump1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rsc_dump1, align 8
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 36
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i, i32 40
  %50 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr1.i.i, align 4
  %and.i38.i = and i32 %51, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38.i)
  %cmp18.not.i.i = icmp eq i32 %and.i38.i, 0
  br i1 %cmp18.not.i.i, label %if.end18.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge, label %if.end18.i.for.body.i.i_crit_edge

if.end18.i.for.body.i.i_crit_edge:                ; preds = %if.end18.i
  br label %for.body.i.i

if.end18.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rsc_dump_read_menu_sgmt.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end18.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end18.i.for.body.i.i_crit_edge ]
  %52 = mul nuw nsw i32 %i.019.i.i, 416
  %53 = add nuw nsw i32 %52, 64
  %div14.i.i = lshr exact i32 %53, 3
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %div14.i.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %i.04.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [19 x ptr], ptr @mlx5_rsc_sgmt_name, i32 0, i32 %i.04.i.i.i
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i61 = tail call i32 @strcmp(ptr noundef %add.ptr3.i.i, ptr noundef %55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61)
  %tobool.not.i.i39.i = icmp eq i32 %call.i.i.i61, 0
  br i1 %tobool.not.i.i39.i, label %if.end.i42.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 19
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.inc.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i42.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr2.i.i, align 4
  %conv.i40.i = trunc i32 %57 to i16
  %arrayidx.i41.i = getelementptr %struct.mlx5_rsc_dump, ptr %49, i32 0, i32 2, i32 %i.04.i.i.i
  %58 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i40.i, ptr %arrayidx.i41.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i42.i, %for.inc.i.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %and.i38.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rsc_dump_read_menu_sgmt.exit.i

mlx5_rsc_dump_read_menu_sgmt.exit.i:              ; preds = %for.inc.i.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge, %if.end18.i.mlx5_rsc_dump_read_menu_sgmt.exit.i_crit_edge
  %cmp20.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp20.not.i, label %mlx5_rsc_dump_read_menu_sgmt.exit.i.destroy_cmd.i_crit_edge, label %mlx5_rsc_dump_read_menu_sgmt.exit.i.do.body15.i_crit_edge

mlx5_rsc_dump_read_menu_sgmt.exit.i.do.body15.i_crit_edge: ; preds = %mlx5_rsc_dump_read_menu_sgmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i

mlx5_rsc_dump_read_menu_sgmt.exit.i.destroy_cmd.i_crit_edge: ; preds = %mlx5_rsc_dump_read_menu_sgmt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %destroy_cmd.i

destroy_cmd.i:                                    ; preds = %mlx5_rsc_dump_read_menu_sgmt.exit.i.destroy_cmd.i_crit_edge, %do.body15.i.destroy_cmd.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %mlx5_rsc_dump_menu.exit

mlx5_rsc_dump_menu.exit:                          ; preds = %destroy_cmd.i, %if.then4.i
  %err.0.i = phi i32 [ %46, %if.then4.i ], [ %call16.i, %destroy_cmd.i ]
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool20.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool20.not, label %mlx5_rsc_dump_menu.exit.cleanup_crit_edge, label %mlx5_rsc_dump_menu.exit.do.end24_crit_edge

mlx5_rsc_dump_menu.exit.do.end24_crit_edge:       ; preds = %mlx5_rsc_dump_menu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

mlx5_rsc_dump_menu.exit.cleanup_crit_edge:        ; preds = %mlx5_rsc_dump_menu.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %mlx5_rsc_dump_menu.exit.do.end24_crit_edge, %mlx5_rsc_dump_menu.exit.thread
  %retval.0.i6269 = phi i32 [ -12, %mlx5_rsc_dump_menu.exit.thread ], [ %err.0.i, %mlx5_rsc_dump_menu.exit.do.end24_crit_edge ]
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = tail call i32 @llvm.read_register.i32(metadata !85) #8
  %and.i63 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i63 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task27, align 8
  %pid28 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 68
  %65 = ptrtoint ptr %pid28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, i32 noundef 273, i32 noundef %66, i32 noundef %retval.0.i6269) #12
  %67 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mkey, align 4
  %call31 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %dev, i32 noundef %68) #8
  br label %free_pd

free_pd:                                          ; preds = %do.end24, %do.end13
  %err.0 = phi i32 [ %retval.0.i66, %do.end13 ], [ %retval.0.i6269, %do.end24 ]
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %call33 = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %dev, i32 noundef %70) #8
  br label %cleanup

cleanup:                                          ; preds = %free_pd, %mlx5_rsc_dump_menu.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %err.0, %free_pd ], [ 0, %entry.cleanup_crit_edge ], [ 0, %mlx5_rsc_dump_menu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_alloc_pd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_dealloc_pd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rsc_dump_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rsc_dump = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsc_dump, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mkey = getelementptr inbounds %struct.mlx5_rsc_dump, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mkey, align 4
  %call2 = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %dev, i32 noundef %3) #8
  %4 = ptrtoint ptr %rsc_dump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsc_dump, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call4 = tail call i32 @mlx5_core_dealloc_pd(ptr noundef %dev, i32 noundef %7) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 124, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_rsc_dump_cmd_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_rsc_dump_cmd_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mlx5_rsc_dump_cmd_create, !9, !"__ksymtab_mlx5_rsc_dump_cmd_create", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 136, i32 1}
!10 = !{ptr @__ksymtab_mlx5_rsc_dump_cmd_destroy, !11, !"__ksymtab_mlx5_rsc_dump_cmd_destroy", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 142, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 155, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_rsc_dump_next._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_rsc_dump_next._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_mlx5_rsc_dump_next, !18, !"__ksymtab_mlx5_rsc_dump_next", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 163, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 236, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_rsc_dump_create.__UNIQUE_ID_ddebug516, !20, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 263, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mlx5_rsc_dump_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlx5_rsc_dump_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 268, i32 3}
!32 = !{ptr @mlx5_rsc_dump_init._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlx5_rsc_dump_init._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 273, i32 3}
!36 = !{ptr @mlx5_rsc_dump_init._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mlx5_rsc_dump_init._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 98, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx5_rsc_dump_trigger._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5_rsc_dump_trigger._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 10, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 11, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 12, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 13, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 14, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 15, i32 2}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 16, i32 2}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 17, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 18, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 19, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 20, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 21, i32 2}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 22, i32 2}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 23, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 24, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 25, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 26, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 27, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 28, i32 2}
!83 = !{ptr @mlx5_rsc_sgmt_name, !84, !"mlx5_rsc_sgmt_name", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.c", i32 9, i32 26}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2148732564, i64 2148732569, i64 2148732582, i64 2148732626, i64 2148732660, i64 2148732681}
