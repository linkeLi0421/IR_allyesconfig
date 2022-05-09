; ModuleID = '/llk/IR_all_yes/drivers/dma-buf/selftest.c_pt.bc'
source_filename = "../drivers/dma-buf/selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.selftest = type { i8, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.50 }
%union.anon.50 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.33, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.33 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.subtest = type { ptr, ptr }

@__param_str_igt__12__sanitycheck = internal constant [38 x i8] c"dmabuf_selftests.igt__12__sanitycheck\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@selftests = internal global { [4 x %struct.selftest], [48 x i8] } { [4 x %struct.selftest] [%struct.selftest { i8 0, ptr @.str.9, ptr @__sanitycheck__ }, %struct.selftest { i8 0, ptr @.str.10, ptr @dma_fence }, %struct.selftest { i8 0, ptr @.str.11, ptr @dma_fence_chain }, %struct.selftest { i8 0, ptr @.str.12, ptr @dma_resv }], [48 x i8] zeroinitializer }, align 32
@__param_igt__12__sanitycheck = internal constant %struct.kernel_param { ptr @__param_str_igt__12__sanitycheck, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.50 { ptr @selftests } }, section "__param", align 4
@__UNIQUE_ID_igt__12__sanitychecktype189 = internal constant [52 x i8] c"dmabuf_selftests.parmtype=igt__12__sanitycheck:bool\00", section ".modinfo", align 1
@__param_str_igt__13__dma_fence = internal constant [36 x i8] c"dmabuf_selftests.igt__13__dma_fence\00", align 1
@__param_igt__13__dma_fence = internal constant %struct.kernel_param { ptr @__param_str_igt__13__dma_fence, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.50 { ptr getelementptr (i8, ptr @selftests, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_igt__13__dma_fencetype190 = internal constant [50 x i8] c"dmabuf_selftests.parmtype=igt__13__dma_fence:bool\00", section ".modinfo", align 1
@__param_str_igt__14__dma_fence_chain = internal constant [42 x i8] c"dmabuf_selftests.igt__14__dma_fence_chain\00", align 1
@__param_igt__14__dma_fence_chain = internal constant %struct.kernel_param { ptr @__param_str_igt__14__dma_fence_chain, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.50 { ptr getelementptr (i8, ptr @selftests, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_igt__14__dma_fence_chaintype191 = internal constant [56 x i8] c"dmabuf_selftests.parmtype=igt__14__dma_fence_chain:bool\00", section ".modinfo", align 1
@__param_str_igt__15__dma_resv = internal constant [35 x i8] c"dmabuf_selftests.igt__15__dma_resv\00", align 1
@__param_igt__15__dma_resv = internal constant %struct.kernel_param { ptr @__param_str_igt__15__dma_resv, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.50 { ptr getelementptr (i8, ptr @selftests, i64 36) } }, section "__param", align 4
@__UNIQUE_ID_igt__15__dma_resvtype192 = internal constant [49 x i8] c"dmabuf_selftests.parmtype=igt__15__dma_resv:bool\00", section ".modinfo", align 1
@__sanitycheck__.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmabuf_selftests\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__sanitycheck__\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma-buf/selftest.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hello World!\0A\00", [18 x i8] zeroinitializer }, align 32
@__subtests._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 103, ptr null, ptr null }, align 1
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016dma-buf: Running %s/%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__subtests\00", [21 x i8] zeroinitializer }, align 32
@__subtests._entry_ptr = internal global ptr @__subtests._entry, section ".printk_index", align 4
@__subtests._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 108, ptr null, ptr null }, align 1
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dma-buf/%s: %s failed with error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__subtests._entry_ptr.8 = internal global ptr @__subtests._entry.6, section ".printk_index", align 4
@__param_str_st_filter = internal constant [27 x i8] c"dmabuf_selftests.st_filter\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__st_filter = internal global ptr null, align 4
@__param_st_filter = internal constant %struct.kernel_param { ptr @__param_str_st_filter, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.50 { ptr @__st_filter } }, section "__param", align 4
@__UNIQUE_ID_st_filtertype194 = internal constant [42 x i8] c"dmabuf_selftests.parmtype=st_filter:charp\00", section ".modinfo", align 1
@__initcall__kmod_dmabuf_selftests__195_163_st_init6 = internal global ptr @st_init, section ".initcall6.init", align 4
@__exitcall_st_exit = internal global ptr @st_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description196 = internal constant [59 x i8] c"dmabuf_selftests.description=Self-test harness for dma-buf\00", section ".modinfo", align 1
@__UNIQUE_ID_file197 = internal constant [55 x i8] c"dmabuf_selftests.file=drivers/dma-buf/dmabuf_selftests\00", section ".modinfo", align 1
@__UNIQUE_ID_license198 = internal constant [51 x i8] c"dmabuf_selftests.license=GPL and additional rights\00", section ".modinfo", align 1
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sanitycheck\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma_fence\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_fence_chain\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_resv\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@run_selftests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016dma-buf: Running %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"run_selftests\00", [18 x i8] zeroinitializer }, align 32
@run_selftests._entry_ptr = internal global ptr @run_selftests._entry, section ".printk_index", align 4
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s returned %d, conflicting with selftest's magic values!\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"selftests\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 26, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 41, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 103, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 107, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 12, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 13, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 14, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [31 x i8] c"../drivers/dma-buf/selftests.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 15, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 53, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 139, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [30 x i8] c"../drivers/dma-buf/selftest.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 145, i32 6 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_igt__12__sanitychecktype189, ptr @__UNIQUE_ID_igt__13__dma_fencetype190, ptr @__UNIQUE_ID_igt__14__dma_fence_chaintype191, ptr @__UNIQUE_ID_igt__15__dma_resvtype192, ptr @__UNIQUE_ID_license198, ptr @__UNIQUE_ID_st_filtertype194, ptr @__exitcall_st_exit, ptr @__initcall__kmod_dmabuf_selftests__195_163_st_init6, ptr @__param_igt__12__sanitycheck, ptr @__param_igt__13__dma_fence, ptr @__param_igt__14__dma_fence_chain, ptr @__param_igt__15__dma_resv, ptr @__param_st_filter, ptr @__subtests._entry, ptr @__subtests._entry.6, ptr @__subtests._entry_ptr, ptr @__subtests._entry_ptr.8, ptr @run_selftests._entry, ptr @run_selftests._entry_ptr, ptr @st_exit, ptr @selftests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftests to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_selftests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sanitycheck__() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__sanitycheck__.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__sanitycheck__, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !71

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__sanitycheck__.__UNIQUE_ID_ddebug193, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__subtests(ptr noundef %caller, ptr nocapture noundef readonly %st, i32 noundef %count, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %sep.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not39 = icmp eq i32 %count, 0
  br i1 %tobool.not39, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dec42.in = phi i32 [ %dec42, %for.inc.for.body_crit_edge ], [ %count, %entry.for.body_crit_edge ]
  %st.addr.040 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %st, %entry.for.body_crit_edge ]
  %dec42 = add i32 %dec42.in, -1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 96, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %0 = call i32 @llvm.read_register.i32(metadata !61) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %for.body.cleanup_crit_edge, !prof !72

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

signal_pending.exit:                              ; preds = %for.body
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool3.not, label %if.end, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %signal_pending.exit
  %name = getelementptr inbounds %struct.subtest, ptr %st.addr.040, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sep.i) #8
  %13 = load ptr, ptr @__st_filter, align 4
  %call.i29 = call noalias ptr @kstrdup(ptr noundef %13, i32 noundef 3264) #8
  %14 = ptrtoint ptr %sep.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i29, ptr %sep.i, align 4
  %call1.i34 = call ptr @strsep(ptr noundef nonnull %sep.i, ptr noundef nonnull @.str.13) #8
  %tobool.not.i3035 = icmp eq ptr %call1.i34, null
  br i1 %tobool.not.i3035, label %do.end.critedge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %call1.i37 = phi ptr [ %call1.i, %cleanup.i.for.body.i_crit_edge ], [ %call1.i34, %if.end.for.body.i_crit_edge ]
  %result.0.off0.i36 = phi i1 [ %result.3.off0.i, %cleanup.i.for.body.i_crit_edge ], [ true, %if.end.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %call1.i37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call1.i37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %16)
  %cmp.i = icmp eq i8 %16, 33
  %spec.select.idx.i = zext i1 %cmp.i to i32
  %spec.select.i = getelementptr i8, ptr %call1.i37, i32 %spec.select.idx.i
  %17 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %spec.select.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4.i = icmp eq i8 %18, 0
  br i1 %cmp4.i, label %for.body.i.cleanup.i_crit_edge, label %if.end7.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  %call8.i = call ptr @strchr(ptr noundef %spec.select.i, i32 noundef 47) #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end19.i_crit_edge, label %if.then10.i

if.end7.i.if.end19.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.end7.i
  %19 = ptrtoint ptr %call8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %call8.i, align 1
  %call12.i = call i32 @strcmp(ptr noundef %spec.select.i, ptr noundef %caller) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end18.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select52.i = select i1 %cmp.i, i1 %result.0.off0.i36, i1 false
  br label %cleanup.i

if.end18.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr11.i = getelementptr i8, ptr %call8.i, i32 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %if.end7.i.if.end19.i_crit_edge
  %tok.1.i = phi ptr [ %incdec.ptr11.i, %if.end18.i ], [ %spec.select.i, %if.end7.i.if.end19.i_crit_edge ]
  %call20.i = call i32 @strcmp(ptr noundef %tok.1.i, ptr noundef %12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  %spec.select53.i = select i1 %cmp.i, i1 %result.0.off0.i36, i1 false
  br i1 %tobool21.not.i, label %for.end.split.loop.exit.i, label %if.end19.i.cleanup.i_crit_edge

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end19.i.cleanup.i_crit_edge, %if.then14.i, %for.body.i.cleanup.i_crit_edge
  %result.3.off0.i = phi i1 [ %spec.select52.i, %if.then14.i ], [ %result.0.off0.i36, %for.body.i.cleanup.i_crit_edge ], [ %spec.select53.i, %if.end19.i.cleanup.i_crit_edge ]
  %call1.i = call ptr @strsep(ptr noundef nonnull %sep.i, ptr noundef nonnull @.str.13) #8
  %tobool.not.i30 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i30, label %apply_subtest_filter.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.split.loop.exit.i:                        ; preds = %if.end19.i
  call void @kfree(ptr noundef %call.i29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep.i) #8
  br i1 %cmp.i, label %for.end.split.loop.exit.i.for.inc_crit_edge, label %for.end.split.loop.exit.i.do.end_crit_edge

for.end.split.loop.exit.i.do.end_crit_edge:       ; preds = %for.end.split.loop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end.split.loop.exit.i.for.inc_crit_edge:      ; preds = %for.end.split.loop.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

apply_subtest_filter.exit:                        ; preds = %cleanup.i
  call void @kfree(ptr noundef %call.i29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep.i) #8
  br i1 %result.3.off0.i, label %apply_subtest_filter.exit.do.end_crit_edge, label %apply_subtest_filter.exit.for.inc_crit_edge

apply_subtest_filter.exit.for.inc_crit_edge:      ; preds = %apply_subtest_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

apply_subtest_filter.exit.do.end_crit_edge:       ; preds = %apply_subtest_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %call.i29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sep.i) #8
  br label %do.end

do.end:                                           ; preds = %do.end.critedge, %apply_subtest_filter.exit.do.end_crit_edge, %for.end.split.loop.exit.i.do.end_crit_edge
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %caller, ptr noundef %21) #12
  %22 = ptrtoint ptr %st.addr.040 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %st.addr.040, align 4
  %call10 = call i32 %23(ptr noundef %data) #8
  %24 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %do.end15 [
    i32 0, label %do.end.for.inc_crit_edge
    i32 -4, label %do.end.for.inc_crit_edge51
  ]

do.end.for.inc_crit_edge51:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %caller, ptr noundef %26, i32 noundef %call10) #12
  br label %cleanup

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %do.end.for.inc_crit_edge51, %apply_subtest_filter.exit.for.inc_crit_edge, %for.end.split.loop.exit.i.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.subtest, ptr %st.addr.040, i32 1
  %tobool.not = icmp eq i32 %dec42, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end15, %signal_pending.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -4, %signal_pending.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -4, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @st_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @selftests, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.cond.i.i:                                     ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.do.end.1.i_crit_edge

for.cond.i.i.do.end.1.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.1.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %2 = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2), align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.2.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.do.end.2.i_crit_edge

for.cond.1.i.i.do.end.2.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.2.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %3 = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3), align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.3.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.for.inc.i_crit_edge

for.cond.2.i.i.for.inc.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i8 1, ptr @selftests, align 4
  store i8 1, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1), align 4
  store i8 1, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2), align 4
  store i8 1, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3), align 4
  br label %do.end.i

do.end.i:                                         ; preds = %for.cond.3.i.i, %entry.do.end.i_crit_edge
  %4 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 0, i32 1), align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %4) #12
  %5 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 0, i32 2), align 4
  %call2.i = tail call i32 %5() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i.for.inc.i_crit_edge, label %do.end.i.for.end.i_crit_edge

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i.for.inc.i_crit_edge, %for.cond.2.i.i.for.inc.i_crit_edge
  %.pr8.i.pr = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr8.i.pr)
  %tobool1.not.1.i = icmp eq i8 %.pr8.i.pr, 0
  br i1 %tobool1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %for.inc.i.do.end.1.i_crit_edge

for.inc.i.do.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i.do.end.1.i_crit_edge, %for.cond.i.i.do.end.1.i_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1, i32 1), align 4
  %call.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %6) #12
  %7 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1, i32 2), align 4
  %call2.1.i = tail call i32 %7() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool3.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool3.not.1.i, label %do.end.1.i.for.inc.1.i_crit_edge, label %do.end.1.i.for.end.i_crit_edge

do.end.1.i.for.end.i_crit_edge:                   ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %.pr = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool1.not.2.i = icmp eq i8 %.pr, 0
  br i1 %tobool1.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %for.inc.1.i.do.end.2.i_crit_edge

for.inc.1.i.do.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i.do.end.2.i_crit_edge, %for.cond.1.i.i.do.end.2.i_crit_edge
  %8 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2, i32 1), align 4
  %call.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %8) #12
  %9 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2, i32 2), align 4
  %call2.2.i = tail call i32 %9() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %tobool3.not.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %tobool3.not.2.i, label %do.end.2.i.for.inc.2.i_crit_edge, label %do.end.2.i.for.end.i_crit_edge

do.end.2.i.for.end.i_crit_edge:                   ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %10 = load i8, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3), align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool1.not.3.i = icmp eq i8 %10, 0
  br i1 %tobool1.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %do.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  %11 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3, i32 1), align 4
  %call.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %11) #12
  %12 = load ptr, ptr getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3, i32 2), align 4
  %call2.3.i = tail call i32 %12() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3.i)
  %tobool3.not.3.i = icmp eq i32 %call2.3.i, 0
  br i1 %tobool3.not.3.i, label %do.end.3.i.for.inc.3.i_crit_edge, label %do.end.3.i.for.end.i_crit_edge

do.end.3.i.for.end.i_crit_edge:                   ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.3.i, %do.end.3.i.for.end.i_crit_edge, %do.end.2.i.for.end.i_crit_edge, %do.end.1.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %st.addr.0.lcssa.i = phi ptr [ @selftests, %do.end.i.for.end.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 1), %do.end.1.i.for.end.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 2), %do.end.2.i.for.end.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 0, i32 3), %do.end.3.i.for.end.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.selftest], ptr @selftests, i32 1, i32 0), %for.inc.3.i ]
  %err.2.i = phi i32 [ %call2.i, %do.end.i.for.end.i_crit_edge ], [ %call2.1.i, %do.end.1.i.for.end.i_crit_edge ], [ %call2.2.i, %do.end.2.i.for.end.i_crit_edge ], [ %call2.3.i, %do.end.3.i.for.end.i_crit_edge ], [ 0, %for.inc.3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp.i = icmp sgt i32 %err.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25, i32 %err.2.i)
  %cmp6.i = icmp eq i32 %err.2.i, -25
  %spec.select.i = or i1 %cmp.i, %cmp6.i
  br i1 %spec.select.i, label %do.end18.i, label %for.end.i.run_selftests.exit_crit_edge, !prof !74

for.end.i.run_selftests.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %run_selftests.exit

do.end18.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %name19.i = getelementptr inbounds %struct.selftest, ptr %st.addr.0.lcssa.i, i32 0, i32 1
  %13 = ptrtoint ptr %name19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name19.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef %14, i32 noundef %err.2.i) #8
  br label %run_selftests.exit

run_selftests.exit:                               ; preds = %do.end18.i, %for.end.i.run_selftests.exit_crit_edge
  %spec.select1.i = phi i32 [ -1, %do.end18.i ], [ %err.2.i, %for.end.i.run_selftests.exit_crit_edge ]
  ret i32 %spec.select1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_chain() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__param_igt__12__sanitycheck, !1, !"__param_igt__12__sanitycheck", i1 false, i1 false}
!1 = !{!"../drivers/dma-buf/selftests.h", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_igt__12__sanitychecktype189, !1, !"__UNIQUE_ID_igt__12__sanitychecktype189", i1 false, i1 false}
!3 = !{ptr @__param_igt__13__dma_fence, !4, !"__param_igt__13__dma_fence", i1 false, i1 false}
!4 = !{!"../drivers/dma-buf/selftests.h", i32 13, i32 1}
!5 = !{ptr @__UNIQUE_ID_igt__13__dma_fencetype190, !4, !"__UNIQUE_ID_igt__13__dma_fencetype190", i1 false, i1 false}
!6 = !{ptr @__param_igt__14__dma_fence_chain, !7, !"__param_igt__14__dma_fence_chain", i1 false, i1 false}
!7 = !{!"../drivers/dma-buf/selftests.h", i32 14, i32 1}
!8 = !{ptr @__UNIQUE_ID_igt__14__dma_fence_chaintype191, !7, !"__UNIQUE_ID_igt__14__dma_fence_chaintype191", i1 false, i1 false}
!9 = !{ptr @__param_igt__15__dma_resv, !10, !"__param_igt__15__dma_resv", i1 false, i1 false}
!10 = !{!"../drivers/dma-buf/selftests.h", i32 15, i32 1}
!11 = !{ptr @__UNIQUE_ID_igt__15__dma_resvtype192, !10, !"__UNIQUE_ID_igt__15__dma_resvtype192", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma-buf/selftest.c", i32 41, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__sanitycheck__.__UNIQUE_ID_ddebug193, !13, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma-buf/selftest.c", i32 103, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__subtests._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @__subtests._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma-buf/selftest.c", i32 107, i32 4}
!25 = !{ptr @__subtests._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @__subtests._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__param_st_filter, !28, !"__param_st_filter", i1 false, i1 false}
!28 = !{!"../drivers/dma-buf/selftest.c", i32 162, i32 1}
!29 = !{ptr @__UNIQUE_ID_st_filtertype194, !28, !"__UNIQUE_ID_st_filtertype194", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_dmabuf_selftests__195_163_st_init6, !31, !"__initcall__kmod_dmabuf_selftests__195_163_st_init6", i1 false, i1 false}
!31 = !{!"../drivers/dma-buf/selftest.c", i32 163, i32 1}
!32 = !{ptr @__exitcall_st_exit, !33, !"__exitcall_st_exit", i1 false, i1 false}
!33 = !{!"../drivers/dma-buf/selftest.c", i32 164, i32 1}
!34 = !{ptr @__UNIQUE_ID_description196, !35, !"__UNIQUE_ID_description196", i1 false, i1 false}
!35 = !{!"../drivers/dma-buf/selftest.c", i32 166, i32 1}
!36 = !{ptr @__UNIQUE_ID_file197, !37, !"__UNIQUE_ID_file197", i1 false, i1 false}
!37 = !{!"../drivers/dma-buf/selftest.c", i32 167, i32 1}
!38 = !{ptr @__UNIQUE_ID_license198, !37, !"__UNIQUE_ID_license198", i1 false, i1 false}
!39 = !{ptr @__st_filter, !40, !"__st_filter", i1 false, i1 false}
!40 = !{!"../drivers/dma-buf/selftest.c", i32 45, i32 14}
!41 = !{ptr @__param_str_igt__12__sanitycheck, !1, !"__param_str_igt__12__sanitycheck", i1 false, i1 false}
!42 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !4, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !7, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !10, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @selftests, !47, !"selftests", i1 false, i1 false}
!47 = !{!"../drivers/dma-buf/selftest.c", i32 26, i32 3}
!48 = !{ptr @__param_str_igt__13__dma_fence, !4, !"__param_str_igt__13__dma_fence", i1 false, i1 false}
!49 = !{ptr @__param_str_igt__14__dma_fence_chain, !7, !"__param_str_igt__14__dma_fence_chain", i1 false, i1 false}
!50 = !{ptr @__param_str_igt__15__dma_resv, !10, !"__param_str_igt__15__dma_resv", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma-buf/selftest.c", i32 53, i32 41}
!53 = !{ptr @__param_str_st_filter, !28, !"__param_str_st_filter", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma-buf/selftest.c", i32 139, i32 3}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @run_selftests._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @run_selftests._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/dma-buf/selftest.c", i32 145, i32 6}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148692737, i64 2148692742, i64 2148692755, i64 2148692799, i64 2148692833, i64 2148692854}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i8 0, i8 2}
!74 = !{!"branch_weights", i32 1, i32 2000}
