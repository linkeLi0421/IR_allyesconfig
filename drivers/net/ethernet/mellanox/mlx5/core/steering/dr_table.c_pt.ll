; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
%struct.mlx5dr_table = type { ptr, %struct.mlx5dr_table_rx_tx, %struct.mlx5dr_table_rx_tx, i32, i32, i32, i32, %struct.list_head, ptr, %struct.refcount_struct, %struct.list_head }
%struct.mlx5dr_table_rx_tx = type { ptr, ptr, i64, %struct.list_head }
%struct.mlx5dr_action = type { i32, %struct.refcount_struct, %union.anon.129 }
%union.anon.129 = type { ptr }
%struct.mlx5dr_htbl_connect_info = type { i32, %union.anon.176 }
%union.anon.176 = type { i64 }
%struct.mlx5dr_matcher_rx_tx = type { ptr, ptr, ptr, [2 x [2 x [18 x %struct.mlx5dr_ste_build]]], i8, [2 x [2 x i8]], i64, ptr, i32, %struct.list_head, i32 }
%struct.mlx5dr_ste_build = type { i8, ptr, ptr, i16, i16, [16 x i8], ptr }
%struct.mlx5dr_action_dest_tbl = type { i8, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { ptr, i32, i32, i32, i64, i64, ptr, i32 }
%struct.mlx5dr_ste_htbl = type { i16, i16, i32, ptr, ptr, ptr, ptr, i32, ptr, %struct.mlx5dr_ste_htbl_ctrl }
%struct.mlx5dr_ste_htbl_ctrl = type { i32, i32 }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5dr_cmd_create_flow_table_attr = type { i32, i64, i64, i8, i8, i8, i8, i8 }

@mlx5dr_table_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c\00", [36 x i8] zeroinitializer }, align 32
@dr_table_set_miss_action_nic.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dr_table_set_miss_action_nic\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed to set NIC RX/TX miss action, ret %d\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dr_table_init_nic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 131, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:%d:(pid %d): Failed allocating htbl\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dr_table_init_nic\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_table_init_nic._entry_ptr = internal global ptr @dr_table_init_nic._entry, section ".printk_index", align 4
@dr_table_init_nic._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str, i32 141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): Failed int and send htbl\0A\00", [54 x i8] zeroinitializer }, align 32
@dr_table_init_nic._entry_ptr.10 = internal global ptr @dr_table_init_nic._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 285, i32 6 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 39, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 131, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [63 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 141, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @dr_table_init_nic._entry, ptr @dr_table_init_nic._entry.8, ptr @dr_table_init_nic._entry_ptr, ptr @dr_table_init_nic._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_table_init_nic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_table_init_nic._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_table_set_miss_action(ptr noundef %tbl, ptr noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %action, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #8
  %4 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tbl, align 8
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.if.end11_crit_edge [
    i32 0, label %if.end.if.then6_crit_edge
    i32 2, label %if.end.if.then6_crit_edge62
  ]

if.end.if.then6_crit_edge62:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge62
  %rx = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 1
  %call = tail call fastcc i32 @dr_table_set_miss_action_nic(ptr noundef %5, ptr noundef %rx, ptr noundef %action)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ 0, %if.then6.if.end11_crit_edge ], [ -1, %if.end.if.end11_crit_edge ]
  %9 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tbl, align 8
  %type13 = getelementptr inbounds %struct.mlx5dr_domain, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %type13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type13, align 8
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then19, label %if.end11.if.end25_crit_edge

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then19:                                        ; preds = %if.end11
  %tx = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 2
  %call21 = tail call fastcc i32 @dr_table_set_miss_action_nic(ptr noundef %10, ptr noundef %tx, ptr noundef %action)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end25_crit_edge, label %if.then19.out_crit_edge

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.then19.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %ret.1 = phi i32 [ 0, %if.then19.if.end25_crit_edge ], [ %ret.0, %if.end11.if.end25_crit_edge ]
  %miss_action = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 8
  %13 = ptrtoint ptr %miss_action to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %miss_action, align 8
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  %refcount = getelementptr inbounds %struct.mlx5dr_action, ptr %14, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !30
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then27.if.end29_crit_edge, !prof !31

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then3.i.i:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then3.i.i, %if.then27.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  %16 = ptrtoint ptr %miss_action to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %action, ptr %miss_action, align 8
  br i1 %tobool.not, label %if.end29.out_crit_edge, label %if.then33

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then33:                                        ; preds = %if.end29
  %refcount34 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount34, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount34, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount34, ptr %refcount34, i32 1, ptr elementtype(i32) %refcount34) #8, !srcloc !32
  %asmresult.i.i.i.i.i59 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i59)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i59, 0
  br i1 %tobool1.not.i.i.i, label %if.then33.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !31

if.then33.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then33
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i59, 1
  %18 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.out_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !33

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.out_crit_edge:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then33.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then33.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount34, i32 noundef %.sink.i.i.i) #8
  br label %out

out:                                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.out_crit_edge, %if.end29.out_crit_edge, %if.then19.out_crit_edge, %if.then6.out_crit_edge
  %ret.2 = phi i32 [ %call, %if.then6.out_crit_edge ], [ %call21, %if.then19.out_crit_edge ], [ %ret.1, %if.end29.out_crit_edge ], [ %ret.1, %if.else.i.i.i.out_crit_edge ], [ %ret.1, %if.end15.sink.split.i.i.i ]
  %19 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tbl, align 8
  %mutex.i.i60 = getelementptr inbounds %struct.mlx5dr_domain, ptr %20, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i60) #8
  %mutex.i3.i61 = getelementptr inbounds %struct.mlx5dr_domain, ptr %20, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i61) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -95, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_table_set_miss_action_nic(ptr noundef %dmn, ptr noundef %nic_tbl, ptr noundef readonly %action) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.mlx5dr_htbl_connect_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %info, align 8
  %nic_matcher_list = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 3
  %1 = ptrtoint ptr %nic_matcher_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %nic_matcher_list, align 4
  %cmp.i.not = icmp eq ptr %2, %nic_matcher_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -2632
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %last_nic_matcher.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr, %if.then ]
  %tobool2.not = icmp eq ptr %last_nic_matcher.0, null
  %e_anchor = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, ptr %last_nic_matcher.0, i32 0, i32 1
  %last_htbl.0.in = select i1 %tobool2.not, ptr %nic_tbl, ptr %e_anchor
  %5 = ptrtoint ptr %last_htbl.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %last_htbl.0 = load ptr, ptr %last_htbl.0.in, align 4
  %tobool5.not = icmp eq ptr %action, null
  %nic_dmn12 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 1
  %6 = ptrtoint ptr %nic_dmn12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nic_dmn12, align 4
  br i1 %tobool5.not, label %if.else11, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %10 = getelementptr inbounds %struct.mlx5dr_action, ptr %action, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.mlx5dr_action_dest_tbl, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %rx = getelementptr inbounds %struct.mlx5dr_table, ptr %15, i32 0, i32 1
  %tx = getelementptr inbounds %struct.mlx5dr_table, ptr %15, i32 0, i32 2
  %.pn45.in = select i1 %cmp, ptr %rx, ptr %tx
  %16 = ptrtoint ptr %.pn45.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn45 = load ptr, ptr %.pn45.in, align 8
  %.pn.in = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %.pn45, i32 0, i32 3
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cond.in = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %.pn, i32 0, i32 5
  br label %if.end15

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %default_icm_addr13 = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %7, i32 0, i32 1
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then6
  %default_icm_addr13.sink = phi ptr [ %default_icm_addr13, %if.else11 ], [ %cond.in, %if.then6 ]
  %18 = ptrtoint ptr %default_icm_addr13.sink to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %default_icm_addr13.sink, align 8
  %default_icm_addr14 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 2
  %20 = ptrtoint ptr %default_icm_addr14 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %default_icm_addr14, align 8
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %info, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %19, ptr %22, align 8
  %nic_dmn18 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 1
  %24 = ptrtoint ptr %nic_dmn18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nic_dmn18, align 4
  %call19 = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %25, ptr noundef %last_htbl.0, ptr noundef nonnull %info, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end15.if.end30_crit_edge, label %do.body

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dr_table_set_miss_action_nic.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dr_table_set_miss_action_nic, %if.then27)) #8
          to label %if.end30 [label %if.then27], !srcloc !34

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %26 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !19) #8
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dr_table_set_miss_action_nic.__UNIQUE_ID_ddebug544, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 39, i32 noundef %35, i32 noundef %call19) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %do.body, %if.end15.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #8
  ret i32 %call19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_table_create(ptr noundef %dmn, i32 noundef %level, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5dr_cmd_create_flow_table_attr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !31

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !33

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %refcount_inc.exit.dec_ref_crit_edge, label %if.end

refcount_inc.exit.dec_ref_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dec_ref

if.end:                                           ; preds = %refcount_inc.exit
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dmn, ptr %call7.i.i, align 8
  %level2 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %level2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %level, ptr %level2, align 8
  %flags3 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags3, align 4
  %refcount4 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount4, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcount4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount4, align 4
  %matcher_list.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %matcher_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %matcher_list.i, ptr %matcher_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %matcher_list.i, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %mutex.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %10, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i.i, i32 noundef 0) #8
  %mutex.i3.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %10, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %type.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %14, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %table_type.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %table_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %table_type.i, align 4
  %rx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 5
  %rx3.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 1
  %nic_dmn.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %nic_dmn.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx.i, ptr %nic_dmn.i, align 4
  %call.i = tail call fastcc i32 @dr_table_init_nic(ptr noundef %12, ptr noundef %rx3.i) #8
  br label %dr_table_init.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %table_type7.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %table_type7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %table_type7.i, align 4
  %tx.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 6
  %tx10.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 2
  %nic_dmn11.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %nic_dmn11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tx.i, ptr %nic_dmn11.i, align 4
  %call14.i = tail call fastcc i32 @dr_table_init_nic(ptr noundef %12, ptr noundef %tx10.i) #8
  br label %dr_table_init.exit

sw.bb15.i:                                        ; preds = %if.end
  %table_type16.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %table_type16.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %table_type16.i, align 4
  %rx19.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 5
  %nic_dmn21.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %nic_dmn21.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rx19.i, ptr %nic_dmn21.i, align 4
  %tx24.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %12, i32 0, i32 9, i32 6
  %nic_dmn26.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %nic_dmn26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tx24.i, ptr %nic_dmn26.i, align 4
  %rx.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 1
  %call.i.i = tail call fastcc i32 @dr_table_init_nic(ptr noundef %12, ptr noundef %rx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb15.i.dr_table_init.exit_crit_edge

sw.bb15.i.dr_table_init.exit_crit_edge:           ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_table_init.exit

if.end.i.i:                                       ; preds = %sw.bb15.i
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %tx.i.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 2
  %call2.i.i = tail call fastcc i32 @dr_table_init_nic(ptr noundef %24, ptr noundef %tx.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.dr_table_init.exit_crit_edge, label %destroy_rx.i.i

if.end.i.i.dr_table_init.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_table_init.exit

destroy_rx.i.i:                                   ; preds = %if.end.i.i
  %25 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx.i.i, align 8
  %refcount.i.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %refcount.i.i.i.i, align 4
  %dec.i.i.i.i = add i32 %28, -1
  store i32 %dec.i.i.i.i, ptr %refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %destroy_rx.i.i.dr_table_init.exit_crit_edge

destroy_rx.i.i.dr_table_init.exit_crit_edge:      ; preds = %destroy_rx.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_table_init.exit

if.then.i.i.i.i:                                  ; preds = %destroy_rx.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %26) #8
  br label %dr_table_init.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 9, ptr noundef null) #8
  br label %dr_table_init.exit

dr_table_init.exit:                               ; preds = %do.end.i, %if.then.i.i.i.i, %destroy_rx.i.i.dr_table_init.exit_crit_edge, %if.end.i.i.dr_table_init.exit_crit_edge, %sw.bb15.i.dr_table_init.exit_crit_edge, %sw.bb6.i, %sw.bb.i
  %ret.0.i = phi i32 [ 0, %do.end.i ], [ %call14.i, %sw.bb6.i ], [ %call.i, %sw.bb.i ], [ %call.i.i, %sw.bb15.i.dr_table_init.exit_crit_edge ], [ 0, %if.end.i.i.dr_table_init.exit_crit_edge ], [ 1, %destroy_rx.i.i.dr_table_init.exit_crit_edge ], [ 1, %if.then.i.i.i.i ]
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %mutex.i.i63.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %30, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i63.i) #8
  %mutex.i3.i64.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %30, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i64.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not, label %if.end8, label %dr_table_init.exit.free_tbl_crit_edge

dr_table_init.exit.free_tbl_crit_edge:            ; preds = %dr_table_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tbl

if.end8:                                          ; preds = %dr_table_init.exit
  %31 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags3, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ft_attr.i) #8
  %33 = call ptr @memset(ptr %ft_attr.i, i32 0, i32 32)
  %rx.i29 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %rx.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx.i29, align 8
  %tobool8.not.i = icmp eq ptr %35, null
  br i1 %tobool8.not.i, label %if.end8.if.end.i_crit_edge, label %if.then.i

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %chunk.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chunk.i, align 4
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %icm_addr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  %icm_addr_rx.0.i = phi i64 [ %39, %if.then.i ], [ 0, %if.end8.if.end.i_crit_edge ]
  %tx.i30 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %tx.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx.i30, align 8
  %tobool12.not.i = icmp eq ptr %41, null
  br i1 %tobool12.not.i, label %if.end.i.dr_table_create_sw_owned_tbl.exit_crit_edge, label %if.then13.i

if.end.i.dr_table_create_sw_owned_tbl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_table_create_sw_owned_tbl.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %chunk16.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %chunk16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chunk16.i, align 4
  %icm_addr17.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %icm_addr17.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %icm_addr17.i, align 8
  br label %dr_table_create_sw_owned_tbl.exit

dr_table_create_sw_owned_tbl.exit:                ; preds = %if.then13.i, %if.end.i.dr_table_create_sw_owned_tbl.exit_crit_edge
  %icm_addr_tx.0.i = phi i64 [ %45, %if.then13.i ], [ 0, %if.end.i.dr_table_create_sw_owned_tbl.exit_crit_edge ]
  %46 = trunc i32 %32 to i8
  %47 = lshr i8 %46, 1
  %48 = and i8 %47, 1
  %49 = and i8 %46, 1
  %table_type.i31 = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %table_type.i31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %table_type.i31, align 4
  %52 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ft_attr.i, align 8
  %icm_addr_rx20.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %53 = ptrtoint ptr %icm_addr_rx20.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %icm_addr_rx.0.i, ptr %icm_addr_rx20.i, align 8
  %icm_addr_tx21.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %54 = ptrtoint ptr %icm_addr_tx21.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %icm_addr_tx.0.i, ptr %icm_addr_tx21.i, align 8
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %max_ft_level.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %56, i32 0, i32 9, i32 7, i32 21
  %57 = ptrtoint ptr %max_ft_level.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_ft_level.i, align 8
  %sub.i = add i8 %58, -1
  %level.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 3
  %59 = ptrtoint ptr %level.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %sub.i, ptr %level.i, align 8
  %sw_owner.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 4
  %60 = ptrtoint ptr %sw_owner.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %sw_owner.i, align 1
  %decap_en.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 6
  %61 = ptrtoint ptr %decap_en.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %48, ptr %decap_en.i, align 1
  %reformat_en.i = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr.i, i32 0, i32 7
  %62 = ptrtoint ptr %reformat_en.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %49, ptr %reformat_en.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %56, i32 0, i32 1
  %63 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i, align 4
  %table_id.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 5
  %call.i32 = call i32 @mlx5dr_cmd_create_flow_table(ptr noundef %64, ptr noundef nonnull %ft_attr.i, ptr noundef null, ptr noundef %table_id.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ft_attr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool10.not = icmp eq i32 %call.i32, 0
  br i1 %tobool10.not, label %if.end12, label %uninit_tbl

if.end12:                                         ; preds = %dr_table_create_sw_owned_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dbg_node = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 10
  %65 = ptrtoint ptr %dbg_node to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %dbg_node, ptr %dbg_node, align 8
  %prev.i = getelementptr inbounds %struct.mlx5dr_table, ptr %call7.i.i, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dbg_node, ptr %prev.i, align 4
  call void @mlx5dr_dbg_tbl_add(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

uninit_tbl:                                       ; preds = %dr_table_create_sw_owned_tbl.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @dr_table_uninit(ptr noundef nonnull %call7.i.i)
  br label %free_tbl

free_tbl:                                         ; preds = %uninit_tbl, %dr_table_init.exit.free_tbl_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %dec_ref

dec_ref:                                          ; preds = %free_tbl, %refcount_inc.exit.dec_ref_crit_edge
  %call.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !30
  %asmresult.i.i.i.i.i34 = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i34)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i34, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %dec_ref.cleanup_crit_edge, !prof !31

dec_ref.cleanup_crit_edge:                        ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.i:                                     ; preds = %dec_ref
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i.i, %dec_ref.cleanup_crit_edge, %if.end12
  %retval.0 = phi ptr [ %call7.i.i, %if.end12 ], [ null, %dec_ref.cleanup_crit_edge ], [ null, %if.then3.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_tbl_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_table_uninit(ptr nocapture noundef readonly %tbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %mutex.i3.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %1, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i3.i, i32 noundef 0) #8
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl, align 8
  %type = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %rx = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 1
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx, align 8
  %refcount.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %refcount.i.i, align 4
  %dec.i.i = add i32 %10, -1
  store i32 %dec.i.i, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %8) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %tx = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 2
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 8
  %refcount.i.i25 = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %refcount.i.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcount.i.i25, align 4
  %dec.i.i26 = add i32 %14, -1
  store i32 %dec.i.i26, ptr %refcount.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %dec.i.i26, 0
  br i1 %tobool.not.i.i27, label %if.then.i.i29, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i.i29:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i28 = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %12) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %rx.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 1
  %15 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx.i, align 8
  %refcount.i.i.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refcount.i.i.i, align 4
  %dec.i.i.i = add i32 %18, -1
  store i32 %dec.i.i.i, ptr %refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.bb3.dr_table_uninit_nic.exit.i_crit_edge

sw.bb3.dr_table_uninit_nic.exit.i_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %dr_table_uninit_nic.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %16) #8
  br label %dr_table_uninit_nic.exit.i

dr_table_uninit_nic.exit.i:                       ; preds = %if.then.i.i.i, %sw.bb3.dr_table_uninit_nic.exit.i_crit_edge
  %tx.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 2
  %19 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx.i, align 8
  %refcount.i.i2.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %refcount.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcount.i.i2.i, align 4
  %dec.i.i3.i = add i32 %22, -1
  store i32 %dec.i.i3.i, ptr %refcount.i.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i3.i)
  %tobool.not.i.i4.i = icmp eq i32 %dec.i.i3.i, 0
  br i1 %tobool.not.i.i4.i, label %if.then.i.i6.i, label %dr_table_uninit_nic.exit.i.sw.epilog_crit_edge

dr_table_uninit_nic.exit.i.sw.epilog_crit_edge:   ; preds = %dr_table_uninit_nic.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i.i6.i:                                   ; preds = %dr_table_uninit_nic.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i5.i = tail call i32 @mlx5dr_ste_htbl_free(ptr noundef %20) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i.i6.i, %dr_table_uninit_nic.exit.i.sw.epilog_crit_edge, %if.then.i.i29, %sw.bb2.sw.epilog_crit_edge, %if.then.i.i, %sw.bb.sw.epilog_crit_edge
  %23 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tbl, align 8
  %mutex.i.i31 = getelementptr inbounds %struct.mlx5dr_domain, ptr %24, i32 0, i32 9, i32 6, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i.i31) #8
  %mutex.i3.i32 = getelementptr inbounds %struct.mlx5dr_domain, ptr %24, i32 0, i32 9, i32 5, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex.i3.i32) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_table_destroy(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @mlx5dr_table_destroy.__already_done, align 1
  br i1 %.b59, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !33

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mlx5dr_table_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end37:                                         ; preds = %entry
  tail call void @mlx5dr_dbg_tbl_del(ptr noundef %tbl) #8
  %2 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbl, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 4
  %table_id.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 5
  %6 = ptrtoint ptr %table_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %table_id.i, align 8
  %table_type.i = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 4
  %8 = ptrtoint ptr %table_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %table_type.i, align 4
  %call.i = tail call i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %5, i32 noundef %7, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  tail call fastcc void @dr_table_uninit(ptr noundef %tbl)
  %miss_action = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 8
  %10 = ptrtoint ptr %miss_action to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %miss_action, align 8
  %tobool42.not = icmp eq ptr %11, null
  br i1 %tobool42.not, label %if.end41.if.end46_crit_edge, label %if.then43

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  %refcount45 = getelementptr inbounds %struct.mlx5dr_action, ptr %11, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount45, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount45, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount45, ptr %refcount45, i32 1, ptr elementtype(i32) %refcount45) #8, !srcloc !30
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then43.if.end46_crit_edge, !prof !31

if.then43.if.end46_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then3.i.i:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount45, i32 noundef 4) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then3.i.i, %if.then43.if.end46_crit_edge, %if.end41.if.end46_crit_edge
  %13 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tbl, align 8
  %refcount47 = getelementptr inbounds %struct.mlx5dr_domain, ptr %14, i32 0, i32 5
  %call.i.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount47, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %refcount47, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount47, ptr %refcount47, i32 1, ptr elementtype(i32) %refcount47) #8, !srcloc !30
  %asmresult.i.i.i.i.i62 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i62)
  %cmp.i.i63 = icmp slt i32 %asmresult.i.i.i.i.i62, 2
  br i1 %cmp.i.i63, label %if.then3.i.i64, label %if.end46.refcount_dec.exit65_crit_edge, !prof !31

if.end46.refcount_dec.exit65_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_dec.exit65

if.then3.i.i64:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount47, i32 noundef 4) #8
  br label %refcount_dec.exit65

refcount_dec.exit65:                              ; preds = %if.then3.i.i64, %if.end46.refcount_dec.exit65_crit_edge
  tail call void @kfree(ptr noundef %tbl) #8
  br label %cleanup

cleanup:                                          ; preds = %refcount_dec.exit65, %if.end37.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %refcount_dec.exit65 ], [ -16, %if.then ], [ %call.i, %if.end37.cleanup_crit_edge ], [ -16, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_dbg_tbl_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5dr_table_get_id(ptr nocapture noundef readonly %tbl) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table_id = getelementptr inbounds %struct.mlx5dr_table, ptr %tbl, i32 0, i32 5
  %0 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table_id, align 8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dr_table_init_nic(ptr noundef %dmn, ptr noundef %nic_tbl) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.mlx5dr_htbl_connect_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nic_dmn1 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 1
  %0 = ptrtoint ptr %nic_dmn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nic_dmn1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %info, align 8
  %nic_matcher_list = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 3
  %3 = ptrtoint ptr %nic_matcher_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %nic_matcher_list, ptr %nic_matcher_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nic_matcher_list, ptr %prev.i, align 4
  %default_icm_addr = getelementptr inbounds %struct.mlx5dr_domain_rx_tx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %default_icm_addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %default_icm_addr, align 8
  %default_icm_addr2 = getelementptr inbounds %struct.mlx5dr_table_rx_tx, ptr %nic_tbl, i32 0, i32 2
  %7 = ptrtoint ptr %default_icm_addr2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %default_icm_addr2, align 8
  %ste_icm_pool = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 6
  %8 = ptrtoint ptr %ste_icm_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ste_icm_pool, align 8
  %call = tail call ptr @mlx5dr_ste_htbl_alloc(ptr noundef %9, i32 noundef 0, i16 noundef zeroext 15, i16 noundef zeroext 0) #8
  %10 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %nic_tbl, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %15 = tail call i32 @llvm.read_register.i32(metadata !19) #8
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 131, i32 noundef %20) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %info, align 8
  %22 = ptrtoint ptr %default_icm_addr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %default_icm_addr, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_htbl_connect_info, ptr %info, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %23, ptr %24, align 8
  %call7 = call i32 @mlx5dr_ste_htbl_init_and_postsend(ptr noundef %dmn, ptr noundef %1, ptr noundef nonnull %call, ptr noundef nonnull %info, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end18, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mdev13 = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %26 = ptrtoint ptr %mdev13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev13, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !19) #8
  %and.i37 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i37 to ptr
  %task16 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task16, align 8
  %pid17 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid17, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 141, i32 noundef %35) #12
  %36 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nic_tbl, align 8
  %call21 = call i32 @mlx5dr_ste_htbl_free(ptr noundef %37) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %nic_tbl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nic_tbl, align 8
  %refcount.i = getelementptr inbounds %struct.mlx5dr_ste_htbl, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %refcount.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %refcount.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end12, %do.end
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ 0, %if.end18 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5dr_ste_htbl_alloc(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_ste_htbl_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_create_flow_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c", i32 285, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c", i32 39, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dr_table_set_miss_action_nic.__UNIQUE_ID_ddebug544, !4, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c", i32 131, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dr_table_init_nic._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @dr_table_init_nic._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_table.c", i32 141, i32 3}
!17 = !{ptr @dr_table_init_nic._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dr_table_init_nic._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
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
!29 = !{i64 2148384839}
!30 = !{i64 2148299303, i64 2148299335, i64 2148299364, i64 2148299398, i64 2148299429, i64 2148299452}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148296838, i64 2148296870, i64 2148296899, i64 2148296933, i64 2148296964, i64 2148296987}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148777123, i64 2148777128, i64 2148777141, i64 2148777185, i64 2148777219, i64 2148777240}
