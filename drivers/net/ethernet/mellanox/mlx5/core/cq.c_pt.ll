; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/cq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_core_create_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_create_cq\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_create_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_create_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_create_cq\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_create_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_destroy_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_destroy_cq\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_destroy_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_destroy_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_destroy_cq\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_destroy_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_query_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_query_cq\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_query_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_query_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_query_cq\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_query_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_modify_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_modify_cq\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_modify_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_modify_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_modify_cq\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_modify_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_core_modify_cq_moderation\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_core_modify_cq_moderation\09\09\09\09"
module asm "\09.long\09__crc_mlx5_core_modify_cq_moderation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_core_modify_cq_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_core_modify_cq_moderation\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_core_modify_cq_moderation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%union.anon = type { ptr }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.162, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.162 = type { %struct.list_head, ptr, ptr }
%struct.mlx5_eq_comp = type { %struct.mlx5_eq, %struct.notifier_block, %struct.mlx5_eq_tasklet, %struct.list_head }
%struct.mlx5_eq = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, %struct.mlx5_cq_table, ptr, i32, i32, i32, i8, ptr, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_cq_table = type { %struct.spinlock, %struct.xarray }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eq_tasklet = type { %struct.list_head, %struct.list_head, %struct.tasklet_struct, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.21 }
%struct.llist_node = type { ptr }
%union.anon.21 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.129, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.152, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.129 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.130] }
%struct.anon.130 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.131 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.131 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.152 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_core_create_cq.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_core_create_cq\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/cq.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): failed adding CP 0x%x to debug file system\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_core_create_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_create_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_create_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_create_cq to i32), ptr @__kstrtab_mlx5_core_create_cq, ptr @__kstrtabns_mlx5_core_create_cq }, section "___ksymtab+mlx5_core_create_cq", align 4
@__kstrtab_mlx5_core_destroy_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_destroy_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_destroy_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_destroy_cq to i32), ptr @__kstrtab_mlx5_core_destroy_cq, ptr @__kstrtabns_mlx5_core_destroy_cq }, section "___ksymtab+mlx5_core_destroy_cq", align 4
@__kstrtab_mlx5_core_query_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_query_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_query_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_query_cq to i32), ptr @__kstrtab_mlx5_core_query_cq, ptr @__kstrtabns_mlx5_core_query_cq }, section "___ksymtab+mlx5_core_query_cq", align 4
@__kstrtab_mlx5_core_modify_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_modify_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_modify_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_modify_cq to i32), ptr @__kstrtab_mlx5_core_modify_cq, ptr @__kstrtabns_mlx5_core_modify_cq }, section "___ksymtab+mlx5_core_modify_cq", align 4
@__kstrtab_mlx5_core_modify_cq_moderation = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_core_modify_cq_moderation = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_core_modify_cq_moderation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_core_modify_cq_moderation to i32), ptr @__kstrtab_mlx5_core_modify_cq_moderation, ptr @__kstrtabns_mlx5_core_modify_cq_moderation }, section "___ksymtab+mlx5_core_modify_cq_moderation", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/cq.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 134, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 87, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_mlx5_core_create_cq, ptr @__ksymtab_mlx5_core_destroy_cq, ptr @__ksymtab_mlx5_core_modify_cq, ptr @__ksymtab_mlx5_core_modify_cq_moderation, ptr @__ksymtab_mlx5_core_query_cq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cq_tasklet_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %add.ptr = getelementptr i8, ptr %t, i32 -16
  %lock = getelementptr i8, ptr %t, i32 24
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %process_list = getelementptr i8, ptr %t, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %2, %add.ptr
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 -12
  %5 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %4, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %process_list, ptr %6, align 4
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  store ptr %add.ptr, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  %11 = ptrtoint ptr %process_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %process_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %mlx5_cq_put.exit.for.cond_crit_edge, %list_splice_tail_init.exit
  %.pn.in = phi ptr [ %12, %list_splice_tail_init.exit ], [ %.pn, %mlx5_cq_put.exit.for.cond_crit_edge ]
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp20.not = icmp eq ptr %.pn.in, %process_list
  br i1 %cmp20.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %mcq.0 = getelementptr i8, ptr %.pn.in, i32 -112
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  %comp = getelementptr i8, ptr %.pn.in, i32 8
  %22 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comp, align 4
  tail call void %23(ptr noundef %mcq.0, ptr noundef null) #5
  %refcount.i = getelementptr i8, ptr %.pn.in, i32 -92
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i51, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_cq_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %mlx5_cq_put.exit

if.then.i51:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  %free.i = getelementptr i8, ptr %.pn.in, i32 -88
  tail call void @complete(ptr noundef %free.i) #5
  br label %mlx5_cq_put.exit

mlx5_cq_put.exit:                                 ; preds = %if.then.i51, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %25
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %mlx5_cq_put.exit.for.end_crit_edge, label %mlx5_cq_put.exit.for.cond_crit_edge

mlx5_cq_put.exit.for.cond_crit_edge:              ; preds = %mlx5_cq_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

mlx5_cq_put.exit.for.end_crit_edge:               ; preds = %mlx5_cq_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %mlx5_cq_put.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %26 = ptrtoint ptr %process_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %process_list, align 4
  %cmp.i.not = icmp eq ptr %27, %process_list
  br i1 %cmp.i.not, label %for.end.if.end36_crit_edge, label %if.then35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %for.end
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i52, label %if.then35.if.end36_crit_edge

if.then35.if.end36_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then.i52:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__tasklet_schedule(ptr noundef %t) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then.i52, %if.then35.if.end36_crit_edge, %for.end.if.end36_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_create_cq(ptr noundef %dev, ptr noundef %cq, ptr noundef %in, i32 noundef %inlen, ptr noundef %out, i32 noundef %outlen) #0 align 64 {
entry:
  %din = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %in, i32 36
  %0 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %din) #5
  %2 = call ptr @memset(ptr %din, i32 0, i32 16)
  %call = tail call ptr @mlx5_eqn2comp_eq(ptr noundef %dev, i32 noundef %1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %out, i32 0, i32 %outlen)
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 4
  %and6 = and i32 %6, 65535
  %or = or i32 %and6, 67108864
  store i32 %or, ptr %in, align 4
  %call11 = tail call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %inlen, ptr noundef %out, i32 noundef %outlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %add.ptr14 = getelementptr i32, ptr %out, i32 2
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr14, align 4
  %and16 = and i32 %8, 16777215
  %9 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16, ptr %cq, align 4
  %cons_index = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 11
  %10 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cons_index, align 4
  %arm_sn = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 12
  %11 = ptrtoint ptr %arm_sn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arm_sn, align 4
  %eq17 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 18
  %12 = ptrtoint ptr %eq17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %eq17, align 4
  %13 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in, align 4
  %conv = trunc i32 %14 to i16
  %uid = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 19
  %15 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %uid, align 4
  %refcount = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  %16 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %refcount, align 4
  %free = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 6
  %17 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %free, align 4
  %wait.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #5
  %comp = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 9
  %18 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %comp, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.then22, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mlx5_add_cq_to_tasklet, ptr %comp, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end13.if.end24_crit_edge
  %tasklet_ctx = getelementptr inbounds %struct.mlx5_eq_comp, ptr %call, i32 0, i32 2
  %tasklet_ctx25 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15
  %priv = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tasklet_ctx, ptr %priv, align 4
  %22 = ptrtoint ptr %tasklet_ctx25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %tasklet_ctx25, ptr %tasklet_ctx25, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tasklet_ctx25, ptr %prev.i, align 4
  %call27 = tail call i32 @mlx5_eq_add_cq(ptr noundef %call, ptr noundef %cq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.do.body60_crit_edge

if.end24.do.body60_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

if.end30:                                         ; preds = %if.end24
  %call31 = tail call ptr @mlx5_get_async_eq(ptr noundef %dev) #5
  %call32 = tail call i32 @mlx5_eq_add_cq(ptr noundef %call31, ptr noundef %cq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %err_cq_add

if.end35:                                         ; preds = %if.end30
  %24 = tail call i32 @llvm.read_register.i32(metadata !19) #5
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  %pid37 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 14
  %30 = ptrtoint ptr %pid37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pid37, align 4
  %call38 = tail call i32 @mlx5_debug_cq_add(ptr noundef %dev, ptr noundef %cq) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end35.if.end54_crit_edge, label %do.body41

if.end35.if.end54_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.body41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_core_create_cq.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_core_create_cq, %if.then46)) #5
          to label %if.end54 [label %if.then46], !srcloc !33

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid49, align 8
  %37 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_core_create_cq.__UNIQUE_ID_ddebug501, ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef %36, i32 noundef %38) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then46, %do.body41, %if.end35.if.end54_crit_edge
  %uar = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 39
  %39 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %uar, align 4
  %uar56 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 4
  %41 = ptrtoint ptr %uar56 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %uar56, align 4
  %irqn = getelementptr inbounds %struct.mlx5_eq, ptr %call, i32 0, i32 7
  %42 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irqn, align 4
  %irqn58 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 8
  %44 = ptrtoint ptr %irqn58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %irqn58, align 4
  br label %cleanup

err_cq_add:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlx5_eq_del_cq(ptr noundef %call, ptr noundef %cq) #5
  br label %do.body60

do.body60:                                        ; preds = %err_cq_add, %if.end24.do.body60_crit_edge
  %err.0 = phi i32 [ %call27, %if.end24.do.body60_crit_edge ], [ %call32, %err_cq_add ]
  %45 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cq, align 4
  %add.ptr81 = getelementptr inbounds i32, ptr %din, i32 2
  %47 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr81, align 4
  %and82 = and i32 %48, -16777216
  %and83 = and i32 %46, 16777215
  %or85 = or i32 %and82, %and83
  store i32 %or85, ptr %add.ptr81, align 4
  %49 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %uid, align 4
  %conv93 = zext i16 %50 to i32
  %or102 = or i32 %conv93, 67174400
  %51 = ptrtoint ptr %din to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or102, ptr %din, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #5
  %52 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call111 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %din, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body60, %if.end54, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %err.0, %do.body60 ], [ 0, %if.end54 ], [ %call11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %din) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eqn2comp_eq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_add_cq_to_tasklet(ptr noundef %cq, ptr nocapture noundef readnone %eqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tasklet_ctx1 = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15
  %priv = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.mlx5_eq_tasklet, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %tasklet_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tasklet_ctx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  %cmp.i.not.i = icmp eq ptr %3, %tasklet_ctx1
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

list_empty_careful.exit:                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %tasklet_ctx1
  br i1 %cmp.i.not, label %if.then, label %list_empty_careful.exit.if.end_crit_edge

list_empty_careful.exit.if.end_crit_edge:         ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %list_empty_careful.exit
  %refcount.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !36

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlx5_cq_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlx5_cq_hold.exit_crit_edge:      ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_cq_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #5
  br label %mlx5_cq_hold.exit

mlx5_cq_hold.exit:                                ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlx5_cq_hold.exit_crit_edge
  %prev.i17 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i17, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tasklet_ctx1, ptr noundef %9, ptr noundef %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %mlx5_cq_hold.exit.if.end_crit_edge

mlx5_cq_hold.exit.if.end_crit_edge:               ; preds = %mlx5_cq_hold.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i:                                       ; preds = %mlx5_cq_hold.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tasklet_ctx1, ptr %prev.i17, align 4
  %11 = ptrtoint ptr %tasklet_ctx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %tasklet_ctx1, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tasklet_ctx1, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %mlx5_cq_hold.exit.if.end_crit_edge, %list_empty_careful.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_add_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_async_eq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_debug_cq_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_eq_del_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_destroy_cq(ptr noundef %dev, ptr noundef %cq) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #5
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  tail call void @mlx5_debug_cq_remove(ptr noundef %dev, ptr noundef %cq) #5
  %call = tail call ptr @mlx5_get_async_eq(ptr noundef %dev) #5
  tail call void @mlx5_eq_del_cq(ptr noundef %call, ptr noundef %cq) #5
  %eq = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 18
  %2 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq, align 4
  tail call void @mlx5_eq_del_cq(ptr noundef %3, ptr noundef %cq) #5
  %4 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cq, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %5, 16777215
  %6 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and15, ptr %add.ptr13, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 19
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %uid, align 4
  %conv = zext i16 %8 to i32
  %or32 = or i32 %conv, 67174400
  %9 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or32, ptr %in, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #5
  %10 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call40 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %irqn = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 8
  %11 = ptrtoint ptr %irqn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irqn, align 4
  call void @synchronize_irq(i32 noundef %12) #5
  %refcount.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5_cq_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %mlx5_cq_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  %free.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 6
  call void @complete(ptr noundef %free.i) #5
  br label %mlx5_cq_put.exit

mlx5_cq_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5_cq_put.exit_crit_edge
  %free = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 6
  call void @wait_for_completion(ptr noundef %free) #5
  br label %cleanup

cleanup:                                          ; preds = %mlx5_cq_put.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #5
  ret i32 %call40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_debug_cq_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_query_cq(ptr noundef %dev, ptr nocapture noundef readonly %cq, ptr noundef %out) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #5
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67239936, ptr %in, align 4
  %3 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cq, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 2
  %and15 = and i32 %4, 16777215
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and15, ptr %add.ptr13, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %out, i32 noundef 272) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_modify_cq(ptr noundef %dev, ptr nocapture noundef readonly %cq, ptr noundef %in, i32 noundef %inlen) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #5
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 67305472
  store i32 %or, ptr %in, align 4
  %uid = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 19
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uid, align 4
  %conv = zext i16 %4 to i32
  %or15 = or i32 %conv, 67305472
  store i32 %or15, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %out, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_core_modify_cq_moderation(ptr noundef %dev, ptr nocapture noundef readonly %cq, i16 noundef zeroext %cq_period, i16 noundef zeroext %cq_max_count) #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #5
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 268)
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq, align 4
  %add.ptr = getelementptr inbounds i32, ptr %in, i32 2
  %and2 = and i32 %3, 16777215
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2, ptr %add.ptr, align 4
  %add.ptr14 = getelementptr inbounds i8, ptr %in, i32 32
  %5 = and i16 %cq_period, 4095
  %and16 = zext i16 %5 to i32
  %shl17 = shl nuw nsw i32 %and16, 16
  %conv24 = zext i16 %cq_max_count to i32
  %or32 = or i32 %shl17, %conv24
  %6 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or32, ptr %add.ptr14, align 4
  %add.ptr42 = getelementptr inbounds i32, ptr %in, i32 3
  %7 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %add.ptr42, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #5
  %8 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %uid.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 19
  %9 = ptrtoint ptr %uid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uid.i, align 4
  %conv.i = zext i16 %10 to i32
  %or15.i = or i32 %conv.i, 67305472
  %11 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or15.i, ptr %in, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %out.i, i32 noundef 16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #5
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 134, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_core_create_cq.__UNIQUE_ID_ddebug501, !1, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!6 = !{ptr @__ksymtab_mlx5_core_create_cq, !7, !"__ksymtab_mlx5_core_create_cq", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 151, i32 1}
!8 = !{ptr @__ksymtab_mlx5_core_destroy_cq, !9, !"__ksymtab_mlx5_core_destroy_cq", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 176, i32 1}
!10 = !{ptr @__ksymtab_mlx5_core_query_cq, !11, !"__ksymtab_mlx5_core_query_cq", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 187, i32 1}
!12 = !{ptr @__ksymtab_mlx5_core_modify_cq, !13, !"__ksymtab_mlx5_core_modify_cq", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 198, i32 1}
!14 = !{ptr @__ksymtab_mlx5_core_modify_cq_moderation, !15, !"__ksymtab_mlx5_core_modify_cq_moderation", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/cq.c", i32 218, i32 1}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148304014}
!30 = !{i64 2148218478, i64 2148218510, i64 2148218539, i64 2148218573, i64 2148218604, i64 2148218627}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2149310462}
!33 = !{i64 2148696298, i64 2148696303, i64 2148696316, i64 2148696360, i64 2148696394, i64 2148696415}
!34 = !{i64 2148783225}
!35 = !{i64 2148216013, i64 2148216045, i64 2148216074, i64 2148216108, i64 2148216139, i64 2148216162}
!36 = !{!"branch_weights", i32 1, i32 2000}
