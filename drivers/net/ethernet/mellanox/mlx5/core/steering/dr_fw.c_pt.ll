; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5dr_cmd_create_flow_table_attr = type { i32, i64, i64, i8, i8, i8, i8, i8 }
%struct.mlx5dr_domain = type { ptr, ptr, i32, ptr, i32, %struct.refcount_struct, ptr, ptr, ptr, %struct.mlx5dr_domain_info, %struct.xarray, ptr, %struct.list_head, %struct.mlx5dr_dbg_dump_info }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mlx5dr_fw_recalc_cs_ft = type { i64, i32, i32, i32 }
%struct.mlx5dr_cmd_fte_info = type { i32, i32, %struct.mlx5_flow_context, ptr, %struct.mlx5_flow_act, ptr, i8 }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.179, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.179 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5dr_cmd_ft_info = type { i32, i16, i32 }

@mlx5dr_fw_create_recalc_cs_ft._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed creating TTL W/A FW flow table %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5dr_fw_create_recalc_cs_ft\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_recalc_cs_ft._entry_ptr = internal global ptr @mlx5dr_fw_create_recalc_cs_ft._entry, section ".printk_index", align 4
@mlx5dr_fw_create_recalc_cs_ft._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): Failed creating TTL W/A FW flow group %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_recalc_cs_ft._entry_ptr.7 = internal global ptr @mlx5dr_fw_create_recalc_cs_ft._entry.5, section ".printk_index", align 4
@mlx5dr_fw_create_recalc_cs_ft._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:(pid %d): Failed modify header TTL %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_recalc_cs_ft._entry_ptr.10 = internal global ptr @mlx5dr_fw_create_recalc_cs_ft._entry.8, section ".printk_index", align 4
@mlx5dr_fw_create_recalc_cs_ft._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): Failed setting TTL W/A flow table entry %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_recalc_cs_ft._entry_ptr.13 = internal global ptr @mlx5dr_fw_create_recalc_cs_ft._entry.11, section ".printk_index", align 4
@mlx5dr_fw_create_md_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed creating multi dest FW flow table %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5dr_fw_create_md_tbl\00", [40 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_md_tbl._entry_ptr = internal global ptr @mlx5dr_fw_create_md_tbl._entry, section ".printk_index", align 4
@mlx5dr_fw_create_md_tbl._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed creating multi dest FW flow group %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_md_tbl._entry_ptr.18 = internal global ptr @mlx5dr_fw_create_md_tbl._entry.16, section ".printk_index", align 4
@mlx5dr_fw_create_md_tbl._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Failed setting fte into table %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx5dr_fw_create_md_tbl._entry_ptr.21 = internal global ptr @mlx5dr_fw_create_md_tbl._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 29, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 37, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 50, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 59, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 123, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 131, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 145, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mlx5dr_fw_create_md_tbl._entry, ptr @mlx5dr_fw_create_md_tbl._entry.16, ptr @mlx5dr_fw_create_md_tbl._entry.19, ptr @mlx5dr_fw_create_md_tbl._entry_ptr, ptr @mlx5dr_fw_create_md_tbl._entry_ptr.18, ptr @mlx5dr_fw_create_md_tbl._entry_ptr.21, ptr @mlx5dr_fw_create_recalc_cs_ft._entry, ptr @mlx5dr_fw_create_recalc_cs_ft._entry.11, ptr @mlx5dr_fw_create_recalc_cs_ft._entry.5, ptr @mlx5dr_fw_create_recalc_cs_ft._entry.8, ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr, ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.10, ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.13, ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_recalc_cs_ft._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_recalc_cs_ft._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_recalc_cs_ft._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_recalc_cs_ft._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_md_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_md_tbl._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5dr_fw_create_md_tbl._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5dr_fw_create_recalc_cs_ft(ptr nocapture noundef readonly %dmn, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr = alloca %struct.mlx5dr_cmd_create_flow_table_attr, align 8
  %table_id = alloca i32, align 4
  %group_id = alloca i32, align 4
  %modify_hdr_id = alloca i32, align 4
  %rx_icm_addr = alloca i64, align 8
  %modify_ttl_action = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ft_attr) #6
  %0 = call ptr @memset(ptr %ft_attr, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %table_id) #6
  %1 = ptrtoint ptr %table_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %table_id, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group_id) #6
  %2 = ptrtoint ptr %group_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %group_id, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modify_hdr_id) #6
  %3 = ptrtoint ptr %modify_hdr_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %modify_hdr_id, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_icm_addr) #6
  %4 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %rx_icm_addr, align 8, !annotation !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %modify_ttl_action) #6
  %5 = ptrtoint ptr %modify_ttl_action to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %modify_ttl_action, align 8, !annotation !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %ft_attr, align 8
  %max_ft_level = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 21
  %8 = ptrtoint ptr %max_ft_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_ft_level, align 8
  %sub = add i8 %9, -1
  %level = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr, i32 0, i32 3
  %10 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sub, ptr %level, align 8
  %term_tbl = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr, i32 0, i32 5
  %11 = ptrtoint ptr %term_tbl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %term_tbl, align 2
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %12 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev, align 4
  %call2 = call i32 @mlx5dr_cmd_create_flow_table(ptr noundef %13, ptr noundef nonnull %ft_attr, ptr noundef nonnull %rx_icm_addr, ptr noundef nonnull %table_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 4
  br i1 %tobool3.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %18 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 29, i32 noundef %23, i32 noundef %call2) #10
  br label %free_ttl_tbl

if.end7:                                          ; preds = %if.end
  %24 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %table_id, align 4
  %call9 = call i32 @mlx5dr_cmd_create_empty_flow_group(ptr noundef %15, i32 noundef 4, i32 noundef %25, ptr noundef nonnull %group_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end20, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i109 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i109 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid19, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 37, i32 noundef %35, i32 noundef %call9) #10
  br label %destroy_flow_table

if.end20:                                         ; preds = %if.end7
  %36 = ptrtoint ptr %modify_ttl_action to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 2308657758980800512, ptr %modify_ttl_action, align 8
  %37 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdev, align 4
  %call43 = call i32 @mlx5dr_cmd_alloc_modify_header(ptr noundef %38, i32 noundef 4, i8 noundef zeroext 1, ptr noundef nonnull %modify_ttl_action, ptr noundef nonnull %modify_hdr_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %39 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev, align 4
  br i1 %tobool44.not, label %if.end54, label %do.end48

do.end48:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %43 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i110 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i110 to ptr
  %task52 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task52, align 8
  %pid53 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid53, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 50, i32 noundef %48, i32 noundef %call43) #10
  br label %destroy_flow_group

if.end54:                                         ; preds = %if.end20
  %49 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %table_id, align 4
  %51 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %group_id, align 4
  %53 = ptrtoint ptr %modify_hdr_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %modify_hdr_id, align 4
  %call56 = call i32 @mlx5dr_cmd_set_fte_modify_and_vport(ptr noundef %40, i32 noundef 4, i32 noundef %50, i32 noundef %52, i32 noundef %54, i16 noundef zeroext %vport_num) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end67, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i111 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i111 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task65, align 8
  %pid66 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 68
  %63 = ptrtoint ptr %pid66 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pid66, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef %64, i32 noundef %call56) #10
  %65 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mdev, align 4
  %67 = ptrtoint ptr %modify_hdr_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %modify_hdr_id, align 4
  %call73 = call i32 @mlx5dr_cmd_dealloc_modify_header(ptr noundef %66, i32 noundef %68) #6
  br label %destroy_flow_group

if.end67:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %modify_hdr_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %modify_hdr_id, align 4
  %modify_hdr_id68 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %call7.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %modify_hdr_id68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %modify_hdr_id68, align 8
  %72 = ptrtoint ptr %rx_icm_addr to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_icm_addr, align 8
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %call7.i.i, align 8
  %75 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %table_id, align 4
  %table_id70 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %call7.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %table_id70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %table_id70, align 8
  %78 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %group_id, align 4
  %group_id71 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %group_id71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %group_id71, align 4
  br label %cleanup

destroy_flow_group:                               ; preds = %do.end61, %do.end48
  %81 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mdev, align 4
  %83 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %table_id, align 4
  %85 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %group_id, align 4
  %call75 = call i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef %82, i32 noundef 4, i32 noundef %84, i32 noundef %86) #6
  br label %destroy_flow_table

destroy_flow_table:                               ; preds = %destroy_flow_group, %do.end14
  %87 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mdev, align 4
  %89 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %table_id, align 4
  %call77 = call i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %88, i32 noundef %90, i32 noundef 4) #6
  br label %free_ttl_tbl

free_ttl_tbl:                                     ; preds = %destroy_flow_table, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_ttl_tbl, %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_ttl_tbl ], [ %call7.i.i, %if.end67 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %modify_ttl_action) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_icm_addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modify_hdr_id) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group_id) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %table_id) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ft_attr) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_create_flow_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_create_empty_flow_group(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_alloc_modify_header(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_set_fte_modify_and_vport(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_dealloc_modify_header(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_fw_destroy_recalc_cs_ft(ptr nocapture noundef readonly %dmn, ptr noundef %recalc_cs_ft) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %table_id = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %recalc_cs_ft, i32 0, i32 1
  %2 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_id, align 8
  %call = tail call i32 @mlx5dr_cmd_del_flow_table_entry(ptr noundef %1, i32 noundef 4, i32 noundef %3) #6
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %modify_hdr_id = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %recalc_cs_ft, i32 0, i32 3
  %6 = ptrtoint ptr %modify_hdr_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modify_hdr_id, align 8
  %call2 = tail call i32 @mlx5dr_cmd_dealloc_modify_header(ptr noundef %5, i32 noundef %7) #6
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 4
  %10 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %table_id, align 8
  %group_id = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, ptr %recalc_cs_ft, i32 0, i32 2
  %12 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %group_id, align 4
  %call5 = tail call i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef %9, i32 noundef 4, i32 noundef %11, i32 noundef %13) #6
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 4
  %16 = ptrtoint ptr %table_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %table_id, align 8
  %call8 = tail call i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %15, i32 noundef %17, i32 noundef 4) #6
  tail call void @kfree(ptr noundef %recalc_cs_ft) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_del_flow_table_entry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5dr_fw_create_md_tbl(ptr nocapture noundef readonly %dmn, ptr noundef %dest, i32 noundef %num_dest, i1 noundef zeroext %reformat_req, ptr noundef %tbl_id, ptr noundef %group_id, i1 noundef zeroext %ignore_flow_level) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr = alloca %struct.mlx5dr_cmd_create_flow_table_attr, align 8
  %fte_info = alloca %struct.mlx5dr_cmd_fte_info, align 4
  %val = alloca [112 x i32], align 4
  %ft_info = alloca %struct.mlx5dr_cmd_ft_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %reformat_req to i8
  %frombool1 = zext i1 %ignore_flow_level to i8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ft_attr) #6
  %0 = call ptr @memset(ptr %ft_attr, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %fte_info) #6
  %1 = call ptr @memset(ptr %fte_info, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %val) #6
  %2 = call ptr @memset(ptr %val, i32 0, i32 448)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ft_info) #6
  %3 = call ptr @memset(ptr %ft_info, i32 0, i32 12)
  %4 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %ft_attr, align 8
  %max_ft_level = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 9, i32 7, i32 21
  %5 = ptrtoint ptr %max_ft_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_ft_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %6)
  %cmp = icmp ult i8 %6, 65
  %sub = add i8 %6, -2
  %cond = select i1 %cmp, i8 %sub, i8 63
  %level = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr, i32 0, i32 3
  %7 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cond, ptr %level, align 8
  %reformat_en = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr, i32 0, i32 7
  %8 = ptrtoint ptr %reformat_en to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %reformat_en, align 4
  %decap_en = getelementptr inbounds %struct.mlx5dr_cmd_create_flow_table_attr, ptr %ft_attr, i32 0, i32 6
  %9 = ptrtoint ptr %decap_en to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %decap_en, align 1
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 4
  %call = call i32 @mlx5dr_cmd_create_flow_table(ptr noundef %11, ptr noundef nonnull %ft_attr, ptr noundef null, ptr noundef %tbl_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  %12 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev, align 4
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = call i32 @llvm.read_register.i32(metadata !33) #6
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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 123, i32 noundef %21, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tbl_id, align 4
  %call11 = call i32 @mlx5dr_cmd_create_empty_flow_group(ptr noundef %13, i32 noundef 4, i32 noundef %23, ptr noundef %group_id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end22, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %28 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i73 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i73 to ptr
  %task20 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task20, align 8
  %pid21 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 131, i32 noundef %33, i32 noundef %call11) #10
  br label %free_flow_table

if.end22:                                         ; preds = %if.end
  %34 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tbl_id, align 4
  %36 = ptrtoint ptr %ft_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ft_info, align 4
  %type = getelementptr inbounds %struct.mlx5dr_cmd_ft_info, ptr %ft_info, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %type, align 4
  %action = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte_info, i32 0, i32 4
  %38 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %action, align 4
  %39 = ptrtoint ptr %fte_info to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %num_dest, ptr %fte_info, align 4
  %val24 = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte_info, i32 0, i32 3
  %40 = ptrtoint ptr %val24 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %val, ptr %val24, align 4
  %dest_arr = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte_info, i32 0, i32 5
  %41 = ptrtoint ptr %dest_arr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dest, ptr %dest_arr, align 4
  %ignore_flow_level26 = getelementptr inbounds %struct.mlx5dr_cmd_fte_info, ptr %fte_info, i32 0, i32 6
  %42 = ptrtoint ptr %ignore_flow_level26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool1, ptr %ignore_flow_level26, align 4
  %43 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdev, align 4
  %45 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %group_id, align 4
  %call29 = call i32 @mlx5dr_cmd_set_fte(ptr noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ft_info, i32 noundef %46, ptr noundef nonnull %fte_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end22.cleanup_crit_edge, label %do.end34

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdev, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = call i32 @llvm.read_register.i32(metadata !33) #6
  %and.i74 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i74 to ptr
  %task38 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task38, align 8
  %pid39 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 68
  %55 = ptrtoint ptr %pid39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pid39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef 145, i32 noundef %56, i32 noundef %call29) #10
  %57 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev, align 4
  %59 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tbl_id, align 4
  %61 = ptrtoint ptr %group_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %group_id, align 4
  %call42 = call i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef %58, i32 noundef 4, i32 noundef %60, i32 noundef %62) #6
  br label %free_flow_table

free_flow_table:                                  ; preds = %do.end34, %do.end16
  %ret.0 = phi i32 [ %call11, %do.end16 ], [ %call29, %do.end34 ]
  %63 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev, align 4
  %65 = ptrtoint ptr %tbl_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tbl_id, align 4
  %call44 = call i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %64, i32 noundef %66, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %free_flow_table, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.0, %free_flow_table ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ft_info) #6
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %fte_info) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ft_attr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5dr_cmd_set_fte(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5dr_fw_destroy_md_tbl(ptr nocapture noundef readonly %dmn, i32 noundef %tbl_id, i32 noundef %group_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5dr_domain, ptr %dmn, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %call = tail call i32 @mlx5dr_cmd_del_flow_table_entry(ptr noundef %1, i32 noundef 4, i32 noundef %tbl_id) #6
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  %call2 = tail call i32 @mlx5dr_cmd_destroy_flow_group(ptr noundef %3, i32 noundef 4, i32 noundef %tbl_id, i32 noundef %group_id) #6
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %call4 = tail call i32 @mlx5dr_cmd_destroy_flow_table(ptr noundef %5, i32 noundef %tbl_id, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 29, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 37, i32 3}
!10 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 50, i32 3}
!14 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 59, i32 3}
!18 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5dr_fw_create_recalc_cs_ft._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 123, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5dr_fw_create_md_tbl._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5dr_fw_create_md_tbl._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 131, i32 3}
!27 = !{ptr @mlx5dr_fw_create_md_tbl._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mlx5dr_fw_create_md_tbl._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/steering/dr_fw.c", i32 145, i32 3}
!31 = !{ptr @mlx5dr_fw_create_md_tbl._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mlx5dr_fw_create_md_tbl._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
