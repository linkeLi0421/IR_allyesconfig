; ModuleID = '/llk/IR_all_yes/drivers/vdpa/mlx5/core/resources.c_pt.bc'
source_filename = "../drivers/vdpa/mlx5/core/resources.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_vdpa_dev = type { %struct.vdpa_device, ptr, %struct.mlx5_vdpa_resources, i64, i64, i8, i32, i16, i32, %struct.mlx5_vdpa_mr, %struct.mlx5_control_vq, ptr }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_vdpa_resources = type { i32, ptr, ptr, i64, i16, i32, i8 }
%struct.mlx5_vdpa_mr = type { i32, %struct.list_head, i32, i32, i8, %struct.mutex, i8 }
%struct.mlx5_control_vq = type { ptr, %struct.spinlock, %struct.vringh, i8, i64, i64, i64, %struct.vdpa_callback, %struct.vringh_kiov, %struct.vringh_kiov, i16 }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.130, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.153, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.130 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.131] }
%struct.anon.131 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.132 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.132 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.153 = type { %struct.mlx5_rsvd_gids, i32 }
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

@mlx5_vdpa_alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d) warning: resources already allocated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_vdpa_alloc_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/vdpa/mlx5/core/resources.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_vdpa_alloc_resources._entry_ptr = internal global ptr @mlx5_vdpa_alloc_resources._entry, section ".printk_index", align 4
@mlx5_vdpa_alloc_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&mvdev->mr.mkey_mtx\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 255, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [38 x i8] c"../drivers/vdpa/mlx5/core/resources.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 258, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mlx5_vdpa_alloc_resources._entry, ptr @mlx5_vdpa_alloc_resources._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlx5_vdpa_alloc_resources.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vdpa_alloc_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_create_tis(ptr nocapture noundef readonly %mvdev, ptr noundef %in, ptr nocapture noundef writeonly %tisn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 152174592
  store i32 %or, ptr %in, align 4
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uid, align 8
  %conv = zext i16 %4 to i32
  %or15 = or i32 %conv, 152174592
  store i32 %or15, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %6, ptr noundef %in, i32 noundef 192, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20 = getelementptr inbounds i32, ptr %out, i32 2
  %7 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr20, align 4
  %and21 = and i32 %8, 16777215
  %9 = ptrtoint ptr %tisn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and21, ptr %tisn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_destroy_tis(ptr nocapture noundef readonly %mvdev, i32 noundef %tisn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 8
  %conv = zext i16 %3 to i32
  %or17 = or i32 %conv, 152305664
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %tisn, 16777215
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %8, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_create_rqt(ptr nocapture noundef readonly %mvdev, ptr noundef %in, i32 noundef %inlen, ptr nocapture noundef writeonly %rqtn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 152436736
  store i32 %or, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7 = getelementptr inbounds i32, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7, align 4
  %and8 = and i32 %6, 16777215
  %7 = ptrtoint ptr %rqtn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and8, ptr %rqtn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_modify_rqt(ptr nocapture noundef readonly %mvdev, ptr noundef %in, i32 noundef %inlen, i32 noundef %rqtn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %1 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %uid, align 8
  %conv = zext i16 %2 to i32
  %add.ptr11 = getelementptr i32, ptr %in, i32 2
  %3 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %4, -16777216
  %and13 = and i32 %rqtn, 16777215
  %or15 = or i32 %and12, %and13
  store i32 %or15, ptr %add.ptr11, align 4
  %or28 = or i32 %conv, 152502272
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or28, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_destroy_rqt(ptr nocapture noundef readonly %mvdev, i32 noundef %rqtn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 8
  %conv = zext i16 %3 to i32
  %or17 = or i32 %conv, 152567808
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %rqtn, 16777215
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %8, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_create_tir(ptr nocapture noundef readonly %mvdev, ptr noundef %in, ptr nocapture noundef writeonly %tirn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 150994944
  store i32 %or, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %4, ptr noundef %in, i32 noundef 272, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7 = getelementptr inbounds i32, ptr %out, i32 2
  %5 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr7, align 4
  %and8 = and i32 %6, 16777215
  %7 = ptrtoint ptr %tirn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and8, ptr %tirn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_destroy_tir(ptr nocapture noundef readonly %mvdev, i32 noundef %tirn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 8
  %conv = zext i16 %3 to i32
  %or17 = or i32 %conv, 151126016
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %tirn, 16777215
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %8, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_alloc_transport_domain(ptr nocapture noundef readonly %mvdev, ptr nocapture noundef writeonly %tdn) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %0 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uid, align 8
  %conv = zext i16 %4 to i32
  %or17 = or i32 %conv, 135659520
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or17, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %7, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr25 = getelementptr inbounds i32, ptr %out, i32 2
  %8 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr25, align 4
  %and26 = and i32 %9, 16777215
  %10 = ptrtoint ptr %tdn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and26, ptr %tdn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_dealloc_transport_domain(ptr nocapture noundef readonly %mvdev, i32 noundef %tdn) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 8
  %conv = zext i16 %3 to i32
  %or17 = or i32 %conv, 135725056
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %in, align 4
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %and30 = and i32 %tdn, 16777215
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and30, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %8, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_create_mkey(ptr nocapture noundef readonly %mvdev, ptr nocapture noundef %mkey, ptr noundef %in, i32 noundef %inlen) local_unnamed_addr #0 align 64 {
entry:
  %lout = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lout) #6
  %0 = call ptr @memset(ptr %lout, i32 0, i32 16)
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 33554432
  store i32 %or, ptr %in, align 4
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %uid, align 8
  %conv = zext i16 %4 to i32
  %or15 = or i32 %conv, 33554432
  store i32 %or15, ptr %in, align 4
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 8
  %call = call i32 @mlx5_cmd_exec(ptr noundef %6, ptr noundef %in, i32 noundef %inlen, ptr noundef nonnull %lout, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20 = getelementptr inbounds i32, ptr %lout, i32 2
  %7 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr20, align 4
  %and21 = shl i32 %8, 8
  %9 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mkey, align 4
  %or23 = or i32 %10, %and21
  store i32 %or23, ptr %mkey, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lout) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_destroy_mkey(ptr nocapture noundef readonly %mvdev, i32 noundef %mkey) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uid, align 8
  %conv = zext i16 %3 to i32
  %or17 = or i32 %conv, 33685504
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or17, ptr %in, align 4
  %shr.i = lshr i32 %mkey, 8
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %5 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #6
  %6 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 8
  %call40 = call i32 @mlx5_cmd_exec(ptr noundef %8, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %_out, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  ret i32 %call40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vdpa_alloc_resources(ptr noundef %mvdev) local_unnamed_addr #0 align 64 {
entry:
  %out.i102 = alloca [4 x i32], align 4
  %in.i103 = alloca [4 x i32], align 4
  %in.i98 = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %out.i91 = alloca [8 x i32], align 4
  %in.i92 = alloca [4 x i32], align 4
  %out.i87 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 19
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i64, ptr %3, i32 1
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %res1 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2
  %valid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !11) #6
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef %15) #9
  br label %cleanup

do.body5:                                         ; preds = %entry
  %mkey_mtx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 5
  tail call void @__mutex_init(ptr noundef %mkey_mtx, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlx5_vdpa_alloc_resources.__key) #6
  %call8 = tail call ptr @mlx5_get_uars_page(ptr noundef %1) #6
  %uar = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %uar to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8, ptr %uar, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call8 to i32
  br label %err_uars

if.end14:                                         ; preds = %do.body5
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #6
  %18 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %22, i32 18
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.i:                                         ; preds = %if.end14
  %add.ptr7.i = getelementptr i32, ptr %22, i32 35
  %26 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr7.i, align 4
  %28 = and i32 %27, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.i = icmp eq i32 %28, 0
  br i1 %tobool10.not.i, label %if.end.i.create_uctx.exit.thread_crit_edge, label %if.end12.i

if.end.i.create_uctx.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_uctx.exit.thread

if.end12.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 64) #10
  %tobool13.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not.i, label %if.end12.i.create_uctx.exit.thread_crit_edge, label %do.body.i

if.end12.i.create_uctx.exit.thread_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_uctx.exit.thread

do.body.i:                                        ; preds = %if.end12.i
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i.i, align 8
  %and18.i = and i32 %31, 65535
  %or.i = or i32 %and18.i, 168034304
  store i32 %or.i, ptr %call7.i.i.i, align 8
  %add.ptr28.i = getelementptr i32, ptr %call7.i.i.i, i32 4
  %32 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %add.ptr28.i, align 8
  %33 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdev, align 8
  %call38.i = call i32 @mlx5_cmd_exec(ptr noundef %34, ptr noundef nonnull %call7.i.i.i, i32 noundef 64, ptr noundef nonnull %out.i, i32 noundef 16) #6
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %do.body.i.create_uctx.exit.thread_crit_edge

do.body.i.create_uctx.exit.thread_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_uctx.exit.thread

if.then40.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr42.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %35 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr42.i, align 4
  %conv.i = trunc i32 %36 to i16
  %37 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %uid, align 2
  br label %if.end18

create_uctx.exit.thread:                          ; preds = %do.body.i.create_uctx.exit.thread_crit_edge, %if.end12.i.create_uctx.exit.thread_crit_edge, %if.end.i.create_uctx.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call38.i, %do.body.i.create_uctx.exit.thread_crit_edge ], [ -12, %if.end12.i.create_uctx.exit.thread_crit_edge ], [ -95, %if.end.i.create_uctx.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  br label %err_uctx

if.end18:                                         ; preds = %if.then40.i, %if.end14.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  %38 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %uid, align 8
  %40 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i87) #6
  %42 = call ptr @memset(ptr %out.i87, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %43 = getelementptr inbounds i8, ptr %in.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 12)
  %conv.i88 = zext i16 %39 to i32
  %or18.i = or i32 %conv.i88, 134217728
  %45 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or18.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %41, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i87, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i89 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i89, label %if.end23, label %alloc_pd.exit

alloc_pd.exit:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i87) #6
  br label %err_pd

if.end23:                                         ; preds = %if.end18
  %add.ptr26.i = getelementptr inbounds i32, ptr %out.i87, i32 2
  %46 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr26.i, align 4
  %and27.i = and i32 %47, 16777215
  %48 = ptrtoint ptr %res1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and27.i, ptr %res1, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i87) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out.i91) #6
  %49 = call ptr @memset(ptr %out.i91, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i92) #6
  %50 = getelementptr inbounds i8, ptr %in.i92, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 12)
  %52 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev, align 8
  %54 = ptrtoint ptr %in.i92 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 33751040, ptr %in.i92, align 4
  %call.i94 = call i32 @mlx5_cmd_exec(ptr noundef %53, ptr noundef nonnull %in.i92, i32 noundef 16, ptr noundef nonnull %out.i91, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %if.end27, label %get_null_mkey.exit

get_null_mkey.exit:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i92) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i91) #6
  br label %err_key

if.end27:                                         ; preds = %if.end23
  %null_mkey = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 5
  %add.ptr11.i = getelementptr inbounds i32, ptr %out.i91, i32 4
  %55 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr11.i, align 4
  %57 = ptrtoint ptr %null_mkey to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %null_mkey, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i92) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out.i91) #6
  %bar_addr = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 13
  %58 = ptrtoint ptr %bar_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bar_addr, align 8
  %conv = zext i32 %59 to i64
  %add = add i64 %5, %conv
  %phys_kick_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %phys_kick_addr to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add, ptr %phys_kick_addr, align 8
  %conv28 = trunc i64 %add to i32
  %call29 = call ptr @ioremap(i32 noundef %conv28, i32 noundef 4096) #6
  %kick_addr30 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %kick_addr30 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call29, ptr %kick_addr30, align 8
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %if.end27.err_key_crit_edge, label %if.end34

if.end27.err_key_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_key

if.end34:                                         ; preds = %if.end27
  %call35 = call fastcc i32 @init_ctrl_vq(ptr noundef %mvdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %err_ctrl

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %valid, align 8
  br label %cleanup

err_ctrl:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %kick_addr30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %kick_addr30, align 8
  call void @iounmap(ptr noundef %64) #6
  br label %err_key

err_key:                                          ; preds = %err_ctrl, %if.end27.err_key_crit_edge, %get_null_mkey.exit
  %err.0 = phi i32 [ %call.i94, %get_null_mkey.exit ], [ %call35, %err_ctrl ], [ -12, %if.end27.err_key_crit_edge ]
  %65 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %res1, align 8
  %67 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %uid, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i98) #6
  %69 = getelementptr inbounds i8, ptr %in.i98, i32 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 12)
  %71 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mdev, align 8
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i98, i32 2
  %and16.i = and i32 %66, 16777215
  %73 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and16.i, ptr %add.ptr14.i, align 4
  %conv.i100 = zext i16 %68 to i32
  %or33.i = or i32 %conv.i100, 134283264
  %74 = ptrtoint ptr %in.i98 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or33.i, ptr %in.i98, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %75 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i101 = call i32 @mlx5_cmd_exec(ptr noundef %72, ptr noundef nonnull %in.i98, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i98) #6
  br label %err_pd

err_pd:                                           ; preds = %err_key, %alloc_pd.exit
  %err.1 = phi i32 [ %call.i, %alloc_pd.exit ], [ %err.0, %err_key ]
  %76 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %uid, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i102) #6
  %78 = call ptr @memset(ptr %out.i102, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i103) #6
  %79 = call ptr @memset(ptr %in.i103, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i104 = icmp eq i16 %77, 0
  br i1 %tobool.not.i104, label %err_pd.destroy_uctx.exit_crit_edge, label %do.body.i109

err_pd.destroy_uctx.exit_crit_edge:               ; preds = %err_pd
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_uctx.exit

do.body.i109:                                     ; preds = %err_pd
  call void @__sanitizer_cov_trace_pc() #8
  %conv45 = zext i16 %77 to i32
  %80 = ptrtoint ptr %in.i103 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %in.i103, align 4
  %and.i105 = and i32 %81, 65535
  %or.i106 = or i32 %and.i105, 168165376
  store i32 %or.i106, ptr %in.i103, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i103, i32 2
  %82 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %83, -65536
  %or17.i = or i32 %and14.i, %conv45
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %84 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdev, align 8
  %call.i108 = call i32 @mlx5_cmd_exec(ptr noundef %85, ptr noundef nonnull %in.i103, i32 noundef 16, ptr noundef nonnull %out.i102, i32 noundef 16) #6
  br label %destroy_uctx.exit

destroy_uctx.exit:                                ; preds = %do.body.i109, %err_pd.destroy_uctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i103) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i102) #6
  br label %err_uctx

err_uctx:                                         ; preds = %destroy_uctx.exit, %create_uctx.exit.thread
  %err.2 = phi i32 [ %err.1, %destroy_uctx.exit ], [ %retval.0.i.ph, %create_uctx.exit.thread ]
  %86 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %uar, align 4
  call void @mlx5_put_uars_page(ptr noundef %1, ptr noundef %87) #6
  br label %err_uars

err_uars:                                         ; preds = %err_uctx, %if.then11
  %err.3 = phi i32 [ %17, %if.then11 ], [ %err.2, %err_uctx ]
  call void @mutex_destroy(ptr noundef %mkey_mtx) #6
  br label %cleanup

cleanup:                                          ; preds = %err_uars, %if.end38, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.3, %err_uars ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_uars_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_ctrl_vq(ptr noundef %mvdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vhost_iotlb_alloc(i32 noundef 0, i32 noundef 0) #6
  %cvq = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10
  %0 = ptrtoint ptr %cvq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cvq, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vring = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 2
  %iommu_lock = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10, i32 1
  tail call void @vringh_set_iotlb(ptr noundef %vring, ptr noundef nonnull %call, ptr noundef %iommu_lock) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_put_uars_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vdpa_free_resources(ptr noundef %mvdev) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i17 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid, align 8, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %res1 = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2
  %cvq.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 10
  %2 = ptrtoint ptr %cvq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cvq.i, align 8
  tail call void @vhost_iotlb_free(ptr noundef %3) #6
  %kick_addr = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %kick_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kick_addr, align 8
  tail call void @iounmap(ptr noundef %5) #6
  %6 = ptrtoint ptr %kick_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %kick_addr, align 8
  %7 = ptrtoint ptr %res1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res1, align 8
  %uid = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %uid, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %11 = getelementptr inbounds i8, ptr %in.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 12)
  %mdev1.i = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 1
  %13 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev1.i, align 8
  %add.ptr14.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %and16.i = and i32 %8, 16777215
  %15 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and16.i, ptr %add.ptr14.i, align 4
  %conv.i = zext i16 %10 to i32
  %or33.i = or i32 %conv.i, 134283264
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or33.i, ptr %in.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %17 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %14, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  %18 = ptrtoint ptr %uid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %uid, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #6
  %20 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i17) #6
  %21 = call ptr @memset(ptr %in.i17, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %if.end.destroy_uctx.exit_crit_edge, label %do.body.i

if.end.destroy_uctx.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %destroy_uctx.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %19 to i32
  %22 = ptrtoint ptr %in.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in.i17, align 4
  %and.i = and i32 %23, 65535
  %or.i = or i32 %and.i, 168165376
  store i32 %or.i, ptr %in.i17, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i17, i32 2
  %24 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %25, -65536
  %or17.i = or i32 %and14.i, %conv
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %26 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev1.i, align 8
  %call.i18 = call i32 @mlx5_cmd_exec(ptr noundef %27, ptr noundef nonnull %in.i17, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #6
  br label %destroy_uctx.exit

destroy_uctx.exit:                                ; preds = %do.body.i, %if.end.destroy_uctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i17) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  %28 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev1.i, align 8
  %uar = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uar, align 4
  call void @mlx5_put_uars_page(ptr noundef %29, ptr noundef %31) #6
  %mkey_mtx = getelementptr inbounds %struct.mlx5_vdpa_dev, ptr %mvdev, i32 0, i32 9, i32 5
  call void @mutex_destroy(ptr noundef %mkey_mtx) #6
  %32 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %valid, align 8
  br label %cleanup

cleanup:                                          ; preds = %destroy_uctx.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vhost_iotlb_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vringh_set_iotlb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_iotlb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/mlx5/core/resources.c", i32 255, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_vdpa_alloc_resources._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_vdpa_alloc_resources._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mlx5_vdpa_alloc_resources.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/vdpa/mlx5/core/resources.c", i32 258, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
