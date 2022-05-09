; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/cmd.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_cmd_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_cmd_exec\09\09\09\09"
module asm "\09.long\09__crc_mlx5_cmd_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_cmd_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_cmd_exec\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_cmd_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_cmd_init_async_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_cmd_init_async_ctx\09\09\09\09"
module asm "\09.long\09__crc_mlx5_cmd_init_async_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_cmd_init_async_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_cmd_init_async_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_cmd_init_async_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_cmd_cleanup_async_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_cmd_cleanup_async_ctx\09\09\09\09"
module asm "\09.long\09__crc_mlx5_cmd_cleanup_async_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_cmd_cleanup_async_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_cmd_cleanup_async_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_cmd_cleanup_async_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_cmd_exec_cb\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_cmd_exec_cb\09\09\09\09"
module asm "\09.long\09__crc_mlx5_cmd_exec_cb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_cmd_exec_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_cmd_exec_cb\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_cmd_exec_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_cmd_exec_polling\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_cmd_exec_polling\09\09\09\09"
module asm "\09.long\09__crc_mlx5_cmd_exec_polling\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_cmd_exec_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_cmd_exec_polling\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_cmd_exec_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.mlx5_cmd_work_ent = type { i32, ptr, ptr, ptr, i32, ptr, %struct.delayed_work, ptr, i32, %struct.completion, %struct.completion, ptr, %struct.work_struct, ptr, i32, i32, i8, i8, i64, i64, i16, i8, %struct.refcount_struct }
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
%struct.mlx5_cmd_msg = type { %struct.list_head, ptr, i32, %struct.mlx5_cmd_first, ptr }
%struct.mlx5_cmd_first = type { [4 x i32] }
%struct.mlx5_cmd_layout = type { i8, [3 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i8, i8, i8, i8 }
%struct.mlx5_cmd_mailbox = type { ptr, i32, ptr }
%struct.mlx5_cmd_stats = type { i64, i64, ptr, %struct.spinlock }
%struct.mlx5_cmd_prot_block = type { [512 x i8], [48 x i8], i64, i32, i8, i8, i8, i8 }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mlx5_async_work = type { ptr, ptr }
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUERY_HCA_CAP\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUERY_ADAPTER\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INIT_HCA\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TEARDOWN_HCA\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ENABLE_HCA\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DISABLE_HCA\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QUERY_PAGES\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MANAGE_PAGES\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_HCA_CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QUERY_ISSI\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SET_ISSI\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_DRIVER_VERSION\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CREATE_MKEY\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QUERY_MKEY\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DESTROY_MKEY\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"QUERY_SPECIAL_CONTEXTS\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PAGE_FAULT_RESUME\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CREATE_EQ\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DESTROY_EQ\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUERY_EQ\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"GEN_EQE\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CREATE_CQ\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DESTROY_CQ\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUERY_CQ\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODIFY_CQ\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CREATE_QP\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DESTROY_QP\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RST2INIT_QP\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INIT2RTR_QP\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTR2RTS_QP\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RTS2RTS_QP\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SQERR2RTS_QP\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2ERR_QP\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2RST_QP\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUERY_QP\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SQD_RTS_QP\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INIT2INIT_QP\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_PSV\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_PSV\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_SRQ\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_SRQ\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_SRQ\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARM_RQ\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CREATE_XRC_SRQ\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DESTROY_XRC_SRQ\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUERY_XRC_SRQ\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ARM_XRC_SRQ\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_DCT\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_DCT\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DRAIN_DCT\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_DCT\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ARM_DCT_FOR_KEY_VIOLATION\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QUERY_VPORT_STATE\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MODIFY_VPORT_STATE\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"QUERY_ESW_VPORT_CONTEXT\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MODIFY_ESW_VPORT_CONTEXT\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"QUERY_NIC_VPORT_CONTEXT\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MODIFY_NIC_VPORT_CONTEXT\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QUERY_ROCE_ADDRESS\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_ROCE_ADDRESS\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"QUERY_HCA_VPORT_CONTEXT\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MODIFY_HCA_VPORT_CONTEXT\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"QUERY_HCA_VPORT_GID\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QUERY_HCA_VPORT_PKEY\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"QUERY_VNIC_ENV\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"QUERY_VPORT_COUNTER\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ALLOC_Q_COUNTER\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DEALLOC_Q_COUNTER\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QUERY_Q_COUNTER\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_MONITOR_COUNTER\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ARM_MONITOR_COUNTER\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_PP_RATE_LIMIT\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QUERY_RATE_LIMIT\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CREATE_SCHEDULING_ELEMENT\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DESTROY_SCHEDULING_ELEMENT\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"QUERY_SCHEDULING_ELEMENT\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MODIFY_SCHEDULING_ELEMENT\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CREATE_QOS_PARA_VPORT\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DESTROY_QOS_PARA_VPORT\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALLOC_PD\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEALLOC_PD\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALLOC_UAR\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DEALLOC_UAR\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CONFIG_INT_MODERATION\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ACCESS_REG\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATTACH_TO_MCG\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DETACH_FROM_MCG\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GET_DROPPED_PACKET_LOG\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAD_IFC\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"QUERY_MAD_DEMUX\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_MAD_DEMUX\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOP\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALLOC_XRCD\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DEALLOC_XRCD\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALLOC_TRANSPORT_DOMAIN\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DEALLOC_TRANSPORT_DOMAIN\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QUERY_CONG_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MODIFY_CONG_STATUS\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"QUERY_CONG_PARAMS\00", [46 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MODIFY_CONG_PARAMS\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QUERY_CONG_STATISTICS\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADD_VXLAN_UDP_DPORT\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DELETE_VXLAN_UDP_DPORT\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_L2_TABLE_ENTRY\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QUERY_L2_TABLE_ENTRY\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DELETE_L2_TABLE_ENTRY\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_WOL_ROL\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QUERY_WOL_ROL\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_LAG\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_LAG\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_LAG\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_LAG\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CREATE_VPORT_LAG\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DESTROY_VPORT_LAG\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_TIR\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_TIR\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_TIR\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_TIR\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CREATE_SQ\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODIFY_SQ\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DESTROY_SQ\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUERY_SQ\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CREATE_RQ\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODIFY_RQ\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DESTROY_RQ\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"QUERY_RQ\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_RMP\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_RMP\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_RMP\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_RMP\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_TIS\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_TIS\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_TIS\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_TIS\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_RQT\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_RQT\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_RQT\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_RQT\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_FLOW_TABLE_ROOT\00", [44 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CREATE_FLOW_TABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DESTROY_FLOW_TABLE\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QUERY_FLOW_TABLE\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CREATE_FLOW_GROUP\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DESTROY_FLOW_GROUP\00", [45 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QUERY_FLOW_GROUP\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_FLOW_TABLE_ENTRY\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"QUERY_FLOW_TABLE_ENTRY\00", [41 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DELETE_FLOW_TABLE_ENTRY\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALLOC_FLOW_COUNTER\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DEALLOC_FLOW_COUNTER\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QUERY_FLOW_COUNTER\00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MODIFY_FLOW_TABLE\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ALLOC_PACKET_REFORMAT_CONTEXT\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DEALLOC_PACKET_REFORMAT_CONTEXT\00", [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ALLOC_MODIFY_HEADER_CONTEXT\00", [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DEALLOC_MODIFY_HEADER_CONTEXT\00", [34 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FPGA_CREATE_QP\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FPGA_MODIFY_QP\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FPGA_QUERY_QP\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FPGA_QUERY_QP_COUNTERS\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FPGA_DESTROY_QP\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CREATE_XRQ\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DESTROY_XRQ\00", [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"QUERY_XRQ\00", [22 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ARM_XRQ\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CREATE_GENERAL_OBJECT\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DESTROY_GENERAL_OBJECT\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MODIFY_GENERAL_OBJECT\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"QUERY_GENERAL_OBJECT\00", [43 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"QUERY_MODIFY_HEADER_CONTEXT\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ALLOC_MEMIC\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DEALLOC_MEMIC\00", [18 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"QUERY_ESW_FUNCTIONS\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CREATE_UCTX\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DESTROY_UCTX\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CREATE_UMEM\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DESTROY_UMEM\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RELEASE_XRQ_ERROR\00", [46 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MODIFY_XRQ\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"QUERY_VHCA_STATE\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MODIFY_VHCA_STATE\00", [46 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALLOC_SF\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEALLOC_SF\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown command opcode\00", [41 x i8] zeroinitializer }, align 32
@mlx5_cmd_trigger_completions.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, i8 1, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_cmd_trigger_completions\00", [35 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/cmd.c\00", [50 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:(pid %d): vector 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_cmd_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_cmd_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_cmd_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_cmd_exec to i32), ptr @__kstrtab_mlx5_cmd_exec, ptr @__kstrtabns_mlx5_cmd_exec }, section "___ksymtab+mlx5_cmd_exec", align 4
@mlx5_cmd_init_async_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->wait\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_cmd_init_async_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_cmd_init_async_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_cmd_init_async_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_cmd_init_async_ctx to i32), ptr @__kstrtab_mlx5_cmd_init_async_ctx, ptr @__kstrtabns_mlx5_cmd_init_async_ctx }, section "___ksymtab+mlx5_cmd_init_async_ctx", align 4
@__kstrtab_mlx5_cmd_cleanup_async_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_cmd_cleanup_async_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_cmd_cleanup_async_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_cmd_cleanup_async_ctx to i32), ptr @__kstrtab_mlx5_cmd_cleanup_async_ctx, ptr @__kstrtabns_mlx5_cmd_cleanup_async_ctx }, section "___ksymtab+mlx5_cmd_cleanup_async_ctx", align 4
@__kstrtab_mlx5_cmd_exec_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_cmd_exec_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_cmd_exec_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_cmd_exec_cb to i32), ptr @__kstrtab_mlx5_cmd_exec_cb, ptr @__kstrtabns_mlx5_cmd_exec_cb }, section "___ksymtab+mlx5_cmd_exec_cb", align 4
@__kstrtab_mlx5_cmd_exec_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_cmd_exec_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_cmd_exec_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_cmd_exec_polling to i32), ptr @__kstrtab_mlx5_cmd_exec_polling, ptr @__kstrtabns_mlx5_cmd_exec_polling }, section "___ksymtab+mlx5_cmd_exec_polling", align 4
@mlx5_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.186, i32 2044, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): Driver cmdif rev(%d) differs from firmware's(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx5_cmd_init\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr = internal global ptr @mlx5_cmd_init._entry, section ".printk_index", align 4
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mlx5_cmd\00", [23 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.186, i32 2067, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:(pid %d): firmware reports too many outstanding commands %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr.196 = internal global ptr @mlx5_cmd_init._entry.194, section ".printk_index", align 4
@mlx5_cmd_init._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.186, i32 2073, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): command queue size overflow\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr.199 = internal global ptr @mlx5_cmd_init._entry.197, section ".printk_index", align 4
@mlx5_cmd_init._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.190, ptr @.str.186, i32 2086, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s:%d:(pid %d): driver does not support command interface version. driver %d, firmware %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr.202 = internal global ptr @mlx5_cmd_init._entry.200, section ".printk_index", align 4
@mlx5_cmd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cmd->alloc_lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5_cmd_init.__key.204 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cmd->token_lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5_cmd_init.__key.206 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.207 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cmd->stats[i].lock\00", [44 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.190, ptr @.str.186, i32 2102, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): invalid command queue address\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr.210 = internal global ptr @mlx5_cmd_init._entry.208, section ".printk_index", align 4
@mlx5_cmd_init.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.190, ptr @.str.186, ptr @.str.211, i8 2, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): descriptor at dma 0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.190, ptr @.str.186, i32 2123, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): failed to create command workqueue\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_cmd_init._entry_ptr.215 = internal global ptr @mlx5_cmd_init._entry.213, section ".printk_index", align 4
@mlx5_cmd_comp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.186, i32 1599, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%s:%d:(pid %d): Command completion arrived after timeout (entry idx = %d).\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_cmd_comp_handler\00", [42 x i8] zeroinitializer }, align 32
@mlx5_cmd_comp_handler._entry_ptr = internal global ptr @mlx5_cmd_comp_handler._entry, section ".printk_index", align 4
@mlx5_cmd_comp_handler.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.217, ptr @.str.186, ptr @.str.218, i8 1, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.218 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s:%d:(pid %d): command completed. ret 0x%x, delivery status %s(0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@dump_command.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.220, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dump_command\00", [19 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): cmd[%d]: start dump\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@dump_command.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.221, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): cmd[%d]: dump command data %s(0x%x) %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"INPUT\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OUTPUT\00", [25 x i8] zeroinitializer }, align 32
@dump_command.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.224, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): cmd[%d]: dump command %s(0x%x) %s\0A\00", [45 x i8] zeroinitializer }, align 32
@dump_command.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.225, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): cmd[%d]: command block:\0A\00", [55 x i8] zeroinitializer }, align 32
@dump_command.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.226, i8 0, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.226 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dump_command.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.219, ptr @.str.186, ptr @.str.227, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.227 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): cmd[%d]: end dump\0A\00", [61 x i8] zeroinitializer }, align 32
@dump_buf.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.228, ptr @.str.186, ptr @.str.229, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_buf\00", [23 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cmd[%d]: %03x: %08x %08x %08x %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@dump_buf.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.228, ptr @.str.186, ptr @.str.226, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.230 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no errors\00", [22 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"signature error\00", [16 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"token error\00", [20 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad block number\00", [47 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"output pointer not aligned to block size\00", [55 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"input pointer not aligned to block size\00", [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware internal error\00", [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"command input length error\00", [37 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"command output length error\00", [36 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reserved fields not cleared\00", [36 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad command descriptor type\00", [36 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown status code\00", [44 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@cmd_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.186, i32 1826, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s:%d:(pid %d): err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmd_exec\00", [23 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cmd_exec._entry_ptr = internal global ptr @cmd_exec._entry, section ".printk_index", align 4
@cmd_exec.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.243, ptr @.str.186, ptr @.str.245, i8 1, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.245 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): err %d, status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_internal_err_ret_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.186, i32 485, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): Unknown FW command (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_internal_err_ret_value\00", [36 x i8] zeroinitializer }, align 32
@mlx5_internal_err_ret_value._entry_ptr = internal global ptr @mlx5_internal_err_ret_value._entry, section ".printk_index", align 4
@mlx5_alloc_cmd_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.186, i32 1325, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): failed allocating block\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_alloc_cmd_msg\00", [45 x i8] zeroinitializer }, align 32
@mlx5_alloc_cmd_msg._entry_ptr = internal global ptr @mlx5_alloc_cmd_msg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alloc_cmd_box.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.250, ptr @.str.186, ptr @.str.251, i8 1, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.250 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alloc_cmd_box\00", [18 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): failed allocation\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_cmd_invoke.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.252 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&ent->cb_timeout_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@mlx5_cmd_invoke.__key.253 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.254 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&ent->cb_timeout_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@mlx5_cmd_invoke.__key.255 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.256 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ent->work)\00", [34 x i8] zeroinitializer }, align 32
@mlx5_cmd_invoke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.258, ptr @.str.186, i32 1144, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): failed to queue work\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_cmd_invoke\00", [16 x i8] zeroinitializer }, align 32
@mlx5_cmd_invoke._entry_ptr = internal global ptr @mlx5_cmd_invoke._entry, section ".printk_index", align 4
@mlx5_cmd_invoke.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.258, ptr @.str.186, ptr @.str.259, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): fw exec time for %s is %lld nsec\0A\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cb_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.262, ptr @.str.186, i32 883, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s:%d:(pid %d): cmd[%d]: %s(0x%x) Async, recovered after timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cb_timeout_handler\00", [45 x i8] zeroinitializer }, align 32
@cb_timeout_handler._entry_ptr = internal global ptr @cb_timeout_handler._entry, section ".printk_index", align 4
@cb_timeout_handler._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.262, ptr @.str.186, i32 889, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"%s:%d:(pid %d): cmd[%d]: %s(0x%x) Async, timeout. Will cause a leak of a command resource\0A\00", [37 x i8] zeroinitializer }, align 32
@cb_timeout_handler._entry_ptr.265 = internal global ptr @cb_timeout_handler._entry.263, section ".printk_index", align 4
@cmd_work_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.266, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cmd_work_handler = private unnamed_addr constant [17 x i8] c"cmd_work_handler\00", align 1
@cmd_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @__func__.cmd_work_handler, ptr @.str.186, i32 937, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): failed to allocate command entry\0A\00", [46 x i8] zeroinitializer }, align 32
@cmd_work_handler._entry_ptr = internal global ptr @cmd_work_handler._entry, section ".printk_index", align 4
@cmd_work_handler.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @__func__.cmd_work_handler, ptr @.str.186, ptr @.str.268, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.268 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): writing 0x%x to command doorbell\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wait_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.186, i32 1090, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s:%d:(pid %d): %s(0x%x) timeout. Will cause a leak of a command resource\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wait_func\00", [22 x i8] zeroinitializer }, align 32
@wait_func._entry_ptr = internal global ptr @wait_func._entry, section ".printk_index", align 4
@wait_func._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str.186, i32 1094, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): %s(0x%x) canceled on out of queue timeout.\0A\00", [36 x i8] zeroinitializer }, align 32
@wait_func._entry_ptr.273 = internal global ptr @wait_func._entry.271, section ".printk_index", align 4
@wait_func.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @.str.270, ptr @.str.186, ptr @.str.274, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.274 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): err %d, delivery status %s(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@wait_func_handle_exec_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.186, i32 1057, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): cmd[%d]: %s(0x%x) recovered after timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wait_func_handle_exec_timeout\00", [34 x i8] zeroinitializer }, align 32
@wait_func_handle_exec_timeout._entry_ptr = internal global ptr @wait_func_handle_exec_timeout._entry, section ".printk_index", align 4
@wait_func_handle_exec_timeout._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.276, ptr @.str.186, i32 1062, ptr @.str.244, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): cmd[%d]: %s(0x%x) No done completion\0A\00", [42 x i8] zeroinitializer }, align 32
@wait_func_handle_exec_timeout._entry_ptr.279 = internal global ptr @wait_func_handle_exec_timeout._entry.277, section ".printk_index", align 4
@mlx5_cmd_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.266, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mlx5_cmd_check = private unnamed_addr constant [15 x i8] c"mlx5_cmd_check\00", align 1
@mlx5_cmd_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @__func__.mlx5_cmd_check, ptr @.str.186, i32 790, ptr @.str.191, ptr @.str.192 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s:%d:(pid %d): %s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_cmd_check._entry_ptr = internal global ptr @mlx5_cmd_check._entry, section ".printk_index", align 4
@mlx5_cmd_check.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.184, ptr @__func__.mlx5_cmd_check, ptr @.str.186, ptr @.str.280, i8 0, i8 -57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.281 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"internal error\00", [17 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad operation\00", [18 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad parameter\00", [18 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad system state\00", [47 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad resource\00", [19 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"resource busy\00", [18 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"limits exceeded\00", [16 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad resource state\00", [45 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bad index\00", [22 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no resources\00", [19 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad input length\00", [47 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad output length\00", [46 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bad QP state\00", [19 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bad packet (discarded)\00", [41 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bad size too many outstanding CQEs\00", [61 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown status\00", [17 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.298 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@create_msg_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.300 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@cmd_cache_num_ent = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 512, i32 32, i32 16, i32 8, i32 2], [44 x i8] zeroinitializer }, align 32
@cmd_cache_ent_size = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 528, i32 1040, i32 8208, i32 131088, i32 262160], [44 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx5_cmd_%s\00", [20 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@dfops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @data_read, ptr @data_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"out_len\00", [24 x i8] zeroinitializer }, align 32
@olfops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @outlen_read, ptr @outlen_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @dbg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"go\00", [29 x i8] zeroinitializer }, align 32
@mlx5_debugfs_root = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.mlx5_cmd_comp_handler = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.240], [60 x i8] zeroinitializer }, align 32
@switch.table.status_to_err = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 -22, i32 0, i32 -53, i32 -53, i32 -14, i32 -14, i32 -14, i32 -5, i32 -42, i32 -42, i32 -42, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -22, i32 -42], [52 x i8] zeroinitializer }, align 32
@switch.table.wait_func = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.241, ptr @.str.240], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [185 x i64] [i64 183, i64 32, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 263, i64 264, i64 265, i64 266, i64 267, i64 269, i64 275, i64 276, i64 512, i64 513, i64 514, i64 515, i64 516, i64 517, i64 518, i64 769, i64 770, i64 771, i64 772, i64 1024, i64 1025, i64 1026, i64 1027, i64 1280, i64 1281, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1290, i64 1291, i64 1292, i64 1293, i64 1294, i64 1536, i64 1537, i64 1792, i64 1793, i64 1794, i64 1795, i64 1797, i64 1798, i64 1799, i64 1800, i64 1808, i64 1809, i64 1810, i64 1811, i64 1812, i64 1815, i64 1816, i64 1817, i64 1818, i64 1833, i64 1834, i64 1856, i64 1872, i64 1873, i64 1874, i64 1875, i64 1876, i64 1877, i64 1888, i64 1889, i64 1890, i64 1891, i64 1892, i64 1893, i64 1903, i64 1904, i64 1905, i64 1906, i64 1907, i64 1908, i64 1909, i64 1920, i64 1921, i64 1922, i64 1923, i64 1924, i64 1925, i64 1926, i64 1927, i64 2048, i64 2049, i64 2050, i64 2051, i64 2052, i64 2053, i64 2054, i64 2055, i64 2058, i64 2059, i64 2060, i64 2061, i64 2062, i64 2063, i64 2070, i64 2071, i64 2082, i64 2083, i64 2084, i64 2085, i64 2086, i64 2087, i64 2088, i64 2089, i64 2090, i64 2091, i64 2096, i64 2097, i64 2112, i64 2113, i64 2114, i64 2115, i64 2116, i64 2117, i64 2304, i64 2305, i64 2306, i64 2307, i64 2308, i64 2309, i64 2310, i64 2311, i64 2312, i64 2313, i64 2314, i64 2315, i64 2316, i64 2317, i64 2318, i64 2319, i64 2322, i64 2323, i64 2324, i64 2325, i64 2326, i64 2327, i64 2328, i64 2329, i64 2351, i64 2352, i64 2353, i64 2354, i64 2355, i64 2356, i64 2357, i64 2358, i64 2359, i64 2360, i64 2361, i64 2362, i64 2363, i64 2364, i64 2365, i64 2366, i64 2368, i64 2369, i64 2370, i64 2400, i64 2401, i64 2402, i64 2403, i64 2404, i64 2560, i64 2561, i64 2562, i64 2563, i64 2564, i64 2566, i64 2568, i64 2570, i64 2829, i64 2830]
@__sancov_gen_cov_switch_values.313 = internal global [13 x i64] [i64 11, i64 8, i64 2, i64 3, i64 5, i64 6, i64 8, i64 9, i64 10, i64 15, i64 16, i64 48, i64 64]
@__sancov_gen_cov_switch_values.314 = internal global [181 x i64] [i64 179, i64 16, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 263, i64 264, i64 265, i64 266, i64 267, i64 275, i64 276, i64 512, i64 513, i64 514, i64 515, i64 516, i64 517, i64 518, i64 769, i64 770, i64 771, i64 772, i64 1024, i64 1025, i64 1026, i64 1027, i64 1280, i64 1281, i64 1282, i64 1283, i64 1284, i64 1285, i64 1286, i64 1287, i64 1290, i64 1291, i64 1292, i64 1293, i64 1294, i64 1536, i64 1537, i64 1792, i64 1793, i64 1794, i64 1795, i64 1797, i64 1798, i64 1799, i64 1800, i64 1808, i64 1809, i64 1810, i64 1811, i64 1812, i64 1815, i64 1816, i64 1817, i64 1818, i64 1833, i64 1834, i64 1856, i64 1872, i64 1873, i64 1874, i64 1875, i64 1876, i64 1877, i64 1888, i64 1889, i64 1890, i64 1891, i64 1892, i64 1893, i64 1903, i64 1904, i64 1905, i64 1906, i64 1907, i64 1908, i64 1909, i64 1920, i64 1921, i64 1922, i64 1923, i64 1924, i64 1925, i64 1926, i64 1927, i64 2048, i64 2049, i64 2050, i64 2051, i64 2052, i64 2053, i64 2054, i64 2055, i64 2058, i64 2059, i64 2060, i64 2061, i64 2062, i64 2063, i64 2070, i64 2071, i64 2082, i64 2083, i64 2084, i64 2085, i64 2086, i64 2087, i64 2088, i64 2089, i64 2090, i64 2091, i64 2112, i64 2113, i64 2114, i64 2115, i64 2116, i64 2117, i64 2304, i64 2305, i64 2306, i64 2307, i64 2308, i64 2309, i64 2310, i64 2311, i64 2312, i64 2313, i64 2314, i64 2315, i64 2316, i64 2317, i64 2318, i64 2319, i64 2322, i64 2323, i64 2324, i64 2325, i64 2326, i64 2327, i64 2328, i64 2329, i64 2351, i64 2352, i64 2353, i64 2354, i64 2355, i64 2356, i64 2357, i64 2358, i64 2359, i64 2360, i64 2361, i64 2362, i64 2363, i64 2364, i64 2365, i64 2366, i64 2368, i64 2369, i64 2400, i64 2401, i64 2402, i64 2403, i64 2404, i64 2560, i64 2561, i64 2562, i64 2563, i64 2564, i64 2566, i64 2568, i64 2570, i64 2829, i64 2830]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 32, i64 4294967171, i64 4294967186]
@__sancov_gen_cov_switch_values.316 = internal global [4 x i64] [i64 2, i64 32, i64 4294967171, i64 4294967186]
@__sancov_gen_cov_switch_values.317 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 15, i64 16, i64 48, i64 64, i64 80, i64 81]
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 495, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 496, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 497, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 498, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 499, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 500, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 501, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 502, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 503, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 504, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 505, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 506, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 507, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 508, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 509, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 510, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 511, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 512, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 513, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 514, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 515, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 516, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 517, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 518, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 519, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 520, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 521, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 522, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 523, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 524, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 525, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 526, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 527, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 528, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 529, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 530, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 531, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 532, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 533, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 534, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 535, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 536, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 537, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 538, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 539, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 540, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 541, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 542, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 543, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 544, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 545, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 546, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 547, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 548, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 549, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 550, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 551, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 552, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 553, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 554, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 555, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 556, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 557, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 558, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 559, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 560, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 561, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 562, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 563, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 564, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 565, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 566, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 567, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 568, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 569, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 570, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 571, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 572, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 573, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 574, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 575, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 576, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 577, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 578, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 579, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 580, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 581, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 582, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 583, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 584, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 585, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 586, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 587, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 588, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 589, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 590, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 591, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 592, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 593, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 594, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 595, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 596, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 597, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 598, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 599, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 600, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 601, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 602, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 603, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 604, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 605, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 606, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 607, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 608, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 609, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 610, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 611, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 612, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 613, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 614, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 615, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 616, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 617, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 618, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 619, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 620, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 621, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 622, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 623, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 624, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 625, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 626, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 627, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 628, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 629, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 630, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 631, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 632, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 633, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 634, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 635, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 636, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 637, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 638, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 639, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 640, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 641, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 642, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 643, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 644, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 645, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 646, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 647, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 648, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 649, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 650, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 651, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 652, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 653, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 654, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 655, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 656, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 657, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 658, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 659, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 660, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 661, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 662, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 663, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 664, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 665, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 666, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 667, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 668, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 669, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 670, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 671, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 672, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 673, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 674, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 675, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 676, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 677, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 678, i32 18 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1695, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1876, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2042, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2052, i32 30 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2066, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2073, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2085, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2091, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2092, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2094, i32 3 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2102, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2113, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2121, i32 12 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 2123, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1598, i32 6 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1626, i32 5 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 815, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 819, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 824, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 847, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 856, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 858, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 282, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1013, i32 10 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1015, i32 10 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1017, i32 10 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1019, i32 10 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1021, i32 10 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1023, i32 10 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1025, i32 10 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1027, i32 10 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1029, i32 10 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1031, i32 10 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1033, i32 10 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1035, i32 10 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1826, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1841, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 485, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1325, i32 4 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1288, i32 3 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1139, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1140, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1144, i32 3 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1165, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1114, i32 87, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 882, i32 3 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 888, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 937, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 997, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1088, i32 3 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1092, i32 3 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1096, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1056, i32 3 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1061, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 787, i32 3 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 686, i32 10 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 688, i32 10 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 690, i32 10 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 692, i32 10 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 694, i32 10 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 696, i32 10 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 698, i32 10 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 700, i32 10 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 702, i32 10 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 704, i32 10 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 706, i32 10 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 708, i32 10 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 710, i32 10 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 712, i32 10 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 714, i32 10 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 716, i32 10 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 718, i32 10 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1246, i32 33, i32 31 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1246, i32 34, i32 28 }
@___asan_gen_.1246 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1246, i32 35, i32 39 }
@___asan_gen_.1248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1974, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant [18 x i8] c"cmd_cache_num_ent\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1951, i32 17 }
@___asan_gen_.1257 = private unnamed_addr constant [19 x i8] c"cmd_cache_ent_size\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1955, i32 17 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1471, i32 47 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1490, i32 37 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1492, i32 22 }
@___asan_gen_.1269 = private unnamed_addr constant [6 x i8] c"dfops\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1402, i32 37 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1493, i32 22 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1494, i32 22 }
@___asan_gen_.1278 = private unnamed_addr constant [7 x i8] c"olfops\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1460, i32 37 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1495, i32 20 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1496, i32 22 }
@___asan_gen_.1287 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1203, i32 37 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1417, i32 41 }
@___asan_gen_.1294 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1294, i32 156, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1297 = private constant [49 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c\00", align 1
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1297, i32 1195, i32 19 }
@___asan_gen_.1299 = private unnamed_addr constant [35 x i8] c"switch.table.mlx5_cmd_comp_handler\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant [27 x i8] c"switch.table.status_to_err\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant [23 x i8] c"switch.table.wait_func\00", align 1
@llvm.compiler.used = appending global [354 x ptr] [ptr @__ksymtab_mlx5_cmd_cleanup_async_ctx, ptr @__ksymtab_mlx5_cmd_exec, ptr @__ksymtab_mlx5_cmd_exec_cb, ptr @__ksymtab_mlx5_cmd_exec_polling, ptr @__ksymtab_mlx5_cmd_init_async_ctx, ptr @cb_timeout_handler._entry, ptr @cb_timeout_handler._entry.263, ptr @cb_timeout_handler._entry_ptr, ptr @cb_timeout_handler._entry_ptr.265, ptr @cmd_exec._entry, ptr @cmd_exec._entry_ptr, ptr @cmd_work_handler._entry, ptr @cmd_work_handler._entry_ptr, ptr @mlx5_alloc_cmd_msg._entry, ptr @mlx5_alloc_cmd_msg._entry_ptr, ptr @mlx5_cmd_check._entry, ptr @mlx5_cmd_check._entry_ptr, ptr @mlx5_cmd_comp_handler._entry, ptr @mlx5_cmd_comp_handler._entry_ptr, ptr @mlx5_cmd_init._entry, ptr @mlx5_cmd_init._entry.194, ptr @mlx5_cmd_init._entry.197, ptr @mlx5_cmd_init._entry.200, ptr @mlx5_cmd_init._entry.208, ptr @mlx5_cmd_init._entry.213, ptr @mlx5_cmd_init._entry_ptr, ptr @mlx5_cmd_init._entry_ptr.196, ptr @mlx5_cmd_init._entry_ptr.199, ptr @mlx5_cmd_init._entry_ptr.202, ptr @mlx5_cmd_init._entry_ptr.210, ptr @mlx5_cmd_init._entry_ptr.215, ptr @mlx5_cmd_invoke._entry, ptr @mlx5_cmd_invoke._entry_ptr, ptr @mlx5_internal_err_ret_value._entry, ptr @mlx5_internal_err_ret_value._entry_ptr, ptr @wait_func._entry, ptr @wait_func._entry.271, ptr @wait_func._entry_ptr, ptr @wait_func._entry_ptr.273, ptr @wait_func_handle_exec_timeout._entry, ptr @wait_func_handle_exec_timeout._entry.277, ptr @wait_func_handle_exec_timeout._entry_ptr, ptr @wait_func_handle_exec_timeout._entry_ptr.279, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @mlx5_cmd_init_async_ctx.__key, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @mlx5_cmd_init.__key, ptr @.str.203, ptr @mlx5_cmd_init.__key.204, ptr @.str.205, ptr @mlx5_cmd_init.__key.206, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @mlx5_cmd_invoke.__key, ptr @.str.252, ptr @mlx5_cmd_invoke.__key.253, ptr @.str.254, ptr @mlx5_cmd_invoke.__key.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @init_completion.__key, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.264, ptr @cmd_work_handler._rs, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.278, ptr @mlx5_cmd_check._rs, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @sema_init.__key, ptr @.str.298, ptr @.str.299, ptr @create_msg_cache.__key, ptr @.str.300, ptr @cmd_cache_num_ent, ptr @cmd_cache_ent_size, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @dfops, ptr @.str.304, ptr @.str.305, ptr @olfops, ptr @.str.306, ptr @.str.307, ptr @fops, ptr @.str.308, ptr @.str.311, ptr @.str.312, ptr @switch.table.mlx5_cmd_comp_handler, ptr @switch.table.status_to_err, ptr @switch.table.wait_func], section "llvm.metadata"
@0 = internal global [330 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init_async_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init.__key.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init.__key.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_init._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_comp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_internal_err_ret_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_alloc_cmd_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_invoke.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_invoke.__key.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_invoke.__key.255 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_invoke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_timeout_handler._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_work_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_func._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_func_handle_exec_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_func_handle_exec_timeout._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cmd_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_msg_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_cache_num_ent to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_cache_ent_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olfops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_cmd_comp_handler to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.status_to_err to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wait_func to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @mlx5_command_str(i32 noundef %command) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %sw.default [
    i32 256, label %entry.return_crit_edge
    i32 257, label %sw.bb1
    i32 258, label %sw.bb2
    i32 259, label %sw.bb3
    i32 260, label %sw.bb4
    i32 261, label %sw.bb5
    i32 263, label %sw.bb6
    i32 264, label %sw.bb7
    i32 265, label %sw.bb8
    i32 266, label %sw.bb9
    i32 267, label %sw.bb10
    i32 269, label %sw.bb11
    i32 512, label %sw.bb12
    i32 513, label %sw.bb13
    i32 514, label %sw.bb14
    i32 515, label %sw.bb15
    i32 516, label %sw.bb16
    i32 769, label %sw.bb17
    i32 770, label %sw.bb18
    i32 771, label %sw.bb19
    i32 772, label %sw.bb20
    i32 1024, label %sw.bb21
    i32 1025, label %sw.bb22
    i32 1026, label %sw.bb23
    i32 1027, label %sw.bb24
    i32 1280, label %sw.bb25
    i32 1281, label %sw.bb26
    i32 1282, label %sw.bb27
    i32 1283, label %sw.bb28
    i32 1284, label %sw.bb29
    i32 1285, label %sw.bb30
    i32 1286, label %sw.bb31
    i32 1287, label %sw.bb32
    i32 1290, label %sw.bb33
    i32 1291, label %sw.bb34
    i32 1292, label %sw.bb35
    i32 1294, label %sw.bb36
    i32 1536, label %sw.bb37
    i32 1537, label %sw.bb38
    i32 1792, label %sw.bb39
    i32 1793, label %sw.bb40
    i32 1794, label %sw.bb41
    i32 1795, label %sw.bb42
    i32 1797, label %sw.bb43
    i32 1798, label %sw.bb44
    i32 1799, label %sw.bb45
    i32 1800, label %sw.bb46
    i32 1808, label %sw.bb47
    i32 1809, label %sw.bb48
    i32 1810, label %sw.bb49
    i32 1811, label %sw.bb50
    i32 1812, label %sw.bb51
    i32 1872, label %sw.bb52
    i32 1873, label %sw.bb53
    i32 1874, label %sw.bb54
    i32 1875, label %sw.bb55
    i32 1876, label %sw.bb56
    i32 1877, label %sw.bb57
    i32 1888, label %sw.bb58
    i32 1889, label %sw.bb59
    i32 1890, label %sw.bb60
    i32 1891, label %sw.bb61
    i32 1892, label %sw.bb62
    i32 1893, label %sw.bb63
    i32 1903, label %sw.bb64
    i32 1904, label %sw.bb65
    i32 1905, label %sw.bb66
    i32 1906, label %sw.bb67
    i32 1907, label %sw.bb68
    i32 1908, label %sw.bb69
    i32 1909, label %sw.bb70
    i32 1920, label %sw.bb71
    i32 1921, label %sw.bb72
    i32 1922, label %sw.bb73
    i32 1923, label %sw.bb74
    i32 1924, label %sw.bb75
    i32 1925, label %sw.bb76
    i32 1926, label %sw.bb77
    i32 1927, label %sw.bb78
    i32 2048, label %sw.bb79
    i32 2049, label %sw.bb80
    i32 2050, label %sw.bb81
    i32 2051, label %sw.bb82
    i32 2052, label %sw.bb83
    i32 2053, label %sw.bb84
    i32 2054, label %sw.bb85
    i32 2055, label %sw.bb86
    i32 2058, label %sw.bb87
    i32 1293, label %sw.bb88
    i32 2059, label %sw.bb89
    i32 2060, label %sw.bb90
    i32 2061, label %sw.bb91
    i32 2062, label %sw.bb92
    i32 2063, label %sw.bb93
    i32 2070, label %sw.bb94
    i32 2071, label %sw.bb95
    i32 2082, label %sw.bb96
    i32 2083, label %sw.bb97
    i32 2084, label %sw.bb98
    i32 2085, label %sw.bb99
    i32 2086, label %sw.bb100
    i32 2087, label %sw.bb101
    i32 2088, label %sw.bb102
    i32 2089, label %sw.bb103
    i32 2090, label %sw.bb104
    i32 2091, label %sw.bb105
    i32 2096, label %sw.bb106
    i32 2097, label %sw.bb107
    i32 2112, label %sw.bb108
    i32 2113, label %sw.bb109
    i32 2114, label %sw.bb110
    i32 2115, label %sw.bb111
    i32 2116, label %sw.bb112
    i32 2117, label %sw.bb113
    i32 2304, label %sw.bb114
    i32 2305, label %sw.bb115
    i32 2306, label %sw.bb116
    i32 2307, label %sw.bb117
    i32 2308, label %sw.bb118
    i32 2309, label %sw.bb119
    i32 2310, label %sw.bb120
    i32 2311, label %sw.bb121
    i32 2312, label %sw.bb122
    i32 2313, label %sw.bb123
    i32 2314, label %sw.bb124
    i32 2315, label %sw.bb125
    i32 2316, label %sw.bb126
    i32 2317, label %sw.bb127
    i32 2318, label %sw.bb128
    i32 2319, label %sw.bb129
    i32 2322, label %sw.bb130
    i32 2323, label %sw.bb131
    i32 2324, label %sw.bb132
    i32 2325, label %sw.bb133
    i32 2326, label %sw.bb134
    i32 2327, label %sw.bb135
    i32 2328, label %sw.bb136
    i32 2329, label %sw.bb137
    i32 2351, label %sw.bb138
    i32 2352, label %sw.bb139
    i32 2353, label %sw.bb140
    i32 2354, label %sw.bb141
    i32 2355, label %sw.bb142
    i32 2356, label %sw.bb143
    i32 2357, label %sw.bb144
    i32 2358, label %sw.bb145
    i32 2359, label %sw.bb146
    i32 2360, label %sw.bb147
    i32 2361, label %sw.bb148
    i32 2362, label %sw.bb149
    i32 2363, label %sw.bb150
    i32 2364, label %sw.bb151
    i32 2365, label %sw.bb152
    i32 2366, label %sw.bb153
    i32 2368, label %sw.bb154
    i32 2369, label %sw.bb155
    i32 2400, label %sw.bb156
    i32 2401, label %sw.bb157
    i32 2402, label %sw.bb158
    i32 2404, label %sw.bb159
    i32 2403, label %sw.bb160
    i32 1815, label %sw.bb161
    i32 1816, label %sw.bb162
    i32 1817, label %sw.bb163
    i32 1818, label %sw.bb164
    i32 2560, label %sw.bb165
    i32 2563, label %sw.bb166
    i32 2561, label %sw.bb167
    i32 2562, label %sw.bb168
    i32 2370, label %sw.bb169
    i32 517, label %sw.bb170
    i32 518, label %sw.bb171
    i32 1856, label %sw.bb172
    i32 2564, label %sw.bb173
    i32 2566, label %sw.bb174
    i32 2568, label %sw.bb175
    i32 2570, label %sw.bb176
    i32 1833, label %sw.bb177
    i32 1834, label %sw.bb178
    i32 2829, label %sw.bb179
    i32 2830, label %sw.bb180
    i32 275, label %sw.bb181
    i32 276, label %sw.bb182
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb62:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb65:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb67:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb70:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb71:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb75:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb80:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb83:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb85:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb87:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb89:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb90:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb92:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb93:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb94:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb96:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb98:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb99:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb100:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb101:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb102:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb103:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb104:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb105:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb107:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb109:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb110:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb111:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb112:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb113:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb114:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb115:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb116:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb117:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb118:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb119:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb120:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb121:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb122:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb123:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb124:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb125:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb126:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb127:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb128:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb129:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb130:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb131:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb132:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb133:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb134:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb135:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb136:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb137:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb138:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb139:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb140:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb141:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb142:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb143:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb144:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb145:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb146:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb147:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb148:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb149:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb150:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb151:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb152:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb153:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb154:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb155:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb156:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb157:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb158:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb159:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb160:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb162:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb163:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb164:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb165:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb166:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb167:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb168:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb169:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb170:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb171:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb172:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb173:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb174:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb175:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb176:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb177:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb178:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb179:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb180:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb181:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb182:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb182, %sw.bb181, %sw.bb180, %sw.bb179, %sw.bb178, %sw.bb177, %sw.bb176, %sw.bb175, %sw.bb174, %sw.bb173, %sw.bb172, %sw.bb171, %sw.bb170, %sw.bb169, %sw.bb168, %sw.bb167, %sw.bb166, %sw.bb165, %sw.bb164, %sw.bb163, %sw.bb162, %sw.bb161, %sw.bb160, %sw.bb159, %sw.bb158, %sw.bb157, %sw.bb156, %sw.bb155, %sw.bb154, %sw.bb153, %sw.bb152, %sw.bb151, %sw.bb150, %sw.bb149, %sw.bb148, %sw.bb147, %sw.bb146, %sw.bb145, %sw.bb144, %sw.bb143, %sw.bb142, %sw.bb141, %sw.bb140, %sw.bb139, %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb134, %sw.bb133, %sw.bb132, %sw.bb131, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb127, %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb108, %sw.bb107, %sw.bb106, %sw.bb105, %sw.bb104, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb97, %sw.bb96, %sw.bb95, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87, %sw.bb86, %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.183, %sw.default ], [ @.str.182, %sw.bb182 ], [ @.str.181, %sw.bb181 ], [ @.str.180, %sw.bb180 ], [ @.str.179, %sw.bb179 ], [ @.str.178, %sw.bb178 ], [ @.str.177, %sw.bb177 ], [ @.str.176, %sw.bb176 ], [ @.str.175, %sw.bb175 ], [ @.str.174, %sw.bb174 ], [ @.str.173, %sw.bb173 ], [ @.str.172, %sw.bb172 ], [ @.str.171, %sw.bb171 ], [ @.str.170, %sw.bb170 ], [ @.str.169, %sw.bb169 ], [ @.str.168, %sw.bb168 ], [ @.str.167, %sw.bb167 ], [ @.str.166, %sw.bb166 ], [ @.str.165, %sw.bb165 ], [ @.str.164, %sw.bb164 ], [ @.str.163, %sw.bb163 ], [ @.str.162, %sw.bb162 ], [ @.str.161, %sw.bb161 ], [ @.str.160, %sw.bb160 ], [ @.str.159, %sw.bb159 ], [ @.str.158, %sw.bb158 ], [ @.str.157, %sw.bb157 ], [ @.str.156, %sw.bb156 ], [ @.str.155, %sw.bb155 ], [ @.str.154, %sw.bb154 ], [ @.str.153, %sw.bb153 ], [ @.str.152, %sw.bb152 ], [ @.str.151, %sw.bb151 ], [ @.str.150, %sw.bb150 ], [ @.str.149, %sw.bb149 ], [ @.str.148, %sw.bb148 ], [ @.str.147, %sw.bb147 ], [ @.str.146, %sw.bb146 ], [ @.str.145, %sw.bb145 ], [ @.str.144, %sw.bb144 ], [ @.str.143, %sw.bb143 ], [ @.str.142, %sw.bb142 ], [ @.str.141, %sw.bb141 ], [ @.str.140, %sw.bb140 ], [ @.str.139, %sw.bb139 ], [ @.str.138, %sw.bb138 ], [ @.str.137, %sw.bb137 ], [ @.str.136, %sw.bb136 ], [ @.str.135, %sw.bb135 ], [ @.str.134, %sw.bb134 ], [ @.str.133, %sw.bb133 ], [ @.str.132, %sw.bb132 ], [ @.str.131, %sw.bb131 ], [ @.str.130, %sw.bb130 ], [ @.str.129, %sw.bb129 ], [ @.str.128, %sw.bb128 ], [ @.str.127, %sw.bb127 ], [ @.str.126, %sw.bb126 ], [ @.str.125, %sw.bb125 ], [ @.str.124, %sw.bb124 ], [ @.str.123, %sw.bb123 ], [ @.str.122, %sw.bb122 ], [ @.str.121, %sw.bb121 ], [ @.str.120, %sw.bb120 ], [ @.str.119, %sw.bb119 ], [ @.str.118, %sw.bb118 ], [ @.str.117, %sw.bb117 ], [ @.str.116, %sw.bb116 ], [ @.str.115, %sw.bb115 ], [ @.str.114, %sw.bb114 ], [ @.str.113, %sw.bb113 ], [ @.str.112, %sw.bb112 ], [ @.str.111, %sw.bb111 ], [ @.str.110, %sw.bb110 ], [ @.str.109, %sw.bb109 ], [ @.str.108, %sw.bb108 ], [ @.str.107, %sw.bb107 ], [ @.str.106, %sw.bb106 ], [ @.str.105, %sw.bb105 ], [ @.str.104, %sw.bb104 ], [ @.str.103, %sw.bb103 ], [ @.str.102, %sw.bb102 ], [ @.str.101, %sw.bb101 ], [ @.str.100, %sw.bb100 ], [ @.str.99, %sw.bb99 ], [ @.str.98, %sw.bb98 ], [ @.str.97, %sw.bb97 ], [ @.str.96, %sw.bb96 ], [ @.str.95, %sw.bb95 ], [ @.str.94, %sw.bb94 ], [ @.str.93, %sw.bb93 ], [ @.str.92, %sw.bb92 ], [ @.str.91, %sw.bb91 ], [ @.str.90, %sw.bb90 ], [ @.str.89, %sw.bb89 ], [ @.str.88, %sw.bb88 ], [ @.str.87, %sw.bb87 ], [ @.str.86, %sw.bb86 ], [ @.str.85, %sw.bb85 ], [ @.str.84, %sw.bb84 ], [ @.str.83, %sw.bb83 ], [ @.str.82, %sw.bb82 ], [ @.str.81, %sw.bb81 ], [ @.str.80, %sw.bb80 ], [ @.str.79, %sw.bb79 ], [ @.str.78, %sw.bb78 ], [ @.str.77, %sw.bb77 ], [ @.str.76, %sw.bb76 ], [ @.str.75, %sw.bb75 ], [ @.str.74, %sw.bb74 ], [ @.str.73, %sw.bb73 ], [ @.str.72, %sw.bb72 ], [ @.str.71, %sw.bb71 ], [ @.str.70, %sw.bb70 ], [ @.str.69, %sw.bb69 ], [ @.str.68, %sw.bb68 ], [ @.str.67, %sw.bb67 ], [ @.str.66, %sw.bb66 ], [ @.str.65, %sw.bb65 ], [ @.str.64, %sw.bb64 ], [ @.str.63, %sw.bb63 ], [ @.str.62, %sw.bb62 ], [ @.str.61, %sw.bb61 ], [ @.str.60, %sw.bb60 ], [ @.str.59, %sw.bb59 ], [ @.str.58, %sw.bb58 ], [ @.str.57, %sw.bb57 ], [ @.str.56, %sw.bb56 ], [ @.str.55, %sw.bb55 ], [ @.str.54, %sw.bb54 ], [ @.str.53, %sw.bb53 ], [ @.str.52, %sw.bb52 ], [ @.str.51, %sw.bb51 ], [ @.str.50, %sw.bb50 ], [ @.str.49, %sw.bb49 ], [ @.str.48, %sw.bb48 ], [ @.str.47, %sw.bb47 ], [ @.str.46, %sw.bb46 ], [ @.str.45, %sw.bb45 ], [ @.str.44, %sw.bb44 ], [ @.str.43, %sw.bb43 ], [ @.str.42, %sw.bb42 ], [ @.str.41, %sw.bb41 ], [ @.str.40, %sw.bb40 ], [ @.str.39, %sw.bb39 ], [ @.str.38, %sw.bb38 ], [ @.str.37, %sw.bb37 ], [ @.str.36, %sw.bb36 ], [ @.str.35, %sw.bb35 ], [ @.str.34, %sw.bb34 ], [ @.str.33, %sw.bb33 ], [ @.str.32, %sw.bb32 ], [ @.str.31, %sw.bb31 ], [ @.str.30, %sw.bb30 ], [ @.str.29, %sw.bb29 ], [ @.str.28, %sw.bb28 ], [ @.str.27, %sw.bb27 ], [ @.str.26, %sw.bb26 ], [ @.str.25, %sw.bb25 ], [ @.str.24, %sw.bb24 ], [ @.str.23, %sw.bb23 ], [ @.str.22, %sw.bb22 ], [ @.str.21, %sw.bb21 ], [ @.str.20, %sw.bb20 ], [ @.str.19, %sw.bb19 ], [ @.str.18, %sw.bb18 ], [ @.str.17, %sw.bb17 ], [ @.str.16, %sw.bb16 ], [ @.str.15, %sw.bb15 ], [ @.str.14, %sw.bb14 ], [ @.str.13, %sw.bb13 ], [ @.str.12, %sw.bb12 ], [ @.str.11, %sw.bb11 ], [ @.str.10, %sw.bb10 ], [ @.str.9, %sw.bb9 ], [ @.str.8, %sw.bb8 ], [ @.str.7, %sw.bb7 ], [ @.str.6, %sw.bb6 ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_cmd_mbox_status(ptr nocapture noundef readonly %out, ptr nocapture noundef writeonly %status, ptr nocapture noundef writeonly %syndrome) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out, align 4
  %shr = lshr i32 %1, 24
  %conv = trunc i32 %shr to i8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %status, align 1
  %add.ptr1 = getelementptr i32, ptr %out, i32 1
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr1, align 4
  %5 = ptrtoint ptr %syndrome to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %syndrome, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_cmd_is_down(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.rhs, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %state1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %cmp2, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_allowed_opcode(ptr noundef %dev, i16 noundef zeroext %opcode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_reg_cmds = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 10
  %0 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_reg_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20 = icmp sgt i32 %1, 0
  br i1 %cmp20, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @down(ptr noundef %sem) #16
  %inc = add nuw nsw i32 %i.021, 1
  %2 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reg_cmds, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pages_sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20
  tail call void @down(ptr noundef %pages_sem) #16
  %allowed_opcode = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 22
  %4 = ptrtoint ptr %allowed_opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %opcode, ptr %allowed_opcode, align 4
  tail call void @up(ptr noundef %pages_sem) #16
  %5 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_reg_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp522 = icmp sgt i32 %6, 0
  br i1 %cmp522, label %for.body6.lr.ph, label %for.end.for.end10_crit_edge

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end10

for.body6.lr.ph:                                  ; preds = %for.end
  %sem7 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %i.123 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc9, %for.body6.for.body6_crit_edge ]
  tail call void @up(ptr noundef %sem7) #16
  %inc9 = add nuw nsw i32 %i.123, 1
  %7 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reg_cmds, align 4
  %cmp5 = icmp slt i32 %inc9, %8
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end10_crit_edge

for.body6.for.end10_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end10

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6

for.end10:                                        ; preds = %for.body6.for.end10_crit_edge, %for.end.for.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_use_events(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cmd_comp_notifier, ptr %cmd, align 8
  %event_type = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 0, i32 1
  %1 = ptrtoint ptr %event_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %event_type, align 4
  %call = tail call i32 @mlx5_eq_notifier_register(ptr noundef %dev, ptr noundef %cmd) #16
  %max_reg_cmds.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 10
  %2 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.i = icmp sgt i32 %3, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %sem.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void @down(ptr noundef %sem.i) #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %4 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_reg_cmds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %5
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %pages_sem.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20
  tail call void @down(ptr noundef %pages_sem.i) #16
  %mode2.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 21
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode2.i, align 4
  tail call void @up(ptr noundef %pages_sem.i) #16
  %7 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp623.i = icmp sgt i32 %8, 0
  br i1 %cmp623.i, label %for.body7.lr.ph.i, label %for.end.i.mlx5_cmd_change_mod.exit_crit_edge

for.end.i.mlx5_cmd_change_mod.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_cmd_change_mod.exit

for.body7.lr.ph.i:                                ; preds = %for.end.i
  %sem8.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.124.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc10.i, %for.body7.i.for.body7.i_crit_edge ]
  tail call void @up(ptr noundef %sem8.i) #16
  %inc10.i = add nuw nsw i32 %i.124.i, 1
  %9 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_reg_cmds.i, align 4
  %cmp6.i = icmp slt i32 %inc10.i, %10
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.mlx5_cmd_change_mod.exit_crit_edge

for.body7.i.mlx5_cmd_change_mod.exit_crit_edge:   ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_cmd_change_mod.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.i

mlx5_cmd_change_mod.exit:                         ; preds = %for.body7.i.mlx5_cmd_change_mod.exit_crit_edge, %for.end.i.mlx5_cmd_change_mod.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd_comp_notifier(ptr nocapture noundef readonly %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr6 = getelementptr i8, ptr %nb, i32 -176
  %data7 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %data7 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %data7, align 1
  %conv = zext i32 %1 to i64
  tail call fastcc void @mlx5_cmd_comp_handler(ptr noundef %add.ptr6, i64 noundef %conv, i1 noundef zeroext false)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_use_polling(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_reg_cmds.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 10
  %0 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.i = icmp sgt i32 %1, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %sem.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void @down(ptr noundef %sem.i) #16
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %2 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reg_cmds.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %pages_sem.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20
  tail call void @down(ptr noundef %pages_sem.i) #16
  %mode2.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 21
  %4 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode2.i, align 4
  tail call void @up(ptr noundef %pages_sem.i) #16
  %5 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp623.i = icmp sgt i32 %6, 0
  br i1 %cmp623.i, label %for.body7.lr.ph.i, label %for.end.i.mlx5_cmd_change_mod.exit_crit_edge

for.end.i.mlx5_cmd_change_mod.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_cmd_change_mod.exit

for.body7.lr.ph.i:                                ; preds = %for.end.i
  %sem8.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.124.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc10.i, %for.body7.i.for.body7.i_crit_edge ]
  tail call void @up(ptr noundef %sem8.i) #16
  %inc10.i = add nuw nsw i32 %i.124.i, 1
  %7 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_reg_cmds.i, align 4
  %cmp6.i = icmp slt i32 %inc10.i, %8
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.mlx5_cmd_change_mod.exit_crit_edge

for.body7.i.mlx5_cmd_change_mod.exit_crit_edge:   ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_cmd_change_mod.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.i

mlx5_cmd_change_mod.exit:                         ; preds = %for.body7.i.mlx5_cmd_change_mod.exit_crit_edge, %for.end.i.mlx5_cmd_change_mod.exit_crit_edge
  %cmd = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7
  %call = tail call i32 @mlx5_eq_notifier_unregister(ptr noundef %dev, ptr noundef %cmd) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_trigger_completions(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  %bitmask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmask) #16
  tail call void @mlx5_eq_synchronize_cmd_irq(ptr noundef %dev) #16
  %alloc_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 13
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #16
  %bitmask8 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 16
  %0 = ptrtoint ptr %bitmask8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitmask8, align 4
  %log_sz = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %log_sz, align 2
  %conv10 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv10
  %notmask = shl nsw i32 -1, %shl
  %and.demorgan = or i32 %notmask, %1
  %and = xor i32 %and.demorgan, -1
  %conv12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and.demorgan)
  %tobool.not = icmp eq i32 %and.demorgan, -1
  br i1 %tobool.not, label %no_trig, label %if.end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %bitmask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %bitmask, align 4
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmask, i32 noundef %shl, i32 noundef 0) #16
  %5 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %log_sz, align 2
  %conv1992 = zext i8 %6 to i32
  %shl2093 = shl nuw i32 1, %conv1992
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %shl2093)
  %cmp2194 = icmp slt i32 %call17, %shl2093
  br i1 %cmp2194, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cmd_ent_get.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.095 = phi i32 [ %call26, %cmd_ent_get.exit.for.body_crit_edge ], [ %call17, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 23, i32 %i.095
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %8, i32 0, i32 22
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !667
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %for.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !668

for.body.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cmd_ent_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !669

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cmd_ent_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cmd_ent_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %for.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %for.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %cmd_ent_get.exit

cmd_ent_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cmd_ent_get.exit_crit_edge
  %11 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %log_sz, align 2
  %conv24 = zext i8 %12 to i32
  %shl25 = shl nuw i32 1, %conv24
  %add = add nsw i32 %i.095, 1
  %call26 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmask, i32 noundef %shl25, i32 noundef %add) #16
  %13 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %log_sz, align 2
  %conv19 = zext i8 %14 to i32
  %shl20 = shl nuw i32 1, %conv19
  %cmp21 = icmp slt i32 %call26, %shl20
  br i1 %cmp21, label %cmd_ent_get.exit.for.body_crit_edge, label %cmd_ent_get.exit.for.end_crit_edge

cmd_ent_get.exit.for.end_crit_edge:               ; preds = %cmd_ent_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cmd_ent_get.exit.for.body_crit_edge:              ; preds = %cmd_ent_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cmd_ent_get.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %or = or i64 %conv12, 4294967296
  call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call4) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_trigger_completions.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_trigger_completions, %if.then35)) #16
          to label %do.end39 [label %if.then35], !srcloc !670

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %17 = call i32 @llvm.read_register.i32(metadata !657) #16
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
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_trigger_completions.__UNIQUE_ID_ddebug529, ptr noundef %16, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.185, i32 noundef 1695, i32 noundef %22, i64 noundef %or) #16
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %for.end
  call fastcc void @mlx5_cmd_comp_handler(ptr noundef %dev, i64 noundef %or, i1 noundef zeroext true)
  %23 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %log_sz, align 2
  %conv41 = zext i8 %24 to i32
  %shl42 = shl nuw i32 1, %conv41
  %call43 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmask, i32 noundef %shl42, i32 noundef 0) #16
  %25 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %log_sz, align 2
  %conv4696 = zext i8 %26 to i32
  %shl4797 = shl nuw i32 1, %conv4696
  call void @__sanitizer_cov_trace_cmp4(i32 %call43, i32 %shl4797)
  %cmp4898 = icmp slt i32 %call43, %shl4797
  br i1 %cmp4898, label %do.end39.for.body50_crit_edge, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end39.for.body50_crit_edge:                    ; preds = %do.end39
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %do.end39.for.body50_crit_edge
  %i.199 = phi i32 [ %call58, %for.body50.for.body50_crit_edge ], [ %call43, %do.end39.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 23, i32 %i.199
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx52, align 4
  call fastcc void @cmd_ent_put(ptr noundef %28)
  %29 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_sz, align 2
  %conv55 = zext i8 %30 to i32
  %shl56 = shl nuw i32 1, %conv55
  %add57 = add nsw i32 %i.199, 1
  %call58 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmask, i32 noundef %shl56, i32 noundef %add57) #16
  %31 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %log_sz, align 2
  %conv46 = zext i8 %32 to i32
  %shl47 = shl nuw i32 1, %conv46
  %cmp48 = icmp slt i32 %call58, %shl47
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.cleanup_crit_edge

for.body50.cleanup_crit_edge:                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body50

no_trig:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call4) #16
  br label %cleanup

cleanup:                                          ; preds = %no_trig, %for.body50.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmask) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_synchronize_cmd_irq(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_cmd_comp_handler(ptr nocapture noundef readonly %dev, i64 noundef %vec, i1 noundef zeroext %forced) unnamed_addr #3 align 64 {
entry:
  %vector = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vector)
  %conv = trunc i64 %vec to i32
  %0 = ptrtoint ptr %vector to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %vector, align 4
  %log_sz = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 8
  %1 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %log_sz, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %2)
  %cmp195.not = icmp eq i8 %2, 31
  br i1 %cmp195.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %state21 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %checksum_disabled = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 27
  %and37 = and i64 %vec, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  %stats74 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 28
  %pool.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc116, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %3)
  %vector.0. = load volatile i32, ptr %vector, align 4
  %and.i = and i32 %i.0196, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %vector.0., %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 23, i32 %i.0196
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then
  br i1 %forced, label %if.then6.for.inc_crit_edge, label %do.end

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i179 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i179 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %idx = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 8
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217, i32 noundef 1599, i32 noundef %15, i32 noundef %17) #19
  tail call fastcc void @cmd_ent_put(ptr noundef %7)
  br label %for.inc

if.end10:                                         ; preds = %if.then
  %callback11 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %callback11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback11, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %land.lhs.true

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %cb_timeout_work = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 6
  %call13 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cb_timeout_work) #16
  br i1 %call13, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @cmd_ent_put(ptr noundef %7)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  br i1 %forced, label %lor.lhs.false, label %if.end16.if.then24_crit_edge

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end16
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 43
  %22 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 1
  br i1 %cmp.i.not, label %lor.lhs.false20, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp22 = icmp eq i32 %25, 2
  br i1 %cmp22, label %lor.lhs.false20.if.then24_crit_edge, label %lor.lhs.false20.if.end25_crit_edge

lor.lhs.false20.if.end25_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

lor.lhs.false20.if.then24_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false20.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %if.end16.if.then24_crit_edge
  tail call fastcc void @cmd_ent_put(ptr noundef %7)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false20.if.end25_crit_edge
  %call.i = tail call i64 @ktime_get() #16
  %ts2 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 19
  %26 = ptrtoint ptr %ts2 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i, ptr %ts2, align 8
  %out = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out, align 8
  %first = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %28, i32 0, i32 3
  %lay = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lay, align 4
  %out27 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %30, i32 0, i32 5
  %31 = call ptr @memcpy(ptr %first, ptr %out27, i32 16)
  tail call fastcc void @dump_command(ptr noundef %dev, ptr noundef %7, i32 noundef 0)
  %ret = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 14
  %32 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ret, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.if.end65_crit_edge

if.end25.if.end65_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then30:                                        ; preds = %if.end25
  %34 = ptrtoint ptr %checksum_disabled to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %checksum_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %if.then32, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then32:                                        ; preds = %if.then30
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out, align 8
  %next1.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next1.i, align 4
  %len.i.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %41, 511
  %42 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lay, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then32
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then32 ]
  %sum.09.i.i = phi i8 [ %xor7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then32 ]
  %arrayidx.i.i = getelementptr i8, ptr %43, i32 %i.010.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i, align 1
  %xor7.i.i = xor i8 %45, %sum.09.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %xor8_buf.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

xor8_buf.exit.i:                                  ; preds = %for.body.i.i
  %46 = tail call i32 @llvm.smin.i32(i32 %41, i32 16) #16
  %sub1.i.i = sub i32 %sub.i.i, %46
  %div.i.i = sdiv i32 %sub1.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor7.i.i)
  %cmp.not.i = icmp eq i8 %xor7.i.i, -1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %xor8_buf.exit.i.if.end36_crit_edge

xor8_buf.exit.i.if.end36_crit_edge:               ; preds = %xor8_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.cond.preheader.i:                             ; preds = %xor8_buf.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub1.i.i)
  %cmp524.i = icmp slt i32 %sub1.i.i, 512
  %tobool.not25.i = icmp eq ptr %39, null
  %or.cond26.i = select i1 %cmp524.i, i1 true, i1 %tobool.not25.i
  br i1 %or.cond26.i, label %for.cond.preheader.i.if.end36_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end36_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %next.027.i = phi ptr [ %54, %if.end10.i.for.body.i_crit_edge ], [ %39, %for.cond.preheader.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %next.027.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next.027.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 512, %for.body.i ]
  %sum.09.i.i.i = phi i8 [ %xor7.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i ]
  %arrayidx.i.i.i = getelementptr i8, ptr %48, i32 %i.010.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i.i, align 1
  %xor7.i.i.i = xor i8 %50, %sum.09.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 575
  br i1 %exitcond.not.i.i.i, label %xor8_buf.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

xor8_buf.exit.i.i:                                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor7.i.i.i)
  %cmp.not.i.i = icmp eq i8 %xor7.i.i.i, -1
  br i1 %cmp.not.i.i, label %xor8_buf.exit.i.i.for.body.i16.i.i_crit_edge, label %xor8_buf.exit.i.i.if.end36_crit_edge

xor8_buf.exit.i.i.if.end36_crit_edge:             ; preds = %xor8_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

xor8_buf.exit.i.i.for.body.i16.i.i_crit_edge:     ; preds = %xor8_buf.exit.i.i
  br label %for.body.i16.i.i

for.body.i16.i.i:                                 ; preds = %for.body.i16.i.i.for.body.i16.i.i_crit_edge, %xor8_buf.exit.i.i.for.body.i16.i.i_crit_edge
  %i.010.i10.i.i = phi i32 [ %inc.i14.i.i, %for.body.i16.i.i.for.body.i16.i.i_crit_edge ], [ 0, %xor8_buf.exit.i.i.for.body.i16.i.i_crit_edge ]
  %sum.09.i11.i.i = phi i8 [ %xor7.i13.i.i, %for.body.i16.i.i.for.body.i16.i.i_crit_edge ], [ 0, %xor8_buf.exit.i.i.for.body.i16.i.i_crit_edge ]
  %arrayidx.i12.i.i = getelementptr i8, ptr %48, i32 %i.010.i10.i.i
  %51 = ptrtoint ptr %arrayidx.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i12.i.i, align 1
  %xor7.i13.i.i = xor i8 %52, %sum.09.i11.i.i
  %inc.i14.i.i = add nuw nsw i32 %i.010.i10.i.i, 1
  %exitcond.not.i15.i.i = icmp eq i32 %inc.i14.i.i, 576
  br i1 %exitcond.not.i15.i.i, label %xor8_buf.exit17.i.i, label %for.body.i16.i.i.for.body.i16.i.i_crit_edge

for.body.i16.i.i.for.body.i16.i.i_crit_edge:      ; preds = %for.body.i16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i16.i.i

xor8_buf.exit17.i.i:                              ; preds = %for.body.i16.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor7.i13.i.i)
  %cmp4.not.i.i = icmp eq i8 %xor7.i13.i.i, -1
  br i1 %cmp4.not.i.i, label %if.end10.i, label %xor8_buf.exit17.i.i.if.end36_crit_edge

xor8_buf.exit17.i.i.if.end36_crit_edge:           ; preds = %xor8_buf.exit17.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end10.i:                                       ; preds = %xor8_buf.exit17.i.i
  %next11.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.027.i, i32 0, i32 2
  %53 = ptrtoint ptr %next11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next11.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %div.i.i)
  %cmp5.i = icmp sge i32 %inc.i, %div.i.i
  %tobool.not.i = icmp eq ptr %54, null
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end10.i.if.end36_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end10.i.if.end36_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end36:                                         ; preds = %if.end10.i.if.end36_crit_edge, %xor8_buf.exit17.i.i.if.end36_crit_edge, %xor8_buf.exit.i.i.if.end36_crit_edge, %for.cond.preheader.i.if.end36_crit_edge, %xor8_buf.exit.i.if.end36_crit_edge, %if.then30.if.end36_crit_edge
  %storemerge = phi i32 [ 0, %if.then30.if.end36_crit_edge ], [ -22, %xor8_buf.exit.i.if.end36_crit_edge ], [ 0, %for.cond.preheader.i.if.end36_crit_edge ], [ -22, %xor8_buf.exit17.i.i.if.end36_crit_edge ], [ -22, %xor8_buf.exit.i.i.if.end36_crit_edge ], [ 0, %if.end10.i.if.end36_crit_edge ]
  %55 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge, ptr %ret, align 8
  br i1 %tobool38.not, label %if.else40, label %if.end36.do.body46_crit_edge

if.end36.do.body46_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body46

if.else40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lay, align 4
  %status_own = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %status_own to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %status_own, align 1
  %60 = lshr i8 %59, 1
  br label %do.body46

do.body46:                                        ; preds = %if.else40, %if.end36.do.body46_crit_edge
  %.sink = phi i8 [ %60, %if.else40 ], [ -2, %if.end36.do.body46_crit_edge ]
  %61 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 16
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %61, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_comp_handler.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_comp_handler, %if.then52)) #16
          to label %if.end65 [label %if.then52], !srcloc !670

if.then52:                                        ; preds = %do.body46
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %65 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i181 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i181 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %68, i32 0, i32 68
  %69 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pid56, align 8
  %71 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ret, align 8
  %73 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %61, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %74)
  %75 = icmp ult i8 %74, 17
  br i1 %75, label %switch.lookup, label %if.then52.deliv_status_to_str.exit_crit_edge

if.then52.deliv_status_to_str.exit_crit_edge:     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %deliv_status_to_str.exit

switch.lookup:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  %76 = sext i8 %74 to i32
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.mlx5_cmd_comp_handler, i32 0, i32 %76
  %77 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %77)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %deliv_status_to_str.exit

deliv_status_to_str.exit:                         ; preds = %switch.lookup, %if.then52.deliv_status_to_str.exit_crit_edge
  %retval.0.i182 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.241, %if.then52.deliv_status_to_str.exit_crit_edge ]
  %conv61 = zext i8 %74 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_comp_handler.__UNIQUE_ID_ddebug528, ptr noundef %64, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.217, i32 noundef 1627, i32 noundef %70, i32 noundef %72, ptr noundef nonnull %retval.0.i182, i32 noundef %conv61) #16
  br label %if.end65

if.end65:                                         ; preds = %deliv_status_to_str.exit, %do.body46, %if.end25.if.end65_crit_edge
  %78 = ptrtoint ptr %callback11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %callback11, align 4
  %tobool67.not = icmp eq ptr %79, null
  br i1 %tobool67.not, label %if.else113, label %if.then68

if.then68:                                        ; preds = %if.end65
  %op = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 20
  %80 = ptrtoint ptr %op to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2831, i16 %81)
  %cmp71 = icmp ult i16 %81, 2831
  br i1 %cmp71, label %if.then73, label %if.then68.if.end89_crit_edge

if.then68.if.end89_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end89

if.then73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #18
  %conv70 = zext i16 %81 to i32
  %82 = ptrtoint ptr %ts2 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %ts2, align 8
  %ts1 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 18
  %84 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ts1, align 8
  %sub = sub i64 %83, %85
  %86 = ptrtoint ptr %stats74 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %stats74, align 4
  %arrayidx76 = getelementptr %struct.mlx5_cmd_stats, ptr %87, i32 %conv70
  %lock = getelementptr %struct.mlx5_cmd_stats, ptr %87, i32 %conv70, i32 3
  %call83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %88 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx76, align 8
  %add = add i64 %sub, %89
  store i64 %add, ptr %arrayidx76, align 8
  %n = getelementptr %struct.mlx5_cmd_stats, ptr %87, i32 %conv70, i32 1
  %90 = ptrtoint ptr %n to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %n, align 8
  %inc = add i64 %91, 1
  store i64 %inc, ptr %n, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call83) #16
  br label %if.end89

if.end89:                                         ; preds = %if.then73, %if.then68.if.end89_crit_edge
  %92 = ptrtoint ptr %callback11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %callback11, align 4
  %context91 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 7
  %94 = ptrtoint ptr %context91 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %context91, align 4
  %96 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ret, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool93.not = icmp eq i32 %97, 0
  br i1 %tobool93.not, label %if.then94, label %if.end89.if.end103_crit_edge

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then94:                                        ; preds = %if.end89
  %uout = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 3
  %98 = ptrtoint ptr %uout to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %uout, align 4
  %100 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %out, align 8
  %tobool.not.i183 = icmp eq ptr %99, null
  %tobool1.not.i = icmp eq ptr %101, null
  %or.cond.i184 = or i1 %tobool.not.i183, %tobool1.not.i
  br i1 %or.cond.i184, label %if.then94.if.end103_crit_edge, label %if.end.i

if.then94.if.end103_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.end.i:                                         ; preds = %if.then94
  %uout_size = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 4
  %102 = ptrtoint ptr %uout_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %uout_size, align 8
  %104 = tail call i32 @llvm.smin.i32(i32 %103, i32 16) #16
  %first.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %101, i32 0, i32 3
  %105 = call ptr @memcpy(ptr %99, ptr %first.i, i32 %104)
  %sub.i = sub i32 %103, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool3.not42.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not42.i, label %if.end.i.cond.false_crit_edge, label %while.body.preheader.i

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

while.body.preheader.i:                           ; preds = %if.end.i
  %next2.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %101, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %99, i32 %104
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.body.preheader.i
  %next.045.in.i = phi ptr [ %next17.i, %if.end6.i.while.body.i_crit_edge ], [ %next2.i, %while.body.preheader.i ]
  %to.addr.044.i = phi ptr [ %add.ptr15.i, %if.end6.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %size.addr.043.i = phi i32 [ %sub16.i, %if.end6.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %106 = ptrtoint ptr %next.045.in.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %next.045.i = load ptr, ptr %next.045.in.i, align 4
  %tobool4.not.i = icmp eq ptr %next.045.i, null
  br i1 %tobool4.not.i, label %while.body.i.if.end103_crit_edge, label %if.end6.i

while.body.i.if.end103_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.end6.i:                                        ; preds = %while.body.i
  %107 = tail call i32 @llvm.smin.i32(i32 %size.addr.043.i, i32 512) #16
  %108 = ptrtoint ptr %next.045.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %next.045.i, align 4
  %110 = call ptr @memcpy(ptr %to.addr.044.i, ptr %109, i32 %107)
  %add.ptr15.i = getelementptr i8, ptr %to.addr.044.i, i32 %107
  %sub16.i = sub i32 %size.addr.043.i, %107
  %next17.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.045.i, i32 0, i32 2
  %tobool3.not.i = icmp eq i32 %sub16.i, 0
  br i1 %tobool3.not.i, label %if.end6.i.cond.false_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end6.i.cond.false_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

cond.false:                                       ; preds = %if.end6.i.cond.false_crit_edge, %if.end.i.cond.false_crit_edge
  %in = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 1
  %111 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %in, align 4
  %first98 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %uout to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %uout, align 4
  %call102 = tail call fastcc i32 @mlx5_cmd_check(ptr noundef %dev, ptr noundef %first98, ptr noundef %114)
  br label %if.end103

if.end103:                                        ; preds = %cond.false, %while.body.i.if.end103_crit_edge, %if.then94.if.end103_crit_edge, %if.end89.if.end103_crit_edge
  %err.0 = phi i32 [ %97, %if.end89.if.end103_crit_edge ], [ %call102, %cond.false ], [ -12, %if.then94.if.end103_crit_edge ], [ -12, %while.body.i.if.end103_crit_edge ]
  %115 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %out, align 8
  %next.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %next.i, align 4
  %tobool.not6.i = icmp eq ptr %118, null
  br i1 %tobool.not6.i, label %if.end103.mlx5_free_cmd_msg.exit_crit_edge, label %if.end103.while.body.i188_crit_edge

if.end103.while.body.i188_crit_edge:              ; preds = %if.end103
  br label %while.body.i188

if.end103.mlx5_free_cmd_msg.exit_crit_edge:       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

while.body.i188:                                  ; preds = %while.body.i188.while.body.i188_crit_edge, %if.end103.while.body.i188_crit_edge
  %head.07.i = phi ptr [ %120, %while.body.i188.while.body.i188_crit_edge ], [ %118, %if.end103.while.body.i188_crit_edge ]
  %next2.i186 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 2
  %119 = ptrtoint ptr %next2.i186 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %next2.i186, align 4
  %121 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pool.i.i, align 4
  %123 = ptrtoint ptr %head.07.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.07.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 1
  %125 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %122, ptr noundef %124, i32 noundef %126) #16
  tail call void @kfree(ptr noundef nonnull %head.07.i) #16
  %tobool.not.i187 = icmp eq ptr %120, null
  br i1 %tobool.not.i187, label %while.body.i188.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.i188.while.body.i188_crit_edge

while.body.i188.while.body.i188_crit_edge:        ; preds = %while.body.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i188

while.body.i188.mlx5_free_cmd_msg.exit_crit_edge: ; preds = %while.body.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

mlx5_free_cmd_msg.exit:                           ; preds = %while.body.i188.mlx5_free_cmd_msg.exit_crit_edge, %if.end103.mlx5_free_cmd_msg.exit_crit_edge
  tail call void @kfree(ptr noundef %116) #16
  %in105 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 1
  %127 = ptrtoint ptr %in105 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %in105, align 4
  tail call fastcc void @free_msg(ptr noundef %dev, ptr noundef %128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool106.not = icmp eq i32 %err.0, 0
  br i1 %tobool106.not, label %cond.false108, label %mlx5_free_cmd_msg.exit.cond.end111_crit_edge

mlx5_free_cmd_msg.exit.cond.end111_crit_edge:     ; preds = %mlx5_free_cmd_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end111

cond.false108:                                    ; preds = %mlx5_free_cmd_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %status109 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 16
  %129 = ptrtoint ptr %status109 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %status109, align 8
  %conv110 = zext i8 %130 to i32
  br label %cond.end111

cond.end111:                                      ; preds = %cond.false108, %mlx5_free_cmd_msg.exit.cond.end111_crit_edge
  %cond112 = phi i32 [ %conv110, %cond.false108 ], [ %err.0, %mlx5_free_cmd_msg.exit.cond.end111_crit_edge ]
  tail call fastcc void @cmd_ent_put(ptr noundef %7)
  tail call void %93(i32 noundef %cond112, ptr noundef %95) #16
  br label %for.inc

if.else113:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %done = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %7, i32 0, i32 10
  tail call void @complete(ptr noundef %done) #16
  br label %for.inc

for.inc:                                          ; preds = %if.else113, %cond.end111, %do.end, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc116 = add nuw nsw i32 %i.0196, 1
  %131 = ptrtoint ptr %log_sz to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %log_sz, align 2
  %conv2 = zext i8 %132 to i32
  %shl = shl nuw i32 1, %conv2
  %cmp = icmp slt i32 %inc116, %shl
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vector)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmd_ent_put(ptr noundef %ent) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 11
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %alloc_lock = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #16
  %refcnt = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !671
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #16, !srcloc !672
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !669

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #16
  br label %out

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !673
  %idx = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp7 = icmp sgt i32 %4, -1
  br i1 %cmp7, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then9.cmd_free_index.exit_crit_edge, label %land.rhs.i

if.then9.cmd_free_index.exit_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cmd_free_index.exit

land.rhs.i:                                       ; preds = %if.then9
  %dep_map.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.cmd_free_index.exit_crit_edge, !prof !668

land.rhs.i.cmd_free_index.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cmd_free_index.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.186, i32 noundef 134, i32 noundef 9, ptr noundef null) #16
  br label %cmd_free_index.exit

cmd_free_index.exit:                              ; preds = %do.end.i, %land.rhs.i.cmd_free_index.exit_crit_edge, %if.then9.cmd_free_index.exit_crit_edge
  %bitmask.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef %4, ptr noundef %bitmask.i) #16
  %page_queue = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 15
  %6 = ptrtoint ptr %page_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %pages_sem = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 20
  %sem = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 19
  %cond = select i1 %tobool.not, ptr %sem, ptr %pages_sem
  tail call void @up(ptr noundef %cond) #16
  br label %if.end11

if.end11:                                         ; preds = %cmd_free_index.exit, %if.end.if.end11_crit_edge
  tail call void @kfree(ptr noundef %ent) #16
  br label %out

out:                                              ; preds = %if.end11, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_flush(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %max_reg_cmds = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 10
  %0 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_reg_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %while.cond.preheader.lr.ph, label %entry.while.cond2.preheader_crit_edge

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond2.preheader

while.cond.preheader.lr.ph:                       ; preds = %entry
  %sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.029 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %call26 = tail call i32 @down_trylock(ptr noundef %sem) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not27 = icmp eq i32 %call26, 0
  br i1 %tobool.not27, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

while.cond2.preheader:                            ; preds = %for.inc.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %pages_sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20
  %call330 = tail call i32 @down_trylock(ptr noundef %pages_sem) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool4.not31 = icmp eq i32 %call330, 0
  br i1 %tobool4.not31, label %while.cond2.preheader.while.end6_crit_edge, label %while.cond2.preheader.while.body5_crit_edge

while.cond2.preheader.while.body5_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body5

while.cond2.preheader.while.end6_crit_edge:       ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end6

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @mlx5_cmd_trigger_completions(ptr noundef %dev)
  %call = tail call i32 @down_trylock(ptr noundef %sem) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %2 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_reg_cmds, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.while.cond2.preheader_crit_edge

for.inc.while.cond2.preheader_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond2.preheader

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.cond2.preheader.while.body5_crit_edge
  tail call void @mlx5_cmd_trigger_completions(ptr noundef %dev)
  %call3 = tail call i32 @down_trylock(ptr noundef %pages_sem) #16
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %while.body5.while.end6_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body5

while.body5.while.end6_crit_edge:                 ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end6

while.end6:                                       ; preds = %while.body5.while.end6_crit_edge, %while.cond2.preheader.while.end6_crit_edge
  tail call void @up(ptr noundef %pages_sem) #16
  %4 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_reg_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1032 = icmp sgt i32 %5, 0
  br i1 %cmp1032, label %for.body11.lr.ph, label %while.end6.for.end15_crit_edge

while.end6.for.end15_crit_edge:                   ; preds = %while.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end15

for.body11.lr.ph:                                 ; preds = %while.end6
  %sem12 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  br label %for.body11

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.body11.lr.ph
  %i.133 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc14, %for.body11.for.body11_crit_edge ]
  tail call void @up(ptr noundef %sem12) #16
  %inc14 = add nuw nsw i32 %i.133, 1
  %6 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_reg_cmds, align 4
  %cmp10 = icmp slt i32 %inc14, %7
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.end15_crit_edge

for.body11.for.end15_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end15

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body11

for.end15:                                        ; preds = %for.body11.for.end15_crit_edge, %while.end6.for.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @mlx5_cmd_check(ptr noundef %dev, ptr noundef %in, ptr noundef %out)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmd_exec(ptr noundef %dev, ptr noundef readonly %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size, ptr noundef %callback, ptr noundef %context, i1 noundef zeroext %force_polling) unnamed_addr #3 align 64 {
entry:
  %status = alloca i8, align 1
  %drv_synd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #16
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_synd) #16
  %1 = ptrtoint ptr %drv_synd to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %drv_synd, align 4, !annotation !674
  %2 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 1
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %mlx5_cmd_is_down.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

mlx5_cmd_is_down.exit:                            ; preds = %lor.lhs.false.i
  %state1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i = icmp eq i32 %11, 2
  br i1 %cmp2.i, label %mlx5_cmd_is_down.exit.if.then_crit_edge, label %lor.lhs.false

mlx5_cmd_is_down.exit.if.then_crit_edge:          ; preds = %mlx5_cmd_is_down.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %mlx5_cmd_is_down.exit
  %allowed_opcode.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 22
  %12 = ptrtoint ptr %allowed_opcode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %allowed_opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i = icmp eq i16 %13, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %conv)
  %cmp5.i = icmp eq i16 %13, %conv
  %retval.0.i130 = or i1 %cmp.i, %cmp5.i
  br i1 %retval.0.i130, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %mlx5_cmd_is_down.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = call fastcc i32 @mlx5_internal_err_ret_value(ptr noundef %dev, i16 noundef zeroext %conv, ptr noundef nonnull %drv_synd, ptr noundef nonnull %status)
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  %conv4 = zext i8 %15 to i32
  %16 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out, align 4
  %and7 = and i32 %17, 16777215
  %shl = shl nuw i32 %conv4, 24
  %or = or i32 %and7, %shl
  store i32 %or, ptr %out, align 4
  %18 = ptrtoint ptr %drv_synd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drv_synd, align 4
  %add.ptr17 = getelementptr i32, ptr %out, i32 1
  %20 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %add.ptr17, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shr.mask.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 17301504, i32 %shr.mask.i)
  %cmp.i131 = icmp eq i32 %shr.mask.i, 17301504
  %conv.i = zext i1 %cmp.i131 to i32
  %tobool.not = icmp eq ptr %callback, null
  %cond = select i1 %tobool.not, i32 3264, i32 2592
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %in_size)
  %cmp.i132 = icmp slt i32 %in_size, 17
  br i1 %cmp.i132, label %if.end.cache_miss.i_crit_edge, label %for.body.preheader.i

if.end.cache_miss.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cache_miss.i

for.body.preheader.i:                             ; preds = %if.end
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 0
  %max_inbox_size.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 0, i32 2
  %21 = ptrtoint ptr %max_inbox_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_inbox_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %in_size)
  %cmp3.i = icmp ult i32 %22, %in_size
  br i1 %cmp3.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end5.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.preheader.i
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.i) #16
  %head.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 0, i32 1
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.not.i133 = icmp eq ptr %24, %head.i
  br i1 %cmp.i.not.i133, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.i) #16
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end5.4.i.if.end9.i_crit_edge, %if.end5.3.i.if.end9.i_crit_edge, %if.end5.2.i.if.end9.i_crit_edge, %if.end5.1.i.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  %arrayidx.lcssa.i = phi ptr [ %arrayidx.i, %if.end5.i.if.end9.i_crit_edge ], [ %arrayidx.1.i, %if.end5.1.i.if.end9.i_crit_edge ], [ %arrayidx.2.i, %if.end5.2.i.if.end9.i_crit_edge ], [ %arrayidx.3.i, %if.end5.3.i.if.end9.i_crit_edge ], [ %arrayidx.4.i, %if.end5.4.i.if.end9.i_crit_edge ]
  %.lcssa.i = phi ptr [ %24, %if.end5.i.if.end9.i_crit_edge ], [ %35, %if.end5.1.i.if.end9.i_crit_edge ], [ %39, %if.end5.2.i.if.end9.i_crit_edge ], [ %43, %if.end5.3.i.if.end9.i_crit_edge ], [ %47, %if.end5.4.i.if.end9.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %.lcssa.i, i32 0, i32 2
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %in_size, ptr %len.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.for.end.i_crit_edge

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.lcssa.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 1
  %max_inbox_size.1.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 1, i32 2
  %32 = ptrtoint ptr %max_inbox_size.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_inbox_size.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %in_size)
  %cmp3.1.i = icmp ult i32 %33, %in_size
  br i1 %cmp3.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end5.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

if.end5.1.i:                                      ; preds = %for.inc.i
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.1.i) #16
  %head.1.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 1, i32 1
  %34 = ptrtoint ptr %head.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %head.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %35, %head.1.i
  br i1 %cmp.i.not.1.i, label %if.then7.1.i, label %if.end5.1.i.if.end9.i_crit_edge

if.end5.1.i.if.end9.i_crit_edge:                  ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.1.i:                                     ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.1.i) #16
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then7.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 2
  %max_inbox_size.2.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 2, i32 2
  %36 = ptrtoint ptr %max_inbox_size.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_inbox_size.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %in_size)
  %cmp3.2.i = icmp ult i32 %37, %in_size
  br i1 %cmp3.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end5.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

if.end5.2.i:                                      ; preds = %for.inc.1.i
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.2.i) #16
  %head.2.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 2, i32 1
  %38 = ptrtoint ptr %head.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %head.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %39, %head.2.i
  br i1 %cmp.i.not.2.i, label %if.then7.2.i, label %if.end5.2.i.if.end9.i_crit_edge

if.end5.2.i.if.end9.i_crit_edge:                  ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.2.i:                                     ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.2.i) #16
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then7.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 3
  %max_inbox_size.3.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 3, i32 2
  %40 = ptrtoint ptr %max_inbox_size.3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_inbox_size.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %in_size)
  %cmp3.3.i = icmp ult i32 %41, %in_size
  br i1 %cmp3.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end5.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i

if.end5.3.i:                                      ; preds = %for.inc.2.i
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.3.i) #16
  %head.3.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 3, i32 1
  %42 = ptrtoint ptr %head.3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %head.3.i, align 4
  %cmp.i.not.3.i = icmp eq ptr %43, %head.3.i
  br i1 %cmp.i.not.3.i, label %if.then7.3.i, label %if.end5.3.i.if.end9.i_crit_edge

if.end5.3.i.if.end9.i_crit_edge:                  ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.3.i:                                     ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.3.i) #16
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then7.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 4
  %max_inbox_size.4.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 4, i32 2
  %44 = ptrtoint ptr %max_inbox_size.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_inbox_size.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %in_size)
  %cmp3.4.i = icmp ult i32 %45, %in_size
  br i1 %cmp3.4.i, label %for.inc.3.i.cache_miss.i_crit_edge, label %if.end5.4.i

for.inc.3.i.cache_miss.i_crit_edge:               ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cache_miss.i

if.end5.4.i:                                      ; preds = %for.inc.3.i
  tail call void @_raw_spin_lock_irq(ptr noundef %arrayidx.4.i) #16
  %head.4.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 4, i32 1
  %46 = ptrtoint ptr %head.4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %head.4.i, align 4
  %cmp.i.not.4.i = icmp eq ptr %47, %head.4.i
  br i1 %cmp.i.not.4.i, label %if.then7.4.i, label %if.end5.4.i.if.end9.i_crit_edge

if.end5.4.i.if.end9.i_crit_edge:                  ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9.i

if.then7.4.i:                                     ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.4.i) #16
  br label %cache_miss.i

for.end.i:                                        ; preds = %if.end.i.i.i, %if.end9.i.for.end.i_crit_edge
  %48 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %arrayidx.lcssa.i) #16
  %cmp.i34.i = icmp ugt ptr %.lcssa.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34.i, label %for.end.i.cache_miss.i_crit_edge, label %for.end.i.alloc_msg.exit_crit_edge

for.end.i.alloc_msg.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %alloc_msg.exit

for.end.i.cache_miss.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cache_miss.i

cache_miss.i:                                     ; preds = %for.end.i.cache_miss.i_crit_edge, %if.then7.4.i, %for.inc.3.i.cache_miss.i_crit_edge, %if.end.cache_miss.i_crit_edge
  %call15.i = tail call fastcc ptr @mlx5_alloc_cmd_msg(ptr noundef %dev, i32 noundef %cond, i32 noundef %in_size, i8 noundef zeroext 0) #16
  br label %alloc_msg.exit

alloc_msg.exit:                                   ; preds = %cache_miss.i, %for.end.i.alloc_msg.exit_crit_edge
  %retval.0.i134 = phi ptr [ %call15.i, %cache_miss.i ], [ %.lcssa.i, %for.end.i.alloc_msg.exit_crit_edge ]
  %cmp.i135 = icmp ugt ptr %retval.0.i134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then28, label %if.end30

if.then28:                                        ; preds = %alloc_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %retval.0.i134 to i32
  br label %cleanup

if.end30:                                         ; preds = %alloc_msg.exit
  %token_lock.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 14
  tail call void @_raw_spin_lock(ptr noundef %token_lock.i) #16
  %token1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 15
  %51 = ptrtoint ptr %token1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %token1.i, align 4
  %inc.i = add i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i136 = icmp eq i8 %inc.i, 0
  %inc5.i = add i8 %52, 2
  %spec.select.i = select i1 %cmp.i136, i8 %inc5.i, i8 %inc.i
  %53 = ptrtoint ptr %token1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %spec.select.i, ptr %token1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %token_lock.i) #16
  %tobool.not.i = icmp eq ptr %retval.0.i134, null
  %tobool1.not.i = icmp eq ptr %in, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end30.do.end38_crit_edge, label %if.end.i

if.end30.do.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

if.end.i:                                         ; preds = %if.end30
  %54 = tail call i32 @llvm.smin.i32(i32 %in_size, i32 16) #16
  %first.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %retval.0.i134, i32 0, i32 3
  %55 = call ptr @memcpy(ptr %first.i, ptr %in, i32 %54)
  %sub.i = sub i32 %in_size, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool3.not44.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not44.i, label %if.end.i.if.end40_crit_edge, label %while.body.preheader.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

while.body.preheader.i:                           ; preds = %if.end.i
  %next2.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %retval.0.i134, i32 0, i32 4
  %add.ptr.i = getelementptr i8, ptr %in, i32 %54
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.body.preheader.i
  %next.047.in.i = phi ptr [ %next18.i, %if.end6.i.while.body.i_crit_edge ], [ %next2.i, %while.body.preheader.i ]
  %from.addr.046.i = phi ptr [ %add.ptr15.i, %if.end6.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %size.addr.045.i = phi i32 [ %sub16.i, %if.end6.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %56 = ptrtoint ptr %next.047.in.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %next.047.i = load ptr, ptr %next.047.in.i, align 4
  %tobool4.not.i = icmp eq ptr %next.047.i, null
  br i1 %tobool4.not.i, label %while.body.i.do.end38_crit_edge, label %if.end6.i

while.body.i.do.end38_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end38

if.end6.i:                                        ; preds = %while.body.i
  %57 = tail call i32 @llvm.smin.i32(i32 %size.addr.045.i, i32 512) #16
  %58 = ptrtoint ptr %next.047.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %next.047.i, align 4
  %60 = call ptr @memcpy(ptr %59, ptr %from.addr.046.i, i32 %57)
  %add.ptr15.i = getelementptr i8, ptr %from.addr.046.i, i32 %57
  %sub16.i = sub i32 %size.addr.045.i, %57
  %token17.i = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %59, i32 0, i32 5
  %61 = ptrtoint ptr %token17.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select.i, ptr %token17.i, align 1
  %next18.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.047.i, i32 0, i32 2
  %tobool3.not.i = icmp eq i32 %sub16.i, 0
  br i1 %tobool3.not.i, label %if.end6.i.if.end40_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end6.i.if.end40_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40

do.end38:                                         ; preds = %while.body.i.do.end38_crit_edge, %if.end30.do.end38_crit_edge
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %64 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.243, i32 noundef 1826, i32 noundef %69, i32 noundef -12) #19
  br label %out_in

if.end40:                                         ; preds = %if.end6.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge
  %call41 = tail call fastcc ptr @mlx5_alloc_cmd_msg(ptr noundef %dev, i32 noundef %cond, i32 noundef %out_size, i8 noundef zeroext %spec.select.i)
  %cmp.i138 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %call41 to i32
  br label %out_in

if.end45:                                         ; preds = %if.end40
  %call47 = call fastcc i32 @mlx5_cmd_invoke(ptr noundef %dev, ptr noundef %retval.0.i134, ptr noundef %call41, ptr noundef %out, i32 noundef %out_size, ptr noundef %callback, ptr noundef %context, i32 noundef %conv.i, ptr noundef nonnull %status, i8 noundef zeroext %spec.select.i, i1 noundef zeroext %force_polling)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body51, label %if.end45.out_out_crit_edge

if.end45.out_out_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_out

do.body51:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmd_exec.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_exec, %if.then57)) #16
          to label %do.end65 [label %if.then57], !srcloc !670

if.then57:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 8
  %73 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i139 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i139 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %task60, align 8
  %pid61 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 68
  %77 = ptrtoint ptr %pid61 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pid61, align 8
  %79 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %status, align 1
  %conv62 = zext i8 %80 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmd_exec.__UNIQUE_ID_ddebug532, ptr noundef %72, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.243, i32 noundef 1841, i32 noundef %78, i32 noundef 0, i32 noundef %conv62) #16
  br label %do.end65

do.end65:                                         ; preds = %if.then57, %do.body51
  %81 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool66.not = icmp eq i8 %82, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  %call68 = tail call fastcc i32 @status_to_err(i8 noundef zeroext %82)
  br label %out_out

if.end69:                                         ; preds = %do.end65
  br i1 %tobool.not, label %out_out.thread, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_out.thread:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %call72 = tail call fastcc i32 @mlx5_copy_from_msg(ptr noundef %out, ptr noundef %call41, i32 noundef %out_size)
  br label %if.then75

out_out:                                          ; preds = %if.then67, %if.end45.out_out_crit_edge
  %err.0 = phi i32 [ %call47, %if.end45.out_out_crit_edge ], [ %call68, %if.then67 ]
  br i1 %tobool.not, label %out_out.if.then75_crit_edge, label %out_out.cleanup_crit_edge

out_out.cleanup_crit_edge:                        ; preds = %out_out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

out_out.if.then75_crit_edge:                      ; preds = %out_out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then75

if.then75:                                        ; preds = %out_out.if.then75_crit_edge, %out_out.thread
  %err.0147 = phi i32 [ %call72, %out_out.thread ], [ %err.0, %out_out.if.then75_crit_edge ]
  %next.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %call41, i32 0, i32 4
  %83 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next.i, align 4
  %tobool.not6.i = icmp eq ptr %84, null
  br i1 %tobool.not6.i, label %if.then75.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.lr.ph.i

if.then75.mlx5_free_cmd_msg.exit_crit_edge:       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

while.body.lr.ph.i:                               ; preds = %if.then75
  %pool.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  br label %while.body.i142

while.body.i142:                                  ; preds = %while.body.i142.while.body.i142_crit_edge, %while.body.lr.ph.i
  %head.07.i = phi ptr [ %84, %while.body.lr.ph.i ], [ %86, %while.body.i142.while.body.i142_crit_edge ]
  %next2.i140 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 2
  %85 = ptrtoint ptr %next2.i140 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %next2.i140, align 4
  %87 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pool.i.i, align 4
  %89 = ptrtoint ptr %head.07.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %head.07.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 1
  %91 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %88, ptr noundef %90, i32 noundef %92) #16
  tail call void @kfree(ptr noundef nonnull %head.07.i) #16
  %tobool.not.i141 = icmp eq ptr %86, null
  br i1 %tobool.not.i141, label %while.body.i142.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.i142.while.body.i142_crit_edge

while.body.i142.while.body.i142_crit_edge:        ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i142

while.body.i142.mlx5_free_cmd_msg.exit_crit_edge: ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

mlx5_free_cmd_msg.exit:                           ; preds = %while.body.i142.mlx5_free_cmd_msg.exit_crit_edge, %if.then75.mlx5_free_cmd_msg.exit_crit_edge
  tail call void @kfree(ptr noundef %call41) #16
  br label %out_in

out_in:                                           ; preds = %mlx5_free_cmd_msg.exit, %if.then43, %do.end38
  %err.1 = phi i32 [ -12, %do.end38 ], [ %70, %if.then43 ], [ %err.0147, %mlx5_free_cmd_msg.exit ]
  br i1 %tobool.not, label %if.then78, label %out_in.cleanup_crit_edge

out_in.cleanup_crit_edge:                         ; preds = %out_in
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then78:                                        ; preds = %out_in
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @free_msg(ptr noundef %dev, ptr noundef %retval.0.i134)
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %out_in.cleanup_crit_edge, %out_out.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then28, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %50, %if.then28 ], [ %err.1, %if.then78 ], [ %err.1, %out_in.cleanup_crit_edge ], [ %err.0, %out_out.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_synd) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_cmd_check(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %in, ptr nocapture noundef readonly %out) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out, align 4
  %shr.i = lshr i32 %1, 24
  %conv.i = trunc i32 %shr.i to i8
  %add.ptr1.i = getelementptr i32, ptr %out, i32 1
  %2 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not = icmp eq i8 %conv.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in, align 4
  %shr = lshr i32 %5, 16
  %add.ptr1 = getelementptr i32, ptr %in, i32 1
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr1, align 4
  %conv8 = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv8)
  %tobool9.not = icmp ne i16 %conv8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %shr)
  %cmp.not = icmp eq i32 %shr, 514
  %or.cond = or i1 %tobool9.not, %cmp.not
  br i1 %or.cond, label %do.body26, label %do.body

do.body:                                          ; preds = %if.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @mlx5_cmd_check._rs, ptr noundef nonnull @__func__.mlx5_cmd_check) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %do.body.if.end45_crit_edge, label %do.end

do.body.if.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  %call18 = tail call ptr @mlx5_command_str(i32 noundef %shr)
  %conv20 = and i32 %7, 65535
  %call21 = tail call fastcc ptr @cmd_status_str(i8 noundef zeroext %conv.i)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.280, ptr noundef nonnull @__func__.mlx5_cmd_check, i32 noundef 790, i32 noundef %15, ptr noundef nonnull %call18, i32 noundef %shr, i32 noundef %conv20, ptr noundef nonnull %call21, i32 noundef %shr.i, i32 noundef %3) #19
  br label %if.end45

do.body26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_check.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_check, %if.then31)) #16
          to label %if.end45 [label %if.then31], !srcloc !670

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %18 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i59 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i59 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid35, align 8
  %call37 = tail call ptr @mlx5_command_str(i32 noundef %shr)
  %conv39 = and i32 %7, 65535
  %call40 = tail call fastcc ptr @cmd_status_str(i8 noundef zeroext %conv.i)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_check.__UNIQUE_ID_ddebug505, ptr noundef %17, ptr noundef nonnull @.str.280, ptr noundef nonnull @__func__.mlx5_cmd_check, i32 noundef 798, i32 noundef %23, ptr noundef nonnull %call37, i32 noundef %shr, i32 noundef %conv39, ptr noundef nonnull %call40, i32 noundef %shr.i, i32 noundef %3) #16
  br label %if.end45

if.end45:                                         ; preds = %if.then31, %do.body26, %do.end, %do.body.if.end45_crit_edge
  %24 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.313)
  switch i8 %conv.i, label %if.end45.cleanup_crit_edge [
    i8 64, label %sw.bb15.i
    i8 48, label %sw.bb14.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb3.i
    i8 16, label %sw.bb13.i
    i8 5, label %sw.bb5.i
    i8 6, label %sw.bb6.i
    i8 8, label %sw.bb7.i
    i8 9, label %sw.bb8.i
    i8 10, label %sw.bb9.i
    i8 15, label %sw.bb10.i
  ]

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb9.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb10.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb15.i ], [ -22, %sw.bb14.i ], [ -22, %sw.bb13.i ], [ -11, %sw.bb10.i ], [ -22, %sw.bb9.i ], [ -22, %sw.bb8.i ], [ -12, %sw.bb7.i ], [ -16, %sw.bb6.i ], [ -22, %sw.bb5.i ], [ -22, %sw.bb3.i ], [ -22, %sw.bb2.i ], [ -5, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_init_async_ctx(ptr noundef %dev, ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %ctx, align 4
  %num_inflight = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inflight, i32 noundef 4) #16
  %1 = ptrtoint ptr %num_inflight to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %num_inflight, align 4
  %wait = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.188, ptr noundef nonnull @mlx5_cmd_init_async_ctx.__key) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_cleanup_async_ctx(ptr noundef %ctx) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_inflight = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inflight, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %num_inflight, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inflight, ptr %num_inflight, i32 1, ptr elementtype(i32) %num_inflight) #16, !srcloc !675
  tail call void @__might_sleep(ptr noundef nonnull @.str.186, i32 noundef 1891) #16
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_inflight, i32 noundef 4) #16
  %1 = ptrtoint ptr %num_inflight to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %num_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.do.end12_crit_edge, label %if.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #16
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #16
  %wait = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 2
  %call521 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i1822 = call zeroext i1 @__kasan_check_read(ptr noundef %num_inflight, i32 noundef 4) #16
  %4 = ptrtoint ptr %num_inflight to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %num_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp823 = icmp eq i32 %5, 0
  br i1 %cmp823, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #16
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #16
  %call.i.i18 = call zeroext i1 @__kasan_check_read(ptr noundef %num_inflight, i32 noundef 4) #16
  %6 = ptrtoint ptr %num_inflight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %num_inflight, align 4
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #16
  br label %do.end12

do.end12:                                         ; preds = %for.end, %entry.do.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_exec_cb(ptr noundef %ctx, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size, ptr noundef %callback, ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %work, align 4
  %user_callback = getelementptr inbounds %struct.mlx5_async_work, ptr %work, i32 0, i32 1
  %1 = ptrtoint ptr %user_callback to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %callback, ptr %user_callback, align 4
  %num_inflight = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inflight, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !676
  tail call void @llvm.prefetch.p0(ptr %num_inflight, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %num_inflight, ptr %num_inflight, i32 0, i32 1, ptr elementtype(i32) %num_inflight) #16, !srcloc !677
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end, label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.186, i32 noundef 1913, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end23:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !678
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 4
  %call24 = tail call fastcc i32 @cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size, ptr noundef nonnull @mlx5_cmd_exec_cb_handler, ptr noundef %work, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end23
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inflight, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !679
  tail call void @llvm.prefetch.p0(ptr %num_inflight, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inflight, ptr %num_inflight, i32 1, ptr elementtype(i32) %num_inflight) #16, !srcloc !680
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !681
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then28, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %wait = getelementptr inbounds %struct.mlx5_async_ctx, ptr %ctx, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call24, %if.then28 ], [ %call24, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_cmd_exec_cb_handler(i32 noundef %status, ptr noundef %_work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_work, align 4
  %user_callback = getelementptr inbounds %struct.mlx5_async_work, ptr %_work, i32 0, i32 1
  %2 = ptrtoint ptr %user_callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_callback, align 4
  tail call void %3(i32 noundef %status, ptr noundef %_work) #16
  %num_inflight = getelementptr inbounds %struct.mlx5_async_ctx, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inflight, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !679
  tail call void @llvm.prefetch.p0(ptr %num_inflight, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inflight, ptr %num_inflight, i32 1, ptr elementtype(i32) %num_inflight) #16, !srcloc !680
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !681
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %wait = getelementptr inbounds %struct.mlx5_async_ctx, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_exec_polling(ptr noundef %dev, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @mlx5_cmd_check(ptr noundef %dev, ptr noundef %in, ptr noundef %out)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cmd_init(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd19 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7
  %0 = call ptr @memset(ptr %cmd19, i32 0, i32 768)
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 12
  %1 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %2, i32 0, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #16, !srcloc !682
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !683
  %shr.i = lshr i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i)
  %cmp22.not = icmp eq i32 %shr.i, 5
  br i1 %cmp22.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef 2044, i32 noundef %11, i32 noundef 5, i32 noundef %shr.i) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 181184, i32 noundef 3520, i32 noundef -1) #20
  %stats = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 28
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i.i, ptr %stats, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %call31 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.193, ptr noundef %dev1.i, i32 noundef 576, i32 noundef 1024, i32 noundef 0) #16
  %pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  %15 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %pool, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end29.dma_pool_err_crit_edge, label %if.end35

if.end29.dma_pool_err_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_pool_err

if.end35:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %alloc_dma.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i.i, i32 noundef 4096, ptr noundef %alloc_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %cmd_alloc_buf.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %cmd_alloc_buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %cmd_alloc_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end35.err_free_pool_crit_edge, label %if.end.i

if.end35.err_free_pool_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_pool

if.end.i:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %call.i.i to i32
  %and.i257 = and i32 %19, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool4.not.i = icmp eq i32 %and.i257, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd_buf.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %cmd_buf.i, align 4
  %21 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alloc_dma.i, align 4
  br label %if.end39

if.end8.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %dev1.i49.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %alloc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i49.i, i32 noundef 4096, ptr noundef nonnull %call.i.i, i32 noundef %26, i32 noundef 0) #16
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %dev1.i51.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %call.i52.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i51.i, i32 noundef 8191, ptr noundef %alloc_dma.i, i32 noundef 3264, i32 noundef 0) #16
  %29 = ptrtoint ptr %cmd_alloc_buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i52.i, ptr %cmd_alloc_buf.i, align 4
  %tobool17.not.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool17.not.i, label %if.end8.i.err_free_pool_crit_edge, label %if.end19.i

if.end8.i.err_free_pool_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_pool

if.end19.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %call.i52.i to i32
  %add.i = add i32 %30, 4095
  %and21.i = and i32 %add.i, -4096
  %31 = inttoptr i32 %and21.i to ptr
  %cmd_buf22.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %cmd_buf22.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cmd_buf22.i, align 4
  %33 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %alloc_dma.i, align 4
  %add24.i = add i32 %34, 4095
  %and25.i = and i32 %add24.i, -4096
  br label %if.end39

if.end39:                                         ; preds = %if.end19.i, %if.then5.i
  %and25.sink.i = phi i32 [ %and25.i, %if.end19.i ], [ %22, %if.then5.i ]
  %.sink.i = phi i32 [ 8191, %if.end19.i ], [ 4096, %if.then5.i ]
  %dma26.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 6
  %35 = ptrtoint ptr %dma26.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and25.sink.i, ptr %dma26.i, align 4
  %alloc_size27.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 4
  %36 = ptrtoint ptr %alloc_size27.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i, ptr %alloc_size27.i, align 4
  %37 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz = getelementptr inbounds %struct.mlx5_init_seg, ptr %38, i32 0, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdq_addr_l_sz) #16, !srcloc !682
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !684
  %40 = trunc i32 %39 to i8
  %41 = lshr i8 %40, 4
  %log_sz = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 8
  %42 = ptrtoint ptr %log_sz to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %log_sz, align 2
  %conv44 = and i8 %40, 15
  %log_stride = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 9
  %43 = ptrtoint ptr %log_stride to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv44, ptr %log_stride, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %40)
  %cmp48 = icmp ugt i8 %40, 95
  br i1 %cmp48, label %do.end53, label %if.end61

do.end53:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %conv46 = zext i8 %41 to i32
  %shl47 = shl nuw nsw i32 1, %conv46
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %46 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i259 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i259 to ptr
  %task56 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task56, align 8
  %pid57 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 68
  %50 = ptrtoint ptr %pid57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pid57, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.190, i32 noundef 2067, i32 noundef %51, i32 noundef %shl47) #19
  br label %err_free_page

if.end61:                                         ; preds = %if.end39
  %narrow = add nuw nsw i8 %41, %conv44
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %narrow)
  %cmp67 = icmp ugt i8 %narrow, 12
  br i1 %cmp67, label %do.end72, label %if.end77

do.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %54 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i260 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i260 to ptr
  %task75 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task75, align 8
  %pid76 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid76, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.190, i32 noundef 2073, i32 noundef %59) #19
  br label %err_free_page

if.end77:                                         ; preds = %if.end61
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %state, align 4
  %checksum_disabled = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 27
  %61 = ptrtoint ptr %checksum_disabled to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %checksum_disabled, align 4
  %conv79 = zext i8 %41 to i32
  %notmask = shl nsw i32 -1, %conv79
  %sub81 = xor i32 %notmask, -1
  %max_reg_cmds = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 10
  %62 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub81, ptr %max_reg_cmds, align 4
  %notmask256 = shl nsw i32 -1, %sub81
  %sub84 = xor i32 %notmask256, -1
  %bitmask = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 16
  %63 = ptrtoint ptr %bitmask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub84, ptr %bitmask, align 4
  %64 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub = getelementptr inbounds %struct.mlx5_init_seg, ptr %65, i32 0, i32 1
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub) #16, !srcloc !682
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !685
  %shr89 = lshr i32 %66, 16
  %conv90 = trunc i32 %shr89 to i16
  %cmdif_rev = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 7
  %67 = ptrtoint ptr %cmdif_rev to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv90, ptr %cmdif_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 393215, i32 %66)
  %cmp93 = icmp ugt i32 %66, 393215
  br i1 %cmp93, label %do.end98, label %do.body106

do.end98:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %70 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i261 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i261 to ptr
  %task101 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task101, align 8
  %pid102 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 68
  %74 = ptrtoint ptr %pid102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pid102, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.190, i32 noundef 2086, i32 noundef %75, i32 noundef 5, i32 noundef %shr89) #19
  br label %err_free_page

do.body106:                                       ; preds = %if.end77
  %alloc_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %alloc_lock, ptr noundef nonnull @.str.203, ptr noundef nonnull @mlx5_cmd_init.__key, i16 noundef signext 3) #16
  %token_lock = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %token_lock, ptr noundef nonnull @.str.205, ptr noundef nonnull @mlx5_cmd_init.__key.204, i16 noundef signext 3) #16
  br label %do.body116

do.body116:                                       ; preds = %do.body116.do.body116_crit_edge, %do.body106
  %i.0285 = phi i32 [ 0, %do.body106 ], [ %inc, %do.body116.do.body116_crit_edge ]
  %76 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %stats, align 4
  %lock = getelementptr %struct.mlx5_cmd_stats, ptr %77, i32 %i.0285, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.207, ptr noundef nonnull @mlx5_cmd_init.__key.206, i16 noundef signext 3) #16
  %inc = add nuw nsw i32 %i.0285, 1
  %exitcond.not = icmp eq i32 %inc, 2831
  br i1 %exitcond.not, label %for.end, label %do.body116.do.body116_crit_edge

do.body116.do.body116_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body116

for.end:                                          ; preds = %do.body116
  %sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19
  %78 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_reg_cmds, align 4
  %wait_list1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 2
  %80 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 1
  %81 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 2
  %82 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 3
  %83 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 4
  %84 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 4, i32 2
  %85 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.298, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 4, i32 3
  %86 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 4, i32 4
  %87 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 0, i32 4, i32 5
  %88 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 1
  %89 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %79, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %90 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 19, i32 2, i32 1
  %91 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.299, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %pages_sem = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20
  %wait_list1.i262 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 2
  %92 = ptrtoint ptr %pages_sem to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %pages_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i263 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 1
  %93 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i263 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i263, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i264 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 2
  %94 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i264 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i264, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i265 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 3
  %95 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i265 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i265, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i266 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 4
  %96 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i266, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i267 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 4, i32 2
  %97 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i267 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @.str.298, ptr %.compoundliteral.sroa.6.0..sroa_idx.i267, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i268 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 4, i32 3
  %98 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i268 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i268, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i269 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 4, i32 4
  %99 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i269 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i269, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i270 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 0, i32 4, i32 5
  %100 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i270, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i271 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 1
  %101 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i271 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i271, align 4
  %102 = ptrtoint ptr %wait_list1.i262 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %wait_list1.i262, ptr %wait_list1.i262, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i272 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 20, i32 2, i32 1
  %103 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i272 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %wait_list1.i262, ptr %.compoundliteral.sroa.10.0..sroa_idx.i272, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i266, ptr noundef nonnull @.str.299, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %104 = ptrtoint ptr %dma26.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma26.i, align 4
  %and126 = and i32 %105, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body137, label %do.end131

do.end131:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 8
  %108 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i273 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i273 to ptr
  %task134 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %task134 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %task134, align 8
  %pid135 = getelementptr inbounds %struct.task_struct, ptr %111, i32 0, i32 68
  %112 = ptrtoint ptr %pid135 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pid135, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.190, i32 noundef 2102, i32 noundef %113) #19
  br label %err_free_page

do.body137:                                       ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !686
  tail call void @arm_heavy_mb() #16
  %114 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_h = getelementptr inbounds %struct.mlx5_init_seg, ptr %115, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmdq_addr_h, i32 0) #16, !srcloc !687
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !688
  tail call void @arm_heavy_mb() #16
  %116 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %iseg.i, align 4
  %cmdq_addr_l_sz145 = getelementptr inbounds %struct.mlx5_init_seg, ptr %117, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmdq_addr_l_sz145, i32 %105) #16, !srcloc !687
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !689
  tail call void @arm_heavy_mb() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_init.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_init, %if.then155)) #16
          to label %do.end164 [label %if.then155], !srcloc !670

if.then155:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #18
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 8
  %120 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i274 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i274 to ptr
  %task158 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %task158 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task158, align 8
  %pid159 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 68
  %124 = ptrtoint ptr %pid159 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pid159, align 8
  %126 = ptrtoint ptr %dma26.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma26.i, align 4
  %conv161 = zext i32 %127 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_init.__UNIQUE_ID_ddebug533, ptr noundef %119, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.190, i32 noundef 2113, i32 noundef %125, i64 noundef %conv161) #16
  br label %do.end164

do.end164:                                        ; preds = %if.then155, %do.body137
  %mode = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 21
  %128 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %mode, align 4
  %allowed_opcode = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 22
  %129 = ptrtoint ptr %allowed_opcode to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %allowed_opcode, align 4
  br label %for.body7.preheader.i

for.body7.preheader.i:                            ; preds = %for.inc12.i.for.body7.preheader.i_crit_edge, %do.end164
  %k.033.i = phi i32 [ 0, %do.end164 ], [ %inc13.i, %for.inc12.i.for.body7.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %k.033.i
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx.i, ptr noundef nonnull @.str.300, ptr noundef nonnull @create_msg_cache.__key, i16 noundef signext 3) #16
  %head.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %k.033.i, i32 1
  %130 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %k.033.i, i32 1, i32 1
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %head.i, ptr %prev.i.i, align 4
  %arrayidx2.i = getelementptr [5 x i32], ptr @cmd_cache_num_ent, i32 0, i32 %k.033.i
  %132 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx2.i, align 4
  %num_ent.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %k.033.i, i32 3
  %134 = ptrtoint ptr %num_ent.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %num_ent.i, align 4
  %arrayidx3.i = getelementptr [5 x i32], ptr @cmd_cache_ent_size, i32 0, i32 %k.033.i
  %135 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx3.i, align 4
  %max_inbox_size.i = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %k.033.i, i32 2
  %137 = ptrtoint ptr %max_inbox_size.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %max_inbox_size.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %list_add_tail.exit.i.for.body7.i_crit_edge, %for.body7.preheader.i
  %i.032.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body7.i_crit_edge ], [ 0, %for.body7.preheader.i ]
  %138 = ptrtoint ptr %max_inbox_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %max_inbox_size.i, align 4
  %call9.i = tail call fastcc ptr @mlx5_alloc_cmd_msg(ptr noundef %dev, i32 noundef 11456, i32 noundef %139, i8 noundef zeroext 0) #16
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body7.i.for.inc12.i_crit_edge, label %if.end.i276

for.body7.i.for.inc12.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc12.i

if.end.i276:                                      ; preds = %for.body7.i
  %parent.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %call9.i, i32 0, i32 1
  %140 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %arrayidx.i, ptr %parent.i, align 4
  %141 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i275 = tail call zeroext i1 @__list_add_valid(ptr noundef %call9.i, ptr noundef %142, ptr noundef %head.i) #16
  br i1 %call.i.i.i275, label %if.end.i.i.i, label %if.end.i276.list_add_tail.exit.i_crit_edge

if.end.i276.list_add_tail.exit.i_crit_edge:       ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i276
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call9.i, ptr %prev.i.i, align 4
  %144 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %head.i, ptr %call9.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %prev3.i.i.i, align 4
  %146 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %call9.i, ptr %142, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i276.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.032.i, 1
  %147 = ptrtoint ptr %num_ent.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_ent.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %148
  br i1 %cmp6.i, label %list_add_tail.exit.i.for.body7.i_crit_edge, label %list_add_tail.exit.i.for.inc12.i_crit_edge

list_add_tail.exit.i.for.inc12.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc12.i

list_add_tail.exit.i.for.body7.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.i

for.inc12.i:                                      ; preds = %list_add_tail.exit.i.for.inc12.i_crit_edge, %for.body7.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %k.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, 5
  br i1 %exitcond.not.i, label %create_msg_cache.exit, label %for.inc12.i.for.body7.preheader.i_crit_edge

for.inc12.i.for.body7.preheader.i_crit_edge:      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.preheader.i

create_msg_cache.exit:                            ; preds = %for.inc12.i
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %create_msg_cache.exit.set_wqname.exit_crit_edge

create_msg_cache.exit.set_wqname.exit_crit_edge:  ; preds = %create_msg_cache.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_wqname.exit

if.end.i.i:                                       ; preds = %create_msg_cache.exit
  call void @__sanitizer_cov_trace_pc() #18
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %150, align 4
  br label %set_wqname.exit

set_wqname.exit:                                  ; preds = %if.end.i.i, %create_msg_cache.exit.set_wqname.exit_crit_edge
  %retval.0.i.i = phi ptr [ %154, %if.end.i.i ], [ %152, %create_msg_cache.exit.set_wqname.exit_crit_edge ]
  %wq_name.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 17
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wq_name.i, i32 noundef 32, ptr noundef nonnull @.str.301, ptr noundef %retval.0.i.i) #16
  %call165 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.212, i32 noundef 917514, i32 noundef 1, ptr noundef %wq_name.i) #16
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 18
  %155 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call165, ptr %wq, align 4
  %tobool167.not = icmp eq ptr %call165, null
  br i1 %tobool167.not, label %do.end171, label %if.end176

do.end171:                                        ; preds = %set_wqname.exit
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 8
  %158 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i277 = and i32 %158, -16384
  %159 = inttoptr i32 %and.i277 to ptr
  %task174 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %task174 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task174, align 8
  %pid175 = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 68
  %162 = ptrtoint ptr %pid175 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pid175, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.190, i32 noundef 2123, i32 noundef %163) #19
  tail call fastcc void @destroy_msg_cache(ptr noundef %dev)
  br label %err_free_page

if.end176:                                        ; preds = %set_wqname.exit
  call void @__sanitizer_cov_trace_pc() #18
  %dbg1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 25
  %dbg_root.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %164 = ptrtoint ptr %dbg_root.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dbg_root.i, align 8
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.302, ptr noundef %165) #16
  %166 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call.i, ptr %dbg1.i, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.303, i16 noundef zeroext 256, ptr noundef %call.i, ptr noundef %dev, ptr noundef nonnull @dfops) #16
  %167 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dbg1.i, align 4
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.304, i16 noundef zeroext 128, ptr noundef %168, ptr noundef %dev, ptr noundef nonnull @dfops) #16
  %169 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dbg1.i, align 4
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.305, i16 noundef zeroext 384, ptr noundef %170, ptr noundef %dev, ptr noundef nonnull @olfops) #16
  %171 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dbg1.i, align 4
  %status.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 25, i32 3
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.306, i16 noundef zeroext 384, ptr noundef %172, ptr noundef %status.i) #16
  %173 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dbg1.i, align 4
  %call11.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.307, i16 noundef zeroext 128, ptr noundef %174, ptr noundef %dev, ptr noundef nonnull @fops) #16
  tail call void @mlx5_cmdif_debugfs_init(ptr noundef %dev) #16
  br label %cleanup

err_free_page:                                    ; preds = %do.end171, %do.end131, %do.end98, %do.end72, %do.end53
  %err.0 = phi i32 [ -22, %do.end53 ], [ -22, %do.end72 ], [ -95, %do.end98 ], [ -12, %do.end131 ], [ -12, %do.end171 ]
  %175 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pdev.i, align 8
  %dev1.i.i279 = getelementptr inbounds %struct.pci_dev, ptr %176, i32 0, i32 44
  %177 = ptrtoint ptr %alloc_size27.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %alloc_size27.i, align 4
  %179 = ptrtoint ptr %cmd_alloc_buf.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cmd_alloc_buf.i, align 4
  %181 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %alloc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i279, i32 noundef %178, ptr noundef %180, i32 noundef %182, i32 noundef 0) #16
  br label %err_free_pool

err_free_pool:                                    ; preds = %err_free_page, %if.end8.i.err_free_pool_crit_edge, %if.end35.err_free_pool_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_page ], [ -12, %if.end35.err_free_pool_crit_edge ], [ -12, %if.end8.i.err_free_pool_crit_edge ]
  %183 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %184) #16
  br label %dma_pool_err

dma_pool_err:                                     ; preds = %err_free_pool, %if.end29.dma_pool_err_crit_edge
  %err.2 = phi i32 [ %err.1, %err_free_pool ], [ -12, %if.end29.dma_pool_err_crit_edge ]
  %185 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %stats, align 4
  tail call void @kvfree(ptr noundef %186) #16
  br label %cleanup

cleanup:                                          ; preds = %dma_pool_err, %if.end176, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.2, %dma_pool_err ], [ 0, %if.end176 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_msg_cache(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pool.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc16.for.body_crit_edge ]
  %head = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 26, i32 %i.028, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp8.not26 = icmp eq ptr %1, %head
  br i1 %cmp8.not26, label %for.body.for.inc16_crit_edge, label %for.body.for.body9_crit_edge

for.body.for.body9_crit_edge:                     ; preds = %for.body
  br label %for.body9

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc16

for.body9:                                        ; preds = %mlx5_free_cmd_msg.exit.for.body9_crit_edge, %for.body.for.body9_crit_edge
  %msg.027 = phi ptr [ %n.0, %mlx5_free_cmd_msg.exit.for.body9_crit_edge ], [ %1, %for.body.for.body9_crit_edge ]
  %2 = ptrtoint ptr %msg.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %msg.027, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.027) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body9.list_del.exit_crit_edge

for.body9.list_del.exit_crit_edge:                ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.027, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %msg.027 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg.027, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body9.list_del.exit_crit_edge
  %9 = ptrtoint ptr %msg.027 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.027, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %msg.027, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %next.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %msg.027, i32 0, i32 4
  %11 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next.i, align 4
  %tobool.not6.i = icmp eq ptr %12, null
  br i1 %tobool.not6.i, label %list_del.exit.mlx5_free_cmd_msg.exit_crit_edge, label %list_del.exit.while.body.i_crit_edge

list_del.exit.while.body.i_crit_edge:             ; preds = %list_del.exit
  br label %while.body.i

list_del.exit.mlx5_free_cmd_msg.exit_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %list_del.exit.while.body.i_crit_edge
  %head.07.i = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %12, %list_del.exit.while.body.i_crit_edge ]
  %next2.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 2
  %13 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next2.i, align 4
  %15 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pool.i.i, align 4
  %17 = ptrtoint ptr %head.07.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.07.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 1
  %19 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef %18, i32 noundef %20) #16
  tail call void @kfree(ptr noundef nonnull %head.07.i) #16
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.mlx5_free_cmd_msg.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

mlx5_free_cmd_msg.exit:                           ; preds = %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, %list_del.exit.mlx5_free_cmd_msg.exit_crit_edge
  tail call void @kfree(ptr noundef %msg.027) #16
  %cmp8.not = icmp eq ptr %n.0, %head
  br i1 %cmp8.not, label %mlx5_free_cmd_msg.exit.for.inc16_crit_edge, label %mlx5_free_cmd_msg.exit.for.body9_crit_edge

mlx5_free_cmd_msg.exit.for.body9_crit_edge:       ; preds = %mlx5_free_cmd_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body9

mlx5_free_cmd_msg.exit.for.inc16_crit_edge:       ; preds = %mlx5_free_cmd_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc16

for.inc16:                                        ; preds = %mlx5_free_cmd_msg.exit.for.inc16_crit_edge, %for.body.for.inc16_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end17, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end17:                                        ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmd_cleanup(ptr noundef %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_debugfs_root to i32))
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.clean_debug_files.exit_crit_edge, label %if.end.i

entry.clean_debug_files.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %clean_debug_files.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dbg1.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 25
  tail call void @mlx5_cmdif_debugfs_cleanup(ptr noundef %dev) #16
  %1 = ptrtoint ptr %dbg1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg1.i, align 4
  tail call void @debugfs_remove(ptr noundef %2) #16
  br label %clean_debug_files.exit

clean_debug_files.exit:                           ; preds = %if.end.i, %entry.clean_debug_files.exit_crit_edge
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 18
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #16
  tail call fastcc void @destroy_msg_cache(ptr noundef %dev)
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %alloc_size.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %alloc_size.i, align 4
  %cmd_alloc_buf.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %cmd_alloc_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_alloc_buf.i, align 4
  %alloc_dma.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %alloc_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alloc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #16
  %pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  %13 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %14) #16
  %stats = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 28
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stats, align 4
  tail call void @kvfree(ptr noundef %16) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5_cmd_set_state(ptr nocapture noundef writeonly %dev, i32 noundef %cmdif_state) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %cmdif_state, ptr %state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_command(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ent, i32 noundef %input) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %tobool.not = icmp eq i32 %input, 0
  %in = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 1
  %out = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 2
  %cond.in = select i1 %tobool.not, ptr %out, ptr %in
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %cond.in, align 4
  %lay = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 13
  %1 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lay, align 4
  %in1 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %in1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in1, align 4
  %shr = lshr i32 %4, 16
  %next2 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %cond, i32 0, i32 4
  %5 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next2, align 4
  %len.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %cond, i32 0, i32 2
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 16) #16
  %sub.i = add i32 %8, 511
  %sub1.i = sub i32 %sub.i, %9
  %div.i = sdiv i32 %sub1.i, 512
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !670

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  %idx = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug506, ptr noundef %11, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.219, i32 noundef 815, i32 noundef %17, i32 noundef %19) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %20 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and8 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body49, label %do.body20

do.body20:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then32)) #16
          to label %if.then77 [label %if.then32], !srcloc !670

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i239 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i239 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid36, align 8
  %idx37 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %29 = ptrtoint ptr %idx37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx37, align 8
  %call39 = tail call ptr @mlx5_command_str(i32 noundef %shr)
  %cond42 = select i1 %tobool.not, ptr @.str.223, ptr @.str.222
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug507, ptr noundef %22, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.219, i32 noundef 822, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %call39, i32 noundef %shr, ptr noundef nonnull %cond42) #16
  br label %if.then77

do.body49:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then61)) #16
          to label %if.else91 [label %if.then61], !srcloc !670

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i240 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i240 to ptr
  %task64 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task64, align 8
  %pid65 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid65, align 8
  %idx66 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %39 = ptrtoint ptr %idx66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx66, align 8
  %call68 = tail call ptr @mlx5_command_str(i32 noundef %shr)
  %cond71 = select i1 %tobool.not, ptr @.str.223, ptr @.str.222
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug508, ptr noundef %32, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.219, i32 noundef 826, i32 noundef %38, i32 noundef %40, ptr noundef nonnull %call68, i32 noundef %shr, ptr noundef nonnull %cond71) #16
  br label %if.else91

if.then77:                                        ; preds = %if.then32, %do.body20
  %41 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lay, align 4
  %idx88 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %43 = ptrtoint ptr %idx88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx88, align 8
  br i1 %tobool.not, label %if.else84, label %if.then79

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then.i)) #16
          to label %if.end95 [label %if.then.i], !srcloc !670

if.then.i:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  %in81 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %in81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in81, align 4
  %arrayidx3.i = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx5.i = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx5.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.229, i32 noundef %44, i32 noundef 0, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #16
  br label %if.end95

if.else84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then.i248)) #16
          to label %if.end95 [label %if.then.i248], !srcloc !670

if.then.i248:                                     ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #18
  %out86 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 5
  %53 = ptrtoint ptr %out86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out86, align 4
  %arrayidx3.i245 = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %arrayidx3.i245 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx3.i245, align 4
  %arrayidx4.i246 = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %arrayidx4.i246 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx4.i246, align 4
  %arrayidx5.i247 = getelementptr %struct.mlx5_cmd_layout, ptr %42, i32 0, i32 5, i32 3
  %59 = ptrtoint ptr %arrayidx5.i247 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx5.i247, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.229, i32 noundef %44, i32 noundef 0, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #16
  br label %if.end95

if.else91:                                        ; preds = %if.then61, %do.body49
  %61 = ptrtoint ptr %lay to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lay, align 4
  %idx93 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %63 = ptrtoint ptr %idx93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx93, align 8
  br label %do.body.i258

do.body.i258:                                     ; preds = %do.end.i267.do.body.i258_crit_edge, %if.else91
  %offset.addr.041.i255 = phi i32 [ %add.i264, %do.end.i267.do.body.i258_crit_edge ], [ 0, %if.else91 ]
  %p.039.i256 = phi ptr [ %add.ptr.i263, %do.end.i267.do.body.i258_crit_edge ], [ %62, %if.else91 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then.i262)) #16
          to label %do.end.i267 [label %if.then.i262], !srcloc !670

if.then.i262:                                     ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #18
  %65 = ptrtoint ptr %p.039.i256 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %p.039.i256, align 4
  %arrayidx3.i259 = getelementptr i32, ptr %p.039.i256, i32 1
  %67 = ptrtoint ptr %arrayidx3.i259 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx3.i259, align 4
  %arrayidx4.i260 = getelementptr i32, ptr %p.039.i256, i32 2
  %69 = ptrtoint ptr %arrayidx4.i260 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4.i260, align 4
  %arrayidx5.i261 = getelementptr i32, ptr %p.039.i256, i32 3
  %71 = ptrtoint ptr %arrayidx5.i261 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx5.i261, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.229, i32 noundef %64, i32 noundef %offset.addr.041.i255, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72) #16
  br label %do.end.i267

do.end.i267:                                      ; preds = %if.then.i262, %do.body.i258
  %add.ptr.i263 = getelementptr i32, ptr %p.039.i256, i32 4
  %add.i264 = add nuw nsw i32 %offset.addr.041.i255, 16
  %cmp.i266 = icmp ult i32 %offset.addr.041.i255, 48
  br i1 %cmp.i266, label %do.end.i267.do.body.i258_crit_edge, label %for.end.i

do.end.i267.do.body.i258_crit_edge:               ; preds = %do.end.i267
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i258

for.end.i:                                        ; preds = %do.end.i267
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then21.i)) #16
          to label %if.end95 [label %if.then21.i], !srcloc !670

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.226) #16
  br label %if.end95

if.end95:                                         ; preds = %if.then21.i, %for.end.i, %if.then.i248, %if.else84, %if.then.i, %if.then79
  %offset.0 = phi i32 [ 64, %for.end.i ], [ 64, %if.then21.i ], [ 16, %if.then.i ], [ 16, %if.then79 ], [ 16, %if.then.i248 ], [ 16, %if.else84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub1.i)
  %cmp309 = icmp slt i32 %sub1.i, 512
  %tobool97.not310 = icmp eq ptr %6, null
  %or.cond311 = select i1 %cmp309, i1 true, i1 %tobool97.not310
  br i1 %or.cond311, label %if.end95.for.end_crit_edge, label %for.body.lr.ph

if.end95.for.end_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end95
  %idx107 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end134.for.body_crit_edge, %for.body.lr.ph
  %next.0315 = phi ptr [ %6, %for.body.lr.ph ], [ %111, %if.end134.for.body_crit_edge ]
  %offset.1313 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %add133, %if.end134.for.body_crit_edge ]
  %i.0312 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end134.for.body_crit_edge ]
  br i1 %tobool9.not, label %do.body110, label %if.then99

if.then99:                                        ; preds = %for.body
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  %sub = sub i32 %74, %offset.1313
  %75 = tail call i32 @llvm.smin.i32(i32 %sub, i32 512)
  %76 = ptrtoint ptr %idx107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %idx107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp37.i = icmp sgt i32 %sub, 0
  br i1 %cmp37.i, label %do.body.i272.preheader, label %if.then99.if.end134_crit_edge

if.then99.if.end134_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

do.body.i272.preheader:                           ; preds = %if.then99
  %78 = ptrtoint ptr %next.0315 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %next.0315, align 4
  br label %do.body.i272

do.body.i272:                                     ; preds = %do.end.i281.do.body.i272_crit_edge, %do.body.i272.preheader
  %offset.addr.041.i269 = phi i32 [ %add.i278, %do.end.i281.do.body.i272_crit_edge ], [ %offset.1313, %do.body.i272.preheader ]
  %p.039.i270 = phi ptr [ %add.ptr.i277, %do.end.i281.do.body.i272_crit_edge ], [ %79, %do.body.i272.preheader ]
  %i.038.i271 = phi i32 [ %add6.i279, %do.end.i281.do.body.i272_crit_edge ], [ 0, %do.body.i272.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then.i276)) #16
          to label %do.end.i281 [label %if.then.i276], !srcloc !670

if.then.i276:                                     ; preds = %do.body.i272
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %p.039.i270 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %p.039.i270, align 4
  %arrayidx3.i273 = getelementptr i32, ptr %p.039.i270, i32 1
  %82 = ptrtoint ptr %arrayidx3.i273 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx3.i273, align 4
  %arrayidx4.i274 = getelementptr i32, ptr %p.039.i270, i32 2
  %84 = ptrtoint ptr %arrayidx4.i274 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx4.i274, align 4
  %arrayidx5.i275 = getelementptr i32, ptr %p.039.i270, i32 3
  %86 = ptrtoint ptr %arrayidx5.i275 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx5.i275, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.229, i32 noundef %77, i32 noundef %offset.addr.041.i269, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87) #16
  br label %do.end.i281

do.end.i281:                                      ; preds = %if.then.i276, %do.body.i272
  %add.ptr.i277 = getelementptr i32, ptr %p.039.i270, i32 4
  %add.i278 = add i32 %offset.addr.041.i269, 16
  %add6.i279 = add nuw nsw i32 %i.038.i271, 16
  %cmp.i280 = icmp slt i32 %add6.i279, %75
  br i1 %cmp.i280, label %do.end.i281.do.body.i272_crit_edge, label %do.end.i281.if.end134_crit_edge

do.end.i281.if.end134_crit_edge:                  ; preds = %do.end.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

do.end.i281.do.body.i272_crit_edge:               ; preds = %do.end.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i272

do.body110:                                       ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then122)) #16
          to label %do.end130 [label %if.then122], !srcloc !670

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 8
  %90 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i284 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i284 to ptr
  %task125 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task125 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task125, align 8
  %pid126 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 68
  %94 = ptrtoint ptr %pid126 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pid126, align 8
  %96 = ptrtoint ptr %idx107 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %idx107, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug511, ptr noundef %89, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.219, i32 noundef 847, i32 noundef %95, i32 noundef %97) #16
  br label %do.end130

do.end130:                                        ; preds = %if.then122, %do.body110
  %98 = ptrtoint ptr %next.0315 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %next.0315, align 4
  %100 = ptrtoint ptr %idx107 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %idx107, align 8
  br label %do.body.i288

do.body.i288:                                     ; preds = %do.end.i297.do.body.i288_crit_edge, %do.end130
  %offset.addr.041.i285 = phi i32 [ %add.i294, %do.end.i297.do.body.i288_crit_edge ], [ %offset.1313, %do.end130 ]
  %p.039.i286 = phi ptr [ %add.ptr.i293, %do.end.i297.do.body.i288_crit_edge ], [ %99, %do.end130 ]
  %i.038.i287 = phi i32 [ %add6.i295, %do.end.i297.do.body.i288_crit_edge ], [ 0, %do.end130 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then.i292)) #16
          to label %do.end.i297 [label %if.then.i292], !srcloc !670

if.then.i292:                                     ; preds = %do.body.i288
  call void @__sanitizer_cov_trace_pc() #18
  %102 = ptrtoint ptr %p.039.i286 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %p.039.i286, align 4
  %arrayidx3.i289 = getelementptr i32, ptr %p.039.i286, i32 1
  %104 = ptrtoint ptr %arrayidx3.i289 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx3.i289, align 4
  %arrayidx4.i290 = getelementptr i32, ptr %p.039.i286, i32 2
  %106 = ptrtoint ptr %arrayidx4.i290 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx4.i290, align 4
  %arrayidx5.i291 = getelementptr i32, ptr %p.039.i286, i32 3
  %108 = ptrtoint ptr %arrayidx5.i291 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx5.i291, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.229, i32 noundef %101, i32 noundef %offset.addr.041.i285, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109) #16
  br label %do.end.i297

do.end.i297:                                      ; preds = %if.then.i292, %do.body.i288
  %add.ptr.i293 = getelementptr i32, ptr %p.039.i286, i32 4
  %add.i294 = add i32 %offset.addr.041.i285, 16
  %add6.i295 = add nuw nsw i32 %i.038.i287, 16
  %cmp.i296 = icmp ult i32 %i.038.i287, 560
  br i1 %cmp.i296, label %do.end.i297.do.body.i288_crit_edge, label %for.end.i298

do.end.i297.do.body.i288_crit_edge:               ; preds = %do.end.i297
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i288

for.end.i298:                                     ; preds = %do.end.i297
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_buf.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then21.i299)) #16
          to label %if.end134 [label %if.then21.i299], !srcloc !670

if.then21.i299:                                   ; preds = %for.end.i298
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_buf.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.226) #16
  br label %if.end134

if.end134:                                        ; preds = %if.then21.i299, %for.end.i298, %do.end.i281.if.end134_crit_edge, %if.then99.if.end134_crit_edge
  %.sink = phi i32 [ 512, %if.then99.if.end134_crit_edge ], [ 576, %for.end.i298 ], [ 576, %if.then21.i299 ], [ 512, %do.end.i281.if.end134_crit_edge ]
  %add133 = add i32 %offset.1313, %.sink
  %next135 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.0315, i32 0, i32 2
  %110 = ptrtoint ptr %next135 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %next135, align 4
  %inc = add nuw nsw i32 %i.0312, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div.i)
  %cmp = icmp sge i32 %inc, %div.i
  %tobool97.not = icmp eq ptr %111, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool97.not
  br i1 %or.cond, label %if.end134.for.end_crit_edge, label %if.end134.for.body_crit_edge

if.end134.for.body_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end134.for.end_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end134.for.end_crit_edge, %if.end95.for.end_crit_edge
  br i1 %tobool9.not, label %for.end.do.body155_crit_edge, label %do.body138

for.end.do.body155_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body155

do.body138:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then150)) #16
          to label %do.body155 [label %if.then150], !srcloc !670

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.226) #16
  br label %do.body155

do.body155:                                       ; preds = %if.then150, %do.body138, %for.end.do.body155_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_command.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dump_command, %if.then167)) #16
          to label %do.end175 [label %if.then167], !srcloc !670

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #18
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 8
  %114 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i301 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i301 to ptr
  %task170 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %task170 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task170, align 8
  %pid171 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 68
  %118 = ptrtoint ptr %pid171 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pid171, align 8
  %idx172 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %120 = ptrtoint ptr %idx172 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %idx172, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dump_command.__UNIQUE_ID_ddebug513, ptr noundef %113, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.219, i32 noundef 858, i32 noundef %119, i32 noundef %121) #16
  br label %do.end175

do.end175:                                        ; preds = %if.then167, %do.body155
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_copy_from_msg(ptr noundef writeonly %to, ptr noundef readonly %from, i32 noundef %size) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %to, null
  %tobool1.not = icmp eq ptr %from, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.smin.i32(i32 %size, i32 16)
  %first = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %from, i32 0, i32 3
  %1 = call ptr @memcpy(ptr %to, ptr %first, i32 %0)
  %sub = sub i32 %size, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool3.not42 = icmp eq i32 %sub, 0
  br i1 %tobool3.not42, label %if.end.cleanup_crit_edge, label %while.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.preheader:                             ; preds = %if.end
  %next2 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %from, i32 0, i32 4
  %add.ptr = getelementptr i8, ptr %to, i32 %0
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.preheader
  %next.045.in = phi ptr [ %next17, %if.end6.while.body_crit_edge ], [ %next2, %while.body.preheader ]
  %to.addr.044 = phi ptr [ %add.ptr15, %if.end6.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %size.addr.043 = phi i32 [ %sub16, %if.end6.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %2 = ptrtoint ptr %next.045.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.045 = load ptr, ptr %next.045.in, align 4
  %tobool4.not = icmp eq ptr %next.045, null
  br i1 %tobool4.not, label %while.body.cleanup_crit_edge, label %if.end6

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %3 = tail call i32 @llvm.smin.i32(i32 %size.addr.043, i32 512)
  %4 = ptrtoint ptr %next.045 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.045, align 4
  %6 = call ptr @memcpy(ptr %to.addr.044, ptr %5, i32 %3)
  %add.ptr15 = getelementptr i8, ptr %to.addr.044, i32 %3
  %sub16 = sub i32 %size.addr.043, %3
  %next17 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.045, i32 0, i32 2
  %tobool3.not = icmp eq i32 %sub16, 0
  br i1 %tobool3.not, label %if.end6.cleanup_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_msg(ptr nocapture noundef readonly %dev, ptr noundef %msg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body1

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #16
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %head = getelementptr inbounds %struct.cmd_msg_cache, ptr %3, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cmd_msg_cache, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %5, ptr noundef %head) #16
  br i1 %call.i.i, label %if.end.i.i, label %do.body1.list_add_tail.exit_crit_edge

do.body1.list_add_tail.exit_crit_edge:            ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg, ptr %prev.i, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body1.list_add_tail.exit_crit_edge
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call3) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %next.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %msg, i32 0, i32 4
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next.i, align 4
  %tobool.not6.i = icmp eq ptr %13, null
  br i1 %tobool.not6.i, label %if.else.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.lr.ph.i

if.else.mlx5_free_cmd_msg.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

while.body.lr.ph.i:                               ; preds = %if.else
  %pool.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %head.07.i = phi ptr [ %13, %while.body.lr.ph.i ], [ %15, %while.body.i.while.body.i_crit_edge ]
  %next2.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 2
  %14 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next2.i, align 4
  %16 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pool.i.i, align 4
  %18 = ptrtoint ptr %head.07.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.07.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 1
  %20 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef %19, i32 noundef %21) #16
  tail call void @kfree(ptr noundef nonnull %head.07.i) #16
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.mlx5_free_cmd_msg.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

mlx5_free_cmd_msg.exit:                           ; preds = %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, %if.else.mlx5_free_cmd_msg.exit_crit_edge
  tail call void @kfree(ptr noundef %msg) #16
  br label %if.end

if.end:                                           ; preds = %mlx5_free_cmd_msg.exit, %list_add_tail.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_internal_err_ret_value(ptr nocapture noundef readonly %dev, i16 noundef zeroext %op, ptr nocapture noundef writeonly %synd, ptr nocapture noundef writeonly %status) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %synd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %synd, align 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %status, align 1
  %2 = zext i16 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.314)
  switch i16 %op, label %do.end [
    i16 259, label %entry.return_crit_edge
    i16 261, label %entry.return_crit_edge6
    i16 264, label %entry.return_crit_edge7
    i16 514, label %entry.return_crit_edge8
    i16 770, label %entry.return_crit_edge9
    i16 1025, label %entry.return_crit_edge10
    i16 1281, label %entry.return_crit_edge11
    i16 1537, label %entry.return_crit_edge12
    i16 1793, label %entry.return_crit_edge13
    i16 1798, label %entry.return_crit_edge14
    i16 1816, label %entry.return_crit_edge15
    i16 1809, label %entry.return_crit_edge16
    i16 1906, label %entry.return_crit_edge17
    i16 1923, label %entry.return_crit_edge18
    i16 1927, label %entry.return_crit_edge19
    i16 2049, label %entry.return_crit_edge20
    i16 2051, label %entry.return_crit_edge21
    i16 2055, label %entry.return_crit_edge22
    i16 2063, label %entry.return_crit_edge23
    i16 2071, label %entry.return_crit_edge24
    i16 2088, label %entry.return_crit_edge25
    i16 2091, label %entry.return_crit_edge26
    i16 2115, label %entry.return_crit_edge27
    i16 2117, label %entry.return_crit_edge28
    i16 2306, label %entry.return_crit_edge29
    i16 2310, label %entry.return_crit_edge30
    i16 2314, label %entry.return_crit_edge31
    i16 2318, label %entry.return_crit_edge32
    i16 2324, label %entry.return_crit_edge33
    i16 2328, label %entry.return_crit_edge34
    i16 2353, label %entry.return_crit_edge35
    i16 2356, label %entry.return_crit_edge36
    i16 2360, label %entry.return_crit_edge37
    i16 2362, label %entry.return_crit_edge38
    i16 1287, label %entry.return_crit_edge39
    i16 1290, label %entry.return_crit_edge40
    i16 1877, label %entry.return_crit_edge41
    i16 2364, label %entry.return_crit_edge42
    i16 2358, label %entry.return_crit_edge43
    i16 2351, label %entry.return_crit_edge44
    i16 2366, label %entry.return_crit_edge45
    i16 2369, label %entry.return_crit_edge46
    i16 2403, label %entry.return_crit_edge47
    i16 2563, label %entry.return_crit_edge48
    i16 518, label %entry.return_crit_edge49
    i16 516, label %entry.return_crit_edge50
    i16 1856, label %entry.return_crit_edge51
    i16 276, label %entry.return_crit_edge52
    i16 2566, label %entry.return_crit_edge53
    i16 2570, label %entry.return_crit_edge54
    i16 2327, label %entry.return_crit_edge55
    i16 256, label %entry.sw.bb1_crit_edge
    i16 257, label %entry.sw.bb1_crit_edge56
    i16 258, label %entry.sw.bb1_crit_edge57
    i16 260, label %entry.sw.bb1_crit_edge58
    i16 263, label %entry.sw.bb1_crit_edge59
    i16 265, label %entry.sw.bb1_crit_edge60
    i16 266, label %entry.sw.bb1_crit_edge61
    i16 267, label %entry.sw.bb1_crit_edge62
    i16 512, label %entry.sw.bb1_crit_edge63
    i16 513, label %entry.sw.bb1_crit_edge64
    i16 515, label %entry.sw.bb1_crit_edge65
    i16 769, label %entry.sw.bb1_crit_edge66
    i16 771, label %entry.sw.bb1_crit_edge67
    i16 772, label %entry.sw.bb1_crit_edge68
    i16 1024, label %entry.sw.bb1_crit_edge69
    i16 1026, label %entry.sw.bb1_crit_edge70
    i16 1027, label %entry.sw.bb1_crit_edge71
    i16 1280, label %entry.sw.bb1_crit_edge72
    i16 1282, label %entry.sw.bb1_crit_edge73
    i16 1283, label %entry.sw.bb1_crit_edge74
    i16 1284, label %entry.sw.bb1_crit_edge75
    i16 1285, label %entry.sw.bb1_crit_edge76
    i16 1286, label %entry.sw.bb1_crit_edge77
    i16 1291, label %entry.sw.bb1_crit_edge78
    i16 1292, label %entry.sw.bb1_crit_edge79
    i16 1294, label %entry.sw.bb1_crit_edge80
    i16 1536, label %entry.sw.bb1_crit_edge81
    i16 1792, label %entry.sw.bb1_crit_edge82
    i16 1794, label %entry.sw.bb1_crit_edge83
    i16 1795, label %entry.sw.bb1_crit_edge84
    i16 1797, label %entry.sw.bb1_crit_edge85
    i16 1799, label %entry.sw.bb1_crit_edge86
    i16 1800, label %entry.sw.bb1_crit_edge87
    i16 1815, label %entry.sw.bb1_crit_edge88
    i16 1817, label %entry.sw.bb1_crit_edge89
    i16 1818, label %entry.sw.bb1_crit_edge90
    i16 1808, label %entry.sw.bb1_crit_edge91
    i16 1810, label %entry.sw.bb1_crit_edge92
    i16 1811, label %entry.sw.bb1_crit_edge93
    i16 1812, label %entry.sw.bb1_crit_edge94
    i16 1872, label %entry.sw.bb1_crit_edge95
    i16 1873, label %entry.sw.bb1_crit_edge96
    i16 1874, label %entry.sw.bb1_crit_edge97
    i16 1875, label %entry.sw.bb1_crit_edge98
    i16 1876, label %entry.sw.bb1_crit_edge99
    i16 1888, label %entry.sw.bb1_crit_edge100
    i16 1889, label %entry.sw.bb1_crit_edge101
    i16 1890, label %entry.sw.bb1_crit_edge102
    i16 1891, label %entry.sw.bb1_crit_edge103
    i16 1892, label %entry.sw.bb1_crit_edge104
    i16 1893, label %entry.sw.bb1_crit_edge105
    i16 1903, label %entry.sw.bb1_crit_edge106
    i16 1904, label %entry.sw.bb1_crit_edge107
    i16 1905, label %entry.sw.bb1_crit_edge108
    i16 1907, label %entry.sw.bb1_crit_edge109
    i16 1908, label %entry.sw.bb1_crit_edge110
    i16 1909, label %entry.sw.bb1_crit_edge111
    i16 1920, label %entry.sw.bb1_crit_edge112
    i16 1921, label %entry.sw.bb1_crit_edge113
    i16 1922, label %entry.sw.bb1_crit_edge114
    i16 1924, label %entry.sw.bb1_crit_edge115
    i16 1925, label %entry.sw.bb1_crit_edge116
    i16 1926, label %entry.sw.bb1_crit_edge117
    i16 2048, label %entry.sw.bb1_crit_edge118
    i16 2050, label %entry.sw.bb1_crit_edge119
    i16 2052, label %entry.sw.bb1_crit_edge120
    i16 2053, label %entry.sw.bb1_crit_edge121
    i16 2054, label %entry.sw.bb1_crit_edge122
    i16 2058, label %entry.sw.bb1_crit_edge123
    i16 1293, label %entry.sw.bb1_crit_edge124
    i16 2059, label %entry.sw.bb1_crit_edge125
    i16 2060, label %entry.sw.bb1_crit_edge126
    i16 2061, label %entry.sw.bb1_crit_edge127
    i16 2062, label %entry.sw.bb1_crit_edge128
    i16 2070, label %entry.sw.bb1_crit_edge129
    i16 2082, label %entry.sw.bb1_crit_edge130
    i16 2083, label %entry.sw.bb1_crit_edge131
    i16 2084, label %entry.sw.bb1_crit_edge132
    i16 2085, label %entry.sw.bb1_crit_edge133
    i16 2086, label %entry.sw.bb1_crit_edge134
    i16 2087, label %entry.sw.bb1_crit_edge135
    i16 2089, label %entry.sw.bb1_crit_edge136
    i16 2090, label %entry.sw.bb1_crit_edge137
    i16 2112, label %entry.sw.bb1_crit_edge138
    i16 2113, label %entry.sw.bb1_crit_edge139
    i16 2114, label %entry.sw.bb1_crit_edge140
    i16 2116, label %entry.sw.bb1_crit_edge141
    i16 2304, label %entry.sw.bb1_crit_edge142
    i16 2305, label %entry.sw.bb1_crit_edge143
    i16 2307, label %entry.sw.bb1_crit_edge144
    i16 2308, label %entry.sw.bb1_crit_edge145
    i16 2309, label %entry.sw.bb1_crit_edge146
    i16 2311, label %entry.sw.bb1_crit_edge147
    i16 2312, label %entry.sw.bb1_crit_edge148
    i16 2313, label %entry.sw.bb1_crit_edge149
    i16 2315, label %entry.sw.bb1_crit_edge150
    i16 2316, label %entry.sw.bb1_crit_edge151
    i16 2317, label %entry.sw.bb1_crit_edge152
    i16 2319, label %entry.sw.bb1_crit_edge153
    i16 2322, label %entry.sw.bb1_crit_edge154
    i16 2323, label %entry.sw.bb1_crit_edge155
    i16 2325, label %entry.sw.bb1_crit_edge156
    i16 2326, label %entry.sw.bb1_crit_edge157
    i16 2329, label %entry.sw.bb1_crit_edge158
    i16 2352, label %entry.sw.bb1_crit_edge159
    i16 2354, label %entry.sw.bb1_crit_edge160
    i16 2355, label %entry.sw.bb1_crit_edge161
    i16 2357, label %entry.sw.bb1_crit_edge162
    i16 2359, label %entry.sw.bb1_crit_edge163
    i16 2361, label %entry.sw.bb1_crit_edge164
    i16 2363, label %entry.sw.bb1_crit_edge165
    i16 2365, label %entry.sw.bb1_crit_edge166
    i16 2368, label %entry.sw.bb1_crit_edge167
    i16 2400, label %entry.sw.bb1_crit_edge168
    i16 2401, label %entry.sw.bb1_crit_edge169
    i16 2402, label %entry.sw.bb1_crit_edge170
    i16 2404, label %entry.sw.bb1_crit_edge171
    i16 2560, label %entry.sw.bb1_crit_edge172
    i16 2561, label %entry.sw.bb1_crit_edge173
    i16 2562, label %entry.sw.bb1_crit_edge174
    i16 2564, label %entry.sw.bb1_crit_edge175
    i16 2568, label %entry.sw.bb1_crit_edge176
    i16 517, label %entry.sw.bb1_crit_edge177
    i16 1834, label %entry.sw.bb1_crit_edge178
    i16 1833, label %entry.sw.bb1_crit_edge179
    i16 2829, label %entry.sw.bb1_crit_edge180
    i16 2830, label %entry.sw.bb1_crit_edge181
    i16 275, label %entry.sw.bb1_crit_edge182
  ]

entry.sw.bb1_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge56, %entry.sw.bb1_crit_edge57, %entry.sw.bb1_crit_edge58, %entry.sw.bb1_crit_edge59, %entry.sw.bb1_crit_edge60, %entry.sw.bb1_crit_edge61, %entry.sw.bb1_crit_edge62, %entry.sw.bb1_crit_edge63, %entry.sw.bb1_crit_edge64, %entry.sw.bb1_crit_edge65, %entry.sw.bb1_crit_edge66, %entry.sw.bb1_crit_edge67, %entry.sw.bb1_crit_edge68, %entry.sw.bb1_crit_edge69, %entry.sw.bb1_crit_edge70, %entry.sw.bb1_crit_edge71, %entry.sw.bb1_crit_edge72, %entry.sw.bb1_crit_edge73, %entry.sw.bb1_crit_edge74, %entry.sw.bb1_crit_edge75, %entry.sw.bb1_crit_edge76, %entry.sw.bb1_crit_edge77, %entry.sw.bb1_crit_edge78, %entry.sw.bb1_crit_edge79, %entry.sw.bb1_crit_edge80, %entry.sw.bb1_crit_edge81, %entry.sw.bb1_crit_edge82, %entry.sw.bb1_crit_edge83, %entry.sw.bb1_crit_edge84, %entry.sw.bb1_crit_edge85, %entry.sw.bb1_crit_edge86, %entry.sw.bb1_crit_edge87, %entry.sw.bb1_crit_edge88, %entry.sw.bb1_crit_edge89, %entry.sw.bb1_crit_edge90, %entry.sw.bb1_crit_edge91, %entry.sw.bb1_crit_edge92, %entry.sw.bb1_crit_edge93, %entry.sw.bb1_crit_edge94, %entry.sw.bb1_crit_edge95, %entry.sw.bb1_crit_edge96, %entry.sw.bb1_crit_edge97, %entry.sw.bb1_crit_edge98, %entry.sw.bb1_crit_edge99, %entry.sw.bb1_crit_edge100, %entry.sw.bb1_crit_edge101, %entry.sw.bb1_crit_edge102, %entry.sw.bb1_crit_edge103, %entry.sw.bb1_crit_edge104, %entry.sw.bb1_crit_edge105, %entry.sw.bb1_crit_edge106, %entry.sw.bb1_crit_edge107, %entry.sw.bb1_crit_edge108, %entry.sw.bb1_crit_edge109, %entry.sw.bb1_crit_edge110, %entry.sw.bb1_crit_edge111, %entry.sw.bb1_crit_edge112, %entry.sw.bb1_crit_edge113, %entry.sw.bb1_crit_edge114, %entry.sw.bb1_crit_edge115, %entry.sw.bb1_crit_edge116, %entry.sw.bb1_crit_edge117, %entry.sw.bb1_crit_edge118, %entry.sw.bb1_crit_edge119, %entry.sw.bb1_crit_edge120, %entry.sw.bb1_crit_edge121, %entry.sw.bb1_crit_edge122, %entry.sw.bb1_crit_edge123, %entry.sw.bb1_crit_edge124, %entry.sw.bb1_crit_edge125, %entry.sw.bb1_crit_edge126, %entry.sw.bb1_crit_edge127, %entry.sw.bb1_crit_edge128, %entry.sw.bb1_crit_edge129, %entry.sw.bb1_crit_edge130, %entry.sw.bb1_crit_edge131, %entry.sw.bb1_crit_edge132, %entry.sw.bb1_crit_edge133, %entry.sw.bb1_crit_edge134, %entry.sw.bb1_crit_edge135, %entry.sw.bb1_crit_edge136, %entry.sw.bb1_crit_edge137, %entry.sw.bb1_crit_edge138, %entry.sw.bb1_crit_edge139, %entry.sw.bb1_crit_edge140, %entry.sw.bb1_crit_edge141, %entry.sw.bb1_crit_edge142, %entry.sw.bb1_crit_edge143, %entry.sw.bb1_crit_edge144, %entry.sw.bb1_crit_edge145, %entry.sw.bb1_crit_edge146, %entry.sw.bb1_crit_edge147, %entry.sw.bb1_crit_edge148, %entry.sw.bb1_crit_edge149, %entry.sw.bb1_crit_edge150, %entry.sw.bb1_crit_edge151, %entry.sw.bb1_crit_edge152, %entry.sw.bb1_crit_edge153, %entry.sw.bb1_crit_edge154, %entry.sw.bb1_crit_edge155, %entry.sw.bb1_crit_edge156, %entry.sw.bb1_crit_edge157, %entry.sw.bb1_crit_edge158, %entry.sw.bb1_crit_edge159, %entry.sw.bb1_crit_edge160, %entry.sw.bb1_crit_edge161, %entry.sw.bb1_crit_edge162, %entry.sw.bb1_crit_edge163, %entry.sw.bb1_crit_edge164, %entry.sw.bb1_crit_edge165, %entry.sw.bb1_crit_edge166, %entry.sw.bb1_crit_edge167, %entry.sw.bb1_crit_edge168, %entry.sw.bb1_crit_edge169, %entry.sw.bb1_crit_edge170, %entry.sw.bb1_crit_edge171, %entry.sw.bb1_crit_edge172, %entry.sw.bb1_crit_edge173, %entry.sw.bb1_crit_edge174, %entry.sw.bb1_crit_edge175, %entry.sw.bb1_crit_edge176, %entry.sw.bb1_crit_edge177, %entry.sw.bb1_crit_edge178, %entry.sw.bb1_crit_edge179, %entry.sw.bb1_crit_edge180, %entry.sw.bb1_crit_edge181, %entry.sw.bb1_crit_edge182
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -2, ptr %status, align 1
  %4 = ptrtoint ptr %synd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1159921442, ptr %synd, align 4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %op to i32
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.247, i32 noundef 485, i32 noundef %12, i32 noundef %conv) #19
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %sw.bb1 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge6 ], [ 0, %entry.return_crit_edge7 ], [ 0, %entry.return_crit_edge8 ], [ 0, %entry.return_crit_edge9 ], [ 0, %entry.return_crit_edge10 ], [ 0, %entry.return_crit_edge11 ], [ 0, %entry.return_crit_edge12 ], [ 0, %entry.return_crit_edge13 ], [ 0, %entry.return_crit_edge14 ], [ 0, %entry.return_crit_edge15 ], [ 0, %entry.return_crit_edge16 ], [ 0, %entry.return_crit_edge17 ], [ 0, %entry.return_crit_edge18 ], [ 0, %entry.return_crit_edge19 ], [ 0, %entry.return_crit_edge20 ], [ 0, %entry.return_crit_edge21 ], [ 0, %entry.return_crit_edge22 ], [ 0, %entry.return_crit_edge23 ], [ 0, %entry.return_crit_edge24 ], [ 0, %entry.return_crit_edge25 ], [ 0, %entry.return_crit_edge26 ], [ 0, %entry.return_crit_edge27 ], [ 0, %entry.return_crit_edge28 ], [ 0, %entry.return_crit_edge29 ], [ 0, %entry.return_crit_edge30 ], [ 0, %entry.return_crit_edge31 ], [ 0, %entry.return_crit_edge32 ], [ 0, %entry.return_crit_edge33 ], [ 0, %entry.return_crit_edge34 ], [ 0, %entry.return_crit_edge35 ], [ 0, %entry.return_crit_edge36 ], [ 0, %entry.return_crit_edge37 ], [ 0, %entry.return_crit_edge38 ], [ 0, %entry.return_crit_edge39 ], [ 0, %entry.return_crit_edge40 ], [ 0, %entry.return_crit_edge41 ], [ 0, %entry.return_crit_edge42 ], [ 0, %entry.return_crit_edge43 ], [ 0, %entry.return_crit_edge44 ], [ 0, %entry.return_crit_edge45 ], [ 0, %entry.return_crit_edge46 ], [ 0, %entry.return_crit_edge47 ], [ 0, %entry.return_crit_edge48 ], [ 0, %entry.return_crit_edge49 ], [ 0, %entry.return_crit_edge50 ], [ 0, %entry.return_crit_edge51 ], [ 0, %entry.return_crit_edge52 ], [ 0, %entry.return_crit_edge53 ], [ 0, %entry.return_crit_edge54 ], [ 0, %entry.return_crit_edge55 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_alloc_cmd_msg(ptr nocapture noundef readonly %dev, i32 noundef %flags, i32 noundef %size, i8 noundef zeroext %token) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %or.i = or i32 %flags, 256
  %and.i.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !669

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %and6.i.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 36) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %len = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %len, align 4
  %3 = tail call i32 @llvm.smin.i32(i32 %size, i32 16) #16
  %sub.i = add i32 %size, 511
  %sub1.i = sub i32 %sub.i, %3
  %div.i = sdiv i32 %sub1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub1.i)
  %cmp50 = icmp sgt i32 %sub1.i, 511
  br i1 %cmp50, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %cond.end.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %head.051 = phi ptr [ %call3, %cond.end.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %call3 = tail call fastcc ptr @alloc_cmd_box(ptr noundef %dev, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.249, i32 noundef 1325, i32 noundef %11) #19
  %tobool16.not53 = icmp eq ptr %head.051, null
  br i1 %tobool16.not53, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %pool.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  br label %while.body

if.end8:                                          ; preds = %for.body
  %12 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call3, align 4
  %next = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %call3, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head.051, ptr %next, align 4
  %tobool10.not = icmp eq ptr %head.051, null
  br i1 %tobool10.not, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %dma = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.051, i32 0, i32 1
  %15 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.true ], [ 0, %if.end8.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %next12 = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %next12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %next12, align 8
  %18 = xor i32 %i.052, -1
  %sub13 = add nsw i32 %div.i, %18
  %block_num = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %13, i32 0, i32 3
  %19 = ptrtoint ptr %block_num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub13, ptr %block_num, align 8
  %token14 = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %token14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %token, ptr %token14, align 1
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %div.i
  br i1 %exitcond.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %head.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %call3, %cond.end.for.end_crit_edge ]
  %next15 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %next15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.0.lcssa, ptr %next15, align 8
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %head.154 = phi ptr [ %head.051, %while.body.lr.ph ], [ %23, %while.body.while.body_crit_edge ]
  %next17 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.154, i32 0, i32 2
  %22 = ptrtoint ptr %next17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next17, align 4
  %24 = ptrtoint ptr %pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pool.i, align 4
  %26 = ptrtoint ptr %head.154 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.154, align 4
  %dma.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.154, i32 0, i32 1
  %28 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma.i, align 4
  tail call void @dma_pool_free(ptr noundef %25, ptr noundef %27, i32 noundef %29) #16
  tail call void @kfree(ptr noundef nonnull %head.154) #16
  %tobool16.not = icmp eq ptr %23, null
  br i1 %tobool16.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %while.end ], [ %call7.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_cmd_invoke(ptr noundef %dev, ptr noundef %in, ptr noundef %out, ptr noundef %uout, i32 noundef %uout_size, ptr noundef %callback, ptr noundef %context, i32 noundef %page_queue, ptr nocapture noundef writeonly %status, i8 noundef zeroext %token, i1 noundef zeroext %force_polling) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %force_polling to i8
  %cmd1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7
  %tobool.not = icmp eq ptr %callback, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_queue)
  %tobool2.not = icmp eq i32 %page_queue, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i.i = select i1 %tobool.not, i32 3520, i32 2848
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef %or.i.i, i32 noundef 336) #21
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.if.then4_crit_edge, label %cmd_alloc_ent.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

cmd_alloc_ent.exit:                               ; preds = %if.end
  %idx.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 8
  %1 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -22, ptr %idx.i, align 8
  %in3.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %in3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %in, ptr %in3.i, align 4
  %out4.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %out4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %out, ptr %out4.i, align 8
  %uout5.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %uout5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %uout, ptr %uout5.i, align 4
  %uout_size6.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %uout_size6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %uout_size, ptr %uout_size6.i, align 8
  %callback.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %callback, ptr %callback.i, align 4
  %context7.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %context7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %context, ptr %context7.i, align 4
  %cmd8.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %cmd8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd1, ptr %cmd8.i, align 4
  %page_queue9.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %page_queue9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %page_queue, ptr %page_queue9.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 22
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcnt.i, align 4
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cmd_alloc_ent.exit.if.then4_crit_edge, label %if.end6

cmd_alloc_ent.exit.if.then4_crit_edge:            ; preds = %cmd_alloc_ent.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

if.then4:                                         ; preds = %cmd_alloc_ent.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i142149 = phi ptr [ %call7.i.i.i, %cmd_alloc_ent.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then4_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i142149 to i32
  br label %cleanup

if.end6:                                          ; preds = %cmd_alloc_ent.exit
  %token7 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %token7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %token, ptr %token7, align 1
  %polling = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 21
  %13 = ptrtoint ptr %polling to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %polling, align 2
  %handling = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %handling to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %handling, align 4
  %wait.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.260, ptr noundef nonnull @init_completion.__key) #16
  br i1 %tobool.not, label %if.then11, label %if.end6.do.body13_crit_edge

if.end6.do.body13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %done = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %done, align 4
  %wait.i143 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i143, ptr noundef nonnull @.str.260, ptr noundef nonnull @init_completion.__key) #16
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %if.end6.do.body13_crit_edge
  %cb_timeout_work = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %cb_timeout_work, i32 noundef 0) #16
  %16 = ptrtoint ptr %cb_timeout_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %cb_timeout_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.252, ptr noundef nonnull @mlx5_cmd_invoke.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry20 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry20, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cb_timeout_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.254, ptr noundef nonnull @mlx5_cmd_invoke.__key.253) #16
  %work30 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %work30, i32 noundef 0) #16
  %20 = ptrtoint ptr %work30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work30, align 8
  %lockdep_map36 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map36, ptr noundef nonnull @.str.256, ptr noundef nonnull @mlx5_cmd_invoke.__key.255, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry38 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i144 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 12, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry38, ptr %prev.i144, align 8
  %func40 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 12, i32 2
  %23 = ptrtoint ptr %func40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cmd_work_handler, ptr %func40, align 4
  br i1 %tobool2.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cmd_work_handler(ptr noundef %work30)
  br label %if.end54

if.else:                                          ; preds = %do.body13
  %wq = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 18
  %24 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work30) #16
  br i1 %call.i, label %if.else.if.end54_crit_edge, label %do.end51

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

do.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.258, i32 noundef 1144, i32 noundef %33) #19
  br label %out_free

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.then44
  br i1 %tobool.not, label %if.end57, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end57:                                         ; preds = %if.end54
  %call58 = tail call fastcc i32 @wait_func(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  %34 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %call58, label %if.end61 [
    i32 -110, label %if.end57.out_free_crit_edge
    i32 -125, label %out_free.fold.split
  ]

if.end57.out_free_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

if.end61:                                         ; preds = %if.end57
  %ts2 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %ts2 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts2, align 8
  %ts1 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ts1, align 8
  %sub = sub i64 %36, %38
  %first = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %in, i32 0, i32 3
  %39 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %first, align 4
  %shr = lshr i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 185532416, i32 %40)
  %cmp64 = icmp ult i32 %40, 185532416
  br i1 %cmp64, label %if.then66, label %if.end61.do.body70_crit_edge

if.end61.do.body70_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body70

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %stats67 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 28
  %41 = ptrtoint ptr %stats67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stats67, align 4
  %arrayidx = getelementptr %struct.mlx5_cmd_stats, ptr %42, i32 %shr
  %lock = getelementptr %struct.mlx5_cmd_stats, ptr %42, i32 %shr, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #16
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx, align 8
  %add = add i64 %44, %sub
  store i64 %add, ptr %arrayidx, align 8
  %n = getelementptr %struct.mlx5_cmd_stats, ptr %42, i32 %shr, i32 1
  %45 = ptrtoint ptr %n to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %n, align 8
  %inc = add i64 %46, 1
  store i64 %inc, ptr %n, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #16
  br label %do.body70

do.body70:                                        ; preds = %if.then66, %if.end61.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %47 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and71 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.do.end92_crit_edge, label %do.body74

do.body70.do.end92_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end92

do.body74:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_cmd_invoke.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_cmd_invoke, %if.then80)) #16
          to label %do.end92 [label %if.then80], !srcloc !670

if.then80:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %50 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i145 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i145 to ptr
  %task83 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task83 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task83, align 8
  %pid84 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 68
  %54 = ptrtoint ptr %pid84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pid84, align 8
  %call86 = tail call ptr @mlx5_command_str(i32 noundef %shr)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_cmd_invoke.__UNIQUE_ID_ddebug518, ptr noundef %49, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.258, i32 noundef 1167, i32 noundef %55, ptr noundef nonnull %call86, i64 noundef %sub) #16
  br label %do.end92

do.end92:                                         ; preds = %if.then80, %do.body74, %do.body70.do.end92_crit_edge
  %status93 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %call7.i.i.i, i32 0, i32 16
  %56 = ptrtoint ptr %status93 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %status93, align 8
  %58 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %status, align 1
  br label %out_free

out_free.fold.split:                              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free

out_free:                                         ; preds = %out_free.fold.split, %do.end92, %if.end57.out_free_crit_edge, %do.end51
  %err.0 = phi i32 [ %call58, %if.end57.out_free_crit_edge ], [ %call58, %do.end92 ], [ -12, %do.end51 ], [ -125, %out_free.fold.split ]
  tail call fastcc void @cmd_ent_put(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end54.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ %err.0, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @status_to_err(i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %status, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 19
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [19 x i32], ptr @switch.table.status_to_err, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_cmd_box(ptr nocapture noundef readonly %dev, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = and i32 %flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i19.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i19.i, label %entry.kmalloc.exit_crit_edge, label %if.end.i20.i, !prof !669

entry.kmalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kmalloc.exit

if.end.i20.i:                                     ; preds = %entry
  %and2.i.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i20.i.kmalloc.exit_crit_edge

if.end.i20.i.kmalloc.exit_crit_edge:              ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i20.i
  call void @__sanitizer_cov_trace_pc() #18
  %and6.i.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i20.i.kmalloc.exit_crit_edge, %entry.kmalloc.exit_crit_edge
  %retval.0.i21.i = phi i32 [ 0, %entry.kmalloc.exit_crit_edge ], [ 3, %if.end.i20.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %flags, i32 noundef 12) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kmalloc.exit
  %pool = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 24
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %dma = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %call7.i, i32 0, i32 1
  %or.i = or i32 %flags, 256
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %3, i32 noundef %or.i, ptr noundef %dma) #16
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %call7.i, align 8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_cmd_box.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_cmd_box, %if.then10)) #16
          to label %do.end [label %if.then10], !srcloc !670

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alloc_cmd_box.__UNIQUE_ID_ddebug527, ptr noundef %6, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.250, i32 noundef 1288, i32 noundef %12) #16
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %next = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %next, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %kmalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end14 ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %kmalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb_timeout_handler(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -24
  %cmd = getelementptr i8, ptr %work, i32 220
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 -176
  tail call void @mlx5_cmd_eq_recover(ptr noundef %add.ptr6) #16
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr3, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr6, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  %idx = getelementptr i8, ptr %work, i32 104
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 8
  %in = getelementptr i8, ptr %work, i32 -20
  %14 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in, align 4
  %first.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first.i, align 4
  %shr.i = lshr i32 %17, 16
  %call9 = tail call ptr @mlx5_command_str(i32 noundef %shr.i)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.262, i32 noundef 883, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %call9, i32 noundef %shr.i) #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ret = getelementptr i8, ptr %work, i32 272
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -110, ptr %ret, align 8
  %19 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr6, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i45 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i45 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid19, align 8
  %idx20 = getelementptr i8, ptr %work, i32 104
  %27 = ptrtoint ptr %idx20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx20, align 8
  %in21 = getelementptr i8, ptr %work, i32 -20
  %29 = ptrtoint ptr %in21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %in21, align 4
  %first.i46 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %first.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %first.i46, align 4
  %shr.i47 = lshr i32 %32, 16
  %call24 = tail call ptr @mlx5_command_str(i32 noundef %shr.i47)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.262, i32 noundef 889, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %call24, i32 noundef %shr.i47) #19
  %33 = ptrtoint ptr %idx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx20, align 8
  %sh_prom = zext i32 %34 to i64
  %shl = shl nuw i64 1, %sh_prom
  tail call fastcc void @mlx5_cmd_comp_handler(ptr noundef %add.ptr6, i64 noundef %shl, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end, %do.end
  tail call fastcc void @cmd_ent_put(ptr noundef %add.ptr3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd_work_handler(ptr noundef %work) #3 align 64 {
entry:
  %status = alloca i8, align 1
  %drv_synd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -248
  %cmd1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %polling = getelementptr i8, ptr %work, i32 82
  %2 = ptrtoint ptr %polling to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %polling, align 2, !range !690
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %add.ptr4 = getelementptr i8, ptr %1, i32 -176
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %add.ptr4, i32 noundef 4) #16
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #16
  %handling = getelementptr i8, ptr %work, i32 -116
  tail call void @complete(ptr noundef %handling) #16
  %page_queue = getelementptr i8, ptr %work, i32 52
  %4 = ptrtoint ptr %page_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %pages_sem = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 20
  %sem7 = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 19
  %cond = select i1 %tobool6.not, ptr %sem7, ptr %pages_sem
  tail call void @down(ptr noundef %cond) #16
  %6 = ptrtoint ptr %page_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %alloc_lock.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 13
  %call2.i255 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock.i) #16
  %bitmask.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 16
  %max_reg_cmds.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_reg_cmds.i, align 4
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %bitmask.i, i32 noundef %9) #16
  %10 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %11)
  %cmp7.i = icmp slt i32 %call5.i, %11
  br i1 %cmp7.i, label %if.then.i256, label %if.then.cmd_alloc_index.exit_crit_edge

if.then.cmd_alloc_index.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cmd_alloc_index.exit

if.then.i256:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef %call5.i, ptr noundef %bitmask.i) #16
  br label %cmd_alloc_index.exit

cmd_alloc_index.exit:                             ; preds = %if.then.i256, %if.then.cmd_alloc_index.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock.i, i32 noundef %call2.i255) #16
  %12 = ptrtoint ptr %max_reg_cmds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_reg_cmds.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %13)
  %cmp12.i = icmp slt i32 %call5.i, %13
  %spec.select.i = select i1 %cmp12.i, i32 %call5.i, i32 -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp slt i32 %spec.select.i, 0
  br i1 %cmp, label %do.body, label %if.end24

do.body:                                          ; preds = %cmd_alloc_index.exit
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @cmd_work_handler._rs, ptr noundef nonnull @__func__.cmd_work_handler) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body.do.end19_crit_edge, label %do.end

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr4, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.267, ptr noundef nonnull @__func__.cmd_work_handler, i32 noundef 937, i32 noundef %21) #19
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %callback = getelementptr i8, ptr %work, i32 -228
  %22 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %callback, align 4
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end19
  %context = getelementptr i8, ptr %work, i32 -124
  %24 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %context, align 4
  tail call void %23(i32 noundef -11, ptr noundef %25) #16
  %out = getelementptr i8, ptr %work, i32 -240
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 8
  %next.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %next.i, align 4
  %tobool.not6.i = icmp eq ptr %29, null
  br i1 %tobool.not6.i, label %if.then21.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.lr.ph.i

if.then21.mlx5_free_cmd_msg.exit_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

while.body.lr.ph.i:                               ; preds = %if.then21
  %pool.i.i = getelementptr i8, ptr %1, i32 436
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %head.07.i = phi ptr [ %29, %while.body.lr.ph.i ], [ %31, %while.body.i.while.body.i_crit_edge ]
  %next2.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 2
  %30 = ptrtoint ptr %next2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %next2.i, align 4
  %32 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pool.i.i, align 4
  %34 = ptrtoint ptr %head.07.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.07.i, align 4
  %dma.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %head.07.i, i32 0, i32 1
  %36 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %33, ptr noundef %35, i32 noundef %37) #16
  tail call void @kfree(ptr noundef nonnull %head.07.i) #16
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.mlx5_free_cmd_msg.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_free_cmd_msg.exit

mlx5_free_cmd_msg.exit:                           ; preds = %while.body.i.mlx5_free_cmd_msg.exit_crit_edge, %if.then21.mlx5_free_cmd_msg.exit_crit_edge
  tail call void @kfree(ptr noundef %27) #16
  %in = getelementptr i8, ptr %work, i32 -244
  %38 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in, align 4
  tail call fastcc void @free_msg(ptr noundef %add.ptr4, ptr noundef %39)
  tail call fastcc void @cmd_ent_put(ptr noundef %add.ptr)
  br label %if.end23

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  %ret = getelementptr i8, ptr %work, i32 48
  %40 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -11, ptr %ret, align 8
  %done = getelementptr i8, ptr %work, i32 -60
  tail call void @complete(ptr noundef %done) #16
  br label %if.end23

if.end23:                                         ; preds = %if.else, %mlx5_free_cmd_msg.exit
  tail call void @up(ptr noundef %cond) #16
  br label %cleanup

if.end24:                                         ; preds = %cmd_alloc_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  %idx = getelementptr i8, ptr %work, i32 -120
  %41 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.i, ptr %idx, align 8
  br label %if.end40

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %max_reg_cmds = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %max_reg_cmds to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_reg_cmds, align 4
  %idx26 = getelementptr i8, ptr %work, i32 -120
  %44 = ptrtoint ptr %idx26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %idx26, align 8
  %alloc_lock = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 13
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #16
  %45 = ptrtoint ptr %idx26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx26, align 8
  %bitmask = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef %46, ptr noundef %bitmask) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call33) #16
  br label %if.end40

if.end40:                                         ; preds = %if.else25, %if.end24
  %idx41 = getelementptr i8, ptr %work, i32 -120
  %47 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %idx41, align 8
  %arrayidx = getelementptr %struct.mlx5_cmd, ptr %1, i32 0, i32 23, i32 %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %50 = load i32, ptr %idx41, align 8
  %cmd_buf.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmd_buf.i, align 4
  %log_stride.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %log_stride.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %log_stride.i, align 1
  %conv.i = zext i8 %54 to i32
  %shl.i = shl i32 %50, %conv.i
  %add.ptr.i = getelementptr i8, ptr %52, i32 %shl.i
  %lay44 = getelementptr i8, ptr %work, i32 44
  %55 = ptrtoint ptr %lay44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i, ptr %lay44, align 4
  %56 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 64)
  %in45 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 4
  %in46 = getelementptr i8, ptr %work, i32 -244
  %57 = ptrtoint ptr %in46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %in46, align 4
  %first = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %58, i32 0, i32 3
  %59 = call ptr @memcpy(ptr %in45, ptr %first, i32 16)
  %60 = ptrtoint ptr %in45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in45, align 8
  %shr = lshr i32 %61, 16
  %conv50 = trunc i32 %shr to i16
  %op = getelementptr i8, ptr %work, i32 80
  %62 = ptrtoint ptr %op to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv50, ptr %op, align 8
  %63 = load ptr, ptr %in46, align 4
  %next = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %next, align 4
  %tobool52.not = icmp eq ptr %65, null
  br i1 %tobool52.not, label %if.end40.if.end57_crit_edge, label %if.then53

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then53:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  %dma = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma, align 4
  %conv56 = zext i32 %67 to i64
  %in_ptr = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 3
  %68 = ptrtoint ptr %in_ptr to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv56, ptr %in_ptr, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end40.if.end57_crit_edge
  %69 = ptrtoint ptr %in46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %in46, align 4
  %len = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len, align 4
  %inlen = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 2
  %73 = ptrtoint ptr %inlen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %inlen, align 4
  %out59 = getelementptr i8, ptr %work, i32 -240
  %74 = ptrtoint ptr %out59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %out59, align 8
  %next60 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %next60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %next60, align 4
  %tobool61.not = icmp eq ptr %77, null
  br i1 %tobool61.not, label %if.end57.if.end67_crit_edge, label %if.then62

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %dma65 = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %dma65 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma65, align 4
  %conv66 = zext i32 %79 to i64
  %out_ptr = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 6
  %80 = ptrtoint ptr %out_ptr to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv66, ptr %out_ptr, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.end57.if.end67_crit_edge
  %81 = ptrtoint ptr %out59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %out59, align 8
  %len69 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %len69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len69, align 4
  %outlen = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 7
  %85 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %outlen, align 8
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 7, ptr %add.ptr.i, align 8
  %token = getelementptr i8, ptr %work, i32 57
  %87 = ptrtoint ptr %token to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %token, align 1
  %token70 = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 8
  %89 = ptrtoint ptr %token70 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %token70, align 4
  %status_own = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %add.ptr.i, i32 0, i32 11
  %90 = ptrtoint ptr %status_own to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %status_own, align 1
  %checksum_disabled = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 27
  %91 = ptrtoint ptr %checksum_disabled to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %checksum_disabled, align 4
  %93 = ptrtoint ptr %lay44 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lay44, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end67
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end67 ]
  %sum.09.i.i = phi i8 [ %xor7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end67 ]
  %arrayidx.i.i = getelementptr i8, ptr %94, i32 %i.010.i.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i, align 1
  %xor7.i.i = xor i8 %96, %sum.09.i.i
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %xor8_buf.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

xor8_buf.exit.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool71.not.not = icmp eq i32 %92, 0
  %neg.i = xor i8 %xor7.i.i, -1
  %sig.i = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %94, i32 0, i32 9
  %97 = ptrtoint ptr %sig.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %neg.i, ptr %sig.i, align 1
  br i1 %tobool71.not.not, label %if.then.i259, label %xor8_buf.exit.i.set_signature.exit_crit_edge

xor8_buf.exit.i.set_signature.exit_crit_edge:     ; preds = %xor8_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_signature.exit

if.then.i259:                                     ; preds = %xor8_buf.exit.i
  %98 = ptrtoint ptr %in46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %in46, align 4
  %next1.i.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %99, i32 0, i32 4
  %len.i.i.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i.i, align 4
  %102 = tail call i32 @llvm.smin.i32(i32 %101, i32 16) #16
  %sub.i.i.i = add i32 %101, 511
  %sub1.i.i.i = sub i32 %sub.i.i.i, %102
  %div.i.i.i = sdiv i32 %sub1.i.i.i, 512
  %103 = ptrtoint ptr %next1.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %next.07.i.i = load ptr, ptr %next1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub1.i.i.i)
  %cmp8.i.i = icmp slt i32 %sub1.i.i.i, 512
  %tobool.not9.i.i = icmp eq ptr %next.07.i.i, null
  %or.cond10.i.i = select i1 %cmp8.i.i, i1 true, i1 %tobool.not9.i.i
  br i1 %or.cond10.i.i, label %if.then.i259.calc_chain_sig.exit.i_crit_edge, label %if.then.i259.for.body.i6.i_crit_edge

if.then.i259.for.body.i6.i_crit_edge:             ; preds = %if.then.i259
  br label %for.body.i6.i

if.then.i259.calc_chain_sig.exit.i_crit_edge:     ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #18
  br label %calc_chain_sig.exit.i

for.body.i6.i:                                    ; preds = %calc_block_sig.exit.i.i.for.body.i6.i_crit_edge, %if.then.i259.for.body.i6.i_crit_edge
  %next.012.i.i = phi ptr [ %next.0.i.i, %calc_block_sig.exit.i.i.for.body.i6.i_crit_edge ], [ %next.07.i.i, %if.then.i259.for.body.i6.i_crit_edge ]
  %i.011.i.i = phi i32 [ %inc.i7.i, %calc_block_sig.exit.i.i.for.body.i6.i_crit_edge ], [ 0, %if.then.i259.for.body.i6.i_crit_edge ]
  %104 = ptrtoint ptr %next.012.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %next.012.i.i, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i6.i
  %i.010.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 512, %for.body.i6.i ]
  %sum.09.i.i.i.i = phi i8 [ %xor7.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i6.i ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %105, i32 %i.010.i.i.i.i
  %106 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %xor7.i.i.i.i = xor i8 %107, %sum.09.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.010.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 574
  br i1 %exitcond.not.i.i.i.i, label %xor8_buf.exit.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

xor8_buf.exit.i.i.i:                              ; preds = %for.body.i.i.i.i
  %neg.i.i.i = xor i8 %xor7.i.i.i.i, -1
  %ctrl_sig.i.i.i = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %105, i32 0, i32 6
  %108 = ptrtoint ptr %ctrl_sig.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %neg.i.i.i, ptr %ctrl_sig.i.i.i, align 2
  br label %for.body.i15.i.i.i

for.body.i15.i.i.i:                               ; preds = %for.body.i15.i.i.i.for.body.i15.i.i.i_crit_edge, %xor8_buf.exit.i.i.i
  %i.010.i9.i.i.i = phi i32 [ %inc.i13.i.i.i, %for.body.i15.i.i.i.for.body.i15.i.i.i_crit_edge ], [ 0, %xor8_buf.exit.i.i.i ]
  %sum.09.i10.i.i.i = phi i8 [ %xor7.i12.i.i.i, %for.body.i15.i.i.i.for.body.i15.i.i.i_crit_edge ], [ 0, %xor8_buf.exit.i.i.i ]
  %arrayidx.i11.i.i.i = getelementptr i8, ptr %105, i32 %i.010.i9.i.i.i
  %109 = ptrtoint ptr %arrayidx.i11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i11.i.i.i, align 1
  %xor7.i12.i.i.i = xor i8 %110, %sum.09.i10.i.i.i
  %inc.i13.i.i.i = add nuw nsw i32 %i.010.i9.i.i.i, 1
  %exitcond.not.i14.i.i.i = icmp eq i32 %inc.i13.i.i.i, 575
  br i1 %exitcond.not.i14.i.i.i, label %calc_block_sig.exit.i.i, label %for.body.i15.i.i.i.for.body.i15.i.i.i_crit_edge

for.body.i15.i.i.i.for.body.i15.i.i.i_crit_edge:  ; preds = %for.body.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i15.i.i.i

calc_block_sig.exit.i.i:                          ; preds = %for.body.i15.i.i.i
  %neg4.i.i.i = xor i8 %xor7.i12.i.i.i, -1
  %sig.i.i.i = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %105, i32 0, i32 7
  %111 = ptrtoint ptr %sig.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %neg4.i.i.i, ptr %sig.i.i.i, align 1
  %next2.i.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.012.i.i, i32 0, i32 2
  %inc.i7.i = add nuw nsw i32 %i.011.i.i, 1
  %112 = ptrtoint ptr %next2.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %next.0.i.i = load ptr, ptr %next2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i7.i, i32 %div.i.i.i)
  %cmp.i.i = icmp sge i32 %inc.i7.i, %div.i.i.i
  %tobool.not.i.i = icmp eq ptr %next.0.i.i, null
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %calc_block_sig.exit.i.i.calc_chain_sig.exit.i_crit_edge, label %calc_block_sig.exit.i.i.for.body.i6.i_crit_edge

calc_block_sig.exit.i.i.for.body.i6.i_crit_edge:  ; preds = %calc_block_sig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i6.i

calc_block_sig.exit.i.i.calc_chain_sig.exit.i_crit_edge: ; preds = %calc_block_sig.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %calc_chain_sig.exit.i

calc_chain_sig.exit.i:                            ; preds = %calc_block_sig.exit.i.i.calc_chain_sig.exit.i_crit_edge, %if.then.i259.calc_chain_sig.exit.i_crit_edge
  %113 = ptrtoint ptr %out59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %out59, align 8
  %next1.i8.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %114, i32 0, i32 4
  %len.i.i9.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %len.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i.i9.i, align 4
  %117 = tail call i32 @llvm.smin.i32(i32 %116, i32 16) #16
  %sub.i.i10.i = add i32 %116, 511
  %sub1.i.i11.i = sub i32 %sub.i.i10.i, %117
  %div.i.i12.i = sdiv i32 %sub1.i.i11.i, 512
  %118 = ptrtoint ptr %next1.i8.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %next.07.i13.i = load ptr, ptr %next1.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub1.i.i11.i)
  %cmp8.i14.i = icmp slt i32 %sub1.i.i11.i, 512
  %tobool.not9.i15.i = icmp eq ptr %next.07.i13.i, null
  %or.cond10.i16.i = select i1 %cmp8.i14.i, i1 true, i1 %tobool.not9.i15.i
  br i1 %or.cond10.i16.i, label %calc_chain_sig.exit.i.set_signature.exit_crit_edge, label %calc_chain_sig.exit.i.for.body.i19.i_crit_edge

calc_chain_sig.exit.i.for.body.i19.i_crit_edge:   ; preds = %calc_chain_sig.exit.i
  br label %for.body.i19.i

calc_chain_sig.exit.i.set_signature.exit_crit_edge: ; preds = %calc_chain_sig.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_signature.exit

for.body.i19.i:                                   ; preds = %calc_block_sig.exit.i45.i.for.body.i19.i_crit_edge, %calc_chain_sig.exit.i.for.body.i19.i_crit_edge
  %next.012.i17.i = phi ptr [ %next.0.i41.i, %calc_block_sig.exit.i45.i.for.body.i19.i_crit_edge ], [ %next.07.i13.i, %calc_chain_sig.exit.i.for.body.i19.i_crit_edge ]
  %i.011.i18.i = phi i32 [ %inc.i40.i, %calc_block_sig.exit.i45.i.for.body.i19.i_crit_edge ], [ 0, %calc_chain_sig.exit.i.for.body.i19.i_crit_edge ]
  %119 = ptrtoint ptr %next.012.i17.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %next.012.i17.i, align 4
  br label %for.body.i.i.i26.i

for.body.i.i.i26.i:                               ; preds = %for.body.i.i.i26.i.for.body.i.i.i26.i_crit_edge, %for.body.i19.i
  %i.010.i.i.i20.i = phi i32 [ %inc.i.i.i24.i, %for.body.i.i.i26.i.for.body.i.i.i26.i_crit_edge ], [ 512, %for.body.i19.i ]
  %sum.09.i.i.i21.i = phi i8 [ %xor7.i.i.i23.i, %for.body.i.i.i26.i.for.body.i.i.i26.i_crit_edge ], [ 0, %for.body.i19.i ]
  %arrayidx.i.i.i22.i = getelementptr i8, ptr %120, i32 %i.010.i.i.i20.i
  %121 = ptrtoint ptr %arrayidx.i.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i.i.i22.i, align 1
  %xor7.i.i.i23.i = xor i8 %122, %sum.09.i.i.i21.i
  %inc.i.i.i24.i = add nuw nsw i32 %i.010.i.i.i20.i, 1
  %exitcond.not.i.i.i25.i = icmp eq i32 %inc.i.i.i24.i, 574
  br i1 %exitcond.not.i.i.i25.i, label %xor8_buf.exit.i.i29.i, label %for.body.i.i.i26.i.for.body.i.i.i26.i_crit_edge

for.body.i.i.i26.i.for.body.i.i.i26.i_crit_edge:  ; preds = %for.body.i.i.i26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i26.i

xor8_buf.exit.i.i29.i:                            ; preds = %for.body.i.i.i26.i
  %neg.i.i27.i = xor i8 %xor7.i.i.i23.i, -1
  %ctrl_sig.i.i28.i = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %120, i32 0, i32 6
  %123 = ptrtoint ptr %ctrl_sig.i.i28.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %neg.i.i27.i, ptr %ctrl_sig.i.i28.i, align 2
  br label %for.body.i15.i.i36.i

for.body.i15.i.i36.i:                             ; preds = %for.body.i15.i.i36.i.for.body.i15.i.i36.i_crit_edge, %xor8_buf.exit.i.i29.i
  %i.010.i9.i.i30.i = phi i32 [ %inc.i13.i.i34.i, %for.body.i15.i.i36.i.for.body.i15.i.i36.i_crit_edge ], [ 0, %xor8_buf.exit.i.i29.i ]
  %sum.09.i10.i.i31.i = phi i8 [ %xor7.i12.i.i33.i, %for.body.i15.i.i36.i.for.body.i15.i.i36.i_crit_edge ], [ 0, %xor8_buf.exit.i.i29.i ]
  %arrayidx.i11.i.i32.i = getelementptr i8, ptr %120, i32 %i.010.i9.i.i30.i
  %124 = ptrtoint ptr %arrayidx.i11.i.i32.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i11.i.i32.i, align 1
  %xor7.i12.i.i33.i = xor i8 %125, %sum.09.i10.i.i31.i
  %inc.i13.i.i34.i = add nuw nsw i32 %i.010.i9.i.i30.i, 1
  %exitcond.not.i14.i.i35.i = icmp eq i32 %inc.i13.i.i34.i, 575
  br i1 %exitcond.not.i14.i.i35.i, label %calc_block_sig.exit.i45.i, label %for.body.i15.i.i36.i.for.body.i15.i.i36.i_crit_edge

for.body.i15.i.i36.i.for.body.i15.i.i36.i_crit_edge: ; preds = %for.body.i15.i.i36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i15.i.i36.i

calc_block_sig.exit.i45.i:                        ; preds = %for.body.i15.i.i36.i
  %neg4.i.i37.i = xor i8 %xor7.i12.i.i33.i, -1
  %sig.i.i38.i = getelementptr inbounds %struct.mlx5_cmd_prot_block, ptr %120, i32 0, i32 7
  %126 = ptrtoint ptr %sig.i.i38.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %neg4.i.i37.i, ptr %sig.i.i38.i, align 1
  %next2.i39.i = getelementptr inbounds %struct.mlx5_cmd_mailbox, ptr %next.012.i17.i, i32 0, i32 2
  %inc.i40.i = add nuw nsw i32 %i.011.i18.i, 1
  %127 = ptrtoint ptr %next2.i39.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %next.0.i41.i = load ptr, ptr %next2.i39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i40.i, i32 %div.i.i12.i)
  %cmp.i42.i = icmp sge i32 %inc.i40.i, %div.i.i12.i
  %tobool.not.i43.i = icmp eq ptr %next.0.i41.i, null
  %or.cond.i44.i = select i1 %cmp.i42.i, i1 true, i1 %tobool.not.i43.i
  br i1 %or.cond.i44.i, label %calc_block_sig.exit.i45.i.set_signature.exit_crit_edge, label %calc_block_sig.exit.i45.i.for.body.i19.i_crit_edge

calc_block_sig.exit.i45.i.for.body.i19.i_crit_edge: ; preds = %calc_block_sig.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i19.i

calc_block_sig.exit.i45.i.set_signature.exit_crit_edge: ; preds = %calc_block_sig.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_signature.exit

set_signature.exit:                               ; preds = %calc_block_sig.exit.i45.i.set_signature.exit_crit_edge, %calc_chain_sig.exit.i.set_signature.exit_crit_edge, %xor8_buf.exit.i.set_signature.exit_crit_edge
  tail call fastcc void @dump_command(ptr noundef %add.ptr4, ptr noundef %add.ptr, i32 noundef 1)
  %call.i = tail call i64 @ktime_get() #16
  %ts1 = getelementptr i8, ptr %work, i32 64
  %128 = ptrtoint ptr %ts1 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %call.i, ptr %ts1, align 8
  %mode = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 21
  %129 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mode, align 4
  %callback73 = getelementptr i8, ptr %work, i32 -228
  %131 = ptrtoint ptr %callback73 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %callback73, align 4
  %tobool74.not = icmp eq ptr %132, null
  br i1 %tobool74.not, label %set_signature.exit.if.end78_crit_edge, label %land.lhs.true

set_signature.exit.if.end78_crit_edge:            ; preds = %set_signature.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

land.lhs.true:                                    ; preds = %set_signature.exit
  %cb_timeout_work = getelementptr i8, ptr %work, i32 -224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %133 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %133, ptr noundef %cb_timeout_work, i32 noundef %call2.i) #16
  br i1 %call.i.i, label %if.then77, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.then77:                                        ; preds = %land.lhs.true
  %refcnt.i = getelementptr i8, ptr %work, i32 84
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !667
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then77.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !668

if.then77.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then77
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %135 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %135)
  %.not.i.i.i.i = icmp sgt i32 %135, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end78_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !669

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end78_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end78

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then77.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then77.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end78

if.end78:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end78_crit_edge, %land.lhs.true.if.end78_crit_edge, %set_signature.exit.if.end78_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %add.ptr) #16
  %pdev.i = getelementptr i8, ptr %1, i32 -168
  %136 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdev.i, align 8
  %error_state.i.i = getelementptr inbounds %struct.pci_dev, ptr %137, i32 0, i32 43
  %138 = ptrtoint ptr %error_state.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %error_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.i.not.i = icmp eq i32 %139, 1
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.end78.if.then84_crit_edge

if.end78.if.then84_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

lor.lhs.false.i:                                  ; preds = %if.end78
  %state.i = getelementptr i8, ptr %1, i32 16
  %140 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.not.i = icmp eq i32 %141, 1
  br i1 %cmp.not.i, label %mlx5_cmd_is_down.exit, label %lor.lhs.false.i.if.then84_crit_edge

lor.lhs.false.i.if.then84_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

mlx5_cmd_is_down.exit:                            ; preds = %lor.lhs.false.i
  %state1.i = getelementptr i8, ptr %1, i32 1572
  %142 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp2.i = icmp eq i32 %143, 2
  br i1 %cmp2.i, label %mlx5_cmd_is_down.exit.if.then84_crit_edge, label %lor.lhs.false

mlx5_cmd_is_down.exit.if.then84_crit_edge:        ; preds = %mlx5_cmd_is_down.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

lor.lhs.false:                                    ; preds = %mlx5_cmd_is_down.exit
  %144 = ptrtoint ptr %op to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %op, align 8
  %allowed_opcode.i = getelementptr inbounds %struct.mlx5_cmd, ptr %1, i32 0, i32 22
  %146 = ptrtoint ptr %allowed_opcode.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %allowed_opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp.i261 = icmp eq i16 %147, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %147, i16 %145)
  %cmp5.i = icmp eq i16 %147, %145
  %retval.0.i262 = or i1 %cmp.i261, %cmp5.i
  br i1 %retval.0.i262, label %if.end118, label %lor.lhs.false.if.then84_crit_edge

lor.lhs.false.if.then84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then84

if.then84:                                        ; preds = %lor.lhs.false.if.then84_crit_edge, %mlx5_cmd_is_down.exit.if.then84_crit_edge, %lor.lhs.false.i.if.then84_crit_edge, %if.end78.if.then84_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #16
  %148 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drv_synd) #16
  %149 = ptrtoint ptr %drv_synd to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %drv_synd, align 4, !annotation !674
  %150 = ptrtoint ptr %in46 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %in46, align 4
  %first.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %first.i, align 4
  %shr.i = lshr i32 %153, 16
  %conv.i263 = trunc i32 %shr.i to i16
  %call87 = call fastcc i32 @mlx5_internal_err_ret_value(ptr noundef %add.ptr4, i16 noundef zeroext %conv.i263, ptr noundef nonnull %drv_synd, ptr noundef nonnull %status)
  %ret88 = getelementptr i8, ptr %work, i32 48
  %154 = ptrtoint ptr %ret88 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call87, ptr %ret88, align 8
  %155 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %status, align 1
  %conv90 = zext i8 %156 to i32
  %157 = ptrtoint ptr %out59 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %out59, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  %and = and i32 %160, 16777215
  %shl = shl nuw i32 %conv90, 24
  %or = or i32 %and, %shl
  store i32 %or, ptr %158, align 4
  %161 = ptrtoint ptr %drv_synd to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %drv_synd, align 4
  %163 = load ptr, ptr %out59, align 8
  %add.ptr107 = getelementptr i32, ptr %163, i32 1
  %164 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %162, ptr %add.ptr107, align 4
  %165 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %idx41, align 8
  %sh_prom = zext i32 %166 to i64
  %shl117 = shl nuw i64 1, %sh_prom
  tail call fastcc void @mlx5_cmd_comp_handler(ptr noundef %add.ptr4, i64 noundef %shl117, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drv_synd) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #16
  br label %cleanup

if.end118:                                        ; preds = %lor.lhs.false
  %refcnt.i264 = getelementptr i8, ptr %work, i32 84
  %call.i.i.i.i.i.i265 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i264, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %refcnt.i264, i32 1, i32 3, i32 1) #16
  %167 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i264, ptr %refcnt.i264, i32 1, ptr elementtype(i32) %refcnt.i264) #16, !srcloc !667
  %asmresult.i.i.i.i.i.i266 = extractvalue { i32, i32, i32 } %167, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i266)
  %tobool1.not.i.i.i.i267 = icmp eq i32 %asmresult.i.i.i.i.i.i266, 0
  br i1 %tobool1.not.i.i.i.i267, label %if.end118.if.end15.sink.split.i.i.i.i272_crit_edge, label %if.else.i.i.i.i270, !prof !668

if.end118.if.end15.sink.split.i.i.i.i272_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i272

if.else.i.i.i.i270:                               ; preds = %if.end118
  %add.i.i.i.i268 = add i32 %asmresult.i.i.i.i.i.i266, 1
  %168 = or i32 %add.i.i.i.i268, %asmresult.i.i.i.i.i.i266
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %168)
  %.not.i.i.i.i269 = icmp sgt i32 %168, -1
  br i1 %.not.i.i.i.i269, label %if.else.i.i.i.i270.cmd_ent_get.exit273_crit_edge, label %if.else.i.i.i.i270.if.end15.sink.split.i.i.i.i272_crit_edge, !prof !669

if.else.i.i.i.i270.if.end15.sink.split.i.i.i.i272_crit_edge: ; preds = %if.else.i.i.i.i270
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i272

if.else.i.i.i.i270.cmd_ent_get.exit273_crit_edge: ; preds = %if.else.i.i.i.i270
  call void @__sanitizer_cov_trace_pc() #18
  br label %cmd_ent_get.exit273

if.end15.sink.split.i.i.i.i272:                   ; preds = %if.else.i.i.i.i270.if.end15.sink.split.i.i.i.i272_crit_edge, %if.end118.if.end15.sink.split.i.i.i.i272_crit_edge
  %.sink.i.i.i.i271 = phi i32 [ 2, %if.end118.if.end15.sink.split.i.i.i.i272_crit_edge ], [ 1, %if.else.i.i.i.i270.if.end15.sink.split.i.i.i.i272_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i264, i32 noundef %.sink.i.i.i.i271) #16
  br label %cmd_ent_get.exit273

cmd_ent_get.exit273:                              ; preds = %if.end15.sink.split.i.i.i.i272, %if.else.i.i.i.i270.cmd_ent_get.exit273_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmd_work_handler.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_work_handler, %if.then129)) #16
          to label %do.body139 [label %if.then129], !srcloc !670

if.then129:                                       ; preds = %cmd_ent_get.exit273
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %add.ptr4, align 8
  %171 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i274 = and i32 %171, -16384
  %172 = inttoptr i32 %and.i274 to ptr
  %task132 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %task132 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %task132, align 8
  %pid133 = getelementptr inbounds %struct.task_struct, ptr %174, i32 0, i32 68
  %175 = ptrtoint ptr %pid133 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %pid133, align 8
  %177 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %idx41, align 8
  %shl135 = shl nuw i32 1, %178
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmd_work_handler.__UNIQUE_ID_ddebug516, ptr noundef %170, ptr noundef nonnull @.str.268, ptr noundef nonnull @__func__.cmd_work_handler, i32 noundef 997, i32 noundef %176, i32 noundef %shl135) #16
  br label %do.body139

do.body139:                                       ; preds = %if.then129, %cmd_ent_get.exit273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !691
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !692
  tail call void @arm_heavy_mb() #16
  %179 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %idx41, align 8
  %shl146 = shl nuw i32 1, %180
  %iseg = getelementptr i8, ptr %1, i32 1564
  %181 = ptrtoint ptr %iseg to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %iseg, align 4
  %cmd_dbell = getelementptr inbounds %struct.mlx5_init_seg, ptr %182, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmd_dbell, i32 %shl146) #16, !srcloc !687
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp147 = icmp eq i32 %130, 0
  %brmerge = select i1 %cmp147, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.then152, label %do.body139.cleanup_crit_edge

do.body139.cleanup_crit_edge:                     ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then152:                                       ; preds = %do.body139
  %183 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cmd1, align 4
  %add.ptr.i275 = getelementptr i8, ptr %184, i32 -176
  %call.i276 = tail call i64 @_mlx5_tout_ms(ptr noundef %add.ptr.i275, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %185 = load volatile i32, ptr @jiffies, align 128
  %186 = trunc i64 %call.i276 to i32
  %conv.i277 = add i32 %186, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i277) #16
  %187 = add i32 %call2.i.i, %185
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i285.do.body.i_crit_edge, %if.then152
  %188 = ptrtoint ptr %lay44 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %lay44, align 4
  %status_own.i = getelementptr inbounds %struct.mlx5_cmd_layout, ptr %189, i32 0, i32 11
  %190 = ptrtoint ptr %status_own.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load volatile i8, ptr %status_own.i, align 1
  %192 = and i8 %191, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i282 = icmp eq i8 %192, 0
  br i1 %tobool.not.i282, label %do.body.i.poll_timeout.exit_crit_edge, label %if.end.i285

do.body.i.poll_timeout.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_timeout.exit

if.end.i285:                                      ; preds = %do.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.186, i32 noundef 247, i32 noundef 0) #16
  %call.i.i283 = tail call i32 @__cond_resched() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %193 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %193, %187
  %cmp.i284 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i284, label %if.end.i285.do.body.i_crit_edge, label %if.end.i285.poll_timeout.exit_crit_edge

if.end.i285.poll_timeout.exit_crit_edge:          ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_timeout.exit

if.end.i285.do.body.i_crit_edge:                  ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

poll_timeout.exit:                                ; preds = %if.end.i285.poll_timeout.exit_crit_edge, %do.body.i.poll_timeout.exit_crit_edge
  %.sink.i = phi i32 [ 0, %do.body.i.poll_timeout.exit_crit_edge ], [ -110, %if.end.i285.poll_timeout.exit_crit_edge ]
  %ret11.i = getelementptr i8, ptr %work, i32 48
  %194 = ptrtoint ptr %ret11.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %.sink.i, ptr %ret11.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !693
  %195 = ptrtoint ptr %idx41 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %idx41, align 8
  %sh_prom154 = zext i32 %196 to i64
  %shl155 = shl nuw i64 1, %sh_prom154
  %197 = ptrtoint ptr %ret11.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ret11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %198)
  %cmp157 = icmp eq i32 %198, -110
  tail call fastcc void @mlx5_cmd_comp_handler(ptr noundef %add.ptr4, i64 noundef %shl155, i1 noundef zeroext %cmp157)
  br label %cleanup

cleanup:                                          ; preds = %poll_timeout.exit, %do.body139.cleanup_crit_edge, %if.then84, %if.end23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_func(ptr noundef %dev, ptr noundef %ent) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @_mlx5_tout_ms(ptr noundef %dev, i32 noundef 4) #16
  %conv = trunc i64 %call to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #16
  %handling = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 9
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %handling, i32 noundef %call2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %work = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 12
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #16
  br i1 %call4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %ret = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 14
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -125, ptr %ret, align 8
  br label %out_err

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 21
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %polling = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 21
  %3 = ptrtoint ptr %polling to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %polling, align 2, !range !690
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %done = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 10
  tail call void @wait_for_completion(ptr noundef %done) #16
  br label %out_err

if.else:                                          ; preds = %lor.lhs.false
  %done10 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 10
  %call11 = tail call i32 @wait_for_completion_timeout(ptr noundef %done10, i32 noundef %call2.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.out_err_crit_edge

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_err

if.then13:                                        ; preds = %if.else
  tail call void @mlx5_cmd_eq_recover(ptr noundef %dev) #16
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done10, i32 noundef 500) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i38.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i38.i to ptr
  %task13.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task13.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task13.i, align 8
  %pid14.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid14.i, align 8
  %idx15.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 8
  %13 = ptrtoint ptr %idx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx15.i, align 8
  %in16.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 1
  %15 = ptrtoint ptr %in16.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in16.i, align 4
  %first.i39.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %first.i39.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %first.i39.i, align 4
  %shr.i40.i = lshr i32 %18, 16
  %call19.i = tail call ptr @mlx5_command_str(i32 noundef %shr.i40.i) #16
  br i1 %tobool.not.i, label %do.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.276, i32 noundef 1057, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %call19.i, i32 noundef %shr.i40.i) #19
  br label %out_err

do.end10.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.276, i32 noundef 1062, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %call19.i, i32 noundef %shr.i40.i) #19
  %ret.i = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 14
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -110, ptr %ret.i, align 8
  %20 = ptrtoint ptr %idx15.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx15.i, align 8
  %sh_prom.i = zext i32 %21 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  tail call fastcc void @mlx5_cmd_comp_handler(ptr noundef %dev, i64 noundef %shl.i, i1 noundef zeroext true) #16
  br label %out_err

out_err:                                          ; preds = %do.end10.i, %do.end.i, %if.else.out_err_crit_edge, %if.then9, %if.then
  %ret16 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 14
  %22 = ptrtoint ptr %ret16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret16, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %23, label %out_err.do.body47_crit_edge [
    i32 -110, label %do.end
    i32 -125, label %do.end33
  ]

out_err.do.body47_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body47

do.end:                                           ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %27 = tail call i32 @llvm.read_register.i32(metadata !657) #16
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
  %in = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 1
  %33 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in, align 4
  %first.i = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %first.i, align 4
  %shr.i = lshr i32 %36, 16
  %call23 = tail call ptr @mlx5_command_str(i32 noundef %shr.i)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.270, i32 noundef 1090, i32 noundef %32, ptr noundef nonnull %call23, i32 noundef %shr.i) #19
  br label %do.body47

do.end33:                                         ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i89 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i89 to ptr
  %task36 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task36, align 8
  %pid37 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 68
  %43 = ptrtoint ptr %pid37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pid37, align 8
  %in38 = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 1
  %45 = ptrtoint ptr %in38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %in38, align 4
  %first.i90 = getelementptr inbounds %struct.mlx5_cmd_msg, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %first.i90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first.i90, align 4
  %shr.i91 = lshr i32 %48, 16
  %call41 = tail call ptr @mlx5_command_str(i32 noundef %shr.i91)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.270, i32 noundef 1094, i32 noundef %44, ptr noundef nonnull %call41, i32 noundef %shr.i91) #19
  br label %do.body47

do.body47:                                        ; preds = %do.end33, %do.end, %out_err.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wait_func.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wait_func, %if.then52)) #16
          to label %do.end62 [label %if.then52], !srcloc !670

if.then52:                                        ; preds = %do.body47
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %51 = tail call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i96 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i96 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid56, align 8
  %status = getelementptr inbounds %struct.mlx5_cmd_work_ent, ptr %ent, i32 0, i32 16
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %58)
  %59 = icmp ult i8 %58, 17
  br i1 %59, label %switch.lookup, label %if.then52.deliv_status_to_str.exit_crit_edge

if.then52.deliv_status_to_str.exit_crit_edge:     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %deliv_status_to_str.exit

switch.lookup:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  %60 = sext i8 %58 to i32
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.wait_func, i32 0, i32 %60
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %deliv_status_to_str.exit

deliv_status_to_str.exit:                         ; preds = %switch.lookup, %if.then52.deliv_status_to_str.exit_crit_edge
  %retval.0.i97 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.241, %if.then52.deliv_status_to_str.exit_crit_edge ]
  %conv59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wait_func.__UNIQUE_ID_ddebug517, ptr noundef %50, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.270, i32 noundef 1097, i32 noundef %56, i32 noundef %23, ptr noundef nonnull %retval.0.i97, i32 noundef %conv59) #16
  br label %do.end62

do.end62:                                         ; preds = %deliv_status_to_str.exit, %do.body47
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmd_eq_recover(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @cmd_status_str(i8 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.317)
  switch i8 %status, label %sw.default [
    i8 0, label %entry.return_crit_edge
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
    i8 8, label %sw.bb7
    i8 9, label %sw.bb8
    i8 10, label %sw.bb9
    i8 15, label %sw.bb10
    i8 80, label %sw.bb11
    i8 81, label %sw.bb12
    i8 16, label %sw.bb13
    i8 48, label %sw.bb14
    i8 64, label %sw.bb15
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.297, %sw.default ], [ @.str.296, %sw.bb15 ], [ @.str.295, %sw.bb14 ], [ @.str.294, %sw.bb13 ], [ @.str.293, %sw.bb12 ], [ @.str.292, %sw.bb11 ], [ @.str.291, %sw.bb10 ], [ @.str.290, %sw.bb9 ], [ @.str.289, %sw.bb8 ], [ @.str.288, %sw.bb7 ], [ @.str.287, %sw.bb6 ], [ @.str.286, %sw.bb5 ], [ @.str.285, %sw.bb4 ], [ @.str.284, %sw.bb3 ], [ @.str.283, %sw.bb2 ], [ @.str.282, %sw.bb1 ], [ @.str.281, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmdif_debugfs_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %out_msg = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 2
  %2 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_msg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %outlen = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 5
  %4 = ptrtoint ptr %outlen to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %outlen, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %3, i32 noundef %conv) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not = icmp eq i64 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %in_msg = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 7, i32 25, i32 1
  %4 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_msg, align 4
  tail call void @kfree(ptr noundef %5) #16
  %6 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %in_msg, align 4
  %inlen = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 7, i32 25, i32 4
  %7 = ptrtoint ptr %inlen to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %inlen, align 2
  %call = tail call ptr @memdup_user(ptr noundef %buf, i32 noundef %count) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %in_msg, align 4
  %conv = trunc i32 %count to i16
  %10 = ptrtoint ptr %inlen to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %inlen, align 2
  %conv9 = zext i32 %count to i64
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv9, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then4 ], [ %count, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outlen_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #3 align 64 {
entry:
  %outlen = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outlen) #16
  %outlen2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 5
  %2 = ptrtoint ptr %outlen to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %outlen, align 8
  %3 = ptrtoint ptr %outlen2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %outlen2, align 4
  %conv = zext i16 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %outlen, i32 noundef 8, ptr noundef nonnull @.str.308, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %outlen, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outlen) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outlen_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %pos) #3 align 64 {
entry:
  %outlen_str = alloca [8 x i8], align 8
  %outlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outlen_str) #16
  %2 = ptrtoint ptr %outlen_str to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %outlen_str, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %outlen) #16
  %3 = ptrtoint ptr %outlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %outlen, align 4, !annotation !674
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.not = icmp ne i64 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %count)
  %cmp2 = icmp ugt i32 %count, 6
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %out_msg = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 2
  %6 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_msg, align 4
  tail call void @kfree(ptr noundef %7) #16
  %8 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %out_msg, align 4
  %outlen4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 5
  %9 = ptrtoint ptr %outlen4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %outlen4, align 4
  call void @__check_object_size(ptr noundef nonnull %outlen_str, i32 noundef %count, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.311, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #22, !srcloc !694
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !669

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %outlen_str, i32 noundef %count) #16
  %11 = call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !695
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !696
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !697
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %outlen_str, ptr noundef %buf, i32 noundef %count) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !696
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !697
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.then11.i.i, !prof !669

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %outlen_str, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %outlen_str, ptr noundef nonnull @.str.308, ptr noundef nonnull %outlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end8.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end6
  %15 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outlen, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #20
  %tobool13.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end15

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %out_msg, align 4
  %18 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %outlen, align 4
  %conv = trunc i32 %19 to i16
  %20 = ptrtoint ptr %outlen4 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %outlen4, align 4
  %conv18 = zext i32 %count to i64
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv18, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %outlen) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outlen_str) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  %lbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %lbuf) #16
  %2 = ptrtoint ptr %lbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lbuf, align 1, !annotation !674
  %3 = getelementptr inbounds [3 x i8], ptr %lbuf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !674
  %5 = getelementptr inbounds [3 x i8], ptr %lbuf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !674
  %in_msg = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 1
  %7 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_msg, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %out_msg = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 2
  %9 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_msg, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end59.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.311, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 2, i32 -1226833920) #22, !srcloc !694
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !669

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lbuf, i32 noundef 2) #16
  %12 = call i32 @llvm.read_register.i32(metadata !657) #16
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !695
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !696
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !697
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %lbuf, ptr noundef %buf, i32 noundef 2) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !696
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !697
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !669

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i31 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.0.i.i31
  %add.ptr.i.i = getelementptr i8, ptr %lbuf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i31)
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %5, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %lbuf, ptr noundef nonnull dereferenceable(3) @.str.312, i32 3) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %17 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %in_msg, align 4
  %inlen = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 4
  %19 = ptrtoint ptr %inlen to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inlen, align 2
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_msg, align 4
  %outlen = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 7, i32 25, i32 5
  %23 = ptrtoint ptr %outlen to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %outlen, align 4
  %conv15 = zext i16 %24 to i32
  %call.i = call fastcc i32 @cmd_exec(ptr noundef %1, ptr noundef %18, i32 noundef %conv, ptr noundef %22, i32 noundef %conv15, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.end12.mlx5_cmd_exec.exit_crit_edge

if.end12.mlx5_cmd_exec.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_cmd_exec.exit

cond.false.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i = call fastcc i32 @mlx5_cmd_check(ptr noundef %1, ptr noundef %18, ptr noundef %22) #16
  br label %mlx5_cmd_exec.exit

mlx5_cmd_exec.exit:                               ; preds = %cond.false.i, %if.end12.mlx5_cmd_exec.exit_crit_edge
  %cond.i = phi i32 [ %call1.i, %cond.false.i ], [ %call.i, %if.end12.mlx5_cmd_exec.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool17.not = icmp eq i32 %cond.i, 0
  %count.call16 = select i1 %tobool17.not, i32 %count, i32 %cond.i
  br label %cleanup

cleanup:                                          ; preds = %mlx5_cmd_exec.exit, %if.end7.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call16, %mlx5_cmd_exec.exit ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %lbuf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_cmdif_debugfs_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 330)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 330)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !371, !372, !373, !374, !376, !378, !379, !381, !383, !385, !387, !389, !390, !391, !392, !393, !394, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !421, !423, !424, !426, !428, !429, !430, !432, !433, !434, !435, !437, !438, !440, !441, !442, !444, !445, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !492, !493, !494, !495, !497, !498, !500, !501, !502, !503, !505, !506, !507, !508, !510, !511, !512, !514, !515, !516, !517, !519, !520, !522, !523, !524, !525, !527, !528, !530, !531, !533, !534, !535, !536, !538, !539, !540, !542, !543, !544, !545, !546, !547, !549, !550, !552, !553, !554, !555, !557, !558, !559, !561, !562, !564, !565, !566, !567, !569, !570, !571, !573, !574, !575, !576, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !649, !651, !653, !655}
!llvm.named.register.sp = !{!657}
!llvm.module.flags = !{!658, !659, !660, !661, !662, !663, !664, !665}
!llvm.ident = !{!666}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 495, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 496, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 497, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 498, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 499, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 500, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 501, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 502, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 503, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 504, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 505, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 506, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 507, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 508, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 509, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 510, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 511, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 512, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 513, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 514, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 515, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 516, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 517, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 518, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 519, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 520, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 521, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 522, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 523, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 524, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 525, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 526, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 527, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 528, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 529, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 530, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 531, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 532, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 533, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 534, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 535, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 536, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 537, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 538, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 539, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 540, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 541, i32 2}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 542, i32 2}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 543, i32 2}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 544, i32 2}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 545, i32 2}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 546, i32 2}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 547, i32 2}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 548, i32 2}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 549, i32 2}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 550, i32 2}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 551, i32 2}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 552, i32 2}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 553, i32 2}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 554, i32 2}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 555, i32 2}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 556, i32 2}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 557, i32 2}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 558, i32 2}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 559, i32 2}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 560, i32 2}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 561, i32 2}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 562, i32 2}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 563, i32 2}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 564, i32 2}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 565, i32 2}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 566, i32 2}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 567, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 568, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 569, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 570, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 571, i32 2}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 572, i32 2}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 573, i32 2}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 574, i32 2}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 575, i32 2}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 576, i32 2}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 577, i32 2}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 578, i32 2}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 579, i32 2}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 580, i32 2}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 581, i32 2}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 582, i32 2}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 583, i32 2}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 584, i32 2}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 585, i32 2}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 586, i32 2}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 587, i32 2}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 588, i32 2}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 589, i32 2}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 590, i32 2}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 591, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 592, i32 2}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 593, i32 2}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 594, i32 2}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 595, i32 2}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 596, i32 2}
!204 = !{ptr @.str.102, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 597, i32 2}
!206 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 598, i32 2}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 599, i32 2}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 600, i32 2}
!212 = !{ptr @.str.106, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 601, i32 2}
!214 = !{ptr @.str.107, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 602, i32 2}
!216 = !{ptr @.str.108, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 603, i32 2}
!218 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 604, i32 2}
!220 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 605, i32 2}
!222 = !{ptr @.str.111, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 606, i32 2}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 607, i32 2}
!226 = !{ptr @.str.113, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 608, i32 2}
!228 = !{ptr @.str.114, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 609, i32 2}
!230 = !{ptr @.str.115, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 610, i32 2}
!232 = !{ptr @.str.116, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 611, i32 2}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 612, i32 2}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 613, i32 2}
!238 = !{ptr @.str.119, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 614, i32 2}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 615, i32 2}
!242 = !{ptr @.str.121, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 616, i32 2}
!244 = !{ptr @.str.122, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 617, i32 2}
!246 = !{ptr @.str.123, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 618, i32 2}
!248 = !{ptr @.str.124, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 619, i32 2}
!250 = !{ptr @.str.125, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 620, i32 2}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 621, i32 2}
!254 = !{ptr @.str.127, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 622, i32 2}
!256 = !{ptr @.str.128, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 623, i32 2}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 624, i32 2}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 625, i32 2}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 626, i32 2}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 627, i32 2}
!266 = !{ptr @.str.133, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 628, i32 2}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 629, i32 2}
!270 = !{ptr @.str.135, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 630, i32 2}
!272 = !{ptr @.str.136, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 631, i32 2}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 632, i32 2}
!276 = !{ptr @.str.138, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 633, i32 2}
!278 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 634, i32 2}
!280 = !{ptr @.str.140, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 635, i32 2}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 636, i32 2}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 637, i32 2}
!286 = !{ptr @.str.143, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 638, i32 2}
!288 = !{ptr @.str.144, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 639, i32 2}
!290 = !{ptr @.str.145, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 640, i32 2}
!292 = !{ptr @.str.146, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 641, i32 2}
!294 = !{ptr @.str.147, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 642, i32 2}
!296 = !{ptr @.str.148, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 643, i32 2}
!298 = !{ptr @.str.149, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 644, i32 2}
!300 = !{ptr @.str.150, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 645, i32 2}
!302 = !{ptr @.str.151, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 646, i32 2}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 647, i32 2}
!306 = !{ptr @.str.153, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 648, i32 2}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 649, i32 2}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 650, i32 2}
!312 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 651, i32 2}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 652, i32 2}
!316 = !{ptr @.str.158, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 653, i32 2}
!318 = !{ptr @.str.159, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 654, i32 2}
!320 = !{ptr @.str.160, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 655, i32 2}
!322 = !{ptr @.str.161, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 656, i32 2}
!324 = !{ptr @.str.162, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 657, i32 2}
!326 = !{ptr @.str.163, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 658, i32 2}
!328 = !{ptr @.str.164, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 659, i32 2}
!330 = !{ptr @.str.165, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 660, i32 2}
!332 = !{ptr @.str.166, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 661, i32 2}
!334 = !{ptr @.str.167, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 662, i32 2}
!336 = !{ptr @.str.168, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 663, i32 2}
!338 = !{ptr @.str.169, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 664, i32 2}
!340 = !{ptr @.str.170, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 665, i32 2}
!342 = !{ptr @.str.171, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 666, i32 2}
!344 = !{ptr @.str.172, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 667, i32 2}
!346 = !{ptr @.str.173, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 668, i32 2}
!348 = !{ptr @.str.174, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 669, i32 2}
!350 = !{ptr @.str.175, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 670, i32 2}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 671, i32 2}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 672, i32 2}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 673, i32 2}
!358 = !{ptr @.str.179, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 674, i32 2}
!360 = !{ptr @.str.180, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 675, i32 2}
!362 = !{ptr @.str.181, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 676, i32 2}
!364 = !{ptr @.str.182, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 677, i32 2}
!366 = !{ptr @.str.183, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 678, i32 18}
!368 = !{ptr @.str.184, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1695, i32 2}
!370 = !{ptr @.str.185, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.186, !369, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.187, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @mlx5_cmd_trigger_completions.__UNIQUE_ID_ddebug529, !369, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!374 = !{ptr @__ksymtab_mlx5_cmd_exec, !375, !"__ksymtab_mlx5_cmd_exec", i1 false, i1 false}
!375 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1868, i32 1}
!376 = !{ptr @mlx5_cmd_init_async_ctx.__key, !377, !"__key", i1 false, i1 false}
!377 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1876, i32 2}
!378 = !{ptr @.str.188, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @__ksymtab_mlx5_cmd_init_async_ctx, !380, !"__ksymtab_mlx5_cmd_init_async_ctx", i1 false, i1 false}
!380 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1878, i32 1}
!381 = !{ptr @__ksymtab_mlx5_cmd_cleanup_async_ctx, !382, !"__ksymtab_mlx5_cmd_cleanup_async_ctx", i1 false, i1 false}
!382 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1893, i32 1}
!383 = !{ptr @__ksymtab_mlx5_cmd_exec_cb, !384, !"__ksymtab_mlx5_cmd_exec_cb", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1922, i32 1}
!385 = !{ptr @__ksymtab_mlx5_cmd_exec_polling, !386, !"__ksymtab_mlx5_cmd_exec_polling", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1933, i32 1}
!387 = !{ptr @.str.189, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2042, i32 3}
!389 = !{ptr @.str.190, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.191, !388, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.192, !388, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @mlx5_cmd_init._entry, !388, !"_entry", i1 false, i1 false}
!393 = !{ptr @mlx5_cmd_init._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2052, i32 30}
!396 = !{ptr @.str.195, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2066, i32 3}
!398 = !{ptr @mlx5_cmd_init._entry.194, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @mlx5_cmd_init._entry_ptr.196, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.198, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2073, i32 3}
!402 = !{ptr @mlx5_cmd_init._entry.197, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @mlx5_cmd_init._entry_ptr.199, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.201, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2085, i32 3}
!406 = !{ptr @mlx5_cmd_init._entry.200, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @mlx5_cmd_init._entry_ptr.202, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @mlx5_cmd_init.__key, !409, !"__key", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2091, i32 2}
!410 = !{ptr @.str.203, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @mlx5_cmd_init.__key.204, !412, !"__key", i1 false, i1 false}
!412 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2092, i32 2}
!413 = !{ptr @.str.205, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @mlx5_cmd_init.__key.206, !415, !"__key", i1 false, i1 false}
!415 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2094, i32 3}
!416 = !{ptr @.str.207, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.209, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2102, i32 3}
!419 = !{ptr @mlx5_cmd_init._entry.208, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @mlx5_cmd_init._entry_ptr.210, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.211, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2113, i32 2}
!423 = !{ptr @mlx5_cmd_init.__UNIQUE_ID_ddebug533, !422, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!424 = !{ptr @.str.212, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2121, i32 12}
!426 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 2123, i32 3}
!428 = !{ptr @mlx5_cmd_init._entry.213, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @mlx5_cmd_init._entry_ptr.215, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.216, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1598, i32 6}
!432 = !{ptr @.str.217, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @mlx5_cmd_comp_handler._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @mlx5_cmd_comp_handler._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.218, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1626, i32 5}
!437 = !{ptr @mlx5_cmd_comp_handler.__UNIQUE_ID_ddebug528, !436, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!438 = !{ptr @.str.219, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 815, i32 2}
!440 = !{ptr @.str.220, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @dump_command.__UNIQUE_ID_ddebug506, !439, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!442 = !{ptr @.str.221, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 819, i32 3}
!444 = !{ptr @dump_command.__UNIQUE_ID_ddebug507, !443, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!445 = !{ptr @.str.222, !443, !"<string literal>", i1 false, i1 false}
!446 = !{ptr @.str.223, !443, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @.str.224, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 824, i32 3}
!449 = !{ptr @dump_command.__UNIQUE_ID_ddebug508, !448, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!450 = !{ptr @.str.225, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 847, i32 4}
!452 = !{ptr @dump_command.__UNIQUE_ID_ddebug511, !451, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!453 = !{ptr @.str.226, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 856, i32 3}
!455 = !{ptr @dump_command.__UNIQUE_ID_ddebug512, !454, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!456 = !{ptr @.str.227, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 858, i32 2}
!458 = !{ptr @dump_command.__UNIQUE_ID_ddebug513, !457, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!459 = !{ptr @.str.228, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 282, i32 3}
!461 = !{ptr @.str.229, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @dump_buf.__UNIQUE_ID_ddebug503, !460, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!463 = !{ptr @dump_buf.__UNIQUE_ID_ddebug504, !464, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!464 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 289, i32 3}
!465 = !{ptr @.str.230, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1013, i32 10}
!467 = !{ptr @.str.231, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1015, i32 10}
!469 = !{ptr @.str.232, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1017, i32 10}
!471 = !{ptr @.str.233, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1019, i32 10}
!473 = !{ptr @.str.234, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1021, i32 10}
!475 = !{ptr @.str.235, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1023, i32 10}
!477 = !{ptr @.str.236, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1025, i32 10}
!479 = !{ptr @.str.237, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1027, i32 10}
!481 = !{ptr @.str.238, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1029, i32 10}
!483 = !{ptr @.str.239, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1031, i32 10}
!485 = !{ptr @.str.240, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1033, i32 10}
!487 = !{ptr @.str.241, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1035, i32 10}
!489 = !{ptr @.str.242, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1826, i32 3}
!491 = !{ptr @.str.243, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.244, !490, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @cmd_exec._entry, !490, !"_entry", i1 false, i1 false}
!494 = !{ptr @cmd_exec._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.245, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1841, i32 2}
!497 = !{ptr @cmd_exec.__UNIQUE_ID_ddebug532, !496, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!498 = !{ptr @.str.246, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 485, i32 3}
!500 = !{ptr @.str.247, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @mlx5_internal_err_ret_value._entry, !499, !"_entry", i1 false, i1 false}
!502 = !{ptr @mlx5_internal_err_ret_value._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.248, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1325, i32 4}
!505 = !{ptr @.str.249, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @mlx5_alloc_cmd_msg._entry, !504, !"_entry", i1 false, i1 false}
!507 = !{ptr @mlx5_alloc_cmd_msg._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.250, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1288, i32 3}
!510 = !{ptr @.str.251, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @alloc_cmd_box.__UNIQUE_ID_ddebug527, !509, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!512 = !{ptr @mlx5_cmd_invoke.__key, !513, !"__key", i1 false, i1 false}
!513 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1139, i32 2}
!514 = !{ptr @.str.252, !513, !"<string literal>", i1 false, i1 false}
!515 = !{ptr @mlx5_cmd_invoke.__key.253, !513, !"__key", i1 false, i1 false}
!516 = !{ptr @.str.254, !513, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @mlx5_cmd_invoke.__key.255, !518, !"__key", i1 false, i1 false}
!518 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1140, i32 2}
!519 = !{ptr @.str.256, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.257, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1144, i32 3}
!522 = !{ptr @.str.258, !521, !"<string literal>", i1 false, i1 false}
!523 = !{ptr @mlx5_cmd_invoke._entry, !521, !"_entry", i1 false, i1 false}
!524 = !{ptr @mlx5_cmd_invoke._entry_ptr, !521, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.259, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1165, i32 2}
!527 = !{ptr @mlx5_cmd_invoke.__UNIQUE_ID_ddebug518, !526, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!528 = !{ptr @init_completion.__key, !529, !"__key", i1 false, i1 false}
!529 = !{!"../include/linux/completion.h", i32 87, i32 2}
!530 = !{ptr @.str.260, !529, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @.str.261, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 882, i32 3}
!533 = !{ptr @.str.262, !532, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @cb_timeout_handler._entry, !532, !"_entry", i1 false, i1 false}
!535 = !{ptr @cb_timeout_handler._entry_ptr, !532, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.264, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 888, i32 2}
!538 = !{ptr @cb_timeout_handler._entry.263, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @cb_timeout_handler._entry_ptr.265, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.266, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 937, i32 4}
!542 = !{ptr @cmd_work_handler._rs, !541, !"_rs", i1 false, i1 false}
!543 = !{ptr @__func__.cmd_work_handler, !541, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @.str.267, !541, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @cmd_work_handler._entry, !541, !"_entry", i1 false, i1 false}
!546 = !{ptr @cmd_work_handler._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.268, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 997, i32 2}
!549 = !{ptr @cmd_work_handler.__UNIQUE_ID_ddebug516, !548, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!550 = !{ptr @.str.269, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1088, i32 3}
!552 = !{ptr @.str.270, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @wait_func._entry, !551, !"_entry", i1 false, i1 false}
!554 = !{ptr @wait_func._entry_ptr, !551, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.272, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1092, i32 3}
!557 = !{ptr @wait_func._entry.271, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @wait_func._entry_ptr.273, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.274, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1096, i32 2}
!561 = !{ptr @wait_func.__UNIQUE_ID_ddebug517, !560, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!562 = !{ptr @.str.275, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1056, i32 3}
!564 = !{ptr @.str.276, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @wait_func_handle_exec_timeout._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @wait_func_handle_exec_timeout._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.278, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1061, i32 2}
!569 = !{ptr @wait_func_handle_exec_timeout._entry.277, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @wait_func_handle_exec_timeout._entry_ptr.279, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @mlx5_cmd_check._rs, !572, !"_rs", i1 false, i1 false}
!572 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 787, i32 3}
!573 = !{ptr @__func__.mlx5_cmd_check, !572, !"<string literal>", i1 false, i1 false}
!574 = !{ptr @.str.280, !572, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @mlx5_cmd_check._entry, !572, !"_entry", i1 false, i1 false}
!576 = !{ptr @mlx5_cmd_check._entry_ptr, !572, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @mlx5_cmd_check.__UNIQUE_ID_ddebug505, !578, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!578 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 792, i32 3}
!579 = !{ptr @.str.281, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 686, i32 10}
!581 = !{ptr @.str.282, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 688, i32 10}
!583 = !{ptr @.str.283, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 690, i32 10}
!585 = !{ptr @.str.284, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 692, i32 10}
!587 = !{ptr @.str.285, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 694, i32 10}
!589 = !{ptr @.str.286, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 696, i32 10}
!591 = !{ptr @.str.287, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 698, i32 10}
!593 = !{ptr @.str.288, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 700, i32 10}
!595 = !{ptr @.str.289, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 702, i32 10}
!597 = !{ptr @.str.290, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 704, i32 10}
!599 = !{ptr @.str.291, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 706, i32 10}
!601 = !{ptr @.str.292, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 708, i32 10}
!603 = !{ptr @.str.293, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 710, i32 10}
!605 = !{ptr @.str.294, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 712, i32 10}
!607 = !{ptr @.str.295, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 714, i32 10}
!609 = !{ptr @.str.296, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 716, i32 10}
!611 = !{ptr @.str.297, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 718, i32 10}
!613 = !{ptr @sema_init.__key, !614, !"__key", i1 false, i1 false}
!614 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!615 = !{ptr @.str.298, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!617 = !{ptr @.str.299, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!619 = !{ptr @create_msg_cache.__key, !620, !"__key", i1 false, i1 false}
!620 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1974, i32 3}
!621 = !{ptr @.str.300, !620, !"<string literal>", i1 false, i1 false}
!622 = !{ptr @cmd_cache_num_ent, !623, !"cmd_cache_num_ent", i1 false, i1 false}
!623 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1951, i32 17}
!624 = !{ptr @cmd_cache_ent_size, !625, !"cmd_cache_ent_size", i1 false, i1 false}
!625 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1955, i32 17}
!626 = !{ptr @.str.301, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1471, i32 47}
!628 = !{ptr @.str.302, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1490, i32 37}
!630 = !{ptr @.str.303, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1492, i32 22}
!632 = !{ptr @.str.304, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1493, i32 22}
!634 = !{ptr @.str.305, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1494, i32 22}
!636 = !{ptr @.str.306, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1495, i32 20}
!638 = !{ptr @.str.307, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1496, i32 22}
!640 = !{ptr @dfops, !641, !"dfops", i1 false, i1 false}
!641 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1402, i32 37}
!642 = !{ptr @olfops, !643, !"olfops", i1 false, i1 false}
!643 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1460, i32 37}
!644 = !{ptr @.str.308, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1417, i32 41}
!646 = distinct !{null, !647, !"__already_done", i1 false, i1 false}
!647 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!648 = distinct !{null, !647, !"<string literal>", i1 false, i1 false}
!649 = distinct !{null, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!651 = !{ptr @.str.311, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!653 = !{ptr @fops, !654, !"fops", i1 false, i1 false}
!654 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1203, i32 37}
!655 = !{ptr @.str.312, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cmd.c", i32 1195, i32 19}
!657 = !{!"sp"}
!658 = !{i32 1, !"wchar_size", i32 2}
!659 = !{i32 1, !"min_enum_size", i32 4}
!660 = !{i32 8, !"branch-target-enforcement", i32 0}
!661 = !{i32 8, !"sign-return-address", i32 0}
!662 = !{i32 8, !"sign-return-address-all", i32 0}
!663 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!664 = !{i32 7, !"uwtable", i32 1}
!665 = !{i32 7, !"frame-pointer", i32 2}
!666 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!667 = !{i64 2148723054, i64 2148723086, i64 2148723115, i64 2148723149, i64 2148723180, i64 2148723203}
!668 = !{!"branch_weights", i32 1, i32 2000}
!669 = !{!"branch_weights", i32 2000, i32 1}
!670 = !{i64 2148546122, i64 2148546127, i64 2148546140, i64 2148546184, i64 2148546218, i64 2148546239}
!671 = !{i64 2148811079}
!672 = !{i64 2148725519, i64 2148725551, i64 2148725580, i64 2148725614, i64 2148725645, i64 2148725668}
!673 = !{i64 2150432168}
!674 = !{!"auto-init"}
!675 = !{i64 2148723989, i64 2148724015, i64 2148724044, i64 2148724078, i64 2148724109, i64 2148724132}
!676 = !{i64 2148720943}
!677 = !{i64 1207543, i64 1207568, i64 1207590, i64 1207606, i64 1207618, i64 1207638, i64 1207662, i64 1207678, i64 1207690}
!678 = !{i64 2148721131}
!679 = !{i64 2148810000}
!680 = !{i64 2148724709, i64 2148724741, i64 2148724770, i64 2148724804, i64 2148724835, i64 2148724858}
!681 = !{i64 2148810229}
!682 = !{i64 5936626}
!683 = !{i64 2158918720}
!684 = !{i64 2158922012}
!685 = !{i64 2158926827}
!686 = !{i64 2158932477}
!687 = !{i64 5936208}
!688 = !{i64 2158932791}
!689 = !{i64 2158933001}
!690 = !{i8 0, i8 2}
!691 = !{i64 2158823370}
!692 = !{i64 2158823625}
!693 = !{i64 2158823786}
!694 = !{i64 2152234003, i64 2152234028}
!695 = !{i64 4729558}
!696 = !{i64 4729755}
!697 = !{i64 2152214988}
