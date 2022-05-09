; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_geneve = type { ptr, i16, i8, i32, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.161 = type { %struct.mlx5_rsvd_gids, i32 }
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

@mlx5_geneve_tlv_option_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"%s:%d:(pid %d): Won't create Geneve TLV opt object with class:type:len = 0x%x:0x%x:%d (another class:type already exists)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_geneve_tlv_option_add\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_geneve_tlv_option_add._entry_ptr = internal global ptr @mlx5_geneve_tlv_option_add._entry, section ".printk_index", align 4
@mlx5_geneve_tlv_option_add._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s:%d:(pid %d): Failed creating Geneve TLV opt object class:type:len = 0x%x:0x%x:%d (err=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx5_geneve_tlv_option_add._entry_ptr.7 = internal global ptr @mlx5_geneve_tlv_option_add._entry.5, section ".printk_index", align 4
@mlx5_geneve_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&geneve->sync_lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 82, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 98, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 142, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @mlx5_geneve_tlv_option_add._entry, ptr @mlx5_geneve_tlv_option_add._entry.5, ptr @mlx5_geneve_tlv_option_add._entry_ptr, ptr @mlx5_geneve_tlv_option_add._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mlx5_geneve_create.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_geneve_tlv_option_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_geneve_tlv_option_add._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_geneve_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_geneve_tlv_option_add(ptr noundef %geneve, ptr nocapture noundef readonly %opt) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [20 x i32], align 4
  %out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %geneve, null
  %cmp.i = icmp ugt ptr %geneve, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync_lock = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sync_lock, i32 noundef 0) #6
  %refcount = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 5
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else18, label %if.then1

if.then1:                                         ; preds = %if.end
  %opt_class = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 1
  %2 = ptrtoint ptr %opt_class to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %opt_class, align 4
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opt, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %land.lhs.true, label %if.then1.do.end_crit_edge

if.then1.do.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %if.then1
  %opt_type = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 2
  %6 = ptrtoint ptr %opt_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opt_type, align 2
  %type = getelementptr inbounds %struct.geneve_opt, ptr %opt, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp7 = icmp eq i8 %7, %9
  br i1 %cmp7, label %if.then9, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %1, 1
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %refcount, align 4
  br label %unlock

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.then1.do.end_crit_edge
  %11 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %geneve, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 68
  %19 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pid, align 8
  %conv13 = zext i16 %5 to i32
  %type14 = getelementptr inbounds %struct.geneve_opt, ptr %opt, i32 0, i32 1
  %21 = ptrtoint ptr %type14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type14, align 2
  %conv15 = zext i8 %22 to i32
  %length = getelementptr inbounds %struct.geneve_opt, ptr %opt, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %length, align 1
  %bf.clear = and i8 %bf.load, 31
  %conv16 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef %20, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv16) #9
  br label %unlock

if.else18:                                        ; preds = %if.end
  %24 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %geneve, align 4
  %26 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %opt, align 2
  %type21 = getelementptr inbounds %struct.geneve_opt, ptr %opt, i32 0, i32 1
  %28 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type21, align 2
  %length22 = getelementptr inbounds %struct.geneve_opt, ptr %opt, i32 0, i32 2
  %30 = ptrtoint ptr %length22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load23 = load i8, ptr %length22, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in.i) #6
  %31 = call ptr @memset(ptr %in.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #6
  %32 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %25, i32 0, i32 8
  %33 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i64, ptr %34, i32 16
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i, align 8
  %and.i82 = and i64 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i82)
  %tobool.not.i83 = icmp eq i64 %and.i82, 0
  br i1 %tobool.not.i83, label %mlx5_geneve_tlv_option_create.exit.thread, label %if.end.i

mlx5_geneve_tlv_option_create.exit.thread:        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #6
  br label %do.end31

if.end.i:                                         ; preds = %if.else18
  %bf.clear24 = and i8 %bf.load23, 31
  %37 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in.i, align 4
  %and7.i = and i32 %38, 65535
  %or.i = or i32 %and7.i, 167772160
  store i32 %or.i, ptr %in.i, align 4
  %add.ptr17.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %39 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr17.i, align 4
  %and18.i = and i32 %40, -65536
  %or21.i = or i32 %and18.i, 11
  store i32 %or21.i, ptr %add.ptr17.i, align 4
  %conv.i = zext i16 %27 to i32
  %add.ptr30.i = getelementptr inbounds i8, ptr %in.i, i32 28
  %41 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr30.i, align 4
  %and31.i = and i32 %42, 224
  %shl33.i = shl nuw i32 %conv.i, 16
  %or34.i = or i32 %and31.i, %shl33.i
  %conv40.i = zext i8 %29 to i32
  %shl47.i = shl nuw nsw i32 %conv40.i, 8
  %or48.i = or i32 %or34.i, %shl47.i
  %and60.i = zext i8 %bf.clear24 to i32
  %or62.i = or i32 %or48.i, %and60.i
  store i32 %or62.i, ptr %add.ptr30.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %25, ptr noundef nonnull %in.i, i32 noundef 80, ptr noundef nonnull %out.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool68.not.i, label %mlx5_geneve_tlv_option_create.exit.thread88, label %mlx5_geneve_tlv_option_create.exit

mlx5_geneve_tlv_option_create.exit.thread88:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr72.i = getelementptr inbounds i32, ptr %out.i, i32 2
  %43 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr72.i, align 4
  %conv75.i = and i32 %44, 65535
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #6
  br label %if.end45

mlx5_geneve_tlv_option_create.exit:               ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp slt i32 %call.i, 0
  br i1 %cmp26, label %mlx5_geneve_tlv_option_create.exit.do.end31_crit_edge, label %mlx5_geneve_tlv_option_create.exit.if.end45_crit_edge

mlx5_geneve_tlv_option_create.exit.if.end45_crit_edge: ; preds = %mlx5_geneve_tlv_option_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

mlx5_geneve_tlv_option_create.exit.do.end31_crit_edge: ; preds = %mlx5_geneve_tlv_option_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

do.end31:                                         ; preds = %mlx5_geneve_tlv_option_create.exit.do.end31_crit_edge, %mlx5_geneve_tlv_option_create.exit.thread
  %retval.0.i87 = phi i32 [ -22, %mlx5_geneve_tlv_option_create.exit.thread ], [ %call.i, %mlx5_geneve_tlv_option_create.exit.do.end31_crit_edge ]
  %45 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %geneve, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %49 = call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i84 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i84 to ptr
  %task35 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task35, align 8
  %pid36 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 68
  %53 = ptrtoint ptr %pid36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pid36, align 8
  %55 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %opt, align 2
  %conv38 = zext i16 %56 to i32
  %57 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type21, align 2
  %conv40 = zext i8 %58 to i32
  %59 = ptrtoint ptr %length22 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load42 = load i8, ptr %length22, align 1
  %bf.clear43 = and i8 %bf.load42, 31
  %conv44 = zext i8 %bf.clear43 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef %54, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv44, i32 noundef %retval.0.i87) #9
  br label %unlock

if.end45:                                         ; preds = %mlx5_geneve_tlv_option_create.exit.if.end45_crit_edge, %mlx5_geneve_tlv_option_create.exit.thread88
  %retval.0.i91 = phi i32 [ %conv75.i, %mlx5_geneve_tlv_option_create.exit.thread88 ], [ %call.i, %mlx5_geneve_tlv_option_create.exit.if.end45_crit_edge ]
  %60 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %opt, align 2
  %opt_class47 = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 1
  %62 = ptrtoint ptr %opt_class47 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %opt_class47, align 4
  %63 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type21, align 2
  %opt_type49 = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 2
  %65 = ptrtoint ptr %opt_type49 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %opt_type49, align 2
  %obj_id = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 3
  %66 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i91, ptr %obj_id, align 4
  %67 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %refcount, align 4
  %inc51 = add i32 %68, 1
  store i32 %inc51, ptr %refcount, align 4
  br label %unlock

unlock:                                           ; preds = %if.end45, %do.end31, %do.end, %if.then9
  %res.0 = phi i32 [ 0, %if.then9 ], [ -95, %do.end ], [ %retval.0.i87, %do.end31 ], [ %retval.0.i91, %if.end45 ]
  call void @mutex_unlock(ptr noundef %sync_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %unlock ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_geneve_tlv_option_del(ptr noundef %geneve) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %geneve, null
  %cmp.i = icmp ugt ptr %geneve, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %sync_lock = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %sync_lock, i32 noundef 0) #6
  %refcount = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 5
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %geneve, align 4
  %obj_id = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 3
  %4 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #6
  %6 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %7 = getelementptr inbounds i8, ptr %in.i, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 167968768, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %add.ptr13.i, align 4
  %conv.i = and i32 %5, 65535
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %11 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %add.ptr28.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  %opt_class = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 1
  %12 = ptrtoint ptr %opt_class to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %opt_class, align 4
  %opt_type = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 2
  %13 = ptrtoint ptr %opt_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %opt_type, align 2
  %14 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %obj_id, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  call void @mutex_unlock(ptr noundef %sync_lock) #6
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_geneve_create(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdev, ptr %call7.i.i, align 8
  %sync_lock = getelementptr inbounds %struct.mlx5_geneve, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %sync_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx5_geneve_create.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_geneve_destroy(ptr noundef %geneve) local_unnamed_addr #0 align 64 {
entry:
  %out.i = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %geneve, null
  %cmp.i = icmp ugt ptr %geneve, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 5
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %geneve to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %geneve, align 4
  %obj_id = getelementptr inbounds %struct.mlx5_geneve, ptr %geneve, i32 0, i32 3
  %4 = ptrtoint ptr %obj_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj_id, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out.i) #6
  %6 = call ptr @memset(ptr %out.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %7 = getelementptr inbounds i8, ptr %in.i, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 167968768, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %10 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 11, ptr %add.ptr13.i, align 4
  %conv.i = and i32 %5, 65535
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %11 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %add.ptr28.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out.i) #6
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  call void @kfree(ptr noundef nonnull %geneve) #6
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c", i32 82, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_geneve_tlv_option_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_geneve_tlv_option_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c", i32 98, i32 4}
!10 = !{ptr @mlx5_geneve_tlv_option_add._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_geneve_tlv_option_add._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @mlx5_geneve_create.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/geneve.c", i32 142, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
