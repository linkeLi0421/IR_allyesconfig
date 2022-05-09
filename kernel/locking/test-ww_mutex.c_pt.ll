; ModuleID = '/llk/IR_all_yes/kernel/locking/test-ww_mutex.c_pt.bc'
source_filename = "../kernel/locking/test-ww_mutex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.test_abba = type { %struct.work_struct, %struct.ww_mutex, %struct.ww_mutex, %struct.completion, %struct.completion, i8, i8, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.test_mutex = type { %struct.work_struct, %struct.ww_mutex, %struct.completion, %struct.completion, %struct.completion, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.test_cycle = type { %struct.work_struct, %struct.ww_mutex, ptr, ptr, %struct.completion, i32 }
%struct.stress = type { %struct.work_struct, ptr, i32, i32 }
%struct.reorder_lock = type { %struct.list_head, ptr }

@wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_test_ww_mutex__175_675_test_ww_mutex_init6 = internal global ptr @test_ww_mutex_init, section ".initcall6.init", align 4
@__exitcall_test_ww_mutex_exit = internal global ptr @test_ww_mutex_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file176 = internal constant [48 x i8] c"test_ww_mutex.file=kernel/locking/test-ww_mutex\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [26 x i8] c"test_ww_mutex.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [39 x i8] c"test_ww_mutex.author=Intel Corporation\00", section ".modinfo", align 1
@test_ww_mutex_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Beginning ww mutex selftests\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_ww_mutex_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/locking/test-ww_mutex.c\00", [33 x i8] zeroinitializer }, align 32
@test_ww_mutex_init._entry_ptr = internal global ptr @test_ww_mutex_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test-ww_mutex\00", [18 x i8] zeroinitializer }, align 32
@test_ww_mutex_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016All ww mutex selftests passed\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ww_mutex_init._entry_ptr.6 = internal global ptr @test_ww_mutex_init._entry.4, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@ww_class = internal global { %struct.ww_class, [32 x i8] } { %struct.ww_class { %struct.atomic_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str.10, ptr @.str.11, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__test_mutex.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&mtx.work)\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__test_mutex._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 97, ptr null, ptr null }, align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(flags=%x): mutual exclusion failure\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__test_mutex\00", [19 x i8] zeroinitializer }, align 32
@__test_mutex._entry_ptr = internal global ptr @__test_mutex._entry, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ww_class_acquire\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ww_class_mutex\00", [17 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trylock\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@test_aa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: initial lock failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"test_aa\00", [24 x i8] zeroinitializer }, align 32
@test_aa._entry_ptr = internal global ptr @test_aa._entry, section ".printk_index", align 4
@test_aa._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: initial trylock failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@test_aa._entry_ptr.22 = internal global ptr @test_aa._entry.20, section ".printk_index", align 4
@test_aa._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: trylocked itself without context from %s!\0A\00", [47 x i8] zeroinitializer }, align 32
@test_aa._entry_ptr.25 = internal global ptr @test_aa._entry.23, section ".printk_index", align 4
@test_aa._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: trylocked itself with context from %s!\0A\00", [50 x i8] zeroinitializer }, align 32
@test_aa._entry_ptr.28 = internal global ptr @test_aa._entry.26, section ".printk_index", align 4
@test_aa._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: missed deadlock for recursing, ret=%d from %s\0A\00", [43 x i8] zeroinitializer }, align 32
@test_aa._entry_ptr.31 = internal global ptr @test_aa._entry.29, section ".printk_index", align 4
@test_abba.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&abba.work)\00", [34 x i8] zeroinitializer }, align 32
@test_abba._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: failed to resolve ABBA deadlock, A err=%d, B err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_abba\00", [22 x i8] zeroinitializer }, align 32
@test_abba._entry_ptr = internal global ptr @test_abba._entry, section ".printk_index", align 4
@test_abba._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: missed ABBA deadlock, A err=%d, B err=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@test_abba._entry_ptr.37 = internal global ptr @test_abba._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@__test_cycle.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&cycle->work)\00", [32 x i8] zeroinitializer }, align 32
@__test_cycle._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 357, ptr null, ptr null }, align 1
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cyclic deadlock not resolved, ret[%d/%d] = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__test_cycle\00", [19 x i8] zeroinitializer }, align 32
@__test_cycle._entry_ptr = internal global ptr @__test_cycle._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stress.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&stress->work)\00", [63 x i8] zeroinitializer }, align 32
@stress_inorder_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@stress_inorder_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013stress (%s) failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stress_inorder_work\00", [44 x i8] zeroinitializer }, align 32
@stress_inorder_work._entry_ptr = internal global ptr @stress_inorder_work._entry, section ".printk_index", align 4
@stress_reorder_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@stress_reorder_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.45, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stress_reorder_work\00", [44 x i8] zeroinitializer }, align 32
@stress_reorder_work._entry_ptr = internal global ptr @stress_reorder_work._entry, section ".printk_index", align 4
@stress_one_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@stress_one_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.46, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stress_one_work\00", [16 x i8] zeroinitializer }, align 32
@stress_one_work._entry_ptr = internal global ptr @stress_one_work._entry, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 17, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 626, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 628, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 666, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"ww_class\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 67, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 96, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 16, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 191, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 126, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 126, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 134, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 140, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 146, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 153, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 161, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 226, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 263, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 269, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 297, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 340, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 356, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 603, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 460, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 514, i32 5 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [34 x i8] c"../kernel/locking/test-ww_mutex.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 550, i32 4 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__exitcall_test_ww_mutex_exit, ptr @__initcall__kmod_test_ww_mutex__175_675_test_ww_mutex_init6, ptr @__test_cycle._entry, ptr @__test_cycle._entry_ptr, ptr @__test_mutex._entry, ptr @__test_mutex._entry_ptr, ptr @stress_inorder_work._entry, ptr @stress_inorder_work._entry_ptr, ptr @stress_one_work._entry, ptr @stress_one_work._entry_ptr, ptr @stress_reorder_work._entry, ptr @stress_reorder_work._entry_ptr, ptr @test_aa._entry, ptr @test_aa._entry.20, ptr @test_aa._entry.23, ptr @test_aa._entry.26, ptr @test_aa._entry.29, ptr @test_aa._entry_ptr, ptr @test_aa._entry_ptr.22, ptr @test_aa._entry_ptr.25, ptr @test_aa._entry_ptr.28, ptr @test_aa._entry_ptr.31, ptr @test_abba._entry, ptr @test_abba._entry.35, ptr @test_abba._entry_ptr, ptr @test_abba._entry_ptr.37, ptr @test_ww_mutex_exit, ptr @test_ww_mutex_init._entry, ptr @test_ww_mutex_init._entry.4, ptr @test_ww_mutex_init._entry_ptr, ptr @test_ww_mutex_init._entry_ptr.6, ptr @wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @ww_class, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @test_abba.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @stress.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ww_mutex_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ww_mutex_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ww_class to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aa._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aa._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aa._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_aa._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_abba.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_abba._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_abba._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stress.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stress_inorder_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stress_reorder_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stress_one_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_ww_mutex_exit() #0 section ".exit.text" align 64 {
entry:
  %0 = load ptr, ptr @wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_ww_mutex_init() #0 section ".init.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %abba.i = alloca %struct.test_abba, align 4
  %ctx.i = alloca %struct.ww_acquire_ctx, align 4
  %mtx.i.i = alloca %struct.test_mutex, align 4
  %ctx.i.i = alloca %struct.ww_acquire_ctx, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 0) #12
  store ptr %call2, ptr @wq, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %ctx.i.i, i32 28
  %mutex.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 1
  %ctx.i.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 1, i32 1
  %ww_class1.i.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 1, i32 2
  %stamp3.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 1
  %acquired.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 2
  %wounded.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 3
  %is_wait_die4.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 4
  %ww_class5.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 6
  %done_acquire.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 5
  %contending_lock.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 7
  %deadlock_inject_interval.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 9
  %deadlock_inject_countdown.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i.i, i32 0, i32 10
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %mtx.i.i, i32 0, i32 3
  %entry4.i.i = getelementptr inbounds %struct.work_struct, ptr %mtx.i.i, i32 0, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %mtx.i.i, i32 0, i32 1, i32 1
  %func.i.i = getelementptr inbounds %struct.work_struct, ptr %mtx.i.i, i32 0, i32 2
  %ready.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 2
  %wait.i.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 2, i32 1
  %go.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 3
  %wait.i40.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 3, i32 1
  %done.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 4
  %wait.i41.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 4, i32 1
  %flags6.i.i = getelementptr inbounds %struct.test_mutex, ptr %mtx.i.i, i32 0, i32 5
  br label %for.body.i

for.cond.i:                                       ; preds = %__test_mutex.exit.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end6, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i, %if.end
  %i.05.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i ]
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %mtx.i.i) #12
  %2 = call ptr @memset(ptr %mtx.i.i, i32 255, i32 316)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx.i.i) #12
  %3 = call ptr @memset(ptr %1, i32 255, i32 36)
  %4 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef %4, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %5 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ctx.i.i.i, align 4
  %6 = ptrtoint ptr %ww_class1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ww_class, ptr %ww_class1.i.i.i, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i, align 8
  %11 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ctx.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %13 = ptrtoint ptr %stamp3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %stamp3.i.i.i, align 4
  %14 = ptrtoint ptr %acquired.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %acquired.i.i.i, align 4
  %15 = ptrtoint ptr %wounded.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %wounded.i.i.i, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i.i.i = trunc i32 %16 to i16
  %17 = ptrtoint ptr %is_wait_die4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i.i, ptr %is_wait_die4.i.i.i, align 2
  %18 = ptrtoint ptr %ww_class5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ww_class, ptr %ww_class5.i.i.i, align 4
  %19 = ptrtoint ptr %done_acquire.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %done_acquire.i.i.i, align 4
  %20 = ptrtoint ptr %contending_lock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %contending_lock.i.i.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx.i.i, i32 noundef 64) #12
  %21 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %1, ptr noundef %21, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %22 = call ptr @llvm.returnaddress(i32 0) #12
  %23 = ptrtoint ptr %22 to i32
  call void @lock_acquire(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %23) #12
  %24 = ptrtoint ptr %deadlock_inject_interval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %deadlock_inject_interval.i.i.i, align 4
  %25 = ptrtoint ptr %stamp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stamp3.i.i.i, align 4
  %and.i.i.i = and i32 %26, 15
  %27 = ptrtoint ptr %deadlock_inject_countdown.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i.i.i, ptr %deadlock_inject_countdown.i.i.i, align 4
  call void @__init_work(ptr noundef nonnull %mtx.i.i, i32 noundef 1) #12
  %28 = ptrtoint ptr %mtx.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %mtx.i.i, align 4
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @__test_mutex.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %29 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @test_mutex_work, ptr %func.i.i, align 4
  %32 = ptrtoint ptr %ready.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ready.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  %33 = ptrtoint ptr %go.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %go.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i40.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  %34 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %done.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i41.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  %35 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.05.i, ptr %flags6.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef nonnull %mtx.i.i) #12
  call void @wait_for_completion(ptr noundef %ready.i.i) #12
  %and.i.i = and i32 %i.05.i, 4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr null, ptr %ctx.i.i
  %call10.i.i = call i32 @ww_mutex_lock(ptr noundef %mutex.i.i, ptr noundef %cond.i.i) #12
  call void @complete(ptr noundef %go.i.i) #12
  %and12.i.i = and i32 %i.05.i, 1
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -6, %37
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.end.i.i, %if.then.i.i
  %call16.i.i = call zeroext i1 @completion_done(ptr noundef %done.i.i) #12
  br i1 %call16.i.i, label %do.end29.critedge.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body14.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 87, i32 noundef 0) #12
  %call.i.i.i68 = call i32 @__cond_resched() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %38
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body14.i.i, label %if.end32.critedge.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %call22.i.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef 6) #12
  %phi.cmp.i.i = icmp eq i32 %call22.i.i, 0
  call void @ww_mutex_unlock(ptr noundef %mutex.i.i) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx.i.i) #12
  br i1 %phi.cmp.i.i, label %__test_mutex.exit.i, label %do.end29.i.i

do.end29.critedge.i.i:                            ; preds = %do.body14.i.i
  call void @ww_mutex_unlock(ptr noundef %mutex.i.i) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx.i.i) #12
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %do.end29.critedge.i.i, %if.else.i.i
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %i.05.i) #14
  br label %__test_mutex.exit.i

if.end32.critedge.i.i:                            ; preds = %if.end.i.i
  call void @ww_mutex_unlock(ptr noundef %mutex.i.i) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx.i.i) #12
  br label %__test_mutex.exit.i

__test_mutex.exit.i:                              ; preds = %if.end32.critedge.i.i, %do.end29.i.i, %if.else.i.i
  %tobool.not.i = phi i1 [ true, %if.else.i.i ], [ false, %do.end29.i.i ], [ true, %if.end32.critedge.i.i ]
  %ret.2.i.i = phi i32 [ 0, %if.else.i.i ], [ -22, %do.end29.i.i ], [ 0, %if.end32.critedge.i.i ]
  %call34.i.i = call zeroext i1 @flush_work(ptr noundef nonnull %mtx.i.i) #12
  call void @destroy_work_on_stack(ptr noundef nonnull %mtx.i.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx.i.i) #12
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %mtx.i.i) #12
  br i1 %tobool.not.i, label %for.cond.i, label %cleanup

if.end6:                                          ; preds = %for.cond.i
  %39 = ptrtoint ptr %22 to i32
  %call7 = call fastcc i32 @test_aa(i1 noundef zeroext false)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call fastcc i32 @test_aa(i1 noundef zeroext true)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %if.end10
  %a_mutex.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 1
  %ctx.i.i69 = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 1, i32 1
  %ww_class1.i.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 1, i32 2
  %b_mutex.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 2
  %ctx.i139.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 2, i32 1
  %ww_class1.i140.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 2, i32 2
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %abba.i, i32 0, i32 3
  %entry5.i = getelementptr inbounds %struct.work_struct, ptr %abba.i, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %abba.i, i32 0, i32 1, i32 1
  %func.i = getelementptr inbounds %struct.work_struct, ptr %abba.i, i32 0, i32 2
  %a_ready.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 3
  %wait.i.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 3, i32 1
  %b_ready.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 4
  %wait.i141.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 4, i32 1
  %trylock7.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 6
  %resolve10.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 5
  %stamp3.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 1
  %acquired.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 2
  %wounded.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 3
  %is_wait_die4.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 4
  %ww_class5.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 6
  %done_acquire.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 5
  %contending_lock.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 7
  %dep_map.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 8
  %deadlock_inject_interval.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 9
  %deadlock_inject_countdown.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx.i, i32 0, i32 10
  %result118.i = getelementptr inbounds %struct.test_abba, ptr %abba.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %i.083 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc ]
  %and = and i32 %i.083, 1
  %tobool15.not = icmp eq i32 %and, 0
  %and16 = and i32 %i.083, 2
  %tobool17 = icmp ne i32 %and16, 0
  %40 = trunc i32 %and to i8
  %and16.lobit = lshr exact i32 %and16, 1
  %41 = trunc i32 %and16.lobit to i8
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %abba.i) #12
  %42 = call ptr @memset(ptr %abba.i, i32 255, i32 364)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx.i) #12
  %43 = call ptr @memset(ptr %ctx.i, i32 255, i32 64)
  %44 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  call void @__mutex_init(ptr noundef %a_mutex.i, ptr noundef %44, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %45 = ptrtoint ptr %ctx.i.i69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %ctx.i.i69, align 4
  %46 = ptrtoint ptr %ww_class1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ww_class, ptr %ww_class1.i.i, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  call void @__mutex_init(ptr noundef %b_mutex.i, ptr noundef %47, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %48 = ptrtoint ptr %ctx.i139.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ctx.i139.i, align 4
  %49 = ptrtoint ptr %ww_class1.i140.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ww_class, ptr %ww_class1.i140.i, align 4
  call void @__init_work(ptr noundef nonnull %abba.i, i32 noundef 1) #12
  %50 = ptrtoint ptr %abba.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %abba.i, align 4
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @test_abba.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %51 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @test_abba_work, ptr %func.i, align 4
  %54 = ptrtoint ptr %a_ready.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %a_ready.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  %55 = ptrtoint ptr %b_ready.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %b_ready.i, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i141.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  %56 = ptrtoint ptr %trylock7.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %40, ptr %trylock7.i, align 1
  %57 = ptrtoint ptr %resolve10.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %41, ptr %resolve10.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i.i70 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %58, ptr noundef nonnull %abba.i) #12
  %59 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i.i71 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i71 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i, align 8
  %63 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %ctx.i, align 4
  %call.i.i.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %64, 0
  %65 = ptrtoint ptr %stamp3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %asmresult.i.i.i.i.i.i, ptr %stamp3.i.i, align 4
  %66 = ptrtoint ptr %acquired.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %acquired.i.i, align 4
  %67 = ptrtoint ptr %wounded.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %wounded.i.i, align 4
  %68 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i.i = trunc i32 %68 to i16
  %69 = ptrtoint ptr %is_wait_die4.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i, ptr %is_wait_die4.i.i, align 2
  %70 = ptrtoint ptr %ww_class5.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ww_class, ptr %ww_class5.i.i, align 4
  %71 = ptrtoint ptr %done_acquire.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %done_acquire.i.i, align 4
  %72 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %contending_lock.i.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx.i, i32 noundef 64) #12
  %73 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef %73, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %39) #12
  %74 = ptrtoint ptr %deadlock_inject_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %deadlock_inject_interval.i.i, align 4
  %75 = ptrtoint ptr %deadlock_inject_countdown.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %deadlock_inject_countdown.i.i, align 4
  br i1 %tobool15.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %call18.i = call i32 @ww_mutex_lock(ptr noundef %a_mutex.i, ptr noundef nonnull %ctx.i) #12
  br label %if.end46.i

if.else.i:                                        ; preds = %for.body
  %call20.i = call i32 @ww_mutex_trylock(ptr noundef %a_mutex.i, ptr noundef nonnull %ctx.i) #12
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.end34.i, label %if.end46.i, !prof !119

do.end34.i:                                       ; preds = %if.else.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef 9, ptr noundef null) #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end34.i, %if.else.i, %if.then.i
  %76 = ptrtoint ptr %ctx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %ctx.i.i69, align 4
  %cmp.not.i = icmp eq ptr %77, %ctx.i
  br i1 %cmp.not.i, label %if.end75.i, label %do.end69.i, !prof !120

do.end69.i:                                       ; preds = %if.end46.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 240, i32 noundef 9, ptr noundef null) #12
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end69.i, %if.end46.i
  call void @complete(ptr noundef %a_ready.i) #12
  call void @wait_for_completion(ptr noundef %b_ready.i) #12
  %call86.i = call i32 @ww_mutex_lock(ptr noundef %b_mutex.i, ptr noundef nonnull %ctx.i) #12
  %cmp88.i = icmp eq i32 %call86.i, -35
  %or.cond.i = select i1 %tobool17, i1 %cmp88.i, i1 false
  br i1 %or.cond.i, label %if.then89.i, label %if.end94.i

if.then89.i:                                      ; preds = %if.end75.i
  call void @ww_mutex_unlock(ptr noundef %a_mutex.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %78 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i73 = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i73, label %land.lhs.true.i.i, label %ww_mutex_lock_slow.exit.i

land.lhs.true.i.i:                                ; preds = %if.then89.i
  %79 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %80, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %ww_mutex_lock_slow.exit.i, !prof !119

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = call i32 @debug_locks_off() #12
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %ww_mutex_lock_slow.exit.i, label %land.lhs.true6.i.i

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %81 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %ww_mutex_lock_slow.exit.i

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #12
  br label %ww_mutex_lock_slow.exit.i

ww_mutex_lock_slow.exit.i:                        ; preds = %do.end20.i.i, %land.lhs.true6.i.i, %do.end.i.i, %land.lhs.true.i.i, %if.then89.i
  %call38.i.i = call i32 @ww_mutex_lock(ptr noundef %b_mutex.i, ptr noundef nonnull %ctx.i) #12
  %call93.i = call i32 @ww_mutex_lock(ptr noundef %a_mutex.i, ptr noundef nonnull %ctx.i) #12
  br label %if.end94.i

if.end94.i:                                       ; preds = %ww_mutex_lock_slow.exit.i, %if.end75.i
  %err.0.i = phi i32 [ %call93.i, %ww_mutex_lock_slow.exit.i ], [ %call86.i, %if.end75.i ]
  %tobool95.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool95.not.i, label %if.then96.i, label %if.end98.i

if.then96.i:                                      ; preds = %if.end94.i
  call void @ww_mutex_unlock(ptr noundef %b_mutex.i) #12
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then96.i, %if.end94.i
  call void @ww_mutex_unlock(ptr noundef %a_mutex.i) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx.i) #12
  %call101.i = call zeroext i1 @flush_work(ptr noundef nonnull %abba.i) #12
  call void @destroy_work_on_stack(ptr noundef nonnull %abba.i) #12
  br i1 %tobool17, label %if.then104.i, label %if.else115.i

if.then104.i:                                     ; preds = %if.end98.i
  br i1 %tobool95.not.i, label %lor.lhs.false.i, label %do.end110.i

lor.lhs.false.i:                                  ; preds = %if.then104.i
  %82 = ptrtoint ptr %result118.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %result118.i, align 4
  %tobool106.not.i = icmp eq i32 %83, 0
  br i1 %tobool106.not.i, label %for.inc, label %do.end110.i

do.end110.i:                                      ; preds = %lor.lhs.false.i, %if.then104.i
  %84 = ptrtoint ptr %result118.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %result118.i, align 4
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %err.0.i, i32 noundef %85) #14
  br label %test_abba.exit

if.else115.i:                                     ; preds = %if.end98.i
  %cmp116.not.i = icmp eq i32 %err.0.i, -35
  br i1 %cmp116.not.i, label %for.inc, label %land.lhs.true117.i

land.lhs.true117.i:                               ; preds = %if.else115.i
  %86 = ptrtoint ptr %result118.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %result118.i, align 4
  %cmp119.not.i = icmp eq i32 %87, -35
  br i1 %cmp119.not.i, label %for.inc, label %do.end123.i

do.end123.i:                                      ; preds = %land.lhs.true117.i
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %err.0.i, i32 noundef %87) #14
  br label %test_abba.exit

test_abba.exit:                                   ; preds = %do.end123.i, %do.end110.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx.i) #12
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %abba.i) #12
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true117.i, %if.else115.i, %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx.i) #12
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %abba.i) #12
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %call22 = call fastcc i32 @test_cycle(i32 noundef %0)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %for.end
  %mul = shl i32 %0, 1
  %call26 = call fastcc i32 @stress(i32 noundef 16, i32 noundef %mul, i32 noundef 1)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %cleanup

if.end29:                                         ; preds = %if.end25
  %call31 = call fastcc i32 @stress(i32 noundef 16, i32 noundef %mul, i32 noundef 2)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %cleanup

if.end34:                                         ; preds = %if.end29
  %mul35 = mul i32 %0, 3
  %call36 = call fastcc i32 @stress(i32 noundef 4095, i32 noundef %mul35, i32 noundef 7)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end42, label %cleanup

do.end42:                                         ; preds = %if.end34
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end34, %if.end29, %if.end25, %for.end, %test_abba.exit, %if.end10, %if.end6, %__test_mutex.exit.i, %entry
  %retval.0 = phi i32 [ 0, %do.end42 ], [ -12, %entry ], [ %call7, %if.end6 ], [ %call11, %if.end10 ], [ -22, %test_abba.exit ], [ %call22, %for.end ], [ %call26, %if.end25 ], [ %call31, %if.end29 ], [ %call36, %if.end34 ], [ %ret.2.i.i, %__test_mutex.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_aa(i1 noundef zeroext %trylock) unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = alloca %struct.ww_mutex, align 4
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %mutex) #12
  %0 = call ptr @memset(ptr %mutex, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %1 = getelementptr inbounds i8, ptr %ctx, i32 28
  %2 = call ptr @memset(ptr %1, i32 255, i32 36)
  %cond = select i1 %trylock, ptr @.str.16, ptr @.str.17
  %3 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  call void @__mutex_init(ptr noundef nonnull %mutex, ptr noundef %3, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %mutex, i32 0, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ctx.i, align 4
  %ww_class1.i = getelementptr inbounds %struct.ww_mutex, ptr %mutex, i32 0, i32 2
  %5 = ptrtoint ptr %ww_class1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ww_class, ptr %ww_class1.i, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ctx, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %13 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %14 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %wounded.i, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %15 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %16 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %17 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %18 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx, i32 noundef 64) #12
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %20 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %20, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %21 = call ptr @llvm.returnaddress(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %22) #12
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %23 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %24 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %25, 15
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %26 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  br i1 %trylock, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @ww_mutex_lock(ptr noundef nonnull %mutex, ptr noundef nonnull %ctx) #12
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.then
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #14
  br label %out

if.else:                                          ; preds = %entry
  %call5 = call i32 @ww_mutex_trylock(ptr noundef nonnull %mutex, ptr noundef nonnull %ctx) #12
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end11, label %if.end15

do.end11:                                         ; preds = %if.else
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #14
  br label %out

if.end15:                                         ; preds = %if.else, %if.then
  %call16 = call i32 @ww_mutex_trylock(ptr noundef nonnull %mutex, ptr noundef null) #12
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end15
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #14
  call void @ww_mutex_unlock(ptr noundef nonnull %mutex) #12
  br label %out

if.end24:                                         ; preds = %if.end15
  %call25 = call i32 @ww_mutex_trylock(ptr noundef nonnull %mutex, ptr noundef nonnull %ctx) #12
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end24
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #14
  call void @ww_mutex_unlock(ptr noundef nonnull %mutex) #12
  br label %out

if.end33:                                         ; preds = %if.end24
  %call34 = call i32 @ww_mutex_lock(ptr noundef nonnull %mutex, ptr noundef nonnull %ctx) #12
  %cmp.not = icmp eq i32 %call34, -114
  br i1 %cmp.not, label %if.end44, label %do.end38

do.end38:                                         ; preds = %if.end33
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.19, i32 noundef %call34, ptr noundef nonnull %cond) #14
  %tobool41.not = icmp eq i32 %call34, 0
  br i1 %tobool41.not, label %if.then42, label %out

if.then42:                                        ; preds = %do.end38
  call void @ww_mutex_unlock(ptr noundef nonnull %mutex) #12
  br label %out

if.end44:                                         ; preds = %if.end33
  call void @ww_mutex_unlock(ptr noundef nonnull %mutex) #12
  br label %out

out:                                              ; preds = %if.end44, %if.then42, %do.end38, %do.end30, %do.end21, %do.end11, %do.end
  %ret.0 = phi i32 [ 1, %do.end11 ], [ -22, %do.end21 ], [ -22, %do.end30 ], [ 0, %if.end44 ], [ %call, %do.end ], [ -22, %if.then42 ], [ -22, %do.end38 ]
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %mutex) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_cycle(i32 noundef %ncpus) unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %ncpus, 1
  %cmp.not14 = icmp ult i32 %add, 2
  br i1 %cmp.not14, label %cleanup, label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %n.015 = phi i32 [ %inc, %for.inc ], [ 2, %entry ]
  %sub.i = add nsw i32 %n.015, -1
  %exitcond = icmp eq i32 %n.015, 20259280
  br i1 %exitcond, label %cleanup, label %if.end7.i.i, !prof !119

if.end7.i.i:                                      ; preds = %for.body
  %0 = mul i32 %n.015, 212
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %cleanup, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end7.i.i
  %a_mutex4.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 1
  %b_signal.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %sub.i, i32 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef %a_mutex4.i, ptr noundef %1, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %ctx.i.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ctx.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ctx.i.peel.i, align 8
  %ww_class1.i.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %ww_class1.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ww_class, ptr %ww_class1.i.peel.i, align 4
  %a_mutex6.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 1, i32 1
  %4 = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %a_mutex6.peel.i, ptr %4, align 16
  %6 = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b_signal.i, ptr %6, align 4
  %b_signal18.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %b_signal18.peel.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %b_signal18.peel.i, align 8
  %wait.i.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.peel.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  tail call void @__init_work(ptr noundef nonnull %call8.i.i, i32 noundef 0) #12
  %9 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %call8.i.i, align 128
  %lockdep_map.peel.i = getelementptr inbounds %struct.work_struct, ptr %call8.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.peel.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @__test_cycle.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry22.peel.i = getelementptr inbounds %struct.work_struct, ptr %call8.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %entry22.peel.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry22.peel.i, ptr %entry22.peel.i, align 4
  %prev.i.peel.i = getelementptr inbounds %struct.work_struct, ptr %call8.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.peel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry22.peel.i, ptr %prev.i.peel.i, align 8
  %func.peel.i = getelementptr inbounds %struct.work_struct, ptr %call8.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %func.peel.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @test_cycle_work, ptr %func.peel.i, align 4
  %result.peel.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %result.peel.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %result.peel.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.i.preheader
  %n.0116.i = phi i32 [ %add.i, %for.body.i ], [ 1, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i
  %a_mutex.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef %a_mutex.i, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %ctx.i.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 1, i32 1
  %15 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ctx.i.i, align 4
  %ww_class1.i.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 1, i32 2
  %16 = ptrtoint ptr %ww_class1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ww_class, ptr %ww_class1.i.i, align 4
  %cmp1.i = icmp eq i32 %n.0116.i, %sub.i
  %add.i = add nuw nsw i32 %n.0116.i, 1
  %a_mutex6.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %add.i, i32 1
  %a_mutex6.sink.i = select i1 %cmp1.i, ptr %a_mutex4.i, ptr %a_mutex6.i
  %17 = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %a_mutex6.sink.i, ptr %17, align 4
  %sub13.i = add nsw i32 %n.0116.i, -1
  %b_signal15.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %sub13.i, i32 4
  %19 = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b_signal15.i, ptr %19, align 4
  %b_signal18.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 4
  %21 = ptrtoint ptr %b_signal18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %b_signal18.i, align 4
  %wait.i.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #12
  tail call void @__init_work(ptr noundef %arrayidx.i, i32 noundef 0) #12
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %arrayidx.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @__test_cycle.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry22.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 1
  %23 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry22.i, ptr %entry22.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry22.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry22.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %arrayidx.i, i32 0, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @test_cycle_work, ptr %func.i, align 4
  %result.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.0116.i, i32 5
  %26 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %result.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, %n.015
  br i1 %exitcond.not.i, label %for.body26.i, label %for.body.i, !llvm.loop !121

for.body26.i:                                     ; preds = %for.body26.i, %for.body.i
  %n.1118.i = phi i32 [ %inc31.i, %for.body26.i ], [ 0, %for.body.i ]
  %27 = load ptr, ptr @wq, align 4
  %arrayidx27.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.1118.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %arrayidx27.i) #12
  %inc31.i = add nuw nsw i32 %n.1118.i, 1
  %exitcond126.not.i = icmp eq i32 %inc31.i, %n.015
  br i1 %exitcond126.not.i, label %for.end32.i, label %for.body26.i

for.end32.i:                                      ; preds = %for.body26.i
  %28 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %28) #12
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.inc47.i, %for.end32.i
  %n.2120.i = phi i32 [ %inc48.i, %for.inc47.i ], [ 0, %for.end32.i ]
  %result38.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.2120.i, i32 5
  %29 = ptrtoint ptr %result38.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %result38.i, align 4
  %tobool39.not.i = icmp eq i32 %30, 0
  br i1 %tobool39.not.i, label %for.inc47.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.body35.i
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %n.2120.i, i32 noundef %n.015, i32 noundef %30) #14
  br label %for.end49.i

for.inc47.i:                                      ; preds = %for.body35.i
  %inc48.i = add nuw nsw i32 %n.2120.i, 1
  %exitcond127.not.i = icmp eq i32 %inc48.i, %n.015
  br i1 %exitcond127.not.i, label %for.end49.i, label %for.body35.i

for.end49.i:                                      ; preds = %for.inc47.i, %cleanup.i
  %ret.2.i = phi i32 [ -22, %cleanup.i ], [ 0, %for.inc47.i ]
  br label %for.body52.i

for.body52.i:                                     ; preds = %for.body52.i, %for.end49.i
  %n.3122.i = phi i32 [ %inc56.i, %for.body52.i ], [ 0, %for.end49.i ]
  %a_mutex54.i = getelementptr %struct.test_cycle, ptr %call8.i.i, i32 %n.3122.i, i32 1
  tail call void @mutex_destroy(ptr noundef %a_mutex54.i) #12
  %inc56.i = add nuw nsw i32 %n.3122.i, 1
  %exitcond128.not.i = icmp eq i32 %inc56.i, %n.015
  br i1 %exitcond128.not.i, label %__test_cycle.exit, label %for.body52.i

__test_cycle.exit:                                ; preds = %for.body52.i
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br i1 %tobool39.not.i, label %for.inc, label %cleanup

for.inc:                                          ; preds = %__test_cycle.exit
  %inc = add nuw nsw i32 %n.015, 1
  %cmp.not.not = icmp ult i32 %n.015, %add
  br i1 %cmp.not.not, label %for.body, label %cleanup

cleanup:                                          ; preds = %for.inc, %__test_cycle.exit, %if.end7.i.i, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -12, %for.body ], [ -12, %if.end7.i.i ], [ 0, %for.inc ], [ %ret.2.i, %__test_cycle.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stress(i32 noundef %nlocks, i32 noundef %nthreads, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nlocks, i32 100) #12
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %cleanup45, label %if.end7.i, !prof !119

if.end7.i:                                        ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %cleanup45, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7.i
  %cmp89.not = icmp eq i32 %nlocks, 0
  br i1 %cmp89.not, label %for.cond1.preheader, label %for.body

for.cond1.preheader:                              ; preds = %for.body, %for.cond.preheader
  %tobool2.not91 = icmp eq i32 %nthreads, 0
  br i1 %tobool2.not91, label %for.end37, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %and14 = and i32 %flags, 4
  %tobool15.not = icmp eq i32 %and14, 0
  %and9 = and i32 %flags, 2
  %tobool10.not = icmp eq i32 %and9, 0
  %and4 = and i32 %flags, 1
  %tobool5.not = icmp eq i32 %and4, 0
  br label %for.body3

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %n.090 = phi i32 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr %struct.ww_mutex, ptr %call8.i, i32 %n.090
  %3 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef %arrayidx, ptr noundef %3, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 2)) #12
  %ctx.i = getelementptr %struct.ww_mutex, ptr %call8.i, i32 %n.090, i32 1
  %4 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ctx.i, align 4
  %ww_class1.i = getelementptr %struct.ww_mutex, ptr %call8.i, i32 %n.090, i32 2
  %5 = ptrtoint ptr %ww_class1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ww_class, ptr %ww_class1.i, align 4
  %inc = add nuw nsw i32 %n.090, 1
  %exitcond.not = icmp eq i32 %inc, %nlocks
  br i1 %exitcond.not, label %for.cond1.preheader, label %for.body

for.body3:                                        ; preds = %for.inc35, %for.body3.lr.ph
  %n.194 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc36, %for.inc35 ]
  %nthreads.addr.092 = phi i32 [ %nthreads, %for.body3.lr.ph ], [ %nthreads.addr.1.ph, %for.inc35 ]
  %and = and i32 %n.194, 3
  switch i32 %and, label %for.inc35 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.body3
  br i1 %tobool5.not, label %for.inc35, label %if.end20

sw.bb8:                                           ; preds = %for.body3
  br i1 %tobool10.not, label %for.inc35, label %if.end20

sw.epilog:                                        ; preds = %for.body3
  br i1 %tobool15.not, label %for.inc35, label %if.end20

if.end20:                                         ; preds = %sw.epilog, %sw.bb8, %sw.bb
  %fn.083 = phi ptr [ @stress_inorder_work, %sw.bb ], [ @stress_one_work, %sw.epilog ], [ @stress_reorder_work, %sw.bb8 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 56) #16
  %tobool22.not = icmp eq ptr %call7.i, null
  br i1 %tobool22.not, label %for.end37, label %do.body

do.body:                                          ; preds = %if.end20
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #12
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.42, ptr noundef nonnull @stress.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry28 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry28, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fn.083, ptr %func, align 4
  %locks30 = getelementptr inbounds %struct.stress, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %locks30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %locks30, align 4
  %nlocks31 = getelementptr inbounds %struct.stress, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %nlocks31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nlocks, ptr %nlocks31, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 200
  %timeout = getelementptr inbounds %struct.stress, ptr %call7.i, i32 0, i32 2
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %timeout, align 8
  %15 = load ptr, ptr @wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef nonnull %call7.i) #12
  %dec = add i32 %nthreads.addr.092, -1
  br label %for.inc35

for.inc35:                                        ; preds = %do.body, %sw.epilog, %sw.bb8, %sw.bb, %for.body3
  %nthreads.addr.1.ph = phi i32 [ %nthreads.addr.092, %sw.bb8 ], [ %nthreads.addr.092, %sw.bb ], [ %nthreads.addr.092, %sw.epilog ], [ %dec, %do.body ], [ %nthreads.addr.092, %for.body3 ]
  %inc36 = add i32 %n.194, 1
  %tobool2.not = icmp eq i32 %nthreads.addr.1.ph, 0
  br i1 %tobool2.not, label %for.end37, label %for.body3

for.end37:                                        ; preds = %for.inc35, %if.end20, %for.cond1.preheader
  %16 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %16) #12
  br i1 %cmp89.not, label %for.end44, label %for.body40

for.body40:                                       ; preds = %for.body40, %for.end37
  %n.296 = phi i32 [ %inc43, %for.body40 ], [ 0, %for.end37 ]
  %arrayidx41 = getelementptr %struct.ww_mutex, ptr %call8.i, i32 %n.296
  tail call void @mutex_destroy(ptr noundef %arrayidx41) #12
  %inc43 = add nuw nsw i32 %n.296, 1
  %exitcond97.not = icmp eq i32 %inc43, %nlocks
  br i1 %exitcond97.not, label %for.end44, label %for.body40

for.end44:                                        ; preds = %for.body40, %for.end37
  tail call void @kfree(ptr noundef nonnull %call8.i) #12
  br label %cleanup45

cleanup45:                                        ; preds = %for.end44, %if.end7.i, %entry
  %retval.0 = phi i32 [ 0, %for.end44 ], [ -12, %if.end7.i ], [ -12, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_mutex_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ready = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 2
  tail call void @complete(ptr noundef %ready) #12
  %go = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %go) #12
  %flags = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  %tobool.not = icmp eq i32 %and, 0
  %mutex4 = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %call13 = tail call i32 @ww_mutex_trylock(ptr noundef %mutex4, ptr noundef null) #12
  %tobool1.not14 = icmp eq i32 %call13, 0
  br i1 %tobool1.not14, label %while.body, label %if.end

while.body:                                       ; preds = %while.body, %while.cond.preheader
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 49, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %call = tail call i32 @ww_mutex_trylock(ptr noundef %mutex4, ptr noundef null) #12
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.body, label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @ww_mutex_lock(ptr noundef %mutex4, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %while.body, %while.cond.preheader
  %done = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 4
  tail call void @complete(ptr noundef %done) #12
  %mutex6 = getelementptr inbounds %struct.test_mutex, ptr %work, i32 0, i32 1
  tail call void @ww_mutex_unlock(ptr noundef %mutex6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #5 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end36, label %do.end, !prof !120

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #12
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end36, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5, %do.end, %land.lhs.true, %__here
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_work_on_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_abba_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ctx, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %wounded.i, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %10 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %11 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %12 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx, i32 noundef 64) #12
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %16 = call ptr @llvm.returnaddress(i32 0) #12
  %17 = ptrtoint ptr %16 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %17) #12
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %18 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %19 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %deadlock_inject_countdown.i, align 4
  %trylock = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 6
  %20 = ptrtoint ptr %trylock to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %trylock, align 1, !range !123
  %tobool.not = icmp eq i8 %21, 0
  %b_mutex = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 2
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 @ww_mutex_lock(ptr noundef %b_mutex, ptr noundef nonnull %ctx) #12
  br label %if.end29

if.else:                                          ; preds = %entry
  %call2 = call i32 @ww_mutex_trylock(ptr noundef %b_mutex, ptr noundef nonnull %ctx) #12
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end16, label %if.end29, !prof !119

do.end16:                                         ; preds = %if.else
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 196, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end16, %if.else, %if.then
  %b_mutex35 = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 2
  %ctx36 = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %ctx36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ctx36, align 4
  %cmp.not = icmp eq ptr %23, %ctx
  br i1 %cmp.not, label %if.end58, label %do.end52, !prof !120

do.end52:                                         ; preds = %if.end29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end29
  %b_ready = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 4
  call void @complete(ptr noundef %b_ready) #12
  %a_ready = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 3
  call void @wait_for_completion(ptr noundef %a_ready) #12
  %a_mutex = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 1
  %call66 = call i32 @ww_mutex_lock(ptr noundef %a_mutex, ptr noundef nonnull %ctx) #12
  %resolve = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 5
  %24 = ptrtoint ptr %resolve to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %resolve, align 4, !range !123
  %tobool67.not = icmp ne i8 %25, 0
  %cmp68 = icmp eq i32 %call66, -35
  %or.cond = select i1 %tobool67.not, i1 %cmp68, i1 false
  br i1 %or.cond, label %if.then69, label %if.end74

if.then69:                                        ; preds = %if.end58
  call void @ww_mutex_unlock(ptr noundef %b_mutex35) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %26 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %ww_mutex_lock_slow.exit

land.lhs.true.i:                                  ; preds = %if.then69
  %27 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %do.end.i, label %ww_mutex_lock_slow.exit, !prof !119

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #12
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %ww_mutex_lock_slow.exit, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %29 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %29, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %ww_mutex_lock_slow.exit

do.end20.i:                                       ; preds = %land.lhs.true6.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #12
  br label %ww_mutex_lock_slow.exit

ww_mutex_lock_slow.exit:                          ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.then69
  %call38.i = call i32 @ww_mutex_lock(ptr noundef %a_mutex, ptr noundef nonnull %ctx) #12
  %call73 = call i32 @ww_mutex_lock(ptr noundef %b_mutex35, ptr noundef nonnull %ctx) #12
  br label %if.end74

if.end74:                                         ; preds = %ww_mutex_lock_slow.exit, %if.end58
  %err.0 = phi i32 [ %call73, %ww_mutex_lock_slow.exit ], [ %call66, %if.end58 ]
  %tobool75.not = icmp eq i32 %err.0, 0
  br i1 %tobool75.not, label %if.then76, label %if.end78

if.then76:                                        ; preds = %if.end74
  call void @ww_mutex_unlock(ptr noundef %a_mutex) #12
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end74
  call void @ww_mutex_unlock(ptr noundef %b_mutex35) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  %result = getelementptr inbounds %struct.test_abba, ptr %work, i32 0, i32 7
  %30 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %err.0, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_cycle_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ctx, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %9 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %wounded.i, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %10 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %11 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %12 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx, i32 noundef 64) #12
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %15 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %15, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %16 = call ptr @llvm.returnaddress(i32 0) #12
  %17 = ptrtoint ptr %16 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %17) #12
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %18 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %19 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %deadlock_inject_countdown.i, align 4
  %a_mutex = getelementptr inbounds %struct.test_cycle, ptr %work, i32 0, i32 1
  %call = call i32 @ww_mutex_lock(ptr noundef %a_mutex, ptr noundef nonnull %ctx) #12
  %a_signal = getelementptr inbounds %struct.test_cycle, ptr %work, i32 0, i32 3
  %20 = ptrtoint ptr %a_signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a_signal, align 4
  call void @complete(ptr noundef %21) #12
  %b_signal = getelementptr inbounds %struct.test_cycle, ptr %work, i32 0, i32 4
  call void @wait_for_completion(ptr noundef %b_signal) #12
  %b_mutex = getelementptr inbounds %struct.test_cycle, ptr %work, i32 0, i32 2
  %22 = ptrtoint ptr %b_mutex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_mutex, align 4
  %call1 = call i32 @ww_mutex_lock(ptr noundef %23, ptr noundef nonnull %ctx) #12
  switch i32 %call1, label %if.end12 [
    i32 -35, label %if.then
    i32 0, label %if.end8.thread46
  ]

if.then:                                          ; preds = %entry
  call void @ww_mutex_unlock(ptr noundef %a_mutex) #12
  %24 = ptrtoint ptr %b_mutex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_mutex, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %26 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end8

land.lhs.true.i:                                  ; preds = %if.then
  %27 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i, label %do.end.i, label %if.end8, !prof !119

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #12
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end8, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %29 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %29, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %if.end8

do.end20.i:                                       ; preds = %land.lhs.true6.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #12
  br label %if.end8

if.end8.thread46:                                 ; preds = %entry
  %30 = ptrtoint ptr %b_mutex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_mutex, align 4
  call void @ww_mutex_unlock(ptr noundef %31) #12
  br label %if.end12

if.end8:                                          ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.then
  %call38.i = call i32 @ww_mutex_lock(ptr noundef %25, ptr noundef nonnull %ctx) #12
  %call5 = call i32 @ww_mutex_lock(ptr noundef %a_mutex, ptr noundef nonnull %ctx) #12
  %32 = ptrtoint ptr %b_mutex to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_mutex, align 4
  call void @ww_mutex_unlock(ptr noundef %33) #12
  %tobool9.not = icmp eq i32 %call5, 0
  br i1 %tobool9.not, label %if.end12, label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end8
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  br label %34

if.end12:                                         ; preds = %if.end8, %if.end8.thread46, %entry
  %err.03045 = phi i32 [ 0, %if.end8 ], [ 0, %if.end8.thread46 ], [ %call1, %entry ]
  %tobool.not3441 = phi i1 [ true, %if.end8 ], [ true, %if.end8.thread46 ], [ false, %entry ]
  call void @ww_mutex_unlock(ptr noundef %a_mutex) #12
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  br i1 %tobool.not3441, label %34, label %35

34:                                               ; preds = %if.end12, %if.end12.thread
  %erra.0324254 = phi i32 [ %call5, %if.end12.thread ], [ 0, %if.end12 ]
  br label %35

35:                                               ; preds = %34, %if.end12
  %36 = phi i32 [ %erra.0324254, %34 ], [ %err.03045, %if.end12 ]
  %result = getelementptr inbounds %struct.test_cycle, ptr %work, i32 0, i32 5
  %37 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %result, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stress_inorder_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  %nlocks1 = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %nlocks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlocks1, align 4
  %locks2 = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %locks2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locks2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %4 = call ptr @memset(ptr %ctx, i32 255, i32 64)
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #12
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %cleanup54, label %if.end7.i.i, !prof !119

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %cleanup54, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %cmp40.not.i = icmp eq i32 %1, 0
  br i1 %cmp40.not.i, label %do.body.preheader, label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %n.142.i = add i32 %1, -1
  %cmp243.i = icmp sgt i32 %n.142.i, 1
  br i1 %cmp243.i, label %for.body3.i, label %do.body.preheader

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %n.041.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %n.041.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %n.041.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %n.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i

for.body3.i:                                      ; preds = %for.inc12.i, %for.cond1.preheader.i
  %n.145.i = phi i32 [ %n.1.i, %for.inc12.i ], [ %n.142.i, %for.cond1.preheader.i ]
  %n.1.in44.i = phi i32 [ %n.145.i, %for.inc12.i ], [ %1, %for.cond1.preheader.i ]
  %call.i.i = tail call i32 @get_random_u32() #12
  %rem.i = urem i32 %call.i.i, %n.1.in44.i
  %cmp5.not.i = icmp eq i32 %rem.i, %n.145.i
  br i1 %cmp5.not.i, label %for.inc12.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body3.i
  %arrayidx7.i = getelementptr i32, ptr %call8.i.i, i32 %n.145.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %call8.i.i, i32 %rem.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  store i32 %12, ptr %arrayidx7.i, align 4
  store i32 %10, ptr %arrayidx8.i, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then6.i, %for.body3.i
  %n.1.i = add i32 %n.145.i, -1
  %cmp2.i = icmp sgt i32 %n.1.i, 1
  br i1 %cmp2.i, label %for.body3.i, label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc12.i, %for.cond1.preheader.i, %for.cond.preheader.i
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %cmp104 = icmp sgt i32 %1, 0
  %timeout = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond49, %do.body.preheader
  %13 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ctx, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %19 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %20 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %acquired.i, align 4
  %21 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %wounded.i, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %22 to i16
  %23 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %24 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ww_class, ptr %ww_class5.i, align 4
  %25 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %done_acquire.i, align 4
  %26 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx, i32 noundef 64) #12
  %27 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %27, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %28 = call ptr @llvm.returnaddress(i32 0) #12
  %29 = ptrtoint ptr %28 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %29) #12
  %30 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %31 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %32, 15
  %33 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  br label %retry

retry:                                            ; preds = %ww_mutex_lock_slow.exit, %do.body
  %contended.0 = phi i32 [ -1, %do.body ], [ %n.0102, %ww_mutex_lock_slow.exit ]
  br i1 %cmp104, label %for.body, label %if.then12

for.body:                                         ; preds = %for.inc, %retry
  %err.0107 = phi i32 [ %err.1, %for.inc ], [ 0, %retry ]
  %n.0105 = phi i32 [ %inc, %for.inc ], [ 0, %retry ]
  %cmp3 = icmp eq i32 %n.0105, %contended.0
  br i1 %cmp3, label %for.inc, label %if.end5

if.end5:                                          ; preds = %for.body
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %n.0105
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.ww_mutex, ptr %3, i32 %35
  %call7 = call i32 @ww_mutex_lock(ptr noundef %arrayidx6, ptr noundef nonnull %ctx) #12
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end13, label %for.inc

for.inc:                                          ; preds = %if.end5, %for.body
  %err.1 = phi i32 [ %err.0107, %for.body ], [ %call7, %if.end5 ]
  %inc = add nuw nsw i32 %n.0105, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool11.not = icmp eq i32 %err.1, 0
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end, %retry
  %n.0.lcssa116 = phi i32 [ %1, %for.end ], [ 0, %retry ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end, %if.end5
  %n.0102 = phi i32 [ %n.0.lcssa116, %if.then12 ], [ %1, %for.end ], [ %n.0105, %if.end5 ]
  %tobool11.not97 = phi i1 [ true, %if.then12 ], [ false, %for.end ], [ false, %if.end5 ]
  %err.296 = phi i32 [ 0, %if.then12 ], [ %err.1, %for.end ], [ %call7, %if.end5 ]
  %cmp14 = icmp sgt i32 %contended.0, %n.0102
  br i1 %cmp14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end13
  %arrayidx16 = getelementptr i32, ptr %call8.i.i, i32 %contended.0
  %36 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr %struct.ww_mutex, ptr %3, i32 %37
  call void @ww_mutex_unlock(ptr noundef %arrayidx17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13
  %tobool19.not109 = icmp eq i32 %n.0102, 0
  br i1 %tobool19.not109, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %if.end18
  %n.1110 = phi i32 [ %dec, %while.body ], [ %n.0102, %if.end18 ]
  %dec = add nsw i32 %n.1110, -1
  %arrayidx20 = getelementptr i32, ptr %call8.i.i, i32 %dec
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr %struct.ww_mutex, ptr %3, i32 %39
  call void @ww_mutex_unlock(ptr noundef %arrayidx21) #12
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %if.end18
  %cmp22 = icmp eq i32 %err.296, -35
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %while.end
  %arrayidx24 = getelementptr i32, ptr %call8.i.i, i32 %n.0102
  %40 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx24, align 4
  %arrayidx25 = getelementptr %struct.ww_mutex, ptr %3, i32 %41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %42 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i90 = icmp eq i32 %42, 0
  br i1 %tobool.not.i90, label %land.lhs.true.i, label %ww_mutex_lock_slow.exit

land.lhs.true.i:                                  ; preds = %if.then23
  %43 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i, label %do.end.i, label %ww_mutex_lock_slow.exit, !prof !119

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #12
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %ww_mutex_lock_slow.exit, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %45 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %45, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %ww_mutex_lock_slow.exit

do.end20.i:                                       ; preds = %land.lhs.true6.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #12
  br label %ww_mutex_lock_slow.exit

ww_mutex_lock_slow.exit:                          ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.then23
  %call38.i = call i32 @ww_mutex_lock(ptr noundef %arrayidx25, ptr noundef nonnull %ctx) #12
  br label %retry

if.end26:                                         ; preds = %while.end
  br i1 %tobool11.not97, label %do.cond49, label %land.end

land.end:                                         ; preds = %if.end26
  %.b89 = load i1, ptr @stress_inorder_work.__already_done, align 1
  br i1 %.b89, label %do.end53, label %if.then34, !prof !120

if.then34:                                        ; preds = %land.end
  store i1 true, ptr @stress_inorder_work.__already_done, align 1
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %err.296) #14
  br label %do.end53

do.cond49:                                        ; preds = %if.end26
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  %46 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %47, %48
  %cmp50 = icmp sgt i32 %sub, -1
  br i1 %cmp50, label %do.body, label %do.end53

do.end53:                                         ; preds = %do.cond49, %if.then34, %land.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  call void @kfree(ptr noundef %work) #12
  br label %cleanup54

cleanup54:                                        ; preds = %do.end53, %if.end7.i.i, %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stress_reorder_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %locks = alloca %struct.list_head, align 4
  %ctx = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %locks) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %locks, i32 0, i32 1
  %1 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %locks, ptr %locks, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %locks, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %3 = call ptr @memset(ptr %ctx, i32 255, i32 64)
  %nlocks = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %nlocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlocks, align 4
  %6 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #12
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %cleanup, label %if.end7.i.i, !prof !119

if.end7.i.i:                                      ; preds = %entry
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %cleanup, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  %cmp40.not.i = icmp eq i32 %5, 0
  br i1 %cmp40.not.i, label %for.cond.preheader, label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %n.142.i = add i32 %5, -1
  %cmp243.i = icmp sgt i32 %n.142.i, 1
  br i1 %cmp243.i, label %for.body3.i, label %for.cond.preheader

for.body.i:                                       ; preds = %for.body.i, %for.cond.preheader.i
  %n.041.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i, i32 %n.041.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n.041.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %n.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i

for.body3.i:                                      ; preds = %for.inc12.i, %for.cond1.preheader.i
  %n.145.i = phi i32 [ %n.1.i, %for.inc12.i ], [ %n.142.i, %for.cond1.preheader.i ]
  %n.1.in44.i = phi i32 [ %n.145.i, %for.inc12.i ], [ %5, %for.cond1.preheader.i ]
  %call.i.i = call i32 @get_random_u32() #12
  %rem.i = urem i32 %call.i.i, %n.1.in44.i
  %cmp5.not.i = icmp eq i32 %rem.i, %n.145.i
  br i1 %cmp5.not.i, label %for.inc12.i, label %if.then6.i

if.then6.i:                                       ; preds = %for.body3.i
  %arrayidx7.i = getelementptr i32, ptr %call8.i.i, i32 %n.145.i
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %call8.i.i, i32 %rem.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8.i, align 4
  store i32 %13, ptr %arrayidx7.i, align 4
  store i32 %11, ptr %arrayidx8.i, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then6.i, %for.body3.i
  %n.1.i = add i32 %n.145.i, -1
  %cmp2.i = icmp sgt i32 %n.1.i, 1
  br i1 %cmp2.i, label %for.body3.i, label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.inc12.i, %for.cond1.preheader.i, %for.cond.preheader.i
  %14 = ptrtoint ptr %nlocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nlocks, align 4
  %cmp165 = icmp sgt i32 %15, 0
  br i1 %cmp165, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %locks6 = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add.exit, %for.body.lr.ph
  %n.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 12) #16
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %out, label %if.end5

if.end5:                                          ; preds = %for.body
  %17 = ptrtoint ptr %locks6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %locks6, align 4
  %arrayidx = getelementptr i32, ptr %call8.i.i, i32 %n.0166
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.ww_mutex, ptr %18, i32 %20
  %lock = getelementptr inbounds %struct.reorder_lock, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx7, ptr %lock, align 8
  %22 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %locks, align 4
  %call.i.i154 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull %locks, ptr noundef %23) #12
  br i1 %call.i.i154, label %if.end.i.i155, label %list_add.exit

if.end.i.i155:                                    ; preds = %if.end5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %locks, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i, ptr %locks, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i155, %if.end5
  %inc = add nuw nsw i32 %n.0166, 1
  %28 = ptrtoint ptr %nlocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlocks, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %list_add.exit, %for.cond.preheader
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 1
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 3
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 4
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 6
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 5
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %timeout = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %for.end86, %for.end
  %30 = call i32 @llvm.read_register.i32(metadata !108) #12
  %and.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i, align 8
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %ctx, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ww_class, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @ww_class, i32 1, i32 3, i32 1) #12
  %35 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ww_class, ptr nonnull @ww_class, i32 1, ptr nonnull elementtype(i32) @ww_class) #12, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  %36 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %37 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %acquired.i, align 4
  %38 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %wounded.i, align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %39 to i16
  %40 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %41 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ww_class, ptr %ww_class5.i, align 4
  %42 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %done_acquire.i, align 4
  %43 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %ctx, i32 noundef 64) #12
  %44 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %44, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %45 = call ptr @llvm.returnaddress(i32 0) #12
  %46 = ptrtoint ptr %45 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %46) #12
  %47 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %48 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %49, 15
  %50 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  %51 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %51)
  %ll.0171 = load ptr, ptr %locks, align 4
  %cmp14.not172 = icmp eq ptr %ll.0171, %locks
  br i1 %cmp14.not172, label %for.end68, label %for.body15

for.body15:                                       ; preds = %for.inc62, %do.body
  %ll.0173 = phi ptr [ %ll.0, %for.inc62 ], [ %ll.0171, %do.body ]
  %lock16 = getelementptr inbounds %struct.reorder_lock, ptr %ll.0173, i32 0, i32 1
  %52 = ptrtoint ptr %lock16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lock16, align 4
  %call17 = call i32 @ww_mutex_lock(ptr noundef %53, ptr noundef nonnull %ctx) #12
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc62, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.body15
  %ln.0.in167 = getelementptr inbounds %struct.list_head, ptr %ll.0173, i32 0, i32 1
  %54 = ptrtoint ptr %ln.0.in167 to i32
  call void @__asan_load4_noabort(i32 %54)
  %ln.0168 = load ptr, ptr %ln.0.in167, align 4
  %cmp28.not169 = icmp eq ptr %ln.0168, %locks
  br i1 %cmp28.not169, label %for.end38, label %for.body30

for.body30:                                       ; preds = %for.body30, %for.cond26.preheader
  %ln.0170 = phi ptr [ %ln.0, %for.body30 ], [ %ln.0168, %for.cond26.preheader ]
  %lock31 = getelementptr inbounds %struct.reorder_lock, ptr %ln.0170, i32 0, i32 1
  %55 = ptrtoint ptr %lock31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock31, align 4
  call void @ww_mutex_unlock(ptr noundef %56) #12
  %ln.0.in = getelementptr inbounds %struct.list_head, ptr %ln.0170, i32 0, i32 1
  %57 = ptrtoint ptr %ln.0.in to i32
  call void @__asan_load4_noabort(i32 %57)
  %ln.0 = load ptr, ptr %ln.0.in, align 4
  %cmp28.not = icmp eq ptr %ln.0, %locks
  br i1 %cmp28.not, label %for.end38, label %for.body30

for.end38:                                        ; preds = %for.body30, %for.cond26.preheader
  %cmp39.not = icmp eq i32 %call17, -35
  br i1 %cmp39.not, label %if.end59, label %land.end

land.end:                                         ; preds = %for.end38
  %.b153 = load i1, ptr @stress_reorder_work.__already_done, align 1
  br i1 %.b153, label %for.end68, label %if.then47, !prof !120

if.then47:                                        ; preds = %land.end
  store i1 true, ptr @stress_reorder_work.__already_done, align 1
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call17) #14
  br label %for.end68

if.end59:                                         ; preds = %for.end38
  %58 = ptrtoint ptr %lock16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lock16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %60 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i156 = icmp eq i32 %60, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i, label %ww_mutex_lock_slow.exit

land.lhs.true.i:                                  ; preds = %if.end59
  %61 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i = icmp eq ptr %62, null
  br i1 %tobool1.not.i, label %do.end.i, label %ww_mutex_lock_slow.exit, !prof !119

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #12
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %ww_mutex_lock_slow.exit, label %land.lhs.true6.i

land.lhs.true6.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %63 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i = icmp eq i32 %63, 0
  br i1 %tobool7.not.i, label %do.end20.i, label %ww_mutex_lock_slow.exit

do.end20.i:                                       ; preds = %land.lhs.true6.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.38) #12
  br label %ww_mutex_lock_slow.exit

ww_mutex_lock_slow.exit:                          ; preds = %do.end20.i, %land.lhs.true6.i, %do.end.i, %land.lhs.true.i, %if.end59
  %call38.i = call i32 @ww_mutex_lock(ptr noundef %59, ptr noundef nonnull %ctx) #12
  %call.i.i158 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ll.0173) #12
  br i1 %call.i.i158, label %if.end.i.i159, label %__list_del_entry.exit.i

if.end.i.i159:                                    ; preds = %ww_mutex_lock_slow.exit
  %64 = ptrtoint ptr %ln.0.in167 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ln.0.in167, align 4
  %66 = ptrtoint ptr %ll.0173 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ll.0173, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i159, %ww_mutex_lock_slow.exit
  %70 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %locks, align 4
  %call.i.i.i160 = call zeroext i1 @__list_add_valid(ptr noundef %ll.0173, ptr noundef nonnull %locks, ptr noundef %71) #12
  br i1 %call.i.i.i160, label %if.end.i.i.i161, label %for.inc62

if.end.i.i.i161:                                  ; preds = %__list_del_entry.exit.i
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ll.0173, ptr %prev1.i.i2.i, align 4
  %73 = ptrtoint ptr %ll.0173 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %ll.0173, align 4
  %74 = ptrtoint ptr %ln.0.in167 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %locks, ptr %ln.0.in167, align 4
  %75 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %ll.0173, ptr %locks, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %if.end.i.i.i161, %__list_del_entry.exit.i, %for.body15
  %76 = ptrtoint ptr %ll.0173 to i32
  call void @__asan_load4_noabort(i32 %76)
  %ll.0 = load ptr, ptr %ll.0173, align 4
  %cmp14.not = icmp eq ptr %ll.0, %locks
  br i1 %cmp14.not, label %for.end68, label %for.body15

for.end68:                                        ; preds = %for.inc62, %if.then47, %land.end, %do.body
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %77 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %77)
  %ll.1174 = load ptr, ptr %locks, align 4
  %cmp75.not175 = icmp eq ptr %ll.1174, %locks
  br i1 %cmp75.not175, label %for.end86, label %for.body78

for.body78:                                       ; preds = %for.body78, %for.end68
  %ll.1176 = phi ptr [ %ll.1, %for.body78 ], [ %ll.1174, %for.end68 ]
  %lock79 = getelementptr inbounds %struct.reorder_lock, ptr %ll.1176, i32 0, i32 1
  %78 = ptrtoint ptr %lock79 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lock79, align 4
  call void @ww_mutex_unlock(ptr noundef %79) #12
  %80 = ptrtoint ptr %ll.1176 to i32
  call void @__asan_load4_noabort(i32 %80)
  %ll.1 = load ptr, ptr %ll.1176, align 4
  %cmp75.not = icmp eq ptr %ll.1, %locks
  br i1 %cmp75.not, label %for.end86, label %for.body78

for.end86:                                        ; preds = %for.body78, %for.end68
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %ctx)
  %81 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %82, %83
  %cmp88 = icmp sgt i32 %sub, -1
  br i1 %cmp88, label %do.body, label %out

out:                                              ; preds = %for.end86, %for.body
  %order.0 = phi ptr [ null, %for.end86 ], [ %call8.i.i, %for.body ]
  %84 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %locks, align 4
  %cmp103.not177 = icmp eq ptr %85, %locks
  br i1 %cmp103.not177, label %for.end113, label %for.body106

for.body106:                                      ; preds = %for.body106, %out
  %ll.2178 = phi ptr [ %ln.1, %for.body106 ], [ %85, %out ]
  %86 = ptrtoint ptr %ll.2178 to i32
  call void @__asan_load4_noabort(i32 %86)
  %ln.1 = load ptr, ptr %ll.2178, align 4
  call void @kfree(ptr noundef %ll.2178) #12
  %cmp103.not = icmp eq ptr %ln.1, %locks
  br i1 %cmp103.not, label %for.end113, label %for.body106

for.end113:                                       ; preds = %for.body106, %out
  call void @kfree(ptr noundef %order.0) #12
  call void @kfree(ptr noundef %work) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end113, %if.end7.i.i, %entry
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %locks) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stress_one_work(ptr noundef %work) #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nlocks1 = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %nlocks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlocks1, align 4
  %locks = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %locks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %locks, align 4
  %call.i = tail call i32 @get_random_u32() #12
  %rem = urem i32 %call.i, %1
  %add.ptr2 = getelementptr %struct.ww_mutex, ptr %3, i32 %rem
  %timeout = getelementptr inbounds %struct.stress, ptr %work, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.then, %entry
  %call3 = tail call i32 @ww_mutex_lock(ptr noundef %add.ptr2, ptr noundef null) #12
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %land.end

if.then:                                          ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  tail call void @ww_mutex_unlock(ptr noundef %add.ptr2) #12
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %6
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.body, label %do.end24

land.end:                                         ; preds = %do.body
  %.b32 = load i1, ptr @stress_one_work.__already_done, align 1
  br i1 %.b32, label %do.end24, label %if.then9, !prof !120

if.then9:                                         ; preds = %land.end
  store i1 true, ptr @stress_one_work.__already_done, align 1
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46, i32 noundef %call3) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then9, %land.end, %if.then
  tail call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_test_ww_mutex__175_675_test_ww_mutex_init6, !1, !"__initcall__kmod_test_ww_mutex__175_675_test_ww_mutex_init6", i1 false, i1 false}
!1 = !{!"../kernel/locking/test-ww_mutex.c", i32 675, i32 1}
!2 = !{ptr @__exitcall_test_ww_mutex_exit, !3, !"__exitcall_test_ww_mutex_exit", i1 false, i1 false}
!3 = !{!"../kernel/locking/test-ww_mutex.c", i32 676, i32 1}
!4 = !{ptr @__UNIQUE_ID_file176, !5, !"__UNIQUE_ID_file176", i1 false, i1 false}
!5 = !{!"../kernel/locking/test-ww_mutex.c", i32 678, i32 1}
!6 = !{ptr @__UNIQUE_ID_license177, !5, !"__UNIQUE_ID_license177", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author178, !8, !"__UNIQUE_ID_author178", i1 false, i1 false}
!8 = !{!"../kernel/locking/test-ww_mutex.c", i32 679, i32 1}
!9 = !{ptr @wq, !10, !"wq", i1 false, i1 false}
!10 = !{!"../kernel/locking/test-ww_mutex.c", i32 17, i32 26}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/locking/test-ww_mutex.c", i32 626, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @test_ww_mutex_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_ww_mutex_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/locking/test-ww_mutex.c", i32 628, i32 23}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/locking/test-ww_mutex.c", i32 666, i32 2}
!21 = !{ptr @test_ww_mutex_init._entry.4, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @test_ww_mutex_init._entry_ptr.6, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__test_mutex.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../kernel/locking/test-ww_mutex.c", i32 67, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/locking/test-ww_mutex.c", i32 96, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__test_mutex._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @__test_mutex._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/locking/test-ww_mutex.c", i32 16, i32 8}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ww_class, !32, !"ww_class", i1 false, i1 false}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/locking/test-ww_mutex.c", i32 126, i32 31}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/locking/test-ww_mutex.c", i32 126, i32 43}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/locking/test-ww_mutex.c", i32 134, i32 4}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @test_aa._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @test_aa._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/locking/test-ww_mutex.c", i32 140, i32 4}
!53 = !{ptr @test_aa._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @test_aa._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/locking/test-ww_mutex.c", i32 146, i32 3}
!57 = !{ptr @test_aa._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @test_aa._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/locking/test-ww_mutex.c", i32 153, i32 3}
!61 = !{ptr @test_aa._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @test_aa._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/locking/test-ww_mutex.c", i32 161, i32 3}
!65 = !{ptr @test_aa._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @test_aa._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @test_abba.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../kernel/locking/test-ww_mutex.c", i32 226, i32 2}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/locking/test-ww_mutex.c", i32 263, i32 4}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @test_abba._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @test_abba._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/locking/test-ww_mutex.c", i32 269, i32 4}
!77 = !{ptr @test_abba._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @test_abba._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/ww_mutex.h", i32 297, i32 2}
!81 = !{ptr @__test_cycle.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../kernel/locking/test-ww_mutex.c", i32 340, i32 3}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/locking/test-ww_mutex.c", i32 356, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__test_cycle._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @__test_cycle._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @stress.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../kernel/locking/test-ww_mutex.c", i32 603, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../kernel/locking/test-ww_mutex.c", i32 460, i32 4}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @stress_inorder_work._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @stress_inorder_work._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../kernel/locking/test-ww_mutex.c", i32 514, i32 5}
!100 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @stress_reorder_work._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @stress_reorder_work._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../kernel/locking/test-ww_mutex.c", i32 550, i32 4}
!105 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @stress_one_work._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @stress_one_work._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2148222325, i64 2148222357, i64 2148222386, i64 2148222420, i64 2148222451, i64 2148222474}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{i8 0, i8 2}
