; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/uar.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/uar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_get_uars_page\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_get_uars_page\09\09\09\09"
module asm "\09.long\09__crc_mlx5_get_uars_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_get_uars_page:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_get_uars_page\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_get_uars_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_put_uars_page\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_put_uars_page\09\09\09\09"
module asm "\09.long\09__crc_mlx5_put_uars_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_put_uars_page:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_put_uars_page\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_put_uars_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_alloc_bfreg\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_alloc_bfreg\09\09\09\09"
module asm "\09.long\09__crc_mlx5_alloc_bfreg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_alloc_bfreg:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_alloc_bfreg\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_alloc_bfreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_free_bfreg\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_free_bfreg\09\09\09\09"
module asm "\09.long\09__crc_mlx5_free_bfreg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_free_bfreg:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_free_bfreg\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_free_bfreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mlx5_uars_page = type { ptr, i8, i32, %struct.list_head, i32, ptr, ptr, i32, i32, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__kstrtab_mlx5_get_uars_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_get_uars_page = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_get_uars_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_get_uars_page to i32), ptr @__kstrtab_mlx5_get_uars_page, ptr @__kstrtabns_mlx5_get_uars_page }, section "___ksymtab+mlx5_get_uars_page", align 4
@__kstrtab_mlx5_put_uars_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_put_uars_page = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_put_uars_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_put_uars_page to i32), ptr @__kstrtab_mlx5_put_uars_page, ptr @__kstrtabns_mlx5_put_uars_page }, section "___ksymtab+mlx5_put_uars_page", align 4
@__kstrtab_mlx5_alloc_bfreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_alloc_bfreg = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_alloc_bfreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_alloc_bfreg to i32), ptr @__kstrtab_mlx5_alloc_bfreg, ptr @__kstrtabns_mlx5_alloc_bfreg }, section "___ksymtab+mlx5_alloc_bfreg", align 4
@__kstrtab_mlx5_free_bfreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_free_bfreg = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_free_bfreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_free_bfreg to i32), ptr @__kstrtab_mlx5_free_bfreg, ptr @__kstrtabns_mlx5_free_bfreg }, section "___ksymtab+mlx5_free_bfreg", align 4
@alloc_uars_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): mlx5_cmd_alloc_uar() failed, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alloc_uars_page\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/uar.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alloc_uars_page._entry_ptr = internal global ptr @alloc_uars_page._entry, section ".printk_index", align 4
@alloc_uars_page.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s:%d:(pid %d): allocated UAR page: index %d, total bfregs %d\0A\00", [33 x i8] zeroinitializer }, align 32
@alloc_uars_page._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): failed to free uar index %d\0A\00", [51 x i8] zeroinitializer }, align 32
@alloc_uars_page._entry_ptr.9 = internal global ptr @alloc_uars_page._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@up_rel_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"up_rel_func\00", [20 x i8] zeroinitializer }, align 32
@up_rel_func._entry_ptr = internal global ptr @up_rel_func._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 131, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 150, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 156, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [49 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/uar.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 90, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_mlx5_alloc_bfreg, ptr @__ksymtab_mlx5_free_bfreg, ptr @__ksymtab_mlx5_get_uars_page, ptr @__ksymtab_mlx5_put_uars_page, ptr @alloc_uars_page._entry, ptr @alloc_uars_page._entry.7, ptr @alloc_uars_page._entry_ptr, ptr @alloc_uars_page._entry_ptr.9, ptr @up_rel_func._entry, ptr @up_rel_func._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_uars_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_uars_page._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_rel_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_get_uars_page(ptr noundef %mdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bfregs = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38
  tail call void @mutex_lock_nested(ptr noundef %bfregs, i32 noundef 0) #8
  %list = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %ref_count = getelementptr i8, ptr %1, i32 28
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.out_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.out_crit_edge:                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i.i) #8
  br label %out

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc ptr @alloc_uars_page(ptr noundef %mdev, i1 noundef zeroext false)
  %cmp.i29 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %if.end
  %list12 = getelementptr inbounds %struct.mlx5_uars_page, ptr %call8, i32 0, i32 3
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list12, ptr noundef %list, ptr noundef %5) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list12, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list12, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %call8, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list12, ptr %list, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end11.out_crit_edge, %if.end.out_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.out_crit_edge
  %ret.0 = phi ptr [ %call8, %if.end.out_crit_edge ], [ %add.ptr, %if.else.i.i.i.i.out_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i.i ], [ %call8, %if.end11.out_crit_edge ], [ %call8, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %bfregs) #8
  ret ptr %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_uars_page(ptr noundef %mdev, i1 noundef zeroext %map_wc) unnamed_addr #0 align 64 {
entry:
  %in.i130 = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 18
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %entry.uars_per_sys_page.exit_crit_edge, label %if.then.i

entry.uars_per_sys_page.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %uars_per_sys_page.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6.i = getelementptr i32, ptr %1, i32 41
  %4 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr6.i, align 4
  br label %uars_per_sys_page.exit

uars_per_sys_page.exit:                           ; preds = %if.then.i, %entry.uars_per_sys_page.exit_crit_edge
  %retval.0.i127 = phi i32 [ %5, %if.then.i ], [ 1, %entry.uars_per_sys_page.exit_crit_edge ]
  %mul = shl i32 %retval.0.i127, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %uars_per_sys_page.exit.cleanup_crit_edge, label %if.end

uars_per_sys_page.exit.cleanup_crit_edge:         ; preds = %uars_per_sys_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %uars_per_sys_page.exit
  %mdev3 = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %mdev3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mdev, ptr %mdev3, align 4
  %call4 = tail call ptr @bitmap_zalloc(i32 noundef %mul, i32 noundef 3264) #8
  %reg_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %reg_bitmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %reg_bitmap, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.error1_crit_edge, label %if.end8

if.end.error1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error1

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @bitmap_zalloc(i32 noundef %mul, i32 noundef 3264) #8
  %fp_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %fp_bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %fp_bitmap, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.error1_crit_edge, label %for.cond.preheader

if.end8.error1_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %error1

for.cond.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp134 = icmp sgt i32 %mul, 0
  br i1 %cmp134, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %rem = and i32 %i.0135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp14.not.not = icmp eq i32 %rem, 0
  %reg_bitmap.fp_bitmap = select i1 %cmp14.not.not, ptr %reg_bitmap, ptr %fp_bitmap
  %10 = ptrtoint ptr %reg_bitmap.fp_bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load ptr, ptr %reg_bitmap.fp_bitmap, align 4
  tail call void @_set_bit(i32 noundef %i.0135, ptr noundef %.sink) #8
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bfregs19 = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %bfregs19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %bfregs19, align 4
  %mul20 = shl i32 %retval.0.i127, 3
  %div = sdiv i32 %mul20, 4
  %fp_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %fp_avail to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %fp_avail, align 4
  %reg_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %reg_avail to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %reg_avail, align 8
  %index = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #8
  %14 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #8
  %15 = getelementptr inbounds i8, ptr %in.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 12)
  %17 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134348800, ptr %in.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i128 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i128, label %if.end27, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 8
  %20 = call i32 @llvm.read_register.i32(metadata !28) #8
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
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 131, i32 noundef %25, i32 noundef %call.i) #12
  br label %error1

if.end27:                                         ; preds = %for.end
  %add.ptr10.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %26 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr10.i, align 4
  %and11.i = and i32 %27, 16777215
  %28 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and11.i, ptr %index, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #8
  %bar_addr.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 13
  %29 = ptrtoint ptr %bar_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bar_addr.i, align 8
  %add.i137 = shl i32 %27, 12
  %shr2.i138 = add i32 %30, %add.i137
  %shl = and i32 %shr2.i138, -4096
  br i1 %map_wc, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.end27
  %call32 = call ptr @ioremap_wc(i32 noundef %shl, i32 noundef 4096) #8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call32, ptr %call7.i.i, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.then31.error2_crit_edge, label %if.then31.if.end45_crit_edge

if.then31.if.end45_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then31.error2_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %error2

if.else37:                                        ; preds = %if.end27
  %call39 = call ptr @ioremap(i32 noundef %shl, i32 noundef 4096) #8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call39, ptr %call7.i.i, align 8
  %tobool42.not = icmp eq ptr %call39, null
  br i1 %tobool42.not, label %if.else37.error2_crit_edge, label %if.else37.if.end45_crit_edge

if.else37.if.end45_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.else37.error2_crit_edge:                       ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %error2

if.end45:                                         ; preds = %if.else37.if.end45_crit_edge, %if.then31.if.end45_crit_edge
  %ref_count = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  %33 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 1, ptr %ref_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_uars_page.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_uars_page, %if.then52)) #8
          to label %cleanup [label %if.then52], !srcloc !41

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev, align 8
  %36 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i129 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i129 to ptr
  %task55 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task55, align 8
  %pid56 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid56, align 8
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 8
  %44 = ptrtoint ptr %bfregs19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bfregs19, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alloc_uars_page.__UNIQUE_ID_ddebug503, ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef %41, i32 noundef %43, i32 noundef %45) #8
  br label %cleanup

error2:                                           ; preds = %if.else37.error2_crit_edge, %if.then31.error2_crit_edge
  %err.0 = phi i32 [ -11, %if.then31.error2_crit_edge ], [ -12, %if.else37.error2_crit_edge ]
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i130) #8
  %48 = getelementptr inbounds i8, ptr %in.i130, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  %50 = ptrtoint ptr %in.i130 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 134414336, ptr %in.i130, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i130, i32 2
  %and15.i = and i32 %47, 16777215
  %51 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and15.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #8
  %52 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i131 = call i32 @mlx5_cmd_exec(ptr noundef %mdev, ptr noundef nonnull %in.i130, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i130) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool64.not = icmp eq i32 %call.i131, 0
  br i1 %tobool64.not, label %error2.error1_crit_edge, label %do.end68

error2.error1_crit_edge:                          ; preds = %error2
  call void @__sanitizer_cov_trace_pc() #10
  br label %error1

do.end68:                                         ; preds = %error2
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mdev, align 8
  %55 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i132 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i132 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task71, align 8
  %pid72 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %pid72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid72, align 8
  %61 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 156, i32 noundef %60, i32 noundef %62) #12
  br label %error1

error1:                                           ; preds = %do.end68, %error2.error1_crit_edge, %do.end, %if.end8.error1_crit_edge, %if.end.error1_crit_edge
  %err.1 = phi i32 [ %call.i, %do.end ], [ %err.0, %do.end68 ], [ %err.0, %error2.error1_crit_edge ], [ -12, %if.end8.error1_crit_edge ], [ -12, %if.end.error1_crit_edge ]
  %fp_bitmap75 = getelementptr inbounds %struct.mlx5_uars_page, ptr %call7.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %fp_bitmap75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fp_bitmap75, align 4
  call void @bitmap_free(ptr noundef %64) #8
  %65 = ptrtoint ptr %reg_bitmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_bitmap, align 8
  call void @bitmap_free(ptr noundef %66) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %67 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error1, %if.then52, %if.end45, %uars_per_sys_page.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %67, %error1 ], [ %call7.i.i, %if.then52 ], [ inttoptr (i32 -12 to ptr), %uars_per_sys_page.exit.cleanup_crit_edge ], [ %call7.i.i, %if.end45 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_put_uars_page(ptr noundef %mdev, ptr noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bfregs = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38
  tail call void @mutex_lock_nested(ptr noundef %bfregs, i32 noundef 0) #8
  %ref_count = getelementptr inbounds %struct.mlx5_uars_page, ptr %up, i32 0, i32 9
  tail call fastcc void @kref_put(ptr noundef %ref_count)
  tail call void @mutex_unlock(ptr noundef %bfregs) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  %in.i.i = alloca [4 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !40

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -40
  %list.i = getelementptr i8, ptr %kref, i32 -28
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del.exit.i_crit_edge

if.then.list_del.exit.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr i8, ptr %kref, i32 -24
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.list_del.exit.i_crit_edge
  %7 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr i8, ptr %kref, i32 -24
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void @iounmap(ptr noundef %10) #8
  %mdev.i = getelementptr i8, ptr %kref, i32 4
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 4
  %index.i = getelementptr i8, ptr %kref, i32 -32
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #8
  %15 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 12)
  %17 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 134414336, ptr %in.i.i, align 4
  %add.ptr13.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %and15.i.i = and i32 %14, 16777215
  %18 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and15.i.i, ptr %add.ptr13.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #8
  %19 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %12, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %_out.i.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %list_del.exit.i.up_rel_func.exit_crit_edge, label %do.end.i

list_del.exit.i.up_rel_func.exit_crit_edge:       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %up_rel_func.exit

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = call i32 @llvm.read_register.i32(metadata !28) #8
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid.i, align 8
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef 90, i32 noundef %29, i32 noundef %31) #12
  br label %up_rel_func.exit

up_rel_func.exit:                                 ; preds = %do.end.i, %list_del.exit.i.up_rel_func.exit_crit_edge
  %reg_bitmap.i = getelementptr i8, ptr %kref, i32 -16
  %32 = ptrtoint ptr %reg_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_bitmap.i, align 4
  call void @bitmap_free(ptr noundef %33) #8
  %fp_bitmap.i = getelementptr i8, ptr %kref, i32 -12
  %34 = ptrtoint ptr %fp_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fp_bitmap.i, align 4
  call void @bitmap_free(ptr noundef %35) #8
  call void @kfree(ptr noundef %add.ptr.i) #8
  br label %return

return:                                           ; preds = %up_rel_func.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_alloc_bfreg(ptr noundef %mdev, ptr nocapture noundef writeonly %bfreg, i1 noundef zeroext %map_wc, i1 noundef zeroext %fast_path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_bfreg(ptr noundef %mdev, ptr noundef %bfreg, i1 noundef zeroext %map_wc, i1 noundef zeroext %fast_path)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cond = icmp eq i32 %call, -11
  %0 = and i1 %cond, %map_wc
  br i1 %0, label %if.then5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @alloc_bfreg(ptr noundef %mdev, ptr noundef %bfreg, i1 noundef zeroext false, i1 noundef zeroext %fast_path)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_bfreg(ptr noundef %mdev, ptr nocapture noundef writeonly %bfreg, i1 noundef zeroext %map_wc, i1 noundef zeroext %fast_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %map_wc to i8
  %wc_head = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 1
  %list = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 1, i32 1
  %bfregs2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38
  %list5 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 0, i32 1
  %head.0 = select i1 %map_wc, ptr %list, ptr %list5
  %lock.0 = select i1 %map_wc, ptr %wc_head, ptr %bfregs2
  tail call void @mutex_lock_nested(ptr noundef %lock.0, i32 noundef 0) #8
  %0 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.0, align 4
  %cmp.i.not = icmp eq ptr %1, %head.0
  br i1 %cmp.i.not, label %if.then9, label %if.else17

if.then9:                                         ; preds = %entry
  %call11 = tail call fastcc ptr @alloc_uars_page(ptr noundef %mdev, i1 noundef zeroext %map_wc)
  %cmp.i72 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock.0) #8
  %2 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %list16 = getelementptr inbounds %struct.mlx5_uars_page, ptr %call11, i32 0, i32 3
  %3 = ptrtoint ptr %head.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.0, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list16, ptr noundef %head.0, ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list16, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %list16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %list16, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %call11, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head.0, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %head.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list16, ptr %head.0, align 4
  br label %if.end18

if.else17:                                        ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %ref_count = getelementptr i8, ptr %1, i32 28
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

if.else17.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end18_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end18_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end18

if.end18:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end18_crit_edge, %if.end.i.i, %if.end15.if.end18_crit_edge
  %up.0 = phi ptr [ %call11, %if.end15.if.end18_crit_edge ], [ %call11, %if.end.i.i ], [ %add.ptr, %if.else.i.i.i.i.if.end18_crit_edge ], [ %add.ptr, %if.end15.sink.split.i.i.i.i ]
  %fp_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 6
  %fp_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 8
  %reg_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 5
  %reg_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 7
  %bitmap.0.in = select i1 %fast_path, ptr %fp_bitmap, ptr %reg_bitmap
  %avail.0 = select i1 %fast_path, ptr %fp_avail, ptr %reg_avail
  %11 = ptrtoint ptr %bitmap.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %bitmap.0 = load ptr, ptr %bitmap.0.in, align 4
  %bfregs23 = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 4
  %12 = ptrtoint ptr %bfregs23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bfregs23, align 4
  %call24 = tail call i32 @_find_first_bit_be(ptr noundef %bitmap.0, i32 noundef %13) #8
  tail call void @_clear_bit(i32 noundef %call24, ptr noundef %bitmap.0) #8
  %14 = ptrtoint ptr %avail.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail.0, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %avail.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool25.not = icmp eq i32 %dec, 0
  br i1 %tobool25.not, label %if.then26, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end18
  %list27 = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 3
  %call.i.i73 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list27) #8
  br i1 %call.i.i73, label %if.end.i.i74, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i74:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i74, %if.then26.list_del.exit_crit_edge
  %22 = ptrtoint ptr %list27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list27, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %list_del.exit, %if.end18.if.end28_crit_edge
  %24 = ptrtoint ptr %up.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %up.0, align 4
  %div.i = sdiv i32 %call24, 4
  %mul.i = shl i32 %div.i, 12
  %26 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %call24, %26
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %27 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %28, i32 19
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %30, 16
  %and.i = and i32 %shr.i, 31
  %mul1.i = shl i32 %rem.i.decomposed, %and.i
  %add.i = or i32 %mul.i, 2048
  %add2.i = add i32 %add.i, %mul1.i
  %add.ptr30 = getelementptr i8, ptr %25, i32 %add2.i
  %31 = ptrtoint ptr %bfreg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr30, ptr %bfreg, align 4
  %up32 = getelementptr inbounds %struct.mlx5_sq_bfreg, ptr %bfreg, i32 0, i32 1
  %32 = ptrtoint ptr %up32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %up.0, ptr %up32, align 4
  %wc = getelementptr inbounds %struct.mlx5_sq_bfreg, ptr %bfreg, i32 0, i32 2
  %33 = ptrtoint ptr %wc to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %wc, align 4
  %index = getelementptr inbounds %struct.mlx5_uars_page, ptr %up.0, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %add = add i32 %35, %div.i
  %index35 = getelementptr inbounds %struct.mlx5_sq_bfreg, ptr %bfreg, i32 0, i32 3
  %36 = ptrtoint ptr %index35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %index35, align 4
  tail call void @mutex_unlock(ptr noundef %lock.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then13
  %retval.0 = phi i32 [ %2, %if.then13 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_free_bfreg(ptr noundef %mdev, ptr nocapture noundef readonly %bfreg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wc = getelementptr inbounds %struct.mlx5_sq_bfreg, ptr %bfreg, i32 0, i32 2
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wc, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %wc_head = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 1
  %list = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 1, i32 1
  %bfregs1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38
  %list4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 38, i32 0, i32 1
  %lock.0 = select i1 %tobool.not, ptr %bfregs1, ptr %wc_head
  %head.0 = select i1 %tobool.not, ptr %list4, ptr %list
  %up7 = getelementptr inbounds %struct.mlx5_sq_bfreg, ptr %bfreg, i32 0, i32 1
  %2 = ptrtoint ptr %up7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %up7, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 19
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %7, 16
  %and.i = and i32 %shr.i, 31
  %8 = ptrtoint ptr %bfreg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bfreg, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %rem.i = and i32 %sub.ptr.lhs.cast.i, 4095
  %sub.i = add nsw i32 %rem.i, -2048
  %div5.i = lshr i32 %sub.i, %and.i
  %12 = ashr i32 %sub.ptr.sub.i, 10
  %mul.i = and i32 %12, -4
  %add.i = add i32 %mul.i, %div5.i
  %rem = and i32 %add.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %fp_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 8
  %fp_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 6
  %reg_avail = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 7
  %reg_bitmap = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 5
  %avail.0 = select i1 %cmp.not, ptr %reg_avail, ptr %fp_avail
  %bitmap.0.in = select i1 %cmp.not, ptr %reg_bitmap, ptr %fp_bitmap
  %13 = ptrtoint ptr %bitmap.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %bitmap.0 = load ptr, ptr %bitmap.0.in, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.0, i32 noundef 0) #8
  %14 = ptrtoint ptr %avail.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %avail.0, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %avail.0, align 4
  tail call void @_set_bit(i32 noundef %add.i, ptr noundef %bitmap.0) #8
  %16 = ptrtoint ptr %avail.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %avail.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp12 = icmp eq i32 %17, 1
  br i1 %cmp12, label %if.then13, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %entry
  %list14 = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head.0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list14, ptr noundef %19, ptr noundef %head.0) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.if.end15_crit_edge

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list14, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.0, ptr %list14, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list14, ptr %19, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i, %if.then13.if.end15_crit_edge, %entry.if.end15_crit_edge
  %ref_count = getelementptr inbounds %struct.mlx5_uars_page, ptr %3, i32 0, i32 9
  tail call fastcc void @kref_put(ptr noundef %ref_count)
  tail call void @mutex_unlock(ptr noundef %lock.0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_mlx5_get_uars_page, !1, !"__ksymtab_mlx5_get_uars_page", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 184, i32 1}
!2 = !{ptr @__ksymtab_mlx5_put_uars_page, !3, !"__ksymtab_mlx5_put_uars_page", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 192, i32 1}
!4 = !{ptr @__ksymtab_mlx5_alloc_bfreg, !5, !"__ksymtab_mlx5_alloc_bfreg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 271, i32 1}
!6 = !{ptr @__ksymtab_mlx5_free_bfreg, !7, !"__ksymtab_mlx5_free_bfreg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 327, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 131, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @alloc_uars_page._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @alloc_uars_page._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 150, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @alloc_uars_page.__UNIQUE_ID_ddebug503, !17, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 156, i32 3}
!22 = !{ptr @alloc_uars_page._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @alloc_uars_page._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/uar.c", i32 90, i32 3}
!26 = !{ptr @up_rel_func._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @up_rel_func._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148218145, i64 2148218177, i64 2148218206, i64 2148218240, i64 2148218271, i64 2148218294}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148698430, i64 2148698435, i64 2148698448, i64 2148698492, i64 2148698526, i64 2148698547}
!42 = !{i64 2148306146}
!43 = !{i64 2148220610, i64 2148220642, i64 2148220671, i64 2148220705, i64 2148220736, i64 2148220759}
!44 = !{i64 2149312594}
!45 = !{i8 0, i8 2}
