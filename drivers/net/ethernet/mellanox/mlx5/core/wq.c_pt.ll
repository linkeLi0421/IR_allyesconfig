; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/wq.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/wq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.159, i32, i32 }
%union.anon.159 = type { ptr }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5_wq_qp = type { %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_wqe_srq_next_seg = type { [2 x i8], i16, i8, [11 x i8] }

@mlx5_wq_cyc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): mlx5_db_alloc_node() failed, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_wq_cyc_create\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/wq.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_wq_cyc_create._entry_ptr = internal global ptr @mlx5_wq_cyc_create._entry, section ".printk_index", align 4
@mlx5_wq_cyc_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): mlx5_frag_buf_alloc_node() failed, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_wq_cyc_create._entry_ptr.7 = internal global ptr @mlx5_wq_cyc_create._entry.5, section ".printk_index", align 4
@mlx5_wq_cyc_wqe_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016WQE DUMP: WQ size %d WQ cur size %d, WQE index 0x%x, len: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_wq_cyc_wqe_dump\00", [43 x i8] zeroinitializer }, align 32
@mlx5_wq_cyc_wqe_dump._entry_ptr = internal global ptr @mlx5_wq_cyc_wqe_dump._entry, section ".printk_index", align 4
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mlx5_wq_qp_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_wq_qp_create\00", [46 x i8] zeroinitializer }, align 32
@mlx5_wq_qp_create._entry_ptr = internal global ptr @mlx5_wq_qp_create._entry, section ".printk_index", align 4
@mlx5_wq_qp_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_wq_qp_create._entry_ptr.13 = internal global ptr @mlx5_wq_qp_create._entry.12, section ".printk_index", align 4
@mlx5_cqwq_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mlx5_cqwq_create\00", [47 x i8] zeroinitializer }, align 32
@mlx5_cqwq_create._entry_ptr = internal global ptr @mlx5_cqwq_create._entry, section ".printk_index", align 4
@mlx5_cqwq_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.14, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_cqwq_create._entry_ptr.16 = internal global ptr @mlx5_cqwq_create._entry.15, section ".printk_index", align 4
@mlx5_wq_ll_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 221, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_wq_ll_create\00", [46 x i8] zeroinitializer }, align 32
@mlx5_wq_ll_create._entry_ptr = internal global ptr @mlx5_wq_ll_create._entry, section ".printk_index", align 4
@mlx5_wq_ll_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.17, ptr @.str.2, i32 230, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5_wq_ll_create._entry_ptr.19 = internal global ptr @mlx5_wq_ll_create._entry.18, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 48, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 57, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 89, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 115, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 124, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 170, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 180, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 221, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/wq.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 230, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mlx5_cqwq_create._entry, ptr @mlx5_cqwq_create._entry.15, ptr @mlx5_cqwq_create._entry_ptr, ptr @mlx5_cqwq_create._entry_ptr.16, ptr @mlx5_wq_cyc_create._entry, ptr @mlx5_wq_cyc_create._entry.5, ptr @mlx5_wq_cyc_create._entry_ptr, ptr @mlx5_wq_cyc_create._entry_ptr.7, ptr @mlx5_wq_cyc_wqe_dump._entry, ptr @mlx5_wq_cyc_wqe_dump._entry_ptr, ptr @mlx5_wq_ll_create._entry, ptr @mlx5_wq_ll_create._entry.18, ptr @mlx5_wq_ll_create._entry_ptr, ptr @mlx5_wq_ll_create._entry_ptr.19, ptr @mlx5_wq_qp_create._entry, ptr @mlx5_wq_qp_create._entry.12, ptr @mlx5_wq_qp_create._entry_ptr, ptr @mlx5_wq_qp_create._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_cyc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_cyc_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_cyc_wqe_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_qp_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_qp_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cqwq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_cqwq_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_ll_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_wq_ll_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_wq_cyc_create(ptr noundef %mdev, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %wqc, ptr nocapture noundef %wq, ptr noundef %wq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %wqc, i32 8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i8
  %conv = and i8 %2, 15
  %3 = trunc i32 %1 to i8
  %conv4 = and i8 %3, 31
  %db = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 2
  %db_numa_node = getelementptr inbounds %struct.mlx5_wq_param, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %db_numa_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_numa_node, align 4
  %call = tail call i32 @mlx5_db_alloc_node(ptr noundef %mdev, ptr noundef %db, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef %13, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db, align 4
  %db9 = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 1
  %16 = ptrtoint ptr %db9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %db9, align 4
  %conv.i = zext i8 %conv4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = zext i8 %conv to i32
  %shl2.i = shl i32 %shl.i, %conv1.i
  %buf = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  %call11 = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %mdev, i32 noundef %shl2.i, ptr noundef %buf, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i52 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i52 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task19, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid20, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef %26, i32 noundef %call11) #10
  tail call void @mlx5_db_free(ptr noundef %mdev, ptr noundef %db) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %29 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %wq, align 4
  %log_stride2.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %30 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %log_stride2.i.i, align 1
  %log_sz3.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %31 = ptrtoint ptr %log_sz3.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4, ptr %log_sz3.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %32 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i.i, ptr %sz_m1.i.i, align 4
  %sub7.i.i = sub nsw i8 12, %conv
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %33 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub7.i.i, ptr %log_frag_strides.i.i, align 2
  %conv10.i.i = zext i8 %sub7.i.i to i32
  %notmask24.i.i = shl nsw i32 -1, %conv10.i.i
  %34 = trunc i32 %notmask24.i.i to i16
  %conv13.i.i = xor i16 %34, -1
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %35 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv13.i.i, ptr %frag_sz_m1.i.i, align 4
  %strides_offset14.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %36 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %strides_offset14.i.i, align 2
  %37 = trunc i32 %notmask.i.i to i16
  %conv24 = sub i16 0, %37
  %sz = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 2
  %38 = ptrtoint ptr %sz to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv24, ptr %sz, align 4
  %39 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mdev, ptr %wq_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end16, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_db_alloc_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_frag_buf_alloc_node(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_db_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_wq_cyc_wqe_dump(ptr nocapture noundef readonly %wq, i16 noundef zeroext %ix, i8 noundef zeroext %nstrides) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @net_ratelimit() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i8 @llvm.umax.i8(i8 %nstrides, i8 1)
  %cond = zext i8 %0 to i32
  %log_stride = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %1 = ptrtoint ptr %log_stride to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %log_stride, align 1
  %conv7 = zext i8 %2 to i32
  %shl = shl i32 %cond, %conv7
  %conv.i = zext i16 %ix to i32
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %3 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, %conv.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %5 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %6 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %8, i32 %shr.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %11 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %12 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %shl.i.i = shl i32 %and.i.i, %conv7
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %shl.i.i
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %13 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sz_m1.i, align 4
  %add.i = add i32 %14, 1
  %cur_sz = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 4
  %15 = ptrtoint ptr %cur_sz to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cur_sz, align 4
  %conv11 = zext i16 %16 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %add.i, i32 noundef %conv11, i32 noundef %conv.i, i32 noundef %shl) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.i.i, i32 noundef %shl, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5_wq_cyc_reset(ptr nocapture noundef %wq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe_ctr = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 3
  %0 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %wqe_ctr, align 2
  %cur_sz = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 4
  %1 = ptrtoint ptr %cur_sz to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %cur_sz, align 4
  %db.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 1
  %2 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_wq_qp_create(ptr noundef %mdev, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %qpc, ptr nocapture noundef writeonly %wq, ptr noundef %wq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %qpc, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i8
  %3 = and i8 %2, 7
  %conv = add nuw nsw i8 %3, 4
  %shr2 = lshr i32 %1, 19
  %4 = trunc i32 %shr2 to i8
  %conv4 = and i8 %4, 15
  %shr6 = lshr i32 %1, 11
  %5 = trunc i32 %shr6 to i8
  %conv8 = and i8 %5, 15
  %db = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 2
  %db_numa_node = getelementptr inbounds %struct.mlx5_wq_param, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %db_numa_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_numa_node, align 4
  %call = tail call i32 @mlx5_db_alloc_node(ptr noundef %mdev, ptr noundef %db, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !40) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 115, i32 noundef %15, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %conv4 to i32
  %shl.i = shl nuw nsw i32 1, %conv.i
  %conv1.i = zext i8 %conv to i32
  %shl2.i = shl nuw nsw i32 %shl.i, %conv1.i
  %conv.i93 = zext i8 %conv8 to i32
  %shl2.i95 = shl nuw nsw i32 64, %conv.i93
  %add12 = add nuw nsw i32 %shl2.i, %shl2.i95
  %buf = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 1
  %16 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %param, align 4
  %call13 = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %mdev, i32 noundef %add12, ptr noundef %buf, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 8
  %20 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i96 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i96 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task21, align 8
  %pid22 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 68
  %24 = ptrtoint ptr %pid22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pid22, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, i32 noundef 124, i32 noundef %25, i32 noundef %call13) #10
  tail call void @mlx5_db_free(ptr noundef %mdev, ptr noundef %db) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %28 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %wq, align 4
  %log_stride2.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %29 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %log_stride2.i.i, align 1
  %log_sz3.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %30 = ptrtoint ptr %log_sz3.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4, ptr %log_sz3.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %31 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i.i, ptr %sz_m1.i.i, align 4
  %sub7.i.i = sub nuw nsw i8 8, %3
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %32 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %sub7.i.i, ptr %log_frag_strides.i.i, align 2
  %conv10.i.i = zext i8 %sub7.i.i to i16
  %notmask24.i.i = shl nsw i16 -1, %conv10.i.i
  %conv13.i.i = xor i16 %notmask24.i.i, -1
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %33 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv13.i.i, ptr %frag_sz_m1.i.i, align 4
  %strides_offset14.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %34 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %strides_offset14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl2.i)
  %cmp = icmp ult i32 %shl2.i, 4096
  br i1 %cmp, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %div92 = lshr i32 %shl2.i, 6
  %conv28 = trunc i32 %div92 to i16
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %shr32 = lshr i32 %shl2.i, 12
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf, align 4
  %add.ptr37 = getelementptr %struct.mlx5_buf_list, ptr %38, i32 %shr32
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then27
  %add.ptr37.sink = phi ptr [ %36, %if.then27 ], [ %add.ptr37, %if.else ]
  %.sink = phi i16 [ %conv28, %if.then27 ], [ 0, %if.else ]
  %sub.i.i106.sink.in = shl nsw i32 -1, %conv.i93
  %sub.i.i106.sink = xor i32 %sub.i.i106.sink.in, -1
  %39 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr37.sink, ptr %39, align 4
  %41 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 6, ptr %41, align 1
  %43 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i.i106.sink, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 6
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 6, ptr %47, align 2
  %49 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 63, ptr %49, align 4
  %51 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink, ptr %51, align 2
  %53 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %db, align 4
  %db44 = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %wq, i32 0, i32 1
  %55 = ptrtoint ptr %db44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %db44, align 4
  %56 = load ptr, ptr %db, align 4
  %arrayidx47 = getelementptr i32, ptr %56, i32 1
  %db49 = getelementptr inbounds %struct.mlx5_wq_qp, ptr %wq, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %db49 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx47, ptr %db49, align 4
  %58 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %mdev, ptr %wq_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end18, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call13, %do.end18 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_cqwq_create(ptr noundef %mdev, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %cqc, ptr nocapture noundef writeonly %wq, ptr noundef %wq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cqc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqc, align 4
  %2 = and i32 %1, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %conv = select i1 %cmp, i8 6, i8 7
  %add.ptr1 = getelementptr i32, ptr %cqc, i32 3
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr1, align 4
  %shr2 = lshr i32 %4, 24
  %5 = trunc i32 %shr2 to i8
  %conv4 = and i8 %5, 31
  %db = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 2
  %db_numa_node = getelementptr inbounds %struct.mlx5_wq_param, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %db_numa_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %db_numa_node, align 4
  %call = tail call i32 @mlx5_db_alloc_node(ptr noundef %mdev, ptr noundef %db, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !40) #7
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
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef 170, i32 noundef %15, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db, align 4
  %db8 = getelementptr inbounds %struct.mlx5_cqwq, ptr %wq, i32 0, i32 1
  %18 = ptrtoint ptr %db8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %db8, align 4
  %conv.i = zext i8 %conv4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = zext i8 %conv to i32
  %shl2.i = shl i32 %shl.i, %conv1.i
  %buf = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 1
  %19 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %param, align 4
  %call10 = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %mdev, i32 noundef %shl2.i, ptr noundef %buf, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end20, label %do.end15

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev, align 8
  %23 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i46 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i46 to ptr
  %task18 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task18, align 8
  %pid19 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14, i32 noundef 181, i32 noundef %28, i32 noundef %call10) #10
  tail call void @mlx5_db_free(ptr noundef %mdev, ptr noundef %db) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %31 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %wq, align 4
  %log_stride2.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %32 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %log_stride2.i.i, align 1
  %log_sz3.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %33 = ptrtoint ptr %log_sz3.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv4, ptr %log_sz3.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %34 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i.i, ptr %sz_m1.i.i, align 4
  %sub7.i.i = sub nuw nsw i8 12, %conv
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %35 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %sub7.i.i, ptr %log_frag_strides.i.i, align 2
  %conv10.i.i = zext i8 %sub7.i.i to i16
  %notmask24.i.i = shl nsw i16 -1, %conv10.i.i
  %conv13.i.i = xor i16 %notmask24.i.i, -1
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %36 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv13.i.i, ptr %frag_sz_m1.i.i, align 4
  %strides_offset14.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %37 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %strides_offset14.i.i, align 2
  %38 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mdev, ptr %wq_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end15, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call10, %do.end15 ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_wq_ll_create(ptr noundef %mdev, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %wqc, ptr nocapture noundef %wq, ptr noundef %wq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %wqc, i32 8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %1, 16
  %2 = trunc i32 %shr to i8
  %conv = and i8 %2, 15
  %3 = trunc i32 %1 to i8
  %conv4 = and i8 %3, 31
  %db = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 2
  %db_numa_node = getelementptr inbounds %struct.mlx5_wq_param, ptr %param, i32 0, i32 1
  %4 = ptrtoint ptr %db_numa_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %db_numa_node, align 4
  %call = tail call i32 @mlx5_db_alloc_node(ptr noundef %mdev, ptr noundef %db, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %8 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef 221, i32 noundef %13, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db, align 4
  %db9 = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 1
  %16 = ptrtoint ptr %db9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %db9, align 4
  %conv.i = zext i8 %conv4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = zext i8 %conv to i32
  %shl2.i = shl i32 %shl.i, %conv1.i
  %buf = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  %call11 = tail call i32 @mlx5_frag_buf_alloc_node(ptr noundef %mdev, i32 noundef %shl2.i, ptr noundef %buf, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !40) #7
  %and.i49 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i49 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task19, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid20, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef %26, i32 noundef %call11) #10
  tail call void @mlx5_db_free(ptr noundef %mdev, ptr noundef %db) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %29 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %wq, align 4
  %log_stride2.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %30 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %log_stride2.i.i, align 1
  %log_sz3.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 4
  %31 = ptrtoint ptr %log_sz3.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4, ptr %log_sz3.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %conv.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %32 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i.i, ptr %sz_m1.i.i, align 4
  %sub7.i.i = sub nsw i8 12, %conv
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %33 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %sub7.i.i, ptr %log_frag_strides.i.i, align 2
  %conv10.i.i = zext i8 %sub7.i.i to i32
  %notmask24.i.i = shl nsw i32 -1, %conv10.i.i
  %34 = trunc i32 %notmask24.i.i to i16
  %conv13.i.i = xor i16 %34, -1
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %35 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv13.i.i, ptr %frag_sz_m1.i.i, align 4
  %strides_offset14.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %36 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %strides_offset14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %cmp28.not.i = icmp eq i8 %conv4, 0
  br i1 %cmp28.not.i, label %if.end21.mlx5_wq_ll_init_list.exit_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.mlx5_wq_ll_init_list.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_wq_ll_init_list.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.029.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %conv.i.i50 = and i32 %i.029.i, 65535
  %37 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %strides_offset14.i.i, align 2
  %conv.i.i.i = zext i16 %38 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i50, %conv.i.i.i
  %39 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i.i = zext i8 %40 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %41 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %42, i32 %shr.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i, align 4
  %45 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i.i = zext i16 %46 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %47 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %log_stride2.i.i, align 1
  %conv3.i.i.i = zext i8 %48 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 %shl.i.i.i
  %add.i = add nuw i32 %i.029.i, 1
  %conv1.i51 = trunc i32 %add.i to i16
  %next_wqe_index.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %next_wqe_index.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i51, ptr %next_wqe_index.i, align 2
  %50 = ptrtoint ptr %sz_m1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sz_m1.i.i, align 4
  %cmp.i = icmp ult i32 %add.i, %51
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = and i32 %add.i, 65535
  br label %mlx5_wq_ll_init_list.exit

mlx5_wq_ll_init_list.exit:                        ; preds = %for.end.loopexit.i, %if.end21.mlx5_wq_ll_init_list.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end21.mlx5_wq_ll_init_list.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %52 = ptrtoint ptr %strides_offset14.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %strides_offset14.i.i, align 2
  %conv.i.i15.i = zext i16 %53 to i32
  %add.i.i16.i = add nuw nsw i32 %i.0.lcssa.i, %conv.i.i15.i
  %54 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i18.i = zext i8 %55 to i32
  %shr.i.i19.i = lshr i32 %add.i.i16.i, %conv1.i.i18.i
  %56 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wq, align 4
  %arrayidx.i.i20.i = getelementptr %struct.mlx5_buf_list, ptr %57, i32 %shr.i.i19.i
  %58 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %60 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i22.i = zext i16 %61 to i32
  %and.i.i23.i = and i32 %add.i.i16.i, %conv2.i.i22.i
  %62 = ptrtoint ptr %log_stride2.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %log_stride2.i.i, align 1
  %conv3.i.i25.i = zext i8 %63 to i32
  %shl.i.i26.i = shl i32 %and.i.i23.i, %conv3.i.i25.i
  %add.ptr.i.i27.i = getelementptr i8, ptr %59, i32 %shl.i.i26.i
  %next_wqe_index4.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i27.i, i32 0, i32 1
  %tail_next.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 2
  %64 = ptrtoint ptr %tail_next.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %next_wqe_index4.i, ptr %tail_next.i, align 4
  %65 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mdev, ptr %wq_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5_wq_ll_init_list.exit, %do.end16, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %do.end16 ], [ 0, %mlx5_wq_ll_init_list.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_wq_ll_reset(ptr nocapture noundef %wq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %head, align 4
  %wqe_ctr = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 4
  %1 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %wqe_ctr, align 2
  %cur_sz = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 5
  %2 = ptrtoint ptr %cur_sz to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %cur_sz, align 4
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %3 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sz_m1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp28.not.i = icmp eq i32 %4, 0
  br i1 %cmp28.not.i, label %entry.mlx5_wq_ll_init_list.exit_crit_edge, label %for.body.lr.ph.i

entry.mlx5_wq_ll_init_list.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5_wq_ll_init_list.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i.i = and i32 %i.029.i, 65535
  %5 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %6 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, %conv.i.i.i
  %7 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i = zext i8 %8 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i, %conv1.i.i.i
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %10, i32 %shr.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i.i, align 4
  %13 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %14 to i32
  %and.i.i.i = and i32 %add.i.i.i, %conv2.i.i.i
  %15 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %shl.i.i.i
  %add.i = add nuw i32 %i.029.i, 1
  %conv1.i = trunc i32 %add.i to i16
  %next_wqe_index.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %next_wqe_index.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv1.i, ptr %next_wqe_index.i, align 2
  %18 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sz_m1.i, align 4
  %cmp.i = icmp ult i32 %add.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = and i32 %add.i, 65535
  br label %mlx5_wq_ll_init_list.exit

mlx5_wq_ll_init_list.exit:                        ; preds = %for.end.loopexit.i, %entry.mlx5_wq_ll_init_list.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.mlx5_wq_ll_init_list.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %strides_offset.i.i14.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %20 = ptrtoint ptr %strides_offset.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %strides_offset.i.i14.i, align 2
  %conv.i.i15.i = zext i16 %21 to i32
  %add.i.i16.i = add nuw nsw i32 %i.0.lcssa.i, %conv.i.i15.i
  %log_frag_strides.i.i17.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %22 = ptrtoint ptr %log_frag_strides.i.i17.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %log_frag_strides.i.i17.i, align 2
  %conv1.i.i18.i = zext i8 %23 to i32
  %shr.i.i19.i = lshr i32 %add.i.i16.i, %conv1.i.i18.i
  %24 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wq, align 4
  %arrayidx.i.i20.i = getelementptr %struct.mlx5_buf_list, ptr %25, i32 %shr.i.i19.i
  %26 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i20.i, align 4
  %frag_sz_m1.i.i21.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %28 = ptrtoint ptr %frag_sz_m1.i.i21.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frag_sz_m1.i.i21.i, align 4
  %conv2.i.i22.i = zext i16 %29 to i32
  %and.i.i23.i = and i32 %add.i.i16.i, %conv2.i.i22.i
  %log_stride.i.i24.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %30 = ptrtoint ptr %log_stride.i.i24.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %log_stride.i.i24.i, align 1
  %conv3.i.i25.i = zext i8 %31 to i32
  %shl.i.i26.i = shl i32 %and.i.i23.i, %conv3.i.i25.i
  %add.ptr.i.i27.i = getelementptr i8, ptr %27, i32 %shl.i.i26.i
  %next_wqe_index4.i = getelementptr inbounds %struct.mlx5_wqe_srq_next_seg, ptr %add.ptr.i.i27.i, i32 0, i32 1
  %tail_next.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 2
  %32 = ptrtoint ptr %tail_next.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %next_wqe_index4.i, ptr %tail_next.i, align 4
  %33 = ptrtoint ptr %wqe_ctr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %wqe_ctr, align 2
  %conv.i = zext i16 %34 to i32
  %db.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %wq, i32 0, i32 1
  %35 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %db.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_wq_destroy(ptr noundef %wq_ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq_ctrl, align 4
  %buf = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 1
  tail call void @mlx5_frag_buf_free(ptr noundef %1, ptr noundef %buf) #7
  %2 = ptrtoint ptr %wq_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq_ctrl, align 4
  %db = getelementptr inbounds %struct.mlx5_wq_ctrl, ptr %wq_ctrl, i32 0, i32 2
  tail call void @mlx5_db_free(ptr noundef %3, ptr noundef %db) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_frag_buf_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5_wq_cyc_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5_wq_cyc_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 57, i32 3}
!10 = !{ptr @mlx5_wq_cyc_create._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_wq_cyc_create._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 87, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5_wq_cyc_wqe_dump._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5_wq_cyc_wqe_dump._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 89, i32 31}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 115, i32 3}
!21 = !{ptr @mlx5_wq_qp_create._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @mlx5_wq_qp_create._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mlx5_wq_qp_create._entry.12, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 124, i32 3}
!25 = !{ptr @mlx5_wq_qp_create._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 170, i32 3}
!28 = !{ptr @mlx5_cqwq_create._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlx5_cqwq_create._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mlx5_cqwq_create._entry.15, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 180, i32 3}
!32 = !{ptr @mlx5_cqwq_create._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 221, i32 3}
!35 = !{ptr @mlx5_wq_ll_create._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mlx5_wq_ll_create._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mlx5_wq_ll_create._entry.18, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/wq.c", i32 230, i32 3}
!39 = !{ptr @mlx5_wq_ll_create._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
