; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_icm_pool = type { i32, i32, ptr, %struct.mutex, %struct.list_head, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5dr_domain_info = type { i8, i32, i32, i32, i32, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_domain_rx_tx, %struct.mlx5dr_cmd_caps }
%struct.mlx5dr_domain_rx_tx = type { i64, i64, i32, %struct.mutex }
%struct.mlx5dr_cmd_caps = type { i16, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.mlx5dr_esw_caps, %struct.mlx5dr_vports, i8, %struct.mlx5dr_roce_cap, i8 }
%struct.mlx5dr_esw_caps = type { i64, i64, i64, i64, i8 }
%struct.mlx5dr_vports = type { %struct.mlx5dr_cmd_vport_cap, %struct.mlx5dr_cmd_vport_cap, %struct.xarray }
%struct.mlx5dr_cmd_vport_cap = type { i16, i16, i16, i64, i64 }
%struct.mlx5dr_roce_cap = type { i8 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5dr_dbg_dump_info = type { %struct.mutex, ptr, ptr }
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
%struct.mlx5dr_icm_mr = type { i32, %struct.mlx5dr_icm_dm, ptr, i32, i64 }
%struct.mlx5dr_icm_dm = type { i32, i32, i32, i32 }
%struct.mlx5dr_icm_buddy_mem = type { ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.list_head, i64, %struct.list_head, ptr, ptr, ptr }
%struct.mlx5dr_icm_chunk = type { ptr, %struct.list_head, i32, i32, i32, i64, i64, i32, ptr, ptr, ptr }
%struct.mlx5dr_ste = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i8 }

@mlx5dr_icm_pool_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pool->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c\00", [33 x i8] zeroinitializer }, align 32
@dr_icm_handle_buddies_get_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s:%d:(pid %d): No memory for order: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dr_icm_handle_buddies_get_mem\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dr_icm_handle_buddies_get_mem._entry_ptr = internal global ptr @dr_icm_handle_buddies_get_mem._entry, section ".printk_index", align 4
@dr_icm_handle_buddies_get_mem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:(pid %d): Failed creating buddy for order %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dr_icm_handle_buddies_get_mem._entry_ptr.8 = internal global ptr @dr_icm_handle_buddies_get_mem._entry.6, section ".printk_index", align 4
@dr_icm_pool_mr_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Failed to allocate SW ICM memory, err (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dr_icm_pool_mr_create\00", [42 x i8] zeroinitializer }, align 32
@dr_icm_pool_mr_create._entry_ptr = internal global ptr @dr_icm_pool_mr_create._entry, section ".printk_index", align 4
@dr_icm_pool_mr_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.1, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed to create SW ICM MKEY, err (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@dr_icm_pool_mr_create._entry_ptr.13 = internal global ptr @dr_icm_pool_mr_create._entry.11, section ".printk_index", align 4
@dr_icm_pool_mr_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.1, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Failed to get Aligned ICM mem (asked: %zu)\0A\00", [36 x i8] zeroinitializer }, align 32
@dr_icm_pool_mr_create._entry_ptr.16 = internal global ptr @dr_icm_pool_mr_create._entry.14, section ".printk_index", align 4
@dr_icm_pool_sync_all_buddy_pools._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Failed to sync to HW (err: %d)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dr_icm_pool_sync_all_buddy_pools\00", [63 x i8] zeroinitializer }, align 32
@dr_icm_pool_sync_all_buddy_pools._entry_ptr = internal global ptr @dr_icm_pool_sync_all_buddy_pools._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 481, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 381, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 383, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 393, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 92, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 103, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 110, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [66 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 343, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @dr_icm_handle_buddies_get_mem._entry, ptr @dr_icm_handle_buddies_get_mem._entry.6, ptr @dr_icm_handle_buddies_get_mem._entry_ptr, ptr @dr_icm_handle_buddies_get_mem._entry_ptr.8, ptr @dr_icm_pool_mr_create._entry, ptr @dr_icm_pool_mr_create._entry.11, ptr @dr_icm_pool_mr_create._entry.14, ptr @dr_icm_pool_mr_create._entry_ptr, ptr @dr_icm_pool_mr_create._entry_ptr.13, ptr @dr_icm_pool_mr_create._entry_ptr.16, ptr @dr_icm_pool_sync_all_buddy_pools._entry, ptr @dr_icm_pool_sync_all_buddy_pools._entry_ptr, ptr @mlx5dr_icm_pool_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_icm_pool_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_handle_buddies_get_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_handle_buddies_get_mem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_pool_mr_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_pool_mr_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_pool_mr_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dr_icm_pool_sync_all_buddy_pools._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_icm_alloc_chunk(ptr noundef %pool, i32 noundef %chunk_size) local_unnamed_addr #0 align 64 {
entry:
  %in.i.i.i.i = alloca [68 x i32], align 4
  %seg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seg) #7
  %0 = ptrtoint ptr %seg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %seg, align 4, !annotation !44
  %max_log_chunk_sz = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 1
  %1 = ptrtoint ptr %max_log_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_log_chunk_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %chunk_size)
  %cmp = icmp ult i32 %2, %chunk_size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %buddy_mem_list.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 4
  %dmn.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 2
  %add.ptr.i.i.i.i = getelementptr inbounds i8, ptr %in.i.i.i.i, i32 16
  %add.ptr81.i.i.i.i = getelementptr inbounds i8, ptr %in.i.i.i.i, i32 40
  %add.ptr91.i.i.i.i = getelementptr inbounds i8, ptr %in.i.i.i.i, i32 28
  %add.ptr104.i.i.i.i = getelementptr inbounds i8, ptr %in.i.i.i.i, i32 20
  %add.ptr120.i.i.i.i = getelementptr inbounds i8, ptr %in.i.i.i.i, i32 32
  br label %alloc_buddy_mem.i

alloc_buddy_mem.i:                                ; preds = %alloc_buddy_mem.i.backedge, %if.end
  %new_mem.0.off0.i = phi i1 [ false, %if.end ], [ true, %alloc_buddy_mem.i.backedge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %alloc_buddy_mem.i
  %.pn.in.i = phi ptr [ %buddy_mem_list.i, %alloc_buddy_mem.i ], [ %.pn.i, %if.end.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %buddy_mem_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %buddy_mem_pool.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %call.i = call i32 @mlx5dr_buddy_alloc_mem(ptr noundef %buddy_mem_pool.0.i, i32 noundef %chunk_size, ptr noundef nonnull %seg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end2, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  br i1 %new_mem.0.off0.i, label %do.end.i, label %if.end.i.for.cond.i_crit_edge, !prof !45

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 381, i32 noundef 9, ptr noundef null) #7
  %4 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmn.i.i.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 385, i32 noundef %15, i32 noundef %chunk_size) #10
  br label %out

for.end.i:                                        ; preds = %for.cond.i
  %16 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmn.i.i.i, align 8
  %mdev1.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev1.i.i.i, align 4
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 40, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.end.i.do.end43.i_crit_edge, label %if.end.i.i.i

for.end.i.do.end43.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i

if.end.i.i.i:                                     ; preds = %for.end.i
  %20 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmn.i.i.i, align 8
  %dmn3.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %dmn3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dmn3.i.i.i, align 4
  %23 = ptrtoint ptr %max_log_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_log_chunk_sz, align 4
  %25 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pool, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i.i.i.i = icmp eq i32 %26, 0
  %..i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 64, i32 8
  %mul.i.i.i.i = shl i32 %..i.i.i.i.i, %24
  %dm.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1
  %length.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i.i.i.i, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %mul.i.i.i.i, 0
  %28 = call i32 @llvm.ctlz.i32(i32 %mul.i.i.i.i, i1 true) #7, !range !46
  %sub.i.op.i.i.i.i = xor i32 %28, 31
  %sub.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i
  %not.cmp.i.i.i.i.i = xor i1 %cmp.i.i.i.i.i, true
  %dm_type.0.i.i.i = zext i1 %not.cmp.i.i.i.i.i to i32
  %log_align_base.0.i.i.i = select i1 %cmp.i.i.i.i.i, i32 %sub.i.i.i.i, i32 6
  %type.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dm_type.0.i.i.i, ptr %type.i.i.i, align 4
  %conv27.i.i.i = zext i32 %mul.i.i.i.i to i64
  %addr.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 2
  %call30.i.i.i = call i32 @mlx5_dm_sw_icm_alloc(ptr noundef %19, i32 noundef %dm_type.0.i.i.i, i64 noundef %conv27.i.i.i, i32 noundef %log_align_base.0.i.i.i, i16 noundef zeroext 0, ptr noundef %addr.i.i.i, ptr noundef %dm.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %call30.i.i.i, 0
  %30 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dmn.i.i.i, align 8
  br i1 %tobool31.not.i.i.i, label %if.end36.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mdev34.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %mdev34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev34.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pid.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 92, i32 noundef %41, i32 noundef %call30.i.i.i) #10
  br label %do.end43.sink.split.i

if.end36.i.i.i:                                   ; preds = %if.end.i.i.i
  %pdn.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %31, i32 0, i32 2
  %42 = ptrtoint ptr %pdn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdn.i.i.i, align 8
  %44 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length.i.i.i, align 4
  %conv40.i.i.i = zext i32 %45 to i64
  %46 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i.i, align 4
  %conv43.i.i.i = zext i32 %47 to i64
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in.i.i.i.i) #7
  %48 = call ptr @memset(ptr %in.i.i.i.i, i32 0, i32 272)
  %49 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 67124224, ptr %add.ptr.i.i.i.i, align 4
  %50 = ptrtoint ptr %add.ptr81.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv40.i.i.i, ptr %add.ptr81.i.i.i.i, align 8
  %and93.i.i.i.i = and i32 %43, 16777215
  %51 = ptrtoint ptr %add.ptr91.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and93.i.i.i.i, ptr %add.ptr91.i.i.i.i, align 4
  %52 = ptrtoint ptr %add.ptr104.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -256, ptr %add.ptr104.i.i.i.i, align 4
  %53 = ptrtoint ptr %add.ptr120.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv43.i.i.i, ptr %add.ptr120.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @mlx5_core_create_mkey(ptr noundef %19, ptr noundef nonnull %call.i.i.i.i.i, ptr noundef nonnull %in.i.i.i.i, i32 noundef 272) #7
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %if.end56.i.i.i, label %do.end49.i.i.i

do.end49.i.i.i:                                   ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dmn.i.i.i, align 8
  %mdev51.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %mdev51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mdev51.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i132.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i132.i.i.i to ptr
  %task54.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task54.i.i.i, align 8
  %pid55.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid55.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 103, i32 noundef %65, i32 noundef %call.i.i.i.i) #10
  br label %free_dm.i.i.i

if.end56.i.i.i:                                   ; preds = %if.end36.i.i.i
  %66 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i.i, align 4
  %conv59.i.i.i = zext i32 %67 to i64
  %icm_start_addr.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %icm_start_addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %conv59.i.i.i, ptr %icm_start_addr.i.i.i, align 8
  %notmask.i.i.i = shl nsw i32 -1, %log_align_base.0.i.i.i
  %sub61.i.i.i = xor i32 %notmask.i.i.i, -1
  %and131.i.i.i = and i32 %67, %sub61.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i.i.i)
  %tobool63.not.i.i.i = icmp eq i32 %and131.i.i.i, 0
  br i1 %tobool63.not.i.i.i, label %if.end.i.i, label %do.end67.i.i.i

do.end67.i.i.i:                                   ; preds = %if.end56.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dmn.i.i.i, align 8
  %mdev69.i.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %mdev69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mdev69.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %75 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i133.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i133.i.i.i to ptr
  %task72.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task72.i.i.i, align 8
  %pid73.i.i.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 68
  %79 = ptrtoint ptr %pid73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pid73.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10, i32 noundef 111, i32 noundef %80, i32 noundef %log_align_base.0.i.i.i) #10
  %81 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call.i.i.i.i.i, align 8
  %call76.i.i.i = call i32 @mlx5_core_destroy_mkey(ptr noundef %19, i32 noundef %82) #7
  br label %free_dm.i.i.i

free_dm.i.i.i:                                    ; preds = %do.end67.i.i.i, %do.end49.i.i.i
  %type.i.i.i446 = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %type.i.i.i446 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type.i.i.i446, align 4
  %85 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %length.i.i.i, align 4
  %conv81.i.i.i = zext i32 %86 to i64
  %87 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr.i.i.i, align 4
  %89 = ptrtoint ptr %dm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dm.i.i.i, align 4
  %call86.i.i.i = call i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %19, i32 noundef %84, i64 noundef %conv81.i.i.i, i16 noundef zeroext 0, i32 noundef %88, i32 noundef %90) #7
  br label %do.end43.sink.split.i

if.end.i.i:                                       ; preds = %if.end56.i.i.i
  %call.i.i31.i.i = call noalias ptr @kvmalloc_node(i32 noundef 72, i32 noundef 3520, i32 noundef -1) #11
  %tobool2.not.i.i = icmp eq ptr %call.i.i31.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.free_mr.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.free_mr.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mr.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %91 = ptrtoint ptr %max_log_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_log_chunk_sz, align 4
  %call5.i.i = call i32 @mlx5dr_buddy_init(ptr noundef nonnull %call.i.i31.i.i, i32 noundef %92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.err_free_buddy.i.i_crit_edge

if.end4.i.i.err_free_buddy.i.i_crit_edge:         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_buddy.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %icm_mr9.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %icm_mr9.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i.i.i.i, ptr %icm_mr9.i.i, align 4
  %pool10.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %pool10.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %pool, ptr %pool10.i.i, align 8
  %95 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pool, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i = icmp eq i32 %96, 0
  br i1 %cmp.i.i, label %if.then11.i.i, label %if.end8.i.i.if.end16.i.i_crit_edge

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  %97 = ptrtoint ptr %max_log_chunk_sz to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_log_chunk_sz, align 4
  %shl.i.i.i.i = shl nuw i32 1, %98
  %99 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i.i.i, i32 32) #7
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %kvcalloc.exit.thread.i.i.i, label %kvcalloc.exit.i.i.i, !prof !45

kvcalloc.exit.thread.i.i.i:                       ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ste_arr32.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 9
  %101 = ptrtoint ptr %ste_arr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %ste_arr32.i.i.i, align 8
  br label %err_cleanup_buddy.i.i

kvcalloc.exit.i.i.i:                              ; preds = %if.then11.i.i
  %102 = extractvalue { i32, i1 } %99, 0
  %call.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %102, i32 noundef 3520, i32 noundef -1) #11
  %ste_arr.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 9
  %103 = ptrtoint ptr %ste_arr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i.i.i.i.i, ptr %ste_arr.i.i.i, align 8
  %tobool.not.i33.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i33.i.i, label %kvcalloc.exit.i.i.i.err_cleanup_buddy.i.i_crit_edge, label %if.end.i34.i.i

kvcalloc.exit.i.i.i.err_cleanup_buddy.i.i_crit_edge: ; preds = %kvcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_cleanup_buddy.i.i

if.end.i34.i.i:                                   ; preds = %kvcalloc.exit.i.i.i
  %104 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i.i.i.i, i32 48) #7
  %105 = extractvalue { i32, i1 } %104, 1
  br i1 %105, label %kvcalloc.exit30.thread.i.i.i, label %kvcalloc.exit30.i.i.i, !prof !45

kvcalloc.exit30.thread.i.i.i:                     ; preds = %if.end.i34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_ste_arr35.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 11
  %106 = ptrtoint ptr %hw_ste_arr35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %hw_ste_arr35.i.i.i, align 8
  br label %free_ste_arr.i.i.i

kvcalloc.exit30.i.i.i:                            ; preds = %if.end.i34.i.i
  %107 = extractvalue { i32, i1 } %104, 0
  %call.i.i.i27.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %107, i32 noundef 3520, i32 noundef -1) #11
  %hw_ste_arr.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 11
  %108 = ptrtoint ptr %hw_ste_arr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i.i.i27.i.i.i, ptr %hw_ste_arr.i.i.i, align 8
  %tobool6.not.i.i.i = icmp eq ptr %call.i.i.i27.i.i.i, null
  br i1 %tobool6.not.i.i.i, label %kvcalloc.exit30.i.i.i.free_ste_arr.i.i.i_crit_edge, label %if.end8.i.i.i

kvcalloc.exit30.i.i.i.free_ste_arr.i.i.i_crit_edge: ; preds = %kvcalloc.exit30.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ste_arr.i.i.i

if.end8.i.i.i:                                    ; preds = %kvcalloc.exit30.i.i.i
  %mul.i.i.i = shl nuw nsw i32 %shl.i.i.i.i, 3
  %call.i.i35.i.i = call noalias ptr @kvmalloc_node(i32 noundef %mul.i.i.i, i32 noundef 3264, i32 noundef -1) #11
  %miss_list.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 10
  %109 = ptrtoint ptr %miss_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i35.i.i, ptr %miss_list.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %call.i.i35.i.i, null
  br i1 %tobool11.not.i.i.i, label %free_hw_ste_arr.i.i.i, label %if.end8.i.i.i.if.end16.i.i_crit_edge

if.end8.i.i.i.if.end16.i.i_crit_edge:             ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

free_hw_ste_arr.i.i.i:                            ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_ste_arr.i.i.i.le = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 11
  %110 = ptrtoint ptr %hw_ste_arr.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw_ste_arr.i.i.i.le, align 8
  call void @kvfree(ptr noundef %111) #7
  br label %free_ste_arr.i.i.i

free_ste_arr.i.i.i:                               ; preds = %free_hw_ste_arr.i.i.i, %kvcalloc.exit30.i.i.i.free_ste_arr.i.i.i_crit_edge, %kvcalloc.exit30.thread.i.i.i
  %ste_arr.i.i.i476 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 9
  %112 = ptrtoint ptr %ste_arr.i.i.i476 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ste_arr.i.i.i476, align 8
  call void @kvfree(ptr noundef %113) #7
  br label %err_cleanup_buddy.i.i

if.end16.i.i:                                     ; preds = %if.end8.i.i.i.if.end16.i.i_crit_edge, %if.end8.i.i.if.end16.i.i_crit_edge
  %list_node.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 3
  %114 = ptrtoint ptr %buddy_mem_list.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buddy_mem_list.i, align 4
  %call.i.i37.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_node.i.i, ptr noundef %buddy_mem_list.i, ptr noundef %115) #7
  br i1 %call.i.i37.i.i, label %if.end.i.i.i.i, label %if.end16.i.i.alloc_buddy_mem.i.backedge_crit_edge

if.end16.i.i.alloc_buddy_mem.i.backedge_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %alloc_buddy_mem.i.backedge

if.end.i.i.i.i:                                   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %list_node.i.i, ptr %prev1.i.i.i.i, align 4
  %117 = ptrtoint ptr %list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %115, ptr %list_node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %call.i.i31.i.i, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %buddy_mem_list.i, ptr %prev3.i.i.i.i, align 4
  %119 = ptrtoint ptr %buddy_mem_list.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %list_node.i.i, ptr %buddy_mem_list.i, align 4
  br label %alloc_buddy_mem.i.backedge

alloc_buddy_mem.i.backedge:                       ; preds = %if.end.i.i.i.i, %if.end16.i.i.alloc_buddy_mem.i.backedge_crit_edge
  br label %alloc_buddy_mem.i

err_cleanup_buddy.i.i:                            ; preds = %free_ste_arr.i.i.i, %kvcalloc.exit.i.i.i.err_cleanup_buddy.i.i_crit_edge, %kvcalloc.exit.thread.i.i.i
  call void @mlx5dr_buddy_cleanup(ptr noundef nonnull %call.i.i31.i.i) #7
  br label %err_free_buddy.i.i

err_free_buddy.i.i:                               ; preds = %err_cleanup_buddy.i.i, %if.end4.i.i.err_free_buddy.i.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i31.i.i) #7
  br label %free_mr.i.i

free_mr.i.i:                                      ; preds = %err_free_buddy.i.i, %if.end.i.i.free_mr.i.i_crit_edge
  %dmn3.i.i.i396 = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 2
  %type.i.i.i442 = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %dmn3.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dmn3.i.i.i396, align 4
  %mdev1.i39.i.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %mdev1.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mdev1.i39.i.i, align 4
  %124 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %call.i.i.i.i.i, align 8
  %call.i.i.i = call i32 @mlx5_core_destroy_mkey(ptr noundef %123, i32 noundef %125) #7
  %126 = ptrtoint ptr %type.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %type.i.i.i442, align 4
  %128 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length.i.i.i, align 4
  %conv.i.i.i = zext i32 %129 to i64
  %130 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr.i.i.i, align 4
  %132 = ptrtoint ptr %dm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dm.i.i.i, align 4
  %call3.i.i.i = call i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %123, i32 noundef %127, i64 noundef %conv.i.i.i, i16 noundef zeroext 0, i32 noundef %131, i32 noundef %133) #7
  br label %do.end43.sink.split.i

do.end43.sink.split.i:                            ; preds = %free_mr.i.i, %free_dm.i.i.i, %do.end.i.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i) #7
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end43.sink.split.i, %for.end.i.do.end43.i_crit_edge
  %134 = ptrtoint ptr %dmn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dmn.i.i.i, align 8
  %mdev45.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %mdev45.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mdev45.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 8
  %140 = call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i63.i = and i32 %140, -16384
  %141 = inttoptr i32 %and.i63.i to ptr
  %task48.i = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %task48.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %task48.i, align 8
  %pid49.i = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 68
  %144 = ptrtoint ptr %pid49.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pid49.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 395, i32 noundef %145, i32 noundef %chunk_size) #10
  br label %out

if.end2:                                          ; preds = %for.body.i
  %146 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %seg, align 4
  %call.i.i.i19 = call noalias ptr @kvmalloc_node(i32 noundef 56, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not.i20 = icmp eq ptr %call.i.i.i19, null
  br i1 %tobool.not.i20, label %out_err, label %if.end.i22

if.end.i22:                                       ; preds = %if.end2
  %148 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pool, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp.i.i21 = icmp eq i32 %149, 0
  %..i.i = select i1 %cmp.i.i21, i32 64, i32 8
  %mul.i = mul i32 %..i.i, %147
  %icm_mr.i = getelementptr i8, ptr %.pn.i, i32 8
  %150 = ptrtoint ptr %icm_mr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %icm_mr.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 8
  %rkey.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 2
  %154 = ptrtoint ptr %rkey.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %rkey.i, align 4
  %conv.i = sext i32 %mul.i to i64
  %mr_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 6
  %155 = ptrtoint ptr %mr_addr.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %conv.i, ptr %mr_addr.i, align 8
  %icm_start_addr.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %151, i32 0, i32 4
  %156 = ptrtoint ptr %icm_start_addr.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %icm_start_addr.i, align 8
  %conv3.i = trunc i64 %157 to i32
  %add.i = add i32 %mul.i, %conv3.i
  %conv4.i = zext i32 %add.i to i64
  %icm_addr.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 5
  %158 = ptrtoint ptr %icm_addr.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %conv4.i, ptr %icm_addr.i, align 8
  %shl.i.i = shl nuw i32 1, %chunk_size
  %num_of_entries.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 3
  %159 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %shl.i.i, ptr %num_of_entries.i, align 8
  %mul.i.i = shl i32 %..i.i, %chunk_size
  %byte_size.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 4
  %160 = ptrtoint ptr %byte_size.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %mul.i.i, ptr %byte_size.i, align 4
  %seg8.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 7
  %161 = ptrtoint ptr %seg8.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %147, ptr %seg8.i, align 8
  %162 = ptrtoint ptr %call.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %buddy_mem_pool.0.i, ptr %call.i.i.i19, align 8
  br i1 %cmp.i.i21, label %if.then11.i, label %if.end.i22.if.end12.i_crit_edge

if.end.i22.if.end12.i_crit_edge:                  ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.i = sdiv i32 %mul.i, 64
  %ste_arr.i.i = getelementptr i8, ptr %.pn.i, i32 44
  %163 = ptrtoint ptr %ste_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ste_arr.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5dr_ste, ptr %164, i32 %div.i.i
  %ste_arr1.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 8
  %165 = ptrtoint ptr %ste_arr1.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %arrayidx.i.i, ptr %ste_arr1.i.i, align 4
  %miss_list.i.i = getelementptr i8, ptr %.pn.i, i32 48
  %166 = ptrtoint ptr %miss_list.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %miss_list.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.list_head, ptr %167, i32 %div.i.i
  %miss_list3.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 10
  %168 = ptrtoint ptr %miss_list3.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %arrayidx2.i.i, ptr %miss_list3.i.i, align 4
  %hw_ste_arr.i.i = getelementptr i8, ptr %.pn.i, i32 52
  %169 = ptrtoint ptr %hw_ste_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_ste_arr.i.i, align 8
  %mul.i40.i = mul nsw i32 %div.i.i, 48
  %add.ptr.i.i = getelementptr i8, ptr %170, i32 %mul.i40.i
  %hw_ste_arr4.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 9
  %171 = ptrtoint ptr %hw_ste_arr4.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr.i.i, ptr %hw_ste_arr4.i.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i22.if.end12.i_crit_edge
  %172 = ptrtoint ptr %byte_size.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %byte_size.i, align 4
  %conv14.i = zext i32 %173 to i64
  %used_memory.i = getelementptr i8, ptr %.pn.i, i32 28
  %174 = ptrtoint ptr %used_memory.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %used_memory.i, align 8
  %add15.i = add i64 %175, %conv14.i
  store i64 %add15.i, ptr %used_memory.i, align 8
  %chunk_list.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 1
  %176 = ptrtoint ptr %chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %chunk_list.i, ptr %chunk_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %call.i.i.i19, i32 0, i32 1, i32 1
  %177 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %chunk_list.i, ptr %prev.i.i, align 4
  %used_list.i = getelementptr i8, ptr %.pn.i, i32 16
  %prev.i41.i = getelementptr i8, ptr %.pn.i, i32 20
  %178 = ptrtoint ptr %prev.i41.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prev.i41.i, align 4
  %call.i.i42.i = call zeroext i1 @__list_add_valid(ptr noundef %chunk_list.i, ptr noundef %179, ptr noundef %used_list.i) #7
  br i1 %call.i.i42.i, label %if.end.i.i.i23, label %if.end12.i.out_crit_edge

if.end12.i.out_crit_edge:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i.i.i23:                                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %prev.i41.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %chunk_list.i, ptr %prev.i41.i, align 4
  %181 = ptrtoint ptr %chunk_list.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %used_list.i, ptr %chunk_list.i, align 4
  %182 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev.i.i, align 4
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %chunk_list.i, ptr %179, align 4
  br label %out

out_err:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %seg, align 4
  call void @mlx5dr_buddy_free_mem(ptr noundef %buddy_mem_pool.0.i, i32 noundef %185, i32 noundef %chunk_size) #7
  br label %out

out:                                              ; preds = %out_err, %if.end.i.i.i23, %if.end12.i.out_crit_edge, %do.end43.i, %do.end.i
  %chunk.0 = phi ptr [ null, %out_err ], [ null, %do.end.i ], [ null, %do.end43.i ], [ %call.i.i.i19, %if.end12.i.out_crit_edge ], [ %call.i.i.i19, %if.end.i.i.i23 ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %chunk.0, %out ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seg) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_buddy_free_mem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_icm_free_chunk(ptr noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk, align 8
  %pool1 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pool1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool1, align 8
  %mutex = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %chunk_list = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %chunk, i32 0, i32 1
  %hot_list = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chunk_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %chunk, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %chunk_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chunk_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %chunk_list, ptr noundef %11, ptr noundef %hot_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chunk_list, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %chunk_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hot_list, ptr %chunk_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %chunk, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %chunk_list, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %byte_size = getelementptr inbounds %struct.mlx5dr_icm_chunk, ptr %chunk, i32 0, i32 4
  %16 = ptrtoint ptr %byte_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_size, align 4
  %conv = zext i32 %17 to i64
  %hot_memory_size = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %hot_memory_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %hot_memory_size, align 8
  %add = add i64 %19, %conv
  store i64 %add, ptr %hot_memory_size, align 8
  %max_log_chunk_sz.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %max_log_chunk_sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_log_chunk_sz.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i = icmp eq i32 %23, 0
  %..i.i.i = select i1 %cmp.i.i.i, i32 64, i32 8
  %mul.i.i = shl i32 %..i.i.i, %21
  %div.i = sdiv i32 %mul.i.i, 2
  %conv.i = sext i32 %div.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv.i)
  %cmp.i = icmp ugt i64 %add, %conv.i
  br i1 %cmp.i, label %if.then, label %list_move_tail.exit.if.end_crit_edge

list_move_tail.exit.if.end_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %list_move_tail.exit
  %dmn.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %dmn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmn.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev.i, align 4
  %call.i = tail call i32 @mlx5dr_cmd_sync_steering(ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dmn.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dmn.i, align 8
  %mdev2.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %mdev2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev2.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = tail call i32 @llvm.read_register.i32(metadata !34) #7
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 68
  %38 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 343, i32 noundef %39, i32 noundef %call.i) #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %buddy_mem_list.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %buddy_mem_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buddy_mem_list.i, align 8
  %cmp.not14.i = icmp eq ptr %41, %buddy_mem_list.i
  br i1 %cmp.not14.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %if.end44.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in15.i = phi ptr [ %.pn19.i, %if.end44.i.for.body.i_crit_edge ], [ %41, %if.end.i.for.body.i_crit_edge ]
  %buddy.017.i = getelementptr i8, ptr %.pn.in15.i, i32 -12
  %42 = ptrtoint ptr %.pn.in15.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn19.i = load ptr, ptr %.pn.in15.i, align 4
  %hot_list.i = getelementptr i8, ptr %.pn.in15.i, i32 36
  %43 = ptrtoint ptr %hot_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hot_list.i, align 8
  %cmp21.not7.i = icmp eq ptr %44, %hot_list.i
  br i1 %cmp21.not7.i, label %for.body.i.for.end.i_crit_edge, label %for.body23.lr.ph.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body23.lr.ph.i:                               ; preds = %for.body.i
  %used_memory.i.i = getelementptr i8, ptr %.pn.in15.i, i32 28
  br label %for.body23.i

for.body23.i:                                     ; preds = %dr_icm_chunk_destroy.exit.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %.pn1.in8.i = phi ptr [ %44, %for.body23.lr.ph.i ], [ %.pn111.i, %dr_icm_chunk_destroy.exit.i.for.body23.i_crit_edge ]
  %chunk.010.i = getelementptr i8, ptr %.pn1.in8.i, i32 -4
  %45 = ptrtoint ptr %.pn1.in8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn111.i = load ptr, ptr %.pn1.in8.i, align 4
  %seg.i = getelementptr i8, ptr %.pn1.in8.i, i32 36
  %46 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seg.i, align 8
  %num_of_entries.i = getelementptr i8, ptr %.pn1.in8.i, i32 12
  %48 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_of_entries.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i.i = icmp eq i32 %49, 0
  %50 = tail call i32 @llvm.ctlz.i32(i32 %49, i1 true) #7, !range !46
  %sub.i.op.i.i = xor i32 %50, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  tail call void @mlx5dr_buddy_free_mem(ptr noundef %buddy.017.i, i32 noundef %47, i32 noundef %sub.i.i) #7
  %byte_size.i = getelementptr i8, ptr %.pn1.in8.i, i32 16
  %51 = ptrtoint ptr %byte_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %byte_size.i, align 4
  %conv33.i = zext i32 %52 to i64
  %53 = ptrtoint ptr %hot_memory_size to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %hot_memory_size, align 8
  %sub34.i = sub i64 %54, %conv33.i
  store i64 %sub34.i, ptr %hot_memory_size, align 8
  %55 = ptrtoint ptr %chunk.010.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chunk.010.i, align 8
  %pool.i.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %pool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pool.i.i.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %61 = load i32, ptr %byte_size.i, align 4
  %conv.i.i = zext i32 %61 to i64
  %62 = ptrtoint ptr %used_memory.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %used_memory.i.i, align 8
  %sub.i4.i = sub i64 %63, %conv.i.i
  store i64 %sub.i4.i, ptr %used_memory.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn1.in8.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body23.i.list_del.exit.i.i_crit_edge

for.body23.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr i8, ptr %.pn1.in8.i, i32 4
  %64 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i.i, align 4
  %66 = ptrtoint ptr %.pn1.in8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn1.in8.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body23.i.list_del.exit.i.i_crit_edge
  %70 = ptrtoint ptr %.pn1.in8.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn1.in8.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %.pn1.in8.i, i32 4
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %list_del.exit.i.i.dr_icm_chunk_destroy.exit.i_crit_edge

list_del.exit.i.i.dr_icm_chunk_destroy.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dr_icm_chunk_destroy.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_ste_arr.i.i.i = getelementptr i8, ptr %.pn1.in8.i, i32 44
  %72 = ptrtoint ptr %hw_ste_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_ste_arr.i.i.i, align 8
  %74 = ptrtoint ptr %num_of_entries.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_of_entries.i, align 8
  %mul.i.i.i = mul i32 %75, 48
  %76 = call ptr @memset(ptr %73, i32 0, i32 %mul.i.i.i)
  %ste_arr.i.i.i = getelementptr i8, ptr %.pn1.in8.i, i32 40
  %77 = ptrtoint ptr %ste_arr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ste_arr.i.i.i, align 4
  %79 = load i32, ptr %num_of_entries.i, align 8
  %mul2.i.i.i = shl i32 %79, 5
  %80 = call ptr @memset(ptr %78, i32 0, i32 %mul2.i.i.i)
  br label %dr_icm_chunk_destroy.exit.i

dr_icm_chunk_destroy.exit.i:                      ; preds = %if.then.i.i, %list_del.exit.i.i.dr_icm_chunk_destroy.exit.i_crit_edge
  tail call void @kvfree(ptr noundef %chunk.010.i) #7
  %cmp21.not.i = icmp eq ptr %.pn111.i, %hot_list.i
  br i1 %cmp21.not.i, label %dr_icm_chunk_destroy.exit.i.for.end.i_crit_edge, label %dr_icm_chunk_destroy.exit.i.for.body23.i_crit_edge

dr_icm_chunk_destroy.exit.i.for.body23.i_crit_edge: ; preds = %dr_icm_chunk_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23.i

dr_icm_chunk_destroy.exit.i.for.end.i_crit_edge:  ; preds = %dr_icm_chunk_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %dr_icm_chunk_destroy.exit.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %used_memory.i = getelementptr i8, ptr %.pn.in15.i, i32 28
  %81 = ptrtoint ptr %used_memory.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %used_memory.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool40.not.i = icmp eq i64 %82, 0
  br i1 %tobool40.not.i, label %land.lhs.true.i, label %for.end.i.if.end44.i_crit_edge

for.end.i.if.end44.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp41.i = icmp eq i32 %84, 0
  br i1 %cmp41.i, label %if.then43.i, label %land.lhs.true.i.if.end44.i_crit_edge

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dr_icm_buddy_destroy(ptr noundef %buddy.017.i) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then43.i, %land.lhs.true.i.if.end44.i_crit_edge, %for.end.i.if.end44.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn19.i, %buddy_mem_list.i
  br i1 %cmp.not.i, label %if.end44.i.if.end_crit_edge, label %if.end44.i.for.body.i_crit_edge

if.end44.i.for.body.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end44.i.if.end_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end44.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %do.end.i, %list_move_tail.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_icm_pool_create(ptr noundef %dmn, i32 noundef %icm_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %icm_type)
  %cmp = icmp eq i32 %icm_type, 0
  %max_log_sw_icm_sz = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 3
  %max_log_action_icm_sz = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 4
  %max_log_chunk_sz.0.in = select i1 %cmp, ptr %max_log_sw_icm_sz, ptr %max_log_action_icm_sz
  %0 = ptrtoint ptr %max_log_chunk_sz.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %max_log_chunk_sz.0 = load i32, ptr %max_log_chunk_sz.0.in, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 120, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dmn4 = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %dmn4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dmn, ptr %dmn4, align 8
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %icm_type, ptr %call.i.i, align 8
  %max_log_chunk_sz6 = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %max_log_chunk_sz6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %max_log_chunk_sz.0, ptr %max_log_chunk_sz6, align 4
  %buddy_mem_list = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %call.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %buddy_mem_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %buddy_mem_list, ptr %buddy_mem_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %call.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buddy_mem_list, ptr %prev.i, align 4
  %mutex = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %call.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5dr_icm_pool_create.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_icm_pool_destroy(ptr noundef %pool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %buddy_mem_list = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 4
  %0 = ptrtoint ptr %buddy_mem_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buddy_mem_list, align 8
  %cmp.not19 = icmp eq ptr %1, %buddy_mem_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %buddy.0 = getelementptr i8, ptr %.pn.in20, i32 -12
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  tail call fastcc void @dr_icm_buddy_destroy(ptr noundef %buddy.0)
  %cmp.not = icmp eq ptr %.pn, %buddy_mem_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mutex = getelementptr inbounds %struct.mlx5dr_icm_pool, ptr %pool, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %mutex) #7
  tail call void @kvfree(ptr noundef %pool) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dr_icm_buddy_destroy(ptr noundef %buddy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hot_list = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 8
  %0 = ptrtoint ptr %hot_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hot_list, align 8
  %cmp.not78 = icmp eq ptr %1, %hot_list
  br i1 %cmp.not78, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %used_memory.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %dr_icm_chunk_destroy.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in79 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %dr_icm_chunk_destroy.exit.for.body_crit_edge ]
  %chunk.0 = getelementptr i8, ptr %.pn.in79, i32 -4
  %2 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in79, align 4
  %3 = ptrtoint ptr %chunk.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chunk.0, align 8
  %pool.i.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pool.i.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %byte_size.i = getelementptr i8, ptr %.pn.in79, i32 16
  %9 = ptrtoint ptr %byte_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %byte_size.i, align 4
  %conv.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %used_memory.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %used_memory.i, align 8
  %sub.i = sub i64 %12, %conv.i
  store i64 %sub.i, ptr %used_memory.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in79) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in79, i32 4
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in79, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in79 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in79, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in79, i32 4
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %list_del.exit.i.dr_icm_chunk_destroy.exit_crit_edge

list_del.exit.i.dr_icm_chunk_destroy.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dr_icm_chunk_destroy.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %hw_ste_arr.i.i = getelementptr i8, ptr %.pn.in79, i32 44
  %21 = ptrtoint ptr %hw_ste_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ste_arr.i.i, align 8
  %num_of_entries.i.i = getelementptr i8, ptr %.pn.in79, i32 12
  %23 = ptrtoint ptr %num_of_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_of_entries.i.i, align 8
  %mul.i.i = mul i32 %24, 48
  %25 = call ptr @memset(ptr %22, i32 0, i32 %mul.i.i)
  %ste_arr.i.i = getelementptr i8, ptr %.pn.in79, i32 40
  %26 = ptrtoint ptr %ste_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ste_arr.i.i, align 4
  %28 = load i32, ptr %num_of_entries.i.i, align 8
  %mul2.i.i = shl i32 %28, 5
  %29 = call ptr @memset(ptr %27, i32 0, i32 %mul2.i.i)
  br label %dr_icm_chunk_destroy.exit

dr_icm_chunk_destroy.exit:                        ; preds = %if.then.i, %list_del.exit.i.dr_icm_chunk_destroy.exit_crit_edge
  tail call void @kvfree(ptr noundef %chunk.0) #7
  %cmp.not = icmp eq ptr %.pn, %hot_list
  br i1 %cmp.not, label %dr_icm_chunk_destroy.exit.for.end_crit_edge, label %dr_icm_chunk_destroy.exit.for.body_crit_edge

dr_icm_chunk_destroy.exit.for.body_crit_edge:     ; preds = %dr_icm_chunk_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

dr_icm_chunk_destroy.exit.for.end_crit_edge:      ; preds = %dr_icm_chunk_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %dr_icm_chunk_destroy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %used_list = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 6
  %30 = ptrtoint ptr %used_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %used_list, align 4
  %cmp25.not81 = icmp eq ptr %31, %used_list
  br i1 %cmp25.not81, label %for.end.for.end34_crit_edge, label %for.body27.lr.ph

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body27.lr.ph:                                 ; preds = %for.end
  %used_memory.i60 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 7
  br label %for.body27

for.body27:                                       ; preds = %dr_icm_chunk_destroy.exit76.for.body27_crit_edge, %for.body27.lr.ph
  %.pn54.in82 = phi ptr [ %31, %for.body27.lr.ph ], [ %.pn54, %dr_icm_chunk_destroy.exit76.for.body27_crit_edge ]
  %chunk.1 = getelementptr i8, ptr %.pn54.in82, i32 -4
  %32 = ptrtoint ptr %.pn54.in82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn54 = load ptr, ptr %.pn54.in82, align 4
  %33 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk.1, align 8
  %pool.i.i57 = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %pool.i.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pool.i.i57, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %byte_size.i58 = getelementptr i8, ptr %.pn54.in82, i32 16
  %39 = ptrtoint ptr %byte_size.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_size.i58, align 4
  %conv.i59 = zext i32 %40 to i64
  %41 = ptrtoint ptr %used_memory.i60 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %used_memory.i60, align 8
  %sub.i61 = sub i64 %42, %conv.i59
  store i64 %sub.i61, ptr %used_memory.i60, align 8
  %call.i.i.i63 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn54.in82) #7
  br i1 %call.i.i.i63, label %if.end.i.i.i66, label %for.body27.list_del.exit.i69_crit_edge

for.body27.list_del.exit.i69_crit_edge:           ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i69

if.end.i.i.i66:                                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i64 = getelementptr i8, ptr %.pn54.in82, i32 4
  %43 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i64, align 4
  %45 = ptrtoint ptr %.pn54.in82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %.pn54.in82, align 4
  %prev1.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i65, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit.i69

list_del.exit.i69:                                ; preds = %if.end.i.i.i66, %for.body27.list_del.exit.i69_crit_edge
  %49 = ptrtoint ptr %.pn54.in82 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn54.in82, align 4
  %prev.i.i67 = getelementptr i8, ptr %.pn54.in82, i32 4
  %50 = ptrtoint ptr %prev.i.i67 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i68 = icmp eq i32 %38, 0
  br i1 %cmp.i68, label %if.then.i75, label %list_del.exit.i69.dr_icm_chunk_destroy.exit76_crit_edge

list_del.exit.i69.dr_icm_chunk_destroy.exit76_crit_edge: ; preds = %list_del.exit.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dr_icm_chunk_destroy.exit76

if.then.i75:                                      ; preds = %list_del.exit.i69
  call void @__sanitizer_cov_trace_pc() #9
  %hw_ste_arr.i.i70 = getelementptr i8, ptr %.pn54.in82, i32 44
  %51 = ptrtoint ptr %hw_ste_arr.i.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_ste_arr.i.i70, align 8
  %num_of_entries.i.i71 = getelementptr i8, ptr %.pn54.in82, i32 12
  %53 = ptrtoint ptr %num_of_entries.i.i71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_of_entries.i.i71, align 8
  %mul.i.i72 = mul i32 %54, 48
  %55 = call ptr @memset(ptr %52, i32 0, i32 %mul.i.i72)
  %ste_arr.i.i73 = getelementptr i8, ptr %.pn54.in82, i32 40
  %56 = ptrtoint ptr %ste_arr.i.i73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ste_arr.i.i73, align 4
  %58 = load i32, ptr %num_of_entries.i.i71, align 8
  %mul2.i.i74 = shl i32 %58, 5
  %59 = call ptr @memset(ptr %57, i32 0, i32 %mul2.i.i74)
  br label %dr_icm_chunk_destroy.exit76

dr_icm_chunk_destroy.exit76:                      ; preds = %if.then.i75, %list_del.exit.i69.dr_icm_chunk_destroy.exit76_crit_edge
  tail call void @kvfree(ptr noundef %chunk.1) #7
  %cmp25.not = icmp eq ptr %.pn54, %used_list
  br i1 %cmp25.not, label %dr_icm_chunk_destroy.exit76.for.end34_crit_edge, label %dr_icm_chunk_destroy.exit76.for.body27_crit_edge

dr_icm_chunk_destroy.exit76.for.body27_crit_edge: ; preds = %dr_icm_chunk_destroy.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

dr_icm_chunk_destroy.exit76.for.end34_crit_edge:  ; preds = %dr_icm_chunk_destroy.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.end34:                                        ; preds = %dr_icm_chunk_destroy.exit76.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %icm_mr = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 4
  %60 = ptrtoint ptr %icm_mr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %icm_mr, align 4
  %dmn.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dmn.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmn.i, align 4
  %mdev1.i = getelementptr inbounds %struct.mlx5dr_domain, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdev1.i, align 4
  %dm2.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %61, align 8
  %call.i = tail call i32 @mlx5_core_destroy_mkey(ptr noundef %65, i32 noundef %67) #7
  %type.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %61, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type.i, align 4
  %length.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %61, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %length.i, align 4
  %conv.i77 = zext i32 %71 to i64
  %addr.i = getelementptr inbounds %struct.mlx5dr_icm_mr, ptr %61, i32 0, i32 1, i32 2
  %72 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr.i, align 4
  %74 = ptrtoint ptr %dm2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dm2.i, align 4
  %call3.i = tail call i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %65, i32 noundef %69, i64 noundef %conv.i77, i16 noundef zeroext 0, i32 noundef %73, i32 noundef %75) #7
  tail call void @kvfree(ptr noundef %61) #7
  tail call void @mlx5dr_buddy_cleanup(ptr noundef %buddy) #7
  %pool = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 5
  %76 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pool, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp35 = icmp eq i32 %79, 0
  br i1 %cmp35, label %if.then, label %for.end34.if.end_crit_edge

for.end34.if.end_crit_edge:                       ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  %ste_arr.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 9
  %80 = ptrtoint ptr %ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ste_arr.i, align 8
  tail call void @kvfree(ptr noundef %81) #7
  %hw_ste_arr.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 11
  %82 = ptrtoint ptr %hw_ste_arr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_ste_arr.i, align 8
  tail call void @kvfree(ptr noundef %83) #7
  %miss_list.i = getelementptr inbounds %struct.mlx5dr_icm_buddy_mem, ptr %buddy, i32 0, i32 10
  %84 = ptrtoint ptr %miss_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %miss_list.i, align 4
  tail call void @kvfree(ptr noundef %85) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end34.if.end_crit_edge
  tail call void @kvfree(ptr noundef %buddy) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_buddy_alloc_mem(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_buddy_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5dr_buddy_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_dm_sw_icm_alloc(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_destroy_mkey(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_dm_sw_icm_dealloc(ptr noundef, i32 noundef, i64 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_create_mkey(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_sync_steering(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @mlx5dr_icm_pool_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 481, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 381, i32 7}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 383, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dr_icm_handle_buddies_get_mem._entry, !6, !"_entry", i1 false, i1 false}
!11 = !{ptr @dr_icm_handle_buddies_get_mem._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 393, i32 3}
!14 = !{ptr @dr_icm_handle_buddies_get_mem._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dr_icm_handle_buddies_get_mem._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 92, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dr_icm_pool_mr_create._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @dr_icm_pool_mr_create._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 103, i32 3}
!23 = !{ptr @dr_icm_pool_mr_create._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @dr_icm_pool_mr_create._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 110, i32 3}
!27 = !{ptr @dr_icm_pool_mr_create._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dr_icm_pool_mr_create._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_icm_pool.c", i32 343, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dr_icm_pool_sync_all_buddy_pools._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dr_icm_pool_sync_all_buddy_pools._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i32 0, i32 33}
