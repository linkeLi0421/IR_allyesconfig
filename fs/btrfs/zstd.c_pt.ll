; ModuleID = '/llk/IR_all_yes/fs/btrfs/zstd.c_pt.bc'
source_filename = "../fs/btrfs/zstd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btrfs_compress_op = type { ptr, i32, i32 }
%struct.zstd_workspace_manager = type { ptr, %struct.spinlock, %struct.list_head, [15 x %struct.list_head], i32, %struct.wait_queue_head, %struct.timer_list }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.ZSTD_parameters = type { %struct.ZSTD_compressionParameters, %struct.ZSTD_frameParameters }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ZSTD_frameParameters = type { i32, i32, i32 }
%struct.workspace = type { ptr, i32, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.ZSTD_inBuffer_s, %struct.ZSTD_outBuffer_s }
%struct.ZSTD_inBuffer_s = type { ptr, i32, i32 }
%struct.ZSTD_outBuffer_s = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.51 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.9, %union.anon.50, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.50 = type { %struct.atomic_t }
%struct.compressed_bio = type { %struct.refcount_struct, i32, ptr, ptr, i64, i32, i32, i8, i8, i32, ptr, [0 x i8] }

@btrfs_zstd_compress = dso_local constant { %struct.btrfs_compress_op, [20 x i8] } { %struct.btrfs_compress_op { ptr null, i32 15, i32 3 }, [20 x i8] zeroinitializer }, align 32
@wsm = internal global { %struct.zstd_workspace_manager, [72 x i8] } zeroinitializer, align 32
@zstd_init_workspace_manager.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wsm.lock\00", [22 x i8] zeroinitializer }, align 32
@zstd_init_workspace_manager.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wsm.wait\00", [22 x i8] zeroinitializer }, align 32
@zstd_init_workspace_manager.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&wsm.timer)\00", [19 x i8] zeroinitializer }, align 32
@zstd_init_workspace_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014BTRFS: cannot preallocate zstd compression workspace\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zstd_init_workspace_manager\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/btrfs/zstd.c\00", [16 x i8] zeroinitializer }, align 32
@zstd_init_workspace_manager._entry_ptr = internal global ptr @zstd_init_workspace_manager._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zstd_ws_mem_sizes = internal global { [15 x i32], [36 x i8] } zeroinitializer, align 32
@zstd_compress_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014BTRFS: zstd_init_cstream failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zstd_compress_pages\00", [44 x i8] zeroinitializer }, align 32
@zstd_compress_pages._entry_ptr = internal global ptr @zstd_compress_pages._entry, section ".printk_index", align 4
@zstd_compress_pages.__UNIQUE_ID_ddebug940 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.9, ptr @.str.7, ptr @.str.11, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"btrfs\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BTRFS: zstd_compress_stream returned %d\0A\00", [55 x i8] zeroinitializer }, align 32
@zstd_compress_pages.__UNIQUE_ID_ddebug945 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.9, ptr @.str.7, ptr @.str.12, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BTRFS: zstd_end_stream returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@zstd_decompress_bio.__UNIQUE_ID_ddebug948 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.7, ptr @.str.14, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zstd_decompress_bio\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"BTRFS: zstd_init_dstream failed\0A\00", [63 x i8] zeroinitializer }, align 32
@zstd_decompress_bio.__UNIQUE_ID_ddebug951 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.7, ptr @.str.15, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BTRFS: zstd_decompress_stream returned %d\0A\00", [53 x i8] zeroinitializer }, align 32
@zstd_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014BTRFS: zstd_init_dstream failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zstd_decompress\00", [16 x i8] zeroinitializer }, align 32
@zstd_decompress._entry_ptr = internal global ptr @zstd_decompress._entry, section ".printk_index", align 4
@zstd_decompress.__UNIQUE_ID_ddebug956 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 -91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"BTRFS: zstd_decompress_stream ended early\0A\00", [53 x i8] zeroinitializer }, align 32
@zstd_decompress.__UNIQUE_ID_ddebug957 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.7, ptr @.str.15, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"btrfs_zstd_compress\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 701, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [4 x i8] c"wsm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 85, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 178, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 179, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 180, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 188, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"zstd_ws_mem_sizes\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 87, i32 15 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 395, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 424, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 492, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 561, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 580, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 636, i32 3 }
@___asan_gen_.111 = private constant [19 x i8] c"../fs/btrfs/zstd.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 660, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 44, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 717, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @zstd_compress_pages._entry, ptr @zstd_compress_pages._entry_ptr, ptr @zstd_decompress._entry, ptr @zstd_decompress._entry_ptr, ptr @zstd_init_workspace_manager._entry, ptr @zstd_init_workspace_manager._entry_ptr, ptr @btrfs_zstd_compress, ptr @wsm, ptr @zstd_init_workspace_manager.__key, ptr @.str, ptr @zstd_init_workspace_manager.__key.1, ptr @.str.2, ptr @zstd_init_workspace_manager.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @zstd_ws_mem_sizes, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_zstd_compress to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsm to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_workspace_manager.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_workspace_manager.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_workspace_manager.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_init_workspace_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_ws_mem_sizes to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_compress_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zstd_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zstd_init_workspace_manager() local_unnamed_addr #0 align 64 {
entry:
  %params.i = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %zstd_get_btrfs_parameters.exit.i.for.body.i_crit_edge, %entry
  %max_size.018.i = phi i32 [ 0, %entry ], [ %5, %zstd_get_btrfs_parameters.exit.i.for.body.i_crit_edge ]
  %level.017.i = phi i32 [ 1, %entry ], [ %inc.i, %zstd_get_btrfs_parameters.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #9
  %0 = call ptr @memset(ptr %params.i, i32 255, i32 40)
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params.i, i32 noundef %level.017.i, i64 noundef 131072) #9
  %1 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %params.i, align 4, !alias.scope !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %2)
  %cmp.i.i = icmp ugt i32 %2, 17
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.zstd_get_btrfs_parameters.exit.i_crit_edge

for.body.i.zstd_get_btrfs_parameters.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zstd_get_btrfs_parameters.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 17, ptr %params.i, align 4, !alias.scope !66
  br label %zstd_get_btrfs_parameters.exit.i

zstd_get_btrfs_parameters.exit.i:                 ; preds = %if.then.i.i, %for.body.i.zstd_get_btrfs_parameters.exit.i_crit_edge
  %call.i = call i32 @zstd_cstream_workspace_bound(ptr noundef nonnull %params.i) #9
  %call1.i = call i32 @zstd_dstream_workspace_bound(i32 noundef 131072) #9
  %4 = call i32 @llvm.umax.i32(i32 %call.i, i32 %call1.i) #9
  %5 = call i32 @llvm.umax.i32(i32 %max_size.018.i, i32 %4) #9
  %sub.i = add nsw i32 %level.017.i, -1
  %arrayidx.i = getelementptr [15 x i32], ptr @zstd_ws_mem_sizes, i32 0, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #9
  %inc.i = add nuw nsw i32 %level.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %zstd_calc_ws_mem_sizes.exit, label %zstd_get_btrfs_parameters.exit.i.for.body.i_crit_edge

zstd_get_btrfs_parameters.exit.i.for.body.i_crit_edge: ; preds = %zstd_get_btrfs_parameters.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

zstd_calc_ws_mem_sizes.exit:                      ; preds = %zstd_get_btrfs_parameters.exit.i
  store ptr @btrfs_zstd_compress, ptr @wsm, align 4
  call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @zstd_init_workspace_manager.__key, i16 noundef signext 3) #9
  call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5), ptr noundef nonnull @.str.2, ptr noundef nonnull @zstd_init_workspace_manager.__key.1) #9
  call void @init_timer_key(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 6), ptr noundef nonnull @zstd_reclaim_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @zstd_init_workspace_manager.__key.3) #9
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 0), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 0), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 0), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 1), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 1), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 1, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 2), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 2), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 2), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 2, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 3), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 3), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 3), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 3, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 4), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 4), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 4), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 4, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 5), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 5), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 5), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 5, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 6), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 6), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 6), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 6, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 7), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 7), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 7), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 7, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 8), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 8), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 8), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 8, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 9), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 9), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 9), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 9, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 10), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 10), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 10), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 10, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 11), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 11), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 11), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 11, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 12), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 12), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 12), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 12, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 13), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 13), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 13), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 13, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), align 4
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14, i32 1), align 4
  %call7 = call ptr @zstd_alloc_workspace(i32 noundef 15)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.else

do.end11:                                         ; preds = %zstd_calc_ws_mem_sizes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %if.end

if.else:                                          ; preds = %zstd_calc_ws_mem_sizes.exit
  call void @_set_bit(i32 noundef 14, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4)) #9
  %7 = load ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call7, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), ptr %prev3.i.i, align 4
  store volatile ptr %call7, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %do.end11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zstd_reclaim_timer_fn(ptr nocapture noundef readnone %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %0, -30700
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), align 4
  %cmp.i.not = icmp eq ptr %1, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2)
  br i1 %cmp.i.not, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2, i32 1), align 4
  %cmp.i38.not55 = icmp eq ptr %2, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2)
  br i1 %cmp.i38.not55, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.056 = phi ptr [ %next.059, %cleanup.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %next.0.in58 = getelementptr inbounds %struct.list_head, ptr %pos.056, i32 0, i32 1
  %3 = ptrtoint ptr %next.0.in58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %next.059 = load ptr, ptr %next.0.in58, align 4
  %last_used = getelementptr i8, ptr %pos.056, i32 -12
  %4 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_used, align 4
  %sub3 = sub i32 %sub, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3)
  %cmp = icmp slt i32 %sub3, 0
  br i1 %cmp, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5:                                          ; preds = %for.body
  %req_level = getelementptr i8, ptr %pos.056, i32 -16
  %6 = ptrtoint ptr %req_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %level9 = getelementptr i8, ptr %pos.056, i32 -20
  %8 = ptrtoint ptr %level9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level9, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.056) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %next.0.in58 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.0.in58, align 4
  %12 = ptrtoint ptr %pos.056 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pos.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %16 = ptrtoint ptr %pos.056 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.056, align 4
  %17 = ptrtoint ptr %next.0.in58 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %next.0.in58, align 4
  %list = getelementptr i8, ptr %pos.056, i32 -8
  %call.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i40, label %if.end.i.i43, label %list_del.exit.list_del.exit45_crit_edge

list_del.exit.list_del.exit45_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit45

if.end.i.i43:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i41 = getelementptr i8, ptr %pos.056, i32 -4
  %18 = ptrtoint ptr %prev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i41, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i.i42 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i42, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit45

list_del.exit45:                                  ; preds = %if.end.i.i43, %list_del.exit.list_del.exit45_crit_edge
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i44 = getelementptr i8, ptr %pos.056, i32 -4
  %25 = ptrtoint ptr %prev.i44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i44, align 4
  %add.ptr.i = getelementptr i8, ptr %pos.056, i32 -32
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kvfree(ptr noundef %27) #9
  %buf.i = getelementptr i8, ptr %pos.056, i32 -24
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %29) #9
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  %sub11 = add i32 %9, -1
  %arrayidx = getelementptr %struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 %sub11
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i46.not = icmp eq ptr %31, %arrayidx
  br i1 %cmp.i46.not, label %if.then14, label %list_del.exit45.cleanup_crit_edge

list_del.exit45.cleanup_crit_edge:                ; preds = %list_del.exit45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %list_del.exit45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %sub11, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4)) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %list_del.exit45.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %cmp.i38.not = icmp eq ptr %next.059, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2)
  br i1 %cmp.i38.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), align 4
  %cmp.i48.not = icmp eq ptr %32, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2)
  br i1 %cmp.i48.not, label %for.end.cleanup24_crit_edge, label %if.then21

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup24

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %33, 30700
  %call22 = tail call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 6), i32 noundef %add) #9
  br label %cleanup24

cleanup24:                                        ; preds = %if.then21, %for.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_alloc_workspace(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %level, -1
  %arrayidx = getelementptr [15 x i32], ptr @zstd_ws_mem_sizes, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %size = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %size, align 4
  %level2 = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %level2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %level, ptr %level2, align 4
  %req_level = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %req_level to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %level, ptr %req_level, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_used, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %2, i32 noundef 3264, i32 noundef -1) #14
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #13
  %buf = getelementptr %struct.workspace, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %buf, align 8
  %tobool7.not = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %fail, label %if.end11

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %list = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %lru_list = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %lru_list, ptr %lru_list, align 8
  %prev.i30 = getelementptr inbounds %struct.workspace, ptr %call7.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lru_list, ptr %prev.i30, align 4
  br label %cleanup

fail:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  tail call void @kvfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 8
  tail call void @kfree(ptr noundef %18) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %list, %if.end11 ], [ inttoptr (i32 -12 to ptr), %fail ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zstd_cleanup_workspace_manager() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not15 = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not15, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %list_del.exit14.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %24, %list_del.exit14.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lru_list = getelementptr i8, ptr %2, i32 8
  %call.i.i9 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list) #9
  br i1 %call.i.i9, label %if.end.i.i12, label %list_del.exit.list_del.exit14_crit_edge

list_del.exit.list_del.exit14_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit14

if.end.i.i12:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i10 = getelementptr i8, ptr %2, i32 12
  %11 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i10, align 4
  %13 = ptrtoint ptr %lru_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lru_list, align 4
  %prev1.i.i.i11 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i11, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit14

list_del.exit14:                                  ; preds = %if.end.i.i12, %list_del.exit.list_del.exit14_crit_edge
  %17 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %lru_list, align 4
  %prev.i13 = getelementptr i8, ptr %2, i32 12
  %18 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i13, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -24
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kvfree(ptr noundef %20) #9
  %buf.i = getelementptr i8, ptr %2, i32 -16
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %22) #9
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %24, %arrayidx
  br i1 %cmp.i.not, label %list_del.exit14.for.inc_crit_edge, label %list_del.exit14.while.body_crit_edge

list_del.exit14.while.body_crit_edge:             ; preds = %list_del.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit14.for.inc_crit_edge:                ; preds = %list_del.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit14.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %call3 = tail call i32 @del_timer_sync(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 6)) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zstd_free_workspace(ptr noundef %ws) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @kvfree(ptr noundef %1) #9
  %buf = getelementptr i8, ptr %ws, i32 -16
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zstd_get_workspace(i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool.not = icmp eq i32 %level, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %level
  %sub.i = add i32 %spec.store.select, -1
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %again

again:                                            ; preds = %if.then7, %entry
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %call.i = call i32 @_find_next_bit_be(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4), i32 noundef 15, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call.i)
  %cmp35.i = icmp slt i32 %call.i, 15
  br i1 %cmp35.i, label %again.for.body.i_crit_edge, label %again.zstd_find_workspace.exit.thread_crit_edge

again.zstd_find_workspace.exit.thread_crit_edge:  ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %zstd_find_workspace.exit.thread

again.for.body.i_crit_edge:                       ; preds = %again
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %again.for.body.i_crit_edge
  %i.036.i = phi i32 [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %again.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 %i.036.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %6, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i.i, align 4
  %req_level.i = getelementptr i8, ptr %6, i32 -8
  %15 = ptrtoint ptr %req_level.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select, ptr %req_level.i, align 4
  %level4.i = getelementptr i8, ptr %6, i32 -12
  %16 = ptrtoint ptr %level4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.store.select)
  %cmp5.i = icmp eq i32 %17, %spec.store.select
  br i1 %cmp5.i, label %if.then6.i, label %list_del_init.exit.i.if.end.i_crit_edge

list_del_init.exit.i.if.end.i_crit_edge:          ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then6.i:                                       ; preds = %list_del_init.exit.i
  %lru_list.i = getelementptr i8, ptr %6, i32 8
  %call.i.i28.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_list.i) #9
  br i1 %call.i.i28.i, label %if.end.i.i31.i, label %if.then6.i.list_del.exit.i_crit_edge

if.then6.i.list_del.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i31.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i29.i = getelementptr i8, ptr %6, i32 12
  %18 = ptrtoint ptr %prev.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i29.i, align 4
  %20 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lru_list.i, align 4
  %prev1.i.i.i30.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i30.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i31.i, %if.then6.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %lru_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %lru_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %6, i32 12
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del.exit.i, %list_del_init.exit.i.if.end.i_crit_edge
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i32.not.i = icmp eq ptr %27, %arrayidx.i
  br i1 %cmp.i32.not.i, label %if.then10.i, label %if.end.i.zstd_find_workspace.exit_crit_edge

if.end.i.zstd_find_workspace.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zstd_find_workspace.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef %i.036.i, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4)) #9
  br label %zstd_find_workspace.exit

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nsw i32 %i.036.i, 1
  %call13.i = call i32 @_find_next_bit_be(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4), i32 noundef 15, i32 noundef %add.i) #9
  %cmp.i = icmp slt i32 %call13.i, 15
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.zstd_find_workspace.exit.thread_crit_edge

for.inc.i.zstd_find_workspace.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zstd_find_workspace.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

zstd_find_workspace.exit.thread:                  ; preds = %for.inc.i.zstd_find_workspace.exit.thread_crit_edge, %again.zstd_find_workspace.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  br label %if.end3

zstd_find_workspace.exit:                         ; preds = %if.then10.i, %if.end.i.zstd_find_workspace.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %zstd_find_workspace.exit.if.end3_crit_edge, label %zstd_find_workspace.exit.cleanup_crit_edge

zstd_find_workspace.exit.cleanup_crit_edge:       ; preds = %zstd_find_workspace.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

zstd_find_workspace.exit.if.end3_crit_edge:       ; preds = %zstd_find_workspace.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %zstd_find_workspace.exit.if.end3_crit_edge, %zstd_find_workspace.exit.thread
  %28 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %33, 262144
  %or.i = or i32 %33, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %call5 = call ptr @zstd_alloc_workspace(i32 noundef %spec.store.select)
  %34 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i19 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i19 to ptr
  %task.i20 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i20, align 8
  %flags1.i21 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags1.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags1.i21, align 4
  %and.i22 = and i32 %39, -262145
  %or.i23 = or i32 %and.i22, %and.i
  store i32 %or.i23, ptr %flags1.i21, align 4
  %cmp.i24 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.then7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %40 = call ptr @memset(ptr %4, i32 255, i32 16)
  %41 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %wait, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i25 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i25 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %0, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %2, ptr %2, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %2, ptr %3, align 4
  call void @prepare_to_wait(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5), ptr noundef nonnull %wait, i32 noundef 2) #9
  call void @schedule() #9
  call void @finish_wait(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5), ptr noundef nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  br label %again

cleanup:                                          ; preds = %if.end3.cleanup_crit_edge, %zstd_find_workspace.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %zstd_find_workspace.exit.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zstd_put_workspace(ptr noundef %ws) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %req_level = getelementptr i8, ptr %ws, i32 -8
  %0 = ptrtoint ptr %req_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_level, align 4
  %level = getelementptr i8, ptr %ws, i32 -12
  %2 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14), align 4
  %cmp.i.not = icmp eq ptr %4, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 14)
  br i1 %cmp.i.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %lru_list = getelementptr i8, ptr %ws, i32 8
  %5 = ptrtoint ptr %lru_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %lru_list, ptr %lru_list, align 4
  %prev.i = getelementptr i8, ptr %ws, i32 12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lru_list, ptr %prev.i, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr i8, ptr %ws, i32 -4
  %8 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_used, align 4
  %lru_list3 = getelementptr i8, ptr %ws, i32 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_list3, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), ptr noundef %9) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lru_list3, ptr %prev1.i.i, align 4
  %11 = ptrtoint ptr %lru_list3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %lru_list3, align 4
  %prev3.i.i = getelementptr i8, ptr %ws, i32 12
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), ptr %prev3.i.i, align 4
  store volatile ptr %lru_list3, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 2), align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.else.list_add.exit_crit_edge
  %13 = load volatile ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 6, i32 0, i32 1), align 4
  %tobool.not.i.i.not = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.not, label %if.then6, label %list_add.exit.if.end9_crit_edge

list_add.exit.if.end9_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 30700
  %call7 = tail call i32 @mod_timer(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 6), i32 noundef %add) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %list_add.exit.if.end9_crit_edge, %if.then2, %entry.if.end9_crit_edge
  %15 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %level, align 4
  %sub = add i32 %16, -1
  tail call void @_set_bit(i32 noundef %sub, ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 4)) #9
  %17 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %level, align 4
  %sub12 = add i32 %18, -1
  %arrayidx = getelementptr %struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 3, i32 %sub12
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call.i.i27 = tail call zeroext i1 @__list_add_valid(ptr noundef %ws, ptr noundef %arrayidx, ptr noundef %20) #9
  br i1 %call.i.i27, label %if.end.i.i30, label %if.end9.list_add.exit31_crit_edge

if.end9.list_add.exit31_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit31

if.end.i.i30:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i28 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ws, ptr %prev1.i.i28, align 4
  %22 = ptrtoint ptr %ws to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %ws, align 4
  %prev3.i.i29 = getelementptr inbounds %struct.list_head, ptr %ws, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %prev3.i.i29, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %ws, ptr %arrayidx, align 4
  br label %list_add.exit31

list_add.exit31:                                  ; preds = %if.end.i.i30, %if.end9.list_add.exit31_crit_edge
  %25 = ptrtoint ptr %req_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %req_level, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 1)) #9
  %26 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %27)
  %cmp15 = icmp eq i32 %27, 15
  br i1 %cmp15, label %if.then16, label %list_add.exit31.if.end17_crit_edge

list_add.exit31.if.end17_crit_edge:               ; preds = %list_add.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %list_add.exit31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5, i32 1), align 4
  %cmp.i.i.i.not.i = icmp eq ptr %28, getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5, i32 1)
  br i1 %cmp.i.i.i.not.i, label %if.then16.if.end17_crit_edge, label %if.then.i

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef getelementptr inbounds (%struct.zstd_workspace_manager, ptr @wsm, i32 0, i32 5), i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.then16.if.end17_crit_edge, %list_add.exit31.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_compress_pages(ptr noundef %ws, ptr noundef %mapping, i64 noundef %start, ptr nocapture noundef writeonly %pages, ptr nocapture noundef %out_pages, ptr nocapture noundef writeonly %total_in, ptr nocapture noundef %total_out) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.ZSTD_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -24
  %0 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_out, align 4
  %2 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_pages, align 4
  %mul = shl i32 %3, 12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #9
  %req_level = getelementptr i8, ptr %ws, i32 -8
  %4 = ptrtoint ptr %req_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_level, align 4
  %6 = call ptr @memset(ptr %params, i32 255, i32 40)
  %conv.i = zext i32 %1 to i64
  call void @zstd_get_params(ptr nonnull sret(%struct.ZSTD_parameters) align 4 %params, i32 noundef %5, i64 noundef %conv.i) #9
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4, !alias.scope !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %8)
  %cmp.i = icmp ugt i32 %8, 17
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 17, ptr %params, align 4, !alias.scope !70
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %1)
  %cmp4.i = icmp ugt i32 %1, 131072
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.zstd_get_btrfs_parameters.exit_crit_edge, !prof !73

if.end.i.zstd_get_btrfs_parameters.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %zstd_get_btrfs_parameters.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 38, i32 noundef 9, ptr noundef null) #9
  br label %zstd_get_btrfs_parameters.exit

zstd_get_btrfs_parameters.exit:                   ; preds = %do.end.i, %if.end.i.zstd_get_btrfs_parameters.exit_crit_edge
  %10 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %out_pages, align 4
  %11 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %total_out, align 4
  %12 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %total_in, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %size = getelementptr i8, ptr %ws, i32 -20
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %call = call ptr @zstd_init_cstream(ptr noundef nonnull %params, i64 noundef %conv.i, ptr noundef %14, i32 noundef %16) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end219.thread, label %if.end

if.end219.thread:                                 ; preds = %zstd_get_btrfs_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  %17 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %out_pages, align 4
  br label %cleanup223

if.end:                                           ; preds = %zstd_get_btrfs_parameters.exit
  %shr = lshr i64 %start, 12
  %conv3 = trunc i64 %shr to i32
  %call.i = call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv3, i32 noundef 0, i32 noundef 0) #9
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %19, 30
  %20 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end.if.then.i350_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end.if.then.i350_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i350

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not.i = icmp eq i32 %21, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i350_crit_edge

is_highmem_idx.exit.i.if.then.i350_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i350

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i350:                                     ; preds = %is_highmem_idx.exit.i.if.then.i350_crit_edge, %if.end.if.then.i350_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i350
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i350 ]
  %in_buf = getelementptr i8, ptr %ws, i32 16
  %22 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %addr.0.i, ptr %in_buf, align 4
  %pos = getelementptr i8, ptr %ws, i32 24
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pos, align 4
  %24 = call i32 @llvm.umin.i32(i32 %1, i32 4096)
  %size10 = getelementptr i8, ptr %ws, i32 20
  %25 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %size10, align 4
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %cmp12 = icmp eq ptr %call38.i.i.i, null
  br i1 %cmp12, label %kmap.exit.out_crit_edge, label %if.end15

kmap.exit.out_crit_edge:                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %kmap.exit
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call38.i.i.i, ptr %pages, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %27 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i352 = lshr i32 %28, 30
  %29 = zext i32 %shr.i.i352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i352, label %if.end15.if.then.i356_crit_edge [
    i32 2, label %if.end15.if.else.i358_crit_edge
    i32 3, label %is_highmem_idx.exit.i354
  ]

if.end15.if.else.i358_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i358

if.end15.if.then.i356_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i356

is_highmem_idx.exit.i354:                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %30 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp2.i.not.i353 = icmp eq i32 %30, 2
  br i1 %cmp2.i.not.i353, label %is_highmem_idx.exit.i354.if.else.i358_crit_edge, label %is_highmem_idx.exit.i354.if.then.i356_crit_edge

is_highmem_idx.exit.i354.if.then.i356_crit_edge:  ; preds = %is_highmem_idx.exit.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i356

is_highmem_idx.exit.i354.if.else.i358_crit_edge:  ; preds = %is_highmem_idx.exit.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i358

if.then.i356:                                     ; preds = %is_highmem_idx.exit.i354.if.then.i356_crit_edge, %if.end15.if.then.i356_crit_edge
  %call5.i355 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit361

if.else.i358:                                     ; preds = %is_highmem_idx.exit.i354.if.else.i358_crit_edge, %if.end15.if.else.i358_crit_edge
  %call6.i357 = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #9
  br label %kmap.exit361

kmap.exit361:                                     ; preds = %if.else.i358, %if.then.i356
  %addr.0.i359 = phi ptr [ %call6.i357, %if.else.i358 ], [ %call5.i355, %if.then.i356 ]
  %out_buf = getelementptr i8, ptr %ws, i32 28
  %31 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %addr.0.i359, ptr %out_buf, align 4
  %pos18 = getelementptr i8, ptr %ws, i32 36
  %32 = ptrtoint ptr %pos18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %pos18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp20 = icmp eq i32 %mul, 0
  %mul. = select i1 %cmp20, i32 0, i32 4096
  %size27 = getelementptr i8, ptr %ws, i32 32
  %33 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul., ptr %size27, align 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %kmap.exit361
  %len.0 = phi i32 [ %1, %kmap.exit361 ], [ %len.2, %cleanup.while.cond_crit_edge ]
  %max_out.0 = phi i32 [ %mul, %kmap.exit361 ], [ %max_out.2, %cleanup.while.cond_crit_edge ]
  %tot_out.0 = phi i32 [ 0, %kmap.exit361 ], [ %tot_out.2, %cleanup.while.cond_crit_edge ]
  %tot_in.0 = phi i32 [ 0, %kmap.exit361 ], [ %tot_in.2, %cleanup.while.cond_crit_edge ]
  %out_page.0 = phi ptr [ %call38.i.i.i, %kmap.exit361 ], [ %out_page.2, %cleanup.while.cond_crit_edge ]
  %in_page.0 = phi ptr [ %call.i, %kmap.exit361 ], [ %in_page.2, %cleanup.while.cond_crit_edge ]
  %nr_pages.0 = phi i32 [ 1, %kmap.exit361 ], [ %nr_pages.2, %cleanup.while.cond_crit_edge ]
  %ret.0 = phi i32 [ 0, %kmap.exit361 ], [ %ret.1, %cleanup.while.cond_crit_edge ]
  %start.addr.0 = phi i64 [ %start, %kmap.exit361 ], [ %start.addr.2, %cleanup.while.cond_crit_edge ]
  %call30 = call i32 @zstd_compress_stream(ptr noundef nonnull %call, ptr noundef %out_buf, ptr noundef %in_buf) #9
  %call31 = call i32 @zstd_is_error(i32 noundef %call30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end45, label %do.body34

do.body34:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_compress_pages.__UNIQUE_ID_ddebug940, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_compress_pages, %if.then40)) #9
          to label %cleanup [label %if.then40], !srcloc !74

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 @zstd_get_error_code(i32 noundef %call30) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_compress_pages.__UNIQUE_ID_ddebug940, ptr noundef nonnull @.str.11, i32 noundef %call41) #9
  br label %out

if.end45:                                         ; preds = %while.cond
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos, align 4
  %add = add i32 %35, %tot_in.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add)
  %cmp48 = icmp ugt i32 %add, 8192
  br i1 %cmp48, label %land.lhs.true, label %if.end45.if.end59_crit_edge

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end45
  %36 = ptrtoint ptr %pos18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pos18, align 4
  %add55 = add i32 %37, %tot_out.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add55)
  %cmp56 = icmp ult i32 %add, %add55
  br i1 %cmp56, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %if.end45.if.end59_crit_edge
  %38 = ptrtoint ptr %pos18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pos18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %max_out.0)
  %cmp62.not = icmp ult i32 %39, %max_out.0
  br i1 %cmp62.not, label %if.end68, label %if.end59.out_crit_edge

if.end59.out_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end68:                                         ; preds = %if.end59
  %40 = ptrtoint ptr %size27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp73 = icmp eq i32 %39, %41
  br i1 %cmp73, label %if.then75, label %if.end68.if.end102_crit_edge

if.end68.if.end102_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then75:                                        ; preds = %if.end68
  %add76 = add i32 %tot_out.0, 4096
  %sub = add i32 %max_out.0, -4096
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %42 = ptrtoint ptr %out_page.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_page.0, align 4
  %shr.i.i362 = lshr i32 %43, 30
  %44 = zext i32 %shr.i.i362 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i362, label %if.then75.kunmap.exit_crit_edge [
    i32 2, label %if.then75.if.end.i365_crit_edge
    i32 3, label %is_highmem_idx.exit.i364
  ]

if.then75.if.end.i365_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i365

if.then75.kunmap.exit_crit_edge:                  ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i364:                         ; preds = %if.then75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %45 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp2.i.not.i363 = icmp eq i32 %45, 2
  br i1 %cmp2.i.not.i363, label %is_highmem_idx.exit.i364.if.end.i365_crit_edge, label %is_highmem_idx.exit.i364.kunmap.exit_crit_edge

is_highmem_idx.exit.i364.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i364.if.end.i365_crit_edge:   ; preds = %is_highmem_idx.exit.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i365

if.end.i365:                                      ; preds = %is_highmem_idx.exit.i364.if.end.i365_crit_edge, %if.then75.if.end.i365_crit_edge
  call void @kunmap_high(ptr noundef %out_page.0) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i365, %is_highmem_idx.exit.i364.kunmap.exit_crit_edge, %if.then75.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.0, i32 %3)
  %cmp77 = icmp eq i32 %nr_pages.0, %3
  br i1 %cmp77, label %kunmap.exit.out_crit_edge, label %if.end80

kunmap.exit.out_crit_edge:                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end80:                                         ; preds = %kunmap.exit
  %call38.i.i.i366 = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %cmp82 = icmp eq ptr %call38.i.i.i366, null
  br i1 %cmp82, label %if.end80.out_crit_edge, label %if.end85

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end85:                                         ; preds = %if.end80
  %inc86 = add i32 %nr_pages.0, 1
  %arrayidx87 = getelementptr ptr, ptr %pages, i32 %nr_pages.0
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call38.i.i.i366, ptr %arrayidx87, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %47 = ptrtoint ptr %call38.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call38.i.i.i366, align 4
  %shr.i.i367 = lshr i32 %48, 30
  %49 = zext i32 %shr.i.i367 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i367, label %if.end85.if.then.i371_crit_edge [
    i32 2, label %if.end85.if.else.i373_crit_edge
    i32 3, label %is_highmem_idx.exit.i369
  ]

if.end85.if.else.i373_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i373

if.end85.if.then.i371_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i371

is_highmem_idx.exit.i369:                         ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %50 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp2.i.not.i368 = icmp eq i32 %50, 2
  br i1 %cmp2.i.not.i368, label %is_highmem_idx.exit.i369.if.else.i373_crit_edge, label %is_highmem_idx.exit.i369.if.then.i371_crit_edge

is_highmem_idx.exit.i369.if.then.i371_crit_edge:  ; preds = %is_highmem_idx.exit.i369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i371

is_highmem_idx.exit.i369.if.else.i373_crit_edge:  ; preds = %is_highmem_idx.exit.i369
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i373

if.then.i371:                                     ; preds = %is_highmem_idx.exit.i369.if.then.i371_crit_edge, %if.end85.if.then.i371_crit_edge
  %call5.i370 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i366) #9
  br label %kmap.exit376

if.else.i373:                                     ; preds = %is_highmem_idx.exit.i369.if.else.i373_crit_edge, %if.end85.if.else.i373_crit_edge
  %call6.i372 = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i366) #9
  br label %kmap.exit376

kmap.exit376:                                     ; preds = %if.else.i373, %if.then.i371
  %addr.0.i374 = phi ptr [ %call6.i372, %if.else.i373 ], [ %call5.i370, %if.then.i371 ]
  %51 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %addr.0.i374, ptr %out_buf, align 4
  %52 = ptrtoint ptr %pos18 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pos18, align 4
  %53 = call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %54 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %size27, align 4
  br label %if.end102

if.end102:                                        ; preds = %kmap.exit376, %if.end68.if.end102_crit_edge
  %max_out.1 = phi i32 [ %sub, %kmap.exit376 ], [ %max_out.0, %if.end68.if.end102_crit_edge ]
  %tot_out.1 = phi i32 [ %add76, %kmap.exit376 ], [ %tot_out.0, %if.end68.if.end102_crit_edge ]
  %out_page.1 = phi ptr [ %call38.i.i.i366, %kmap.exit376 ], [ %out_page.0, %if.end68.if.end102_crit_edge ]
  %nr_pages.1 = phi i32 [ %inc86, %kmap.exit376 ], [ %nr_pages.0, %if.end68.if.end102_crit_edge ]
  %55 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %len.0)
  %cmp105.not = icmp ult i32 %56, %len.0
  br i1 %cmp105.not, label %if.end111, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end102
  %add110 = add i32 %56, %tot_in.0
  br label %while.cond140

if.end111:                                        ; preds = %if.end102
  %57 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp116 = icmp eq i32 %56, %58
  br i1 %cmp116, label %if.then118, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then118:                                       ; preds = %if.end111
  %add119 = add i32 %tot_in.0, 4096
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %59 = ptrtoint ptr %in_page.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %in_page.0, align 4
  %shr.i.i377 = lshr i32 %60, 30
  %61 = zext i32 %shr.i.i377 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i377, label %if.then118.kunmap.exit381_crit_edge [
    i32 2, label %if.then118.if.end.i380_crit_edge
    i32 3, label %is_highmem_idx.exit.i379
  ]

if.then118.if.end.i380_crit_edge:                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i380

if.then118.kunmap.exit381_crit_edge:              ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit381

is_highmem_idx.exit.i379:                         ; preds = %if.then118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %62 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp2.i.not.i378 = icmp eq i32 %62, 2
  br i1 %cmp2.i.not.i378, label %is_highmem_idx.exit.i379.if.end.i380_crit_edge, label %is_highmem_idx.exit.i379.kunmap.exit381_crit_edge

is_highmem_idx.exit.i379.kunmap.exit381_crit_edge: ; preds = %is_highmem_idx.exit.i379
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit381

is_highmem_idx.exit.i379.if.end.i380_crit_edge:   ; preds = %is_highmem_idx.exit.i379
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i380

if.end.i380:                                      ; preds = %is_highmem_idx.exit.i379.if.end.i380_crit_edge, %if.then118.if.end.i380_crit_edge
  call void @kunmap_high(ptr noundef %in_page.0) #9
  br label %kunmap.exit381

kunmap.exit381:                                   ; preds = %if.end.i380, %is_highmem_idx.exit.i379.kunmap.exit381_crit_edge, %if.then118.kunmap.exit381_crit_edge
  %63 = getelementptr inbounds %struct.page, ptr %in_page.0, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !75

if.then.i.i:                                      ; preds = %kunmap.exit381
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %65, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit381
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %in_page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %66, %if.end.i.i ]
  %67 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %68 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i.i.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !73

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %70, ptr noundef nonnull @.str.21) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %71 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %71, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zstd_compress_pages, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !74

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %67, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %67) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %add120 = add i64 %start.addr.0, 4096
  %sub121 = add i32 %len.0, -4096
  %shr122 = lshr i64 %add120, 12
  %conv123 = trunc i64 %shr122 to i32
  %call.i382 = call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %conv123, i32 noundef 0, i32 noundef 0) #9
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %72 = ptrtoint ptr %call.i382 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call.i382, align 4
  %shr.i.i383 = lshr i32 %73, 30
  %74 = zext i32 %shr.i.i383 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i383, label %put_page.exit.if.then.i387_crit_edge [
    i32 2, label %put_page.exit.if.else.i389_crit_edge
    i32 3, label %is_highmem_idx.exit.i385
  ]

put_page.exit.if.else.i389_crit_edge:             ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i389

put_page.exit.if.then.i387_crit_edge:             ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i387

is_highmem_idx.exit.i385:                         ; preds = %put_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %75 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp2.i.not.i384 = icmp eq i32 %75, 2
  br i1 %cmp2.i.not.i384, label %is_highmem_idx.exit.i385.if.else.i389_crit_edge, label %is_highmem_idx.exit.i385.if.then.i387_crit_edge

is_highmem_idx.exit.i385.if.then.i387_crit_edge:  ; preds = %is_highmem_idx.exit.i385
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i387

is_highmem_idx.exit.i385.if.else.i389_crit_edge:  ; preds = %is_highmem_idx.exit.i385
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i389

if.then.i387:                                     ; preds = %is_highmem_idx.exit.i385.if.then.i387_crit_edge, %put_page.exit.if.then.i387_crit_edge
  %call5.i386 = call ptr @page_address(ptr noundef %call.i382) #9
  br label %kmap.exit392

if.else.i389:                                     ; preds = %is_highmem_idx.exit.i385.if.else.i389_crit_edge, %put_page.exit.if.else.i389_crit_edge
  %call6.i388 = call ptr @kmap_high(ptr noundef %call.i382) #9
  br label %kmap.exit392

kmap.exit392:                                     ; preds = %if.else.i389, %if.then.i387
  %addr.0.i390 = phi ptr [ %call6.i388, %if.else.i389 ], [ %call5.i386, %if.then.i387 ]
  %76 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %addr.0.i390, ptr %in_buf, align 4
  %77 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %pos, align 4
  %78 = call i32 @llvm.umin.i32(i32 %sub121, i32 4096)
  %79 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %size10, align 4
  br label %cleanup

cleanup:                                          ; preds = %kmap.exit392, %if.end111.cleanup_crit_edge, %do.body34
  %len.2 = phi i32 [ %sub121, %kmap.exit392 ], [ %len.0, %if.end111.cleanup_crit_edge ], [ %len.0, %do.body34 ]
  %max_out.2 = phi i32 [ %max_out.1, %kmap.exit392 ], [ %max_out.1, %if.end111.cleanup_crit_edge ], [ %max_out.0, %do.body34 ]
  %tot_out.2 = phi i32 [ %tot_out.1, %kmap.exit392 ], [ %tot_out.1, %if.end111.cleanup_crit_edge ], [ %tot_out.0, %do.body34 ]
  %tot_in.2 = phi i32 [ %add119, %kmap.exit392 ], [ %tot_in.0, %if.end111.cleanup_crit_edge ], [ %tot_in.0, %do.body34 ]
  %out_page.2 = phi ptr [ %out_page.1, %kmap.exit392 ], [ %out_page.1, %if.end111.cleanup_crit_edge ], [ %out_page.0, %do.body34 ]
  %in_page.2 = phi ptr [ %call.i382, %kmap.exit392 ], [ %in_page.0, %if.end111.cleanup_crit_edge ], [ %in_page.0, %do.body34 ]
  %nr_pages.2 = phi i32 [ %nr_pages.1, %kmap.exit392 ], [ %nr_pages.1, %if.end111.cleanup_crit_edge ], [ %nr_pages.0, %do.body34 ]
  %ret.1 = phi i32 [ %ret.0, %kmap.exit392 ], [ %ret.0, %if.end111.cleanup_crit_edge ], [ -5, %do.body34 ]
  %start.addr.2 = phi i64 [ %add120, %kmap.exit392 ], [ %start.addr.0, %if.end111.cleanup_crit_edge ], [ %start.addr.0, %do.body34 ]
  br i1 %tobool32.not, label %cleanup.while.cond_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.cond140:                                    ; preds = %cleanup209.while.cond140_crit_edge, %cleanup.thread
  %max_out.3 = phi i32 [ %max_out.4, %cleanup209.while.cond140_crit_edge ], [ %max_out.1, %cleanup.thread ]
  %tot_out.3 = phi i32 [ %tot_out.4, %cleanup209.while.cond140_crit_edge ], [ %tot_out.1, %cleanup.thread ]
  %out_page.3 = phi ptr [ %out_page.4, %cleanup209.while.cond140_crit_edge ], [ %out_page.1, %cleanup.thread ]
  %nr_pages.3 = phi i32 [ %nr_pages.4, %cleanup209.while.cond140_crit_edge ], [ %nr_pages.1, %cleanup.thread ]
  %ret.2 = phi i32 [ %ret.3, %cleanup209.while.cond140_crit_edge ], [ %ret.0, %cleanup.thread ]
  %call144 = call i32 @zstd_end_stream(ptr noundef nonnull %call, ptr noundef %out_buf) #9
  %call145 = call i32 @zstd_is_error(i32 noundef %call144) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end165, label %do.body148

do.body148:                                       ; preds = %while.cond140
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_compress_pages.__UNIQUE_ID_ddebug945, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_compress_pages, %if.then160)) #9
          to label %cleanup209 [label %if.then160], !srcloc !74

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %call161 = call i32 @zstd_get_error_code(i32 noundef %call144) #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_compress_pages.__UNIQUE_ID_ddebug945, ptr noundef nonnull @.str.12, i32 noundef %call161) #9
  br label %out

if.end165:                                        ; preds = %while.cond140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp166 = icmp eq i32 %call144, 0
  %80 = ptrtoint ptr %pos18 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pos18, align 4
  br i1 %cmp166, label %cleanup209.thread457, label %if.end172

cleanup209.thread457:                             ; preds = %if.end165
  %add171 = add i32 %81, %tot_out.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add171, i32 %add110)
  %cmp213.not = icmp ult i32 %add171, %add110
  br i1 %cmp213.not, label %if.end216, label %cleanup209.thread457.out_crit_edge

cleanup209.thread457.out_crit_edge:               ; preds = %cleanup209.thread457
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end172:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %max_out.3)
  %cmp175.not = icmp ult i32 %81, %max_out.3
  br i1 %cmp175.not, label %if.end181, label %if.end172.out_crit_edge

if.end172.out_crit_edge:                          ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end181:                                        ; preds = %if.end172
  %add182 = add i32 %tot_out.3, 4096
  %sub183 = add i32 %max_out.3, -4096
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %82 = ptrtoint ptr %out_page.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %out_page.3, align 4
  %shr.i.i393 = lshr i32 %83, 30
  %84 = zext i32 %shr.i.i393 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i393, label %if.end181.kunmap.exit397_crit_edge [
    i32 2, label %if.end181.if.end.i396_crit_edge
    i32 3, label %is_highmem_idx.exit.i395
  ]

if.end181.if.end.i396_crit_edge:                  ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i396

if.end181.kunmap.exit397_crit_edge:               ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit397

is_highmem_idx.exit.i395:                         ; preds = %if.end181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %85 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp2.i.not.i394 = icmp eq i32 %85, 2
  br i1 %cmp2.i.not.i394, label %is_highmem_idx.exit.i395.if.end.i396_crit_edge, label %is_highmem_idx.exit.i395.kunmap.exit397_crit_edge

is_highmem_idx.exit.i395.kunmap.exit397_crit_edge: ; preds = %is_highmem_idx.exit.i395
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit397

is_highmem_idx.exit.i395.if.end.i396_crit_edge:   ; preds = %is_highmem_idx.exit.i395
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i396

if.end.i396:                                      ; preds = %is_highmem_idx.exit.i395.if.end.i396_crit_edge, %if.end181.if.end.i396_crit_edge
  call void @kunmap_high(ptr noundef %out_page.3) #9
  br label %kunmap.exit397

kunmap.exit397:                                   ; preds = %if.end.i396, %is_highmem_idx.exit.i395.kunmap.exit397_crit_edge, %if.end181.kunmap.exit397_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.3, i32 %3)
  %cmp184 = icmp eq i32 %nr_pages.3, %3
  br i1 %cmp184, label %kunmap.exit397.out_crit_edge, label %if.end187

kunmap.exit397.out_crit_edge:                     ; preds = %kunmap.exit397
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end187:                                        ; preds = %kunmap.exit397
  %call38.i.i.i398 = call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %cmp189 = icmp eq ptr %call38.i.i.i398, null
  br i1 %cmp189, label %if.end187.out_crit_edge, label %if.end192

if.end187.out_crit_edge:                          ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end192:                                        ; preds = %if.end187
  %inc193 = add i32 %nr_pages.3, 1
  %arrayidx194 = getelementptr ptr, ptr %pages, i32 %nr_pages.3
  %86 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call38.i.i.i398, ptr %arrayidx194, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %87 = ptrtoint ptr %call38.i.i.i398 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %call38.i.i.i398, align 4
  %shr.i.i399 = lshr i32 %88, 30
  %89 = zext i32 %shr.i.i399 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %shr.i.i399, label %if.end192.if.then.i403_crit_edge [
    i32 2, label %if.end192.if.else.i405_crit_edge
    i32 3, label %is_highmem_idx.exit.i401
  ]

if.end192.if.else.i405_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i405

if.end192.if.then.i403_crit_edge:                 ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i403

is_highmem_idx.exit.i401:                         ; preds = %if.end192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %90 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp2.i.not.i400 = icmp eq i32 %90, 2
  br i1 %cmp2.i.not.i400, label %is_highmem_idx.exit.i401.if.else.i405_crit_edge, label %is_highmem_idx.exit.i401.if.then.i403_crit_edge

is_highmem_idx.exit.i401.if.then.i403_crit_edge:  ; preds = %is_highmem_idx.exit.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i403

is_highmem_idx.exit.i401.if.else.i405_crit_edge:  ; preds = %is_highmem_idx.exit.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i405

if.then.i403:                                     ; preds = %is_highmem_idx.exit.i401.if.then.i403_crit_edge, %if.end192.if.then.i403_crit_edge
  %call5.i402 = call ptr @page_address(ptr noundef nonnull %call38.i.i.i398) #9
  br label %kmap.exit408

if.else.i405:                                     ; preds = %is_highmem_idx.exit.i401.if.else.i405_crit_edge, %if.end192.if.else.i405_crit_edge
  %call6.i404 = call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i398) #9
  br label %kmap.exit408

kmap.exit408:                                     ; preds = %if.else.i405, %if.then.i403
  %addr.0.i406 = phi ptr [ %call6.i404, %if.else.i405 ], [ %call5.i402, %if.then.i403 ]
  %91 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %addr.0.i406, ptr %out_buf, align 4
  %92 = ptrtoint ptr %pos18 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %pos18, align 4
  %93 = call i32 @llvm.umin.i32(i32 %sub183, i32 4096)
  %94 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %size27, align 4
  br label %cleanup209

cleanup209:                                       ; preds = %kmap.exit408, %do.body148
  %max_out.4 = phi i32 [ %sub183, %kmap.exit408 ], [ %max_out.3, %do.body148 ]
  %tot_out.4 = phi i32 [ %add182, %kmap.exit408 ], [ %tot_out.3, %do.body148 ]
  %out_page.4 = phi ptr [ %call38.i.i.i398, %kmap.exit408 ], [ %out_page.3, %do.body148 ]
  %nr_pages.4 = phi i32 [ %inc193, %kmap.exit408 ], [ %nr_pages.3, %do.body148 ]
  %ret.3 = phi i32 [ %ret.2, %kmap.exit408 ], [ -5, %do.body148 ]
  br i1 %tobool146.not, label %cleanup209.while.cond140_crit_edge, label %cleanup209.out_crit_edge

cleanup209.out_crit_edge:                         ; preds = %cleanup209
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

cleanup209.while.cond140_crit_edge:               ; preds = %cleanup209
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond140

if.end216:                                        ; preds = %cleanup209.thread457
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add110, ptr %total_in, align 4
  %96 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add171, ptr %total_out, align 4
  br label %out

out:                                              ; preds = %if.end216, %cleanup209.out_crit_edge, %if.end187.out_crit_edge, %kunmap.exit397.out_crit_edge, %if.end172.out_crit_edge, %cleanup209.thread457.out_crit_edge, %if.then160, %cleanup.out_crit_edge, %if.end80.out_crit_edge, %kunmap.exit.out_crit_edge, %if.end59.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then40, %kmap.exit.out_crit_edge
  %out_page.5 = phi ptr [ %out_page.3, %if.end216 ], [ null, %kmap.exit.out_crit_edge ], [ %out_page.3, %cleanup209.thread457.out_crit_edge ], [ %out_page.0, %if.then40 ], [ %out_page.3, %if.then160 ], [ %out_page.3, %if.end172.out_crit_edge ], [ null, %kunmap.exit397.out_crit_edge ], [ null, %if.end187.out_crit_edge ], [ %out_page.4, %cleanup209.out_crit_edge ], [ %out_page.0, %if.end59.out_crit_edge ], [ %out_page.0, %land.lhs.true.out_crit_edge ], [ null, %kunmap.exit.out_crit_edge ], [ null, %if.end80.out_crit_edge ], [ %out_page.2, %cleanup.out_crit_edge ]
  %in_page.3 = phi ptr [ %in_page.0, %if.end216 ], [ %call.i, %kmap.exit.out_crit_edge ], [ %in_page.0, %cleanup209.thread457.out_crit_edge ], [ %in_page.0, %if.then40 ], [ %in_page.0, %if.then160 ], [ %in_page.0, %kunmap.exit397.out_crit_edge ], [ %in_page.0, %if.end187.out_crit_edge ], [ %in_page.0, %if.end172.out_crit_edge ], [ %in_page.0, %cleanup209.out_crit_edge ], [ %in_page.0, %if.end59.out_crit_edge ], [ %in_page.0, %land.lhs.true.out_crit_edge ], [ %in_page.0, %kunmap.exit.out_crit_edge ], [ %in_page.0, %if.end80.out_crit_edge ], [ %in_page.2, %cleanup.out_crit_edge ]
  %nr_pages.5 = phi i32 [ %nr_pages.3, %if.end216 ], [ 0, %kmap.exit.out_crit_edge ], [ %nr_pages.3, %cleanup209.thread457.out_crit_edge ], [ %nr_pages.0, %if.then40 ], [ %nr_pages.3, %if.then160 ], [ %nr_pages.3, %if.end172.out_crit_edge ], [ %3, %kunmap.exit397.out_crit_edge ], [ %nr_pages.3, %if.end187.out_crit_edge ], [ %nr_pages.4, %cleanup209.out_crit_edge ], [ %nr_pages.0, %if.end59.out_crit_edge ], [ %nr_pages.0, %land.lhs.true.out_crit_edge ], [ %3, %kunmap.exit.out_crit_edge ], [ %nr_pages.0, %if.end80.out_crit_edge ], [ %nr_pages.2, %cleanup.out_crit_edge ]
  %ret.4 = phi i32 [ 0, %if.end216 ], [ -12, %kmap.exit.out_crit_edge ], [ -7, %cleanup209.thread457.out_crit_edge ], [ -5, %if.then40 ], [ -5, %if.then160 ], [ -7, %if.end172.out_crit_edge ], [ -7, %kunmap.exit397.out_crit_edge ], [ -12, %if.end187.out_crit_edge ], [ %ret.3, %cleanup209.out_crit_edge ], [ -7, %if.end59.out_crit_edge ], [ -7, %land.lhs.true.out_crit_edge ], [ -7, %kunmap.exit.out_crit_edge ], [ -12, %if.end80.out_crit_edge ], [ %ret.1, %cleanup.out_crit_edge ]
  %97 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %nr_pages.5, ptr %out_pages, align 4
  %tobool217.not = icmp eq ptr %in_page.3, null
  br i1 %tobool217.not, label %out.if.end219_crit_edge, label %if.then218

out.if.end219_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then218:                                       ; preds = %out
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %98 = ptrtoint ptr %in_page.3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %in_page.3, align 4
  %shr.i.i409 = lshr i32 %99, 30
  %100 = zext i32 %shr.i.i409 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i409, label %if.then218.kunmap.exit413_crit_edge [
    i32 2, label %if.then218.if.end.i412_crit_edge
    i32 3, label %is_highmem_idx.exit.i411
  ]

if.then218.if.end.i412_crit_edge:                 ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i412

if.then218.kunmap.exit413_crit_edge:              ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit413

is_highmem_idx.exit.i411:                         ; preds = %if.then218
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %101 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp2.i.not.i410 = icmp eq i32 %101, 2
  br i1 %cmp2.i.not.i410, label %is_highmem_idx.exit.i411.if.end.i412_crit_edge, label %is_highmem_idx.exit.i411.kunmap.exit413_crit_edge

is_highmem_idx.exit.i411.kunmap.exit413_crit_edge: ; preds = %is_highmem_idx.exit.i411
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit413

is_highmem_idx.exit.i411.if.end.i412_crit_edge:   ; preds = %is_highmem_idx.exit.i411
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i412

if.end.i412:                                      ; preds = %is_highmem_idx.exit.i411.if.end.i412_crit_edge, %if.then218.if.end.i412_crit_edge
  call void @kunmap_high(ptr noundef nonnull %in_page.3) #9
  br label %kunmap.exit413

kunmap.exit413:                                   ; preds = %if.end.i412, %is_highmem_idx.exit.i411.kunmap.exit413_crit_edge, %if.then218.kunmap.exit413_crit_edge
  %102 = getelementptr inbounds %struct.page, ptr %in_page.3, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  %and.i.i414 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i414)
  %tobool.not.i.i415 = icmp eq i32 %and.i.i414, 0
  br i1 %tobool.not.i.i415, label %if.end.i.i418, label %if.then.i.i417, !prof !75

if.then.i.i417:                                   ; preds = %kunmap.exit413
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i416 = add i32 %104, -1
  br label %_compound_head.exit.i423

if.end.i.i418:                                    ; preds = %kunmap.exit413
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %in_page.3 to i32
  br label %_compound_head.exit.i423

_compound_head.exit.i423:                         ; preds = %if.end.i.i418, %if.then.i.i417
  %retval.0.i.i419 = phi i32 [ %sub.i.i416, %if.then.i.i417 ], [ %105, %if.end.i.i418 ]
  %106 = inttoptr i32 %retval.0.i.i419 to ptr
  %_refcount.i.i.i.i.i420 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 3
  %call.i.i.i.i.i.i.i421 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i420, i32 noundef 4) #9
  %107 = ptrtoint ptr %_refcount.i.i.i.i.i420 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %_refcount.i.i.i.i.i420, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i.i.i.i422 = icmp eq i32 %108, 0
  br i1 %cmp.i.i.i.i422, label %if.then.i.i.i.i424, label %do.end5.i.i.i.i428, !prof !73

if.then.i.i.i.i424:                               ; preds = %_compound_head.exit.i423
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %106, ptr noundef nonnull @.str.21) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end5.i.i.i.i428:                               ; preds = %_compound_head.exit.i423
  %call.i.i.i10.i.i.i.i425 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i420, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i420, i32 1, i32 3, i32 1) #9
  %109 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i420, ptr %_refcount.i.i.i.i.i420, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i420) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i.i.i426 = extractvalue { i32, i32 } %109, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i426)
  %cmp.i.i.i.i.i.i.i427 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i426, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@zstd_compress_pages, %if.then.i.i.i.i.i430)) #9
          to label %folio_put_testzero.exit.i.i431 [label %if.then.i.i.i.i.i430], !srcloc !74

if.then.i.i.i.i.i430:                             ; preds = %do.end5.i.i.i.i428
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i429 = zext i1 %cmp.i.i.i.i.i.i.i427 to i32
  call void @__page_ref_mod_and_test(ptr noundef %106, i32 noundef -1, i32 noundef %conv.i.i.i.i.i429) #9
  br label %folio_put_testzero.exit.i.i431

folio_put_testzero.exit.i.i431:                   ; preds = %if.then.i.i.i.i.i430, %do.end5.i.i.i.i428
  br i1 %cmp.i.i.i.i.i.i.i427, label %if.then.i4.i432, label %folio_put_testzero.exit.i.i431.if.end219_crit_edge

folio_put_testzero.exit.i.i431.if.end219_crit_edge: ; preds = %folio_put_testzero.exit.i.i431
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end219

if.then.i4.i432:                                  ; preds = %folio_put_testzero.exit.i.i431
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %106) #9
  br label %if.end219

if.end219:                                        ; preds = %if.then.i4.i432, %folio_put_testzero.exit.i.i431.if.end219_crit_edge, %out.if.end219_crit_edge
  %tobool220.not = icmp eq ptr %out_page.5, null
  br i1 %tobool220.not, label %if.end219.cleanup223_crit_edge, label %if.then221

if.end219.cleanup223_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup223

if.then221:                                       ; preds = %if.end219
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %110 = ptrtoint ptr %out_page.5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %out_page.5, align 4
  %shr.i.i434 = lshr i32 %111, 30
  %112 = zext i32 %shr.i.i434 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i.i434, label %if.then221.cleanup223_crit_edge [
    i32 2, label %if.then221.if.end.i437_crit_edge
    i32 3, label %is_highmem_idx.exit.i436
  ]

if.then221.if.end.i437_crit_edge:                 ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i437

if.then221.cleanup223_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup223

is_highmem_idx.exit.i436:                         ; preds = %if.then221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %113 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp2.i.not.i435 = icmp eq i32 %113, 2
  br i1 %cmp2.i.not.i435, label %is_highmem_idx.exit.i436.if.end.i437_crit_edge, label %is_highmem_idx.exit.i436.cleanup223_crit_edge

is_highmem_idx.exit.i436.cleanup223_crit_edge:    ; preds = %is_highmem_idx.exit.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup223

is_highmem_idx.exit.i436.if.end.i437_crit_edge:   ; preds = %is_highmem_idx.exit.i436
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i437

if.end.i437:                                      ; preds = %is_highmem_idx.exit.i436.if.end.i437_crit_edge, %if.then221.if.end.i437_crit_edge
  call void @kunmap_high(ptr noundef nonnull %out_page.5) #9
  br label %cleanup223

cleanup223:                                       ; preds = %if.end.i437, %is_highmem_idx.exit.i436.cleanup223_crit_edge, %if.then221.cleanup223_crit_edge, %if.end219.cleanup223_crit_edge, %if.end219.thread
  %retval.0 = phi i32 [ %ret.4, %if.end219.cleanup223_crit_edge ], [ -5, %if.end219.thread ], [ %ret.4, %if.then221.cleanup223_crit_edge ], [ %ret.4, %is_highmem_idx.exit.i436.cleanup223_crit_edge ], [ %ret.4, %if.end.i437 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_cstream(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_compress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_is_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_get_error_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_end_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress_bio(ptr noundef %ws, ptr noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -24
  %compressed_pages = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 2
  %0 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compressed_pages, align 8
  %compressed_len = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 6
  %2 = ptrtoint ptr %compressed_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compressed_len, align 4
  %sub = add i32 %3, 4095
  %div151 = lshr i32 %sub, 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %size = getelementptr i8, ptr %ws, i32 -20
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %call = tail call ptr @zstd_init_dstream(i32 noundef 131072, ptr noundef %5, i32 noundef %7) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_decompress_bio.__UNIQUE_ID_ddebug948, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_decompress_bio, %if.then6)) #9
          to label %done [label %if.then6], !srcloc !74

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_decompress_bio.__UNIQUE_ID_ddebug948, ptr noundef nonnull @.str.14) #9
  br label %done

if.end7:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr.i.i = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i.i, label %if.end7.if.then.i_crit_edge [
    i32 2, label %if.end7.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end7.if.else.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end7.if.then.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end7.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %9) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end7.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %9) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %in_buf = getelementptr i8, ptr %ws, i32 16
  %14 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %addr.0.i, ptr %in_buf, align 4
  %pos = getelementptr i8, ptr %ws, i32 24
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pos, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %3, i32 4096)
  %size12 = getelementptr i8, ptr %ws, i32 20
  %17 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size12, align 4
  %buf = getelementptr i8, ptr %ws, i32 -16
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %out_buf = getelementptr i8, ptr %ws, i32 28
  %20 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %out_buf, align 4
  %pos14 = getelementptr i8, ptr %ws, i32 36
  %21 = ptrtoint ptr %pos14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pos14, align 4
  %size16 = getelementptr i8, ptr %ws, i32 32
  %22 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4096, ptr %size16, align 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %kmap.exit
  %page_in_index.0 = phi i32 [ 0, %kmap.exit ], [ %page_in_index.2, %cleanup.while.cond_crit_edge ]
  %total_out.0 = phi i32 [ 0, %kmap.exit ], [ %total_out.1, %cleanup.while.cond_crit_edge ]
  %srclen.0 = phi i32 [ %3, %kmap.exit ], [ %srclen.2, %cleanup.while.cond_crit_edge ]
  %call19 = tail call i32 @zstd_decompress_stream(ptr noundef nonnull %call, ptr noundef %out_buf, ptr noundef %in_buf) #9
  %call20 = tail call i32 @zstd_is_error(i32 noundef %call19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end40, label %do.body23

do.body23:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_decompress_bio.__UNIQUE_ID_ddebug951, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_decompress_bio, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !74

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @zstd_get_error_code(i32 noundef %call19) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_decompress_bio.__UNIQUE_ID_ddebug951, ptr noundef nonnull @.str.15, i32 noundef %call36) #9
  br label %done

if.end40:                                         ; preds = %while.cond
  %23 = ptrtoint ptr %pos14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pos14, align 4
  %add43 = add i32 %24, %total_out.0
  store i32 0, ptr %pos14, align 4
  %25 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %out_buf, align 4
  %call49 = tail call i32 @btrfs_decompress_buf2page(ptr noundef %26, i32 noundef %24, ptr noundef %cb, i32 noundef %total_out.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.end40.while.end_crit_edge, label %if.end52

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end52:                                         ; preds = %if.end40
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %srclen.0)
  %cmp55.not = icmp uge i32 %28, %srclen.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp58 = icmp eq i32 %call19, 0
  %or.cond = or i1 %cmp58, %cmp55.not
  br i1 %or.cond, label %if.end52.while.end_crit_edge, label %if.end60

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end60:                                         ; preds = %if.end52
  %29 = ptrtoint ptr %size12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp65 = icmp eq i32 %28, %30
  br i1 %cmp65, label %if.then66, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %if.end60
  %inc = add i32 %page_in_index.0, 1
  %arrayidx67 = getelementptr ptr, ptr %1, i32 %page_in_index.0
  %31 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx67, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %shr.i.i155 = lshr i32 %34, 30
  %35 = zext i32 %shr.i.i155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i155, label %if.then66.kunmap.exit_crit_edge [
    i32 2, label %if.then66.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i157
  ]

if.then66.if.end.i_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then66.kunmap.exit_crit_edge:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i157:                         ; preds = %if.then66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.not.i156 = icmp eq i32 %36, 2
  br i1 %cmp2.i.not.i156, label %is_highmem_idx.exit.i157.if.end.i_crit_edge, label %is_highmem_idx.exit.i157.kunmap.exit_crit_edge

is_highmem_idx.exit.i157.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i157.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i157.if.end.i_crit_edge, %if.then66.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %32) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i157.kunmap.exit_crit_edge, %if.then66.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div151)
  %cmp68.not = icmp ult i32 %inc, %div151
  br i1 %cmp68.not, label %if.end72, label %if.then69

if.then69:                                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %in_buf, align 4
  br label %done

if.end72:                                         ; preds = %kunmap.exit
  %sub73 = add i32 %srclen.0, -4096
  %arrayidx74 = getelementptr ptr, ptr %1, i32 %inc
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx74, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 44) #9
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %shr.i.i158 = lshr i32 %41, 30
  %42 = zext i32 %shr.i.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i.i158, label %if.end72.if.then.i162_crit_edge [
    i32 2, label %if.end72.if.else.i164_crit_edge
    i32 3, label %is_highmem_idx.exit.i160
  ]

if.end72.if.else.i164_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i164

if.end72.if.then.i162_crit_edge:                  ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i162

is_highmem_idx.exit.i160:                         ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %43 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp2.i.not.i159 = icmp eq i32 %43, 2
  br i1 %cmp2.i.not.i159, label %is_highmem_idx.exit.i160.if.else.i164_crit_edge, label %is_highmem_idx.exit.i160.if.then.i162_crit_edge

is_highmem_idx.exit.i160.if.then.i162_crit_edge:  ; preds = %is_highmem_idx.exit.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i162

is_highmem_idx.exit.i160.if.else.i164_crit_edge:  ; preds = %is_highmem_idx.exit.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i164

if.then.i162:                                     ; preds = %is_highmem_idx.exit.i160.if.then.i162_crit_edge, %if.end72.if.then.i162_crit_edge
  %call5.i161 = tail call ptr @page_address(ptr noundef %39) #9
  br label %kmap.exit167

if.else.i164:                                     ; preds = %is_highmem_idx.exit.i160.if.else.i164_crit_edge, %if.end72.if.else.i164_crit_edge
  %call6.i163 = tail call ptr @kmap_high(ptr noundef %39) #9
  br label %kmap.exit167

kmap.exit167:                                     ; preds = %if.else.i164, %if.then.i162
  %addr.0.i165 = phi ptr [ %call6.i163, %if.else.i164 ], [ %call5.i161, %if.then.i162 ]
  %44 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %addr.0.i165, ptr %in_buf, align 4
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %pos, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %sub73, i32 4096)
  %47 = ptrtoint ptr %size12 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %size12, align 4
  br label %cleanup

cleanup:                                          ; preds = %kmap.exit167, %if.end60.cleanup_crit_edge, %do.body23
  %page_in_index.2 = phi i32 [ %inc, %kmap.exit167 ], [ %page_in_index.0, %if.end60.cleanup_crit_edge ], [ %page_in_index.0, %do.body23 ]
  %total_out.1 = phi i32 [ %add43, %kmap.exit167 ], [ %add43, %if.end60.cleanup_crit_edge ], [ %total_out.0, %do.body23 ]
  %ret.0 = phi i32 [ %call49, %kmap.exit167 ], [ %call49, %if.end60.cleanup_crit_edge ], [ -5, %do.body23 ]
  %srclen.2 = phi i32 [ %sub73, %kmap.exit167 ], [ %srclen.0, %if.end60.cleanup_crit_edge ], [ %srclen.0, %do.body23 ]
  br i1 %tobool21.not, label %cleanup.while.cond_crit_edge, label %cleanup.done_crit_edge

cleanup.done_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %if.end40.while.end_crit_edge
  %orig_bio = getelementptr inbounds %struct.compressed_bio, ptr %cb, i32 0, i32 10
  %48 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %orig_bio, align 8
  tail call void @zero_fill_bio(ptr noundef %49) #9
  br label %done

done:                                             ; preds = %while.end, %cleanup.done_crit_edge, %if.then69, %if.then35, %if.then6, %do.body
  %page_in_index.3 = phi i32 [ %page_in_index.0, %while.end ], [ 0, %if.then6 ], [ 0, %do.body ], [ %page_in_index.0, %if.then35 ], [ %inc, %if.then69 ], [ %page_in_index.2, %cleanup.done_crit_edge ]
  %ret.1 = phi i32 [ 0, %while.end ], [ -5, %if.then6 ], [ -5, %do.body ], [ -5, %if.then35 ], [ -5, %if.then69 ], [ %ret.0, %cleanup.done_crit_edge ]
  %in_buf89 = getelementptr i8, ptr %ws, i32 16
  %50 = ptrtoint ptr %in_buf89 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_buf89, align 4
  %tobool91.not = icmp eq ptr %51, null
  br i1 %tobool91.not, label %done.cleanup95_crit_edge, label %if.then92

done.cleanup95_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

if.then92:                                        ; preds = %done
  %arrayidx93 = getelementptr ptr, ptr %1, i32 %page_in_index.3
  %52 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx93, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 55) #9
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %shr.i.i168 = lshr i32 %55, 30
  %56 = zext i32 %shr.i.i168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %shr.i.i168, label %if.then92.cleanup95_crit_edge [
    i32 2, label %if.then92.if.end.i171_crit_edge
    i32 3, label %is_highmem_idx.exit.i170
  ]

if.then92.if.end.i171_crit_edge:                  ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i171

if.then92.cleanup95_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

is_highmem_idx.exit.i170:                         ; preds = %if.then92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %57 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp2.i.not.i169 = icmp eq i32 %57, 2
  br i1 %cmp2.i.not.i169, label %is_highmem_idx.exit.i170.if.end.i171_crit_edge, label %is_highmem_idx.exit.i170.cleanup95_crit_edge

is_highmem_idx.exit.i170.cleanup95_crit_edge:     ; preds = %is_highmem_idx.exit.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup95

is_highmem_idx.exit.i170.if.end.i171_crit_edge:   ; preds = %is_highmem_idx.exit.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i171

if.end.i171:                                      ; preds = %is_highmem_idx.exit.i170.if.end.i171_crit_edge, %if.then92.if.end.i171_crit_edge
  tail call void @kunmap_high(ptr noundef %53) #9
  br label %cleanup95

cleanup95:                                        ; preds = %if.end.i171, %is_highmem_idx.exit.i170.cleanup95_crit_edge, %if.then92.cleanup95_crit_edge, %done.cleanup95_crit_edge
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @zstd_init_dstream(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_decompress_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_decompress_buf2page(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zstd_decompress(ptr noundef %ws, ptr noundef %data_in, ptr noundef %dest_page, i32 noundef %start_byte, i32 noundef %srclen, i32 noundef %destlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -24
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %size = getelementptr i8, ptr %ws, i32 -20
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %call = tail call ptr @zstd_init_dstream(i32 noundef 131072, ptr noundef %1, i32 noundef %3) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %finish

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %destlen, i32 4096)
  %in_buf = getelementptr i8, ptr %ws, i32 16
  %5 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data_in, ptr %in_buf, align 4
  %pos = getelementptr i8, ptr %ws, i32 24
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pos, align 4
  %size6 = getelementptr i8, ptr %ws, i32 20
  %7 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %srclen, ptr %size6, align 4
  %buf = getelementptr i8, ptr %ws, i32 -16
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %out_buf = getelementptr i8, ptr %ws, i32 28
  %10 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %out_buf, align 4
  %pos8 = getelementptr i8, ptr %ws, i32 36
  %11 = ptrtoint ptr %pos8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pos8, align 4
  %size10 = getelementptr i8, ptr %ws, i32 32
  %12 = ptrtoint ptr %size10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %size10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp11152.not = icmp eq i32 %4, 0
  br i1 %cmp11152.not, label %if.end.cleanup85_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.cleanup85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %ret2.0155 = phi i32 [ %call32, %while.cond.backedge.land.rhs_crit_edge ], [ 1, %if.end.land.rhs_crit_edge ]
  %total_out.0154 = phi i32 [ %add, %while.cond.backedge.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %pg_offset.0153 = phi i32 [ %pg_offset.1.ph, %while.cond.backedge.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos, align 4
  %15 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp16 = icmp ult i32 %14, %16
  br i1 %cmp16, label %while.body, label %land.rhs.finish_crit_edge

land.rhs.finish_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret2.0155)
  %cmp17 = icmp eq i32 %ret2.0155, 0
  br i1 %cmp17, label %do.body19, label %if.end29

do.body19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_decompress.__UNIQUE_ID_ddebug956, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_decompress, %if.then25)) #9
          to label %finish [label %if.then25], !srcloc !74

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_decompress.__UNIQUE_ID_ddebug956, ptr noundef nonnull @.str.18) #9
  br label %finish

if.end29:                                         ; preds = %while.body
  %call32 = tail call i32 @zstd_decompress_stream(ptr noundef nonnull %call, ptr noundef %out_buf, ptr noundef %in_buf) #9
  %call33 = tail call i32 @zstd_is_error(i32 noundef %call32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end53, label %do.body36

do.body36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zstd_decompress.__UNIQUE_ID_ddebug957, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zstd_decompress, %if.then48)) #9
          to label %finish [label %if.then48], !srcloc !74

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 @zstd_get_error_code(i32 noundef %call32) #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @zstd_decompress.__UNIQUE_ID_ddebug957, ptr noundef nonnull @.str.15, i32 noundef %call49) #9
  br label %finish

if.end53:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %pos8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos8, align 4
  %add = add i32 %18, %total_out.0154
  store i32 0, ptr %pos8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_byte)
  %cmp58.not = icmp ugt i32 %add, %start_byte
  br i1 %cmp58.not, label %land.lhs.true, label %if.end53.while.cond.backedge_crit_edge

if.end53.while.cond.backedge_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %if.end53
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %start_byte, i32 %total_out.0154)
  %sub65 = sub i32 %4, %pg_offset.0153
  %20 = ptrtoint ptr %size10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size10, align 4
  %sub68 = sub i32 %21, %19
  %22 = tail call i32 @llvm.umin.i32(i32 %sub65, i32 %sub68)
  %23 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %25, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %dest_page, i32 noundef %or.i.i) #9
  %add.i = add i32 %22, %pg_offset.0153
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %memcpy_to_page.exit, !prof !73

do.body2.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

memcpy_to_page.exit:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr77 = getelementptr i8, ptr %24, i32 %19
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %pg_offset.0153
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr77, i32 %22)
  tail call void @flush_dcache_page(ptr noundef %dest_page) #9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %memcpy_to_page.exit, %if.end53.while.cond.backedge_crit_edge
  %pg_offset.1.ph = phi i32 [ %pg_offset.0153, %if.end53.while.cond.backedge_crit_edge ], [ %add.i, %memcpy_to_page.exit ]
  %cmp11 = icmp ugt i32 %4, %pg_offset.1.ph
  br i1 %cmp11, label %while.cond.backedge.land.rhs_crit_edge, label %while.cond.backedge.finish_crit_edge

while.cond.backedge.finish_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %finish

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

finish:                                           ; preds = %while.cond.backedge.finish_crit_edge, %if.then48, %do.body36, %if.then25, %do.body19, %land.rhs.finish_crit_edge, %do.end
  %pg_offset.2 = phi i32 [ 0, %do.end ], [ %pg_offset.0153, %if.then25 ], [ %pg_offset.0153, %if.then48 ], [ %pg_offset.0153, %do.body19 ], [ %pg_offset.0153, %do.body36 ], [ %pg_offset.1.ph, %while.cond.backedge.finish_crit_edge ], [ %pg_offset.0153, %land.rhs.finish_crit_edge ]
  %ret.2 = phi i32 [ -5, %do.end ], [ -5, %if.then25 ], [ -5, %if.then48 ], [ -5, %do.body19 ], [ -5, %do.body36 ], [ 0, %land.rhs.finish_crit_edge ], [ 0, %while.cond.backedge.finish_crit_edge ]
  %destlen.addr.0 = phi i32 [ %destlen, %do.end ], [ %4, %if.then25 ], [ %4, %if.then48 ], [ %4, %do.body19 ], [ %4, %do.body36 ], [ %4, %land.rhs.finish_crit_edge ], [ %4, %while.cond.backedge.finish_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %destlen.addr.0, i32 %pg_offset.2)
  %cmp81 = icmp ugt i32 %destlen.addr.0, %pg_offset.2
  br i1 %cmp81, label %if.then82, label %finish.cleanup85_crit_edge

finish.cleanup85_crit_edge:                       ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.then82:                                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #11
  %sub83 = sub i32 %destlen.addr.0, %pg_offset.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i137 = or i32 %27, 512
  %call.i.i138 = tail call ptr @__kmap_local_page_prot(ptr noundef %dest_page, i32 noundef %or.i.i137) #9
  %add.ptr.i139 = getelementptr i8, ptr %call.i.i138, i32 %pg_offset.2
  %28 = call ptr @memset(ptr %add.ptr.i139, i32 0, i32 %sub83)
  tail call void @flush_dcache_page(ptr noundef %dest_page) #9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i138) #9
  br label %cleanup85

cleanup85:                                        ; preds = %if.then82, %finish.cleanup85_crit_edge, %if.end.cleanup85_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.then82 ], [ %ret.2, %finish.cleanup85_crit_edge ], [ 0, %if.end.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_cstream_workspace_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zstd_dstream_workspace_bound(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @zstd_get_params(ptr sret(%struct.ZSTD_parameters) align 4, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @zstd_init_workspace_manager.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/btrfs/zstd.c", i32 178, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @zstd_init_workspace_manager.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/btrfs/zstd.c", i32 179, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @zstd_init_workspace_manager.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/btrfs/zstd.c", i32 180, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/zstd.c", i32 188, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @zstd_init_workspace_manager._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @zstd_init_workspace_manager._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/btrfs/zstd.c", i32 395, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @zstd_compress_pages._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @zstd_compress_pages._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/zstd.c", i32 424, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @zstd_compress_pages.__UNIQUE_ID_ddebug940, !21, !"__UNIQUE_ID_ddebug940", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/zstd.c", i32 492, i32 4}
!26 = !{ptr @zstd_compress_pages.__UNIQUE_ID_ddebug945, !25, !"__UNIQUE_ID_ddebug945", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/btrfs/zstd.c", i32 561, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @zstd_decompress_bio.__UNIQUE_ID_ddebug948, !28, !"__UNIQUE_ID_ddebug948", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/btrfs/zstd.c", i32 580, i32 4}
!33 = !{ptr @zstd_decompress_bio.__UNIQUE_ID_ddebug951, !32, !"__UNIQUE_ID_ddebug951", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/zstd.c", i32 636, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @zstd_decompress._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @zstd_decompress._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/btrfs/zstd.c", i32 660, i32 4}
!41 = !{ptr @zstd_decompress.__UNIQUE_ID_ddebug956, !40, !"__UNIQUE_ID_ddebug956", i1 false, i1 false}
!42 = !{ptr @zstd_decompress.__UNIQUE_ID_ddebug957, !43, !"__UNIQUE_ID_ddebug957", i1 false, i1 false}
!43 = !{!"../fs/btrfs/zstd.c", i32 667, i32 4}
!44 = !{ptr @btrfs_zstd_compress, !45, !"btrfs_zstd_compress", i1 false, i1 false}
!45 = !{!"../fs/btrfs/zstd.c", i32 701, i32 32}
!46 = !{ptr @wsm, !47, !"wsm", i1 false, i1 false}
!47 = !{!"../fs/btrfs/zstd.c", i32 85, i32 38}
!48 = !{ptr @zstd_ws_mem_sizes, !49, !"zstd_ws_mem_sizes", i1 false, i1 false}
!49 = !{!"../fs/btrfs/zstd.c", i32 87, i32 15}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/mm.h", i32 717, i32 2}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"zstd_get_btrfs_parameters: %agg.result"}
!68 = distinct !{!68, !"zstd_get_btrfs_parameters"}
!69 = !{i64 2149275288}
!70 = !{!71}
!71 = distinct !{!71, !72, !"zstd_get_btrfs_parameters: %agg.result"}
!72 = distinct !{!72, !"zstd_get_btrfs_parameters"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 2148385778, i64 2148385783, i64 2148385796, i64 2148385840, i64 2148385874, i64 2148385895}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2153203550, i64 2153204033, i64 2153203587, i64 2153203643, i64 2153203677, i64 2153203701, i64 2153203742, i64 2153203763, i64 2153203791, i64 2153203825}
!77 = !{i64 2148649656}
!78 = !{i64 2148564365, i64 2148564397, i64 2148564426, i64 2148564460, i64 2148564491, i64 2148564514}
!79 = !{i64 2148649885}
!80 = !{i64 2153734503, i64 2153734991, i64 2153734540, i64 2153734596, i64 2153734630, i64 2153734654, i64 2153734695, i64 2153734716, i64 2153734744, i64 2153734778}
