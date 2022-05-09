; ModuleID = '/llk/IR_all_yes/lib/test_vmalloc.c_pt.bc'
source_filename = "../lib/test_vmalloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.test_case_desc = type { ptr, ptr }
%struct.test_driver = type { ptr, [10 x %struct.test_case_data], i32, i32 }
%struct.test_case_data = type { i32, i32, i64 }
%struct.test_kvfree_rcu = type { %struct.callback_head, [20 x i8] }
%struct.callback_head = type { ptr, ptr }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nr_threads = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nr_threads = internal constant %struct.kernel_param { ptr @___asan_gen_.23, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nr_threads } }, section "__param", align 4
@__UNIQUE_ID_nr_threadstype226 = internal constant [24 x i8] c"parmtype=nr_threads:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_threads227 = internal constant [74 x i8] c"parm=nr_threads:Number of workers to perform tests(min: 1 max: USHRT_MAX)\00", section ".modinfo", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sequential_test_order = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_sequential_test_order = internal constant %struct.kernel_param { ptr @___asan_gen_.26, ptr @__this_module, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sequential_test_order } }, section "__param", align 4
@__UNIQUE_ID_sequential_test_ordertype228 = internal constant [36 x i8] c"parmtype=sequential_test_order:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_sequential_test_order229 = internal constant [61 x i8] c"parm=sequential_test_order:Use sequential stress tests order\00", section ".modinfo", align 1
@test_repeat_count = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_test_repeat_count = internal constant %struct.kernel_param { ptr @___asan_gen_.29, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_repeat_count } }, section "__param", align 4
@__UNIQUE_ID_test_repeat_counttype230 = internal constant [31 x i8] c"parmtype=test_repeat_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test_repeat_count231 = internal constant [47 x i8] c"parm=test_repeat_count:Set test repeat counter\00", section ".modinfo", align 1
@test_loop_count = internal global { i32, [28 x i8] } { i32 1000000, [28 x i8] zeroinitializer }, align 32
@__param_test_loop_count = internal constant %struct.kernel_param { ptr @___asan_gen_.32, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @test_loop_count } }, section "__param", align 4
@__UNIQUE_ID_test_loop_counttype232 = internal constant [29 x i8] c"parmtype=test_loop_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_test_loop_count233 = internal constant [43 x i8] c"parm=test_loop_count:Set test loop counter\00", section ".modinfo", align 1
@nr_pages = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_nr_pages = internal constant %struct.kernel_param { ptr @___asan_gen_.35, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @nr_pages } }, section "__param", align 4
@__UNIQUE_ID_nr_pagestype234 = internal constant [22 x i8] c"parmtype=nr_pages:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nr_pages235 = internal constant [70 x i8] c"parm=nr_pages:Set number of pages for fix_size_alloc_test(default: 1)\00", section ".modinfo", align 1
@run_test_mask = internal global { i32, [28 x i8] } { i32 2147483647, [28 x i8] zeroinitializer }, align 32
@__param_run_test_mask = internal constant %struct.kernel_param { ptr @___asan_gen_.38, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @run_test_mask } }, section "__param", align 4
@__UNIQUE_ID_run_test_masktype236 = internal constant [27 x i8] c"parmtype=run_test_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_run_test_mask237 = internal constant [472 x i8] c"parm=run_test_mask:Set tests specified in the mask.\0A\0A\09\09id: 1,    name: fix_size_alloc_test\0A\09\09id: 2,    name: full_fit_alloc_test\0A\09\09id: 4,    name: long_busy_list_alloc_test\0A\09\09id: 8,    name: random_size_alloc_test\0A\09\09id: 16,   name: fix_align_alloc_test\0A\09\09id: 32,   name: random_size_align_alloc_test\0A\09\09id: 64,   name: align_shift_alloc_test\0A\09\09id: 128,  name: pcpu_alloc_test\0A\09\09id: 256,  name: kvfree_rcu_1_arg_vmalloc_test\0A\09\09id: 512,  name: kvfree_rcu_2_arg_vmalloc_test\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [24 x i8] c"author=Uladzislau Rezki\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [32 x i8] c"description=vmalloc test module\00", section ".modinfo", align 1
@prepare_for_test_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @prepare_for_test_rwsem, i64 56), ptr getelementptr (i8, ptr @prepare_for_test_rwsem, i64 56) }, ptr @prepare_for_test_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@tdriver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vmalloc_test/%d\00", [16 x i8] zeroinitializer }, align 32
@test_n_undone = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@do_concurrent_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Failed to start %d kthread\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"do_concurrent_test\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_vmalloc.c\00", [45 x i8] zeroinitializer }, align 32
@do_concurrent_test._entry_ptr = internal global ptr @do_concurrent_test._entry, section ".printk_index", align 4
@test_all_done_comp = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @test_all_done_comp, i64 48), ptr getelementptr (i8, ptr @test_all_done_comp, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@do_concurrent_test._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016Summary: %s passed: %d failed: %d repeat: %d loops: %d avg: %llu usec\0A\00", [55 x i8] zeroinitializer }, align 32
@do_concurrent_test._entry_ptr.6 = internal global ptr @do_concurrent_test._entry.4, section ".printk_index", align 4
@test_case_array = internal constant { [10 x %struct.test_case_desc], [48 x i8] } { [10 x %struct.test_case_desc] [%struct.test_case_desc { ptr @.str.13, ptr @fix_size_alloc_test }, %struct.test_case_desc { ptr @.str.14, ptr @full_fit_alloc_test }, %struct.test_case_desc { ptr @.str.15, ptr @long_busy_list_alloc_test }, %struct.test_case_desc { ptr @.str.16, ptr @random_size_alloc_test }, %struct.test_case_desc { ptr @.str.17, ptr @fix_align_alloc_test }, %struct.test_case_desc { ptr @.str.18, ptr @random_size_align_alloc_test }, %struct.test_case_desc { ptr @.str.19, ptr @align_shift_alloc_test }, %struct.test_case_desc { ptr @.str.20, ptr @pcpu_alloc_test }, %struct.test_case_desc { ptr @.str.21, ptr @kvfree_rcu_1_arg_vmalloc_test }, %struct.test_case_desc { ptr @.str.22, ptr @kvfree_rcu_2_arg_vmalloc_test }], [48 x i8] zeroinitializer }, align 32
@do_concurrent_test._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016All test took worker%d=%lu cycles\0A\00", [59 x i8] zeroinitializer }, align 32
@do_concurrent_test._entry_ptr.9 = internal global ptr @do_concurrent_test._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"prepare_for_test_rwsem.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prepare_for_test_rwsem\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(test_all_done_comp).wait.lock\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fix_size_alloc_test\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"full_fit_alloc_test\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"long_busy_list_alloc_test\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"random_size_alloc_test\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fix_align_alloc_test\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"random_size_align_alloc_test\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"align_shift_alloc_test\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcpu_alloc_test\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kvfree_rcu_1_arg_vmalloc_test\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kvfree_rcu_2_arg_vmalloc_test\00", [34 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.23 = private constant [11 x i8] c"nr_threads\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 26, i32 1 }
@___asan_gen_.26 = private constant [22 x i8] c"sequential_test_order\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 29, i32 1 }
@___asan_gen_.29 = private constant [18 x i8] c"test_repeat_count\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 32, i32 1 }
@___asan_gen_.32 = private constant [16 x i8] c"test_loop_count\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 35, i32 1 }
@___asan_gen_.35 = private constant [9 x i8] c"nr_pages\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 38, i32 1 }
@___asan_gen_.38 = private constant [14 x i8] c"run_test_mask\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 41, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"prepare_for_test_rwsem\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"tdriver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 391, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 511, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"test_n_undone\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 66, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 517, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"test_all_done_comp\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 546, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"test_case_array\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 365, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 555, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 60, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 65, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 366, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 367, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 368, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 369, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 370, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 371, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 372, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 373, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 374, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [22 x i8] c"../lib/test_vmalloc.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 375, i32 4 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_nr_pages235, ptr @__UNIQUE_ID_nr_pagestype234, ptr @__UNIQUE_ID_nr_threads227, ptr @__UNIQUE_ID_nr_threadstype226, ptr @__UNIQUE_ID_run_test_mask237, ptr @__UNIQUE_ID_run_test_masktype236, ptr @__UNIQUE_ID_sequential_test_order229, ptr @__UNIQUE_ID_sequential_test_ordertype228, ptr @__UNIQUE_ID_test_loop_count233, ptr @__UNIQUE_ID_test_loop_counttype232, ptr @__UNIQUE_ID_test_repeat_count231, ptr @__UNIQUE_ID_test_repeat_counttype230, ptr @__param_nr_pages, ptr @__param_nr_threads, ptr @__param_run_test_mask, ptr @__param_sequential_test_order, ptr @__param_test_loop_count, ptr @__param_test_repeat_count, ptr @do_concurrent_test._entry, ptr @do_concurrent_test._entry.4, ptr @do_concurrent_test._entry.7, ptr @do_concurrent_test._entry_ptr, ptr @do_concurrent_test._entry_ptr.6, ptr @do_concurrent_test._entry_ptr.9, ptr @nr_threads, ptr @sequential_test_order, ptr @test_repeat_count, ptr @test_loop_count, ptr @nr_pages, ptr @run_test_mask, ptr @prepare_for_test_rwsem, ptr @tdriver, ptr @.str, ptr @test_n_undone, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @test_all_done_comp, ptr @.str.5, ptr @test_case_array, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_threads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sequential_test_order to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_repeat_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_loop_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_test_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_for_test_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdriver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_n_undone to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_concurrent_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_all_done_comp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_concurrent_test._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_case_array to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_concurrent_test._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @nr_threads, align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 1) #11
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 65535) #11
  store i32 %2, ptr @nr_threads, align 4
  %3 = mul nuw nsw i32 %2, 176
  %call.i.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3520, i32 noundef -1) #12
  store ptr %call.i.i.i.i.i, ptr @tdriver, align 4
  %cmp7.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %cmp7.i.i, label %entry.do_concurrent_test.exit_crit_edge, label %if.end.i.i

entry.do_concurrent_test.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_concurrent_test.exit

if.end.i.i:                                       ; preds = %entry
  %4 = load i32, ptr @test_repeat_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8.i.i = icmp slt i32 %4, 1
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @test_repeat_count, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %5 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp11.i.i = icmp slt i32 %5, 1
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end10.i.i.if.end.i_crit_edge

if.end10.i.i.if.end.i_crit_edge:                  ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @test_loop_count, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.i.i, %if.end10.i.i.if.end.i_crit_edge
  tail call void @down_write(ptr noundef nonnull @prepare_for_test_rwsem) #11
  %6 = load i32, ptr @nr_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp188.i = icmp sgt i32 %6, 0
  br i1 %cmp188.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.089.i = phi i32 [ %inc.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %7 = load ptr, ptr @tdriver, align 4
  %arrayidx.i = getelementptr %struct.test_driver, ptr %7, i32 %i.089.i
  %call2.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @test_func, ptr noundef %arrayidx.i, i32 noundef -1, ptr noundef nonnull @.str, i32 noundef %i.089.i) #11
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.then9.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = tail call i32 @wake_up_process(ptr noundef %call2.i) #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %arrayidx.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @test_n_undone, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @test_n_undone, i32 1, i32 3, i32 1) #11
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @test_n_undone, ptr nonnull @test_n_undone, i32 1, ptr nonnull elementtype(i32) @test_n_undone) #11, !srcloc !99
  br label %if.end12.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %arrayidx.i, align 8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.089.i) #13
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end.i, %if.then9.i
  %inc.i = add nuw nsw i32 %i.089.i, 1
  %11 = load i32, ptr @nr_threads, align 4
  %cmp1.i = icmp slt i32 %inc.i, %11
  br i1 %cmp1.i, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end12.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @up_write(ptr noundef nonnull @prepare_for_test_rwsem) #11
  br label %do.body13.i

do.body13.i:                                      ; preds = %do.body13.i.do.body13.i_crit_edge, %for.end.i
  %call14.i = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @test_all_done_comp, i32 noundef 100) #11
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %do.body13.i.do.body13.i_crit_edge, label %for.cond17.preheader.i

do.body13.i.do.body13.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13.i

for.cond17.preheader.i:                           ; preds = %do.body13.i
  %12 = load i32, ptr @nr_threads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1893.i = icmp sgt i32 %12, 0
  br i1 %cmp1893.i, label %for.cond17.preheader.i.for.body19.i_crit_edge, label %for.cond17.preheader.i.for.end55.i_crit_edge

for.cond17.preheader.i.for.end55.i_crit_edge:     ; preds = %for.cond17.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55.i

for.cond17.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond17.preheader.i
  br label %for.body19.i

for.body19.i:                                     ; preds = %do.end50.i.for.body19.i_crit_edge, %for.cond17.preheader.i.for.body19.i_crit_edge
  %i.194.i = phi i32 [ %inc54.i, %do.end50.i.for.body19.i_crit_edge ], [ 0, %for.cond17.preheader.i.for.body19.i_crit_edge ]
  %13 = load ptr, ptr @tdriver, align 4
  %arrayidx21.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx21.i, align 8
  %cmp.i84.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %for.body19.i.for.body30.i.preheader_crit_edge, label %if.then24.i

for.body19.i.for.body30.i.preheader_crit_edge:    ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i.preheader

if.then24.i:                                      ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = tail call i32 @kthread_stop(ptr noundef %15) #11
  br label %for.body30.i.preheader

for.body30.i.preheader:                           ; preds = %if.then24.i, %for.body19.i.for.body30.i.preheader_crit_edge
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.inc45.i.for.body30.i_crit_edge, %for.body30.i.preheader
  %j.091.i = phi i32 [ %inc46.i, %for.inc45.i.for.body30.i_crit_edge ], [ 0, %for.body30.i.preheader ]
  %16 = load i32, ptr @run_test_mask, align 4
  %shl.i = shl nuw nsw i32 1, %j.091.i
  %and.i = and i32 %16, %shl.i
  %shr87.i = lshr i32 %and.i, %j.091.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr87.i)
  %tobool31.not.i = icmp eq i32 %shr87.i, 0
  br i1 %tobool31.not.i, label %for.body30.i.for.inc45.i_crit_edge, label %do.end36.i

for.body30.i.for.inc45.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45.i

do.end36.i:                                       ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx38.i = getelementptr [10 x %struct.test_case_desc], ptr @test_case_array, i32 0, i32 %j.091.i
  %17 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx38.i, align 4
  %arrayidx39.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i, i32 1, i32 %j.091.i
  %test_passed.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i, i32 1, i32 %j.091.i, i32 1
  %19 = ptrtoint ptr %test_passed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %test_passed.i, align 4
  %21 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx39.i, align 8
  %23 = load i32, ptr @test_repeat_count, align 4
  %24 = load i32, ptr @test_loop_count, align 4
  %time.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i, i32 1, i32 %j.091.i, i32 2
  %25 = ptrtoint ptr %time.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %time.i, align 8
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %23, i32 noundef %24, i64 noundef %26) #13
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %do.end36.i, %for.body30.i.for.inc45.i_crit_edge
  %inc46.i = add nuw nsw i32 %j.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc46.i, 10
  br i1 %exitcond.not.i, label %do.end50.i, label %for.inc45.i.for.body30.i_crit_edge

for.inc45.i.for.body30.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

do.end50.i:                                       ; preds = %for.inc45.i
  %stop.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i, i32 3
  %27 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop.i, align 4
  %start.i = getelementptr %struct.test_driver, ptr %13, i32 %i.194.i, i32 2
  %29 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start.i, align 8
  %sub.i = sub i32 %28, %30
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %i.194.i, i32 noundef %sub.i) #13
  %inc54.i = add nuw nsw i32 %i.194.i, 1
  %31 = load i32, ptr @nr_threads, align 4
  %cmp18.i = icmp slt i32 %inc54.i, %31
  br i1 %cmp18.i, label %do.end50.i.for.body19.i_crit_edge, label %do.end50.i.for.end55.i_crit_edge

do.end50.i.for.end55.i_crit_edge:                 ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end55.i

do.end50.i.for.body19.i_crit_edge:                ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19.i

for.end55.i:                                      ; preds = %do.end50.i.for.end55.i_crit_edge, %for.cond17.preheader.i.for.end55.i_crit_edge
  %32 = load ptr, ptr @tdriver, align 4
  tail call void @kvfree(ptr noundef %32) #11
  br label %do_concurrent_test.exit

do_concurrent_test.exit:                          ; preds = %for.end55.i, %entry.do_concurrent_test.exit_crit_edge
  ret i32 -11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_func(ptr nocapture noundef %private) #0 align 64 {
entry:
  %rnd.i = alloca i32, align 4
  %random_array = alloca [10 x i32], align 4
  %c = alloca i32, align 4
  %c226 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %random_array) #11
  %0 = ptrtoint ptr %random_array to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %random_array, align 4
  %arrayidx.1 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 8
  %8 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr inbounds [10 x i32], ptr %random_array, i32 0, i32 9
  %9 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9, ptr %arrayidx.9, align 4
  %10 = load i8, ptr @sequential_test_order, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rnd.i) #11
  %11 = ptrtoint ptr %rnd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %rnd.i, align 4, !annotation !101
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %12 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rnd.i, align 4
  %rem.i = urem i32 %13, 9
  %14 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.9, align 4
  %arrayidx1.i = getelementptr i32, ptr %random_array, i32 %rem.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i, align 4
  store i32 %17, ptr %arrayidx.9, align 4
  store i32 %15, ptr %arrayidx1.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rnd.i, align 4
  %rem.1.i = and i32 %19, 7
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.8, align 4
  %arrayidx1.1.i = getelementptr i32, ptr %random_array, i32 %rem.1.i
  %22 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.1.i, align 4
  store i32 %23, ptr %arrayidx.8, align 4
  store i32 %21, ptr %arrayidx1.1.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rnd.i, align 4
  %rem.2.i = urem i32 %25, 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.7, align 4
  %arrayidx1.2.i = getelementptr i32, ptr %random_array, i32 %rem.2.i
  %28 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.2.i, align 4
  store i32 %29, ptr %arrayidx.7, align 4
  store i32 %27, ptr %arrayidx1.2.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %30 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rnd.i, align 4
  %rem.3.i = urem i32 %31, 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  %arrayidx1.3.i = getelementptr i32, ptr %random_array, i32 %rem.3.i
  %34 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.3.i, align 4
  store i32 %35, ptr %arrayidx.6, align 4
  store i32 %33, ptr %arrayidx1.3.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rnd.i, align 4
  %rem.4.i = urem i32 %37, 5
  %38 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.5, align 4
  %arrayidx1.4.i = getelementptr i32, ptr %random_array, i32 %rem.4.i
  %40 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx1.4.i, align 4
  store i32 %41, ptr %arrayidx.5, align 4
  store i32 %39, ptr %arrayidx1.4.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %42 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rnd.i, align 4
  %rem.5.i = and i32 %43, 3
  %44 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.4, align 4
  %arrayidx1.5.i = getelementptr i32, ptr %random_array, i32 %rem.5.i
  %46 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx1.5.i, align 4
  store i32 %47, ptr %arrayidx.4, align 4
  store i32 %45, ptr %arrayidx1.5.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %48 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rnd.i, align 4
  %rem.6.i = urem i32 %49, 3
  %50 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.6.i = getelementptr i32, ptr %random_array, i32 %rem.6.i
  %52 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx1.6.i, align 4
  store i32 %53, ptr %arrayidx.3, align 4
  store i32 %51, ptr %arrayidx1.6.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %54 = ptrtoint ptr %rnd.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rnd.i, align 4
  %rem.7.i = and i32 %55, 1
  %56 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.7.i = getelementptr i32, ptr %random_array, i32 %rem.7.i
  %58 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx1.7.i, align 4
  store i32 %59, ptr %arrayidx.2, align 4
  store i32 %57, ptr %arrayidx1.7.i, align 4
  call void @get_random_bytes(ptr noundef nonnull %rnd.i, i32 noundef 4) #11
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.1, align 4
  %62 = ptrtoint ptr %random_array to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %random_array, align 4
  store i32 %63, ptr %arrayidx.1, align 4
  store i32 %61, ptr %random_array, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rnd.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @down_read(ptr noundef nonnull @prepare_for_test_rwsem) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #11
  %64 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %c, align 4, !annotation !101
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %66, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #11
  %start = getelementptr inbounds %struct.test_driver, ptr %private, i32 0, i32 2
  %67 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond, ptr %start, align 8
  br label %for.body4

for.body4:                                        ; preds = %for.inc223.for.body4_crit_edge, %cond.end
  %i.1362 = phi i32 [ 0, %cond.end ], [ %inc224, %for.inc223.for.body4_crit_edge ]
  %arrayidx5 = getelementptr [10 x i32], ptr %random_array, i32 0, i32 %i.1362
  %68 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx5, align 4
  %70 = load i32, ptr @run_test_mask, align 4
  %shl = shl nuw i32 1, %69
  %and = and i32 %70, %shl
  %shr = ashr i32 %and, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool6.not = icmp eq i32 %shr, 0
  br i1 %tobool6.not, label %for.body4.for.inc223_crit_edge, label %if.end8

for.body4.for.inc223_crit_edge:                   ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc223

if.end8:                                          ; preds = %for.body4
  %call9 = call i64 @ktime_get() #11
  %71 = load i32, ptr @test_repeat_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp11360 = icmp sgt i32 %71, 0
  br i1 %cmp11360, label %for.body12.lr.ph, label %if.end8.for.end25_crit_edge

if.end8.for.end25_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body12.lr.ph:                                 ; preds = %if.end8
  %test_func = getelementptr [10 x %struct.test_case_desc], ptr @test_case_array, i32 0, i32 %69, i32 1
  %72 = ptrtoint ptr %test_func to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %test_func, align 4
  %arrayidx20 = getelementptr %struct.test_driver, ptr %private, i32 0, i32 1, i32 %69
  %test_passed = getelementptr %struct.test_driver, ptr %private, i32 0, i32 1, i32 %69, i32 1
  br label %for.body12

for.body12:                                       ; preds = %for.inc23.for.body12_crit_edge, %for.body12.lr.ph
  %j.0361 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc24, %for.inc23.for.body12_crit_edge ]
  %call14 = call i32 %73() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %test_passed to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %test_passed, align 4
  %inc18 = add i32 %75, 1
  store i32 %inc18, ptr %test_passed, align 4
  br label %for.inc23

if.else:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx20, align 8
  %inc21 = add i32 %77, 1
  store i32 %inc21, ptr %arrayidx20, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %if.else, %if.then16
  %inc24 = add nuw nsw i32 %j.0361, 1
  %78 = load i32, ptr @test_repeat_count, align 4
  %cmp11 = icmp slt i32 %inc24, %78
  br i1 %cmp11, label %for.inc23.for.body12_crit_edge, label %for.inc23.for.end25_crit_edge

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.inc23.for.body12_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %if.end8.for.end25_crit_edge
  %call26 = call i64 @ktime_get() #11
  %sub.i = sub i64 %call26, %call9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %79 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #11
  %80 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %79, i32 0) #14, !srcloc !102
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %80, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %80, 1
  %81 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %79, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #14, !srcloc !103
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %81, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %82 = load i32, ptr @test_repeat_count, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %cond213.i.i.i)
  %cmp205 = icmp ult i64 %cond213.i.i.i, 4294967296
  br i1 %cmp205, label %if.then209, label %if.else215, !prof !104

if.then209:                                       ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv210 = trunc i64 %cond213.i.i.i to i32
  %div213 = udiv i32 %conv210, %82
  %conv214 = zext i32 %div213 to i64
  br label %if.end219

if.else215:                                       ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #10
  %83 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %82, i64 %cond213.i.i.i) #14, !srcloc !105
  %asmresult1.i = extractvalue { i64, i64 } %83, 1
  br label %if.end219

if.end219:                                        ; preds = %if.else215, %if.then209
  %delta.0 = phi i64 [ %conv214, %if.then209 ], [ %asmresult1.i, %if.else215 ]
  %time = getelementptr %struct.test_driver, ptr %private, i32 0, i32 1, i32 %69, i32 2
  %84 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %delta.0, ptr %time, align 8
  br label %for.inc223

for.inc223:                                       ; preds = %if.end219, %for.body4.for.inc223_crit_edge
  %inc224 = add nuw nsw i32 %i.1362, 1
  %exitcond.not = icmp eq i32 %inc224, 10
  br i1 %exitcond.not, label %for.end225, label %for.inc223.for.body4_crit_edge

for.inc223.for.body4_crit_edge:                   ; preds = %for.inc223
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.end225:                                       ; preds = %for.inc223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c226) #11
  %85 = ptrtoint ptr %c226 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %c226, align 4, !annotation !101
  %call228 = call i32 @read_current_timer(ptr noundef nonnull %c226) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %cond.false231, label %for.end225.cond.end232_crit_edge

for.end225.cond.end232_crit_edge:                 ; preds = %for.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end232

cond.false231:                                    ; preds = %for.end225
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %c226 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %c226, align 4
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false231, %for.end225.cond.end232_crit_edge
  %cond233 = phi i32 [ %87, %cond.false231 ], [ 0, %for.end225.cond.end232_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c226) #11
  %stop = getelementptr inbounds %struct.test_driver, ptr %private, i32 0, i32 3
  %88 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond233, ptr %stop, align 4
  call void @up_read(ptr noundef nonnull @prepare_for_test_rwsem) #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @test_n_undone, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  call void @llvm.prefetch.p0(ptr nonnull @test_n_undone, i32 1, i32 3, i32 1) #11
  %89 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @test_n_undone, ptr nonnull @test_n_undone, i32 1, ptr nonnull elementtype(i32) @test_n_undone) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %89, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %cond.end232.test_report_one_done.exit_crit_edge

cond.end232.test_report_one_done.exit_crit_edge:  ; preds = %cond.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_report_one_done.exit

if.then.i:                                        ; preds = %cond.end232
  call void @__sanitizer_cov_trace_pc() #10
  call void @complete(ptr noundef nonnull @test_all_done_comp) #11
  br label %test_report_one_done.exit

test_report_one_done.exit:                        ; preds = %if.then.i, %cond.end232.test_report_one_done.exit_crit_edge
  %call234363 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call234363, label %test_report_one_done.exit.while.end_crit_edge, label %test_report_one_done.exit.while.body_crit_edge

test_report_one_done.exit.while.body_crit_edge:   ; preds = %test_report_one_done.exit
  br label %while.body

test_report_one_done.exit.while.end_crit_edge:    ; preds = %test_report_one_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %test_report_one_done.exit.while.body_crit_edge
  call void @msleep(i32 noundef 10) #11
  %call234 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call234, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %test_report_one_done.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %random_array) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fix_size_alloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load i32, ptr @nr_pages, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %mul = shl i32 %2, 12
  %call = tail call noalias ptr @vmalloc(i32 noundef %mul) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call, align 1
  tail call void @vfree(ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.07, 1
  %4 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @full_fit_alloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #11, !range !109
  %sub.i = sub nuw nsw i32 32, %1
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %mul = shl nuw nsw i32 %cond.i, 13
  %mul2 = shl nuw nsw i32 %cond.i, 15
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %mul2) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %mul2) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup.sink.split_crit_edge, label %for.cond.preheader

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp68.not = icmp eq i32 %cond.i, 0
  br i1 %cmp68.not, label %for.cond.preheader.for.cond19.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body

for.cond12.preheader:                             ; preds = %for.body
  br i1 %cmp68.not, label %for.cond12.preheader.for.cond19.preheader_crit_edge, label %for.body14.preheader

for.cond12.preheader.for.cond19.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

for.body14.preheader:                             ; preds = %for.cond12.preheader
  %umax77 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call9 = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %arrayidx = getelementptr ptr, ptr %call3, i32 %i.069
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %arrayidx, align 4
  %call10 = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %arrayidx11 = getelementptr ptr, ptr %call5, i32 %i.069
  %3 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %arrayidx11, align 4
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond19.preheader:                             ; preds = %for.body14.for.cond19.preheader_crit_edge, %for.cond12.preheader.for.cond19.preheader_crit_edge, %for.cond.preheader.for.cond19.preheader_crit_edge
  %4 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2072 = icmp sgt i32 %4, 0
  br i1 %cmp2072, label %for.cond19.preheader.for.body21_crit_edge, label %for.cond19.preheader.error_crit_edge

for.cond19.preheader.error_crit_edge:             ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond19.preheader.for.body21_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body21

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.171 = phi i32 [ %inc17, %for.body14.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %arrayidx15 = getelementptr ptr, ptr %call5, i32 %i.171
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx15, align 4
  tail call void @vfree(ptr noundef %6) #11
  %inc17 = add nuw nsw i32 %i.171, 1
  %exitcond78.not = icmp eq i32 %inc17, %umax77
  br i1 %exitcond78.not, label %for.body14.for.cond19.preheader_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.body14.for.cond19.preheader_crit_edge:        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader

for.body21:                                       ; preds = %if.end25.for.body21_crit_edge, %for.cond19.preheader.for.body21_crit_edge
  %i.273 = phi i32 [ %inc27, %if.end25.for.body21_crit_edge ], [ 0, %for.cond19.preheader.for.body21_crit_edge ]
  %call22 = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.body21.error_crit_edge, label %if.end25

for.body21.error_crit_edge:                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end25:                                         ; preds = %for.body21
  %7 = ptrtoint ptr %call22 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %call22, align 1
  tail call void @vfree(ptr noundef nonnull %call22) #11
  %inc27 = add nuw nsw i32 %i.273, 1
  %8 = load i32, ptr @test_loop_count, align 4
  %cmp20 = icmp slt i32 %inc27, %8
  br i1 %cmp20, label %if.end25.for.body21_crit_edge, label %if.end25.error_crit_edge

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end25.for.body21_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

error:                                            ; preds = %if.end25.error_crit_edge, %for.body21.error_crit_edge, %for.cond19.preheader.error_crit_edge
  %rv.0 = phi i32 [ 0, %for.cond19.preheader.error_crit_edge ], [ 0, %if.end25.error_crit_edge ], [ -1, %for.body21.error_crit_edge ]
  br i1 %cmp68.not, label %error.for.end35_crit_edge, label %for.body31.preheader

error.for.end35_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.body31.preheader:                             ; preds = %error
  %umax79 = call i32 @llvm.umax.i32(i32 %mul, i32 1)
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.preheader
  %i.376 = phi i32 [ %inc34, %for.body31.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %arrayidx32 = getelementptr ptr, ptr %call3, i32 %i.376
  %9 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx32, align 4
  tail call void @vfree(ptr noundef %10) #11
  %inc34 = add nuw nsw i32 %i.376, 1
  %exitcond80.not = icmp eq i32 %inc34, %umax79
  br i1 %exitcond80.not, label %for.body31.for.end35_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.body31.for.end35_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end35

for.end35:                                        ; preds = %for.body31.for.end35_crit_edge, %error.for.end35_crit_edge
  tail call void @vfree(ptr noundef nonnull %call3) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end35, %if.end.cleanup.sink.split_crit_edge
  %call5.sink = phi ptr [ %call5, %for.end35 ], [ %call3, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %rv.0, %for.end35 ], [ -1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @vfree(ptr noundef nonnull %call5.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @long_busy_list_alloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call noalias ptr @vmalloc(i32 noundef 60000) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.body
  %0 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp344 = icmp sgt i32 %0, 0
  br i1 %cmp344, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.leave_crit_edge

for.cond2.preheader.leave_crit_edge:              ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %arrayidx = getelementptr ptr, ptr %call, i32 %i.043
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 15000
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body4:                                        ; preds = %if.end12.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.145 = phi i32 [ %inc14, %if.end12.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  %call5 = tail call noalias ptr @vmalloc(i32 noundef 409600) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.body4.leave_crit_edge, label %if.end8

for.body4.leave_crit_edge:                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end8:                                          ; preds = %for.body4
  %call9 = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %call5) #11
  br label %leave

if.end12:                                         ; preds = %if.end8
  %2 = ptrtoint ptr %call5 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call5, align 1
  %3 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call9, align 1
  tail call void @vfree(ptr noundef nonnull %call5) #11
  tail call void @vfree(ptr noundef nonnull %call9) #11
  %inc14 = add nuw nsw i32 %i.145, 1
  %4 = load i32, ptr @test_loop_count, align 4
  %cmp3 = icmp slt i32 %inc14, %4
  br i1 %cmp3, label %if.end12.for.body4_crit_edge, label %if.end12.leave_crit_edge

if.end12.leave_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %leave

if.end12.for.body4_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

leave:                                            ; preds = %if.end12.leave_crit_edge, %if.then11, %for.body4.leave_crit_edge, %for.cond2.preheader.leave_crit_edge
  %rv.0 = phi i32 [ -1, %if.then11 ], [ 0, %for.cond2.preheader.leave_crit_edge ], [ -1, %for.body4.leave_crit_edge ], [ 0, %if.end12.leave_crit_edge ]
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %leave
  %i.247 = phi i32 [ 0, %leave ], [ %inc21, %for.body18.for.body18_crit_edge ]
  %arrayidx19 = getelementptr ptr, ptr %call, i32 %i.247
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx19, align 4
  tail call void @vfree(ptr noundef %6) #11
  %inc21 = add nuw nsw i32 %i.247, 1
  %exitcond49.not = icmp eq i32 %inc21, 15000
  br i1 %exitcond49.not, label %for.end22, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.end22:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %for.end22 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_size_alloc_test() #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #11
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !101
  %1 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @get_random_bytes(ptr noundef nonnull %n, i32 noundef 4) #11
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %rem = urem i32 %3, 100
  %add = add nuw nsw i32 %rem, 1
  store i32 %add, ptr %n, align 4
  %mul = shl nuw nsw i32 %add, 12
  %call = call noalias ptr @vmalloc(i32 noundef %mul) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %call, align 1
  call void @vfree(ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.07, 1
  %5 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fix_align_alloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call noalias ptr @__vmalloc_node(i32 noundef 20480, i32 noundef 32768, i32 noundef 3520, i32 noundef 0, ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @vfree(ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.05, 1
  %2 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_size_align_alloc_test() #0 align 64 {
entry:
  %rnd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rnd) #11
  %0 = ptrtoint ptr %rnd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rnd, align 4, !annotation !101
  %1 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @get_random_bytes(ptr noundef nonnull %rnd, i32 noundef 4) #11
  %2 = ptrtoint ptr %rnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rnd, align 4
  %rem = urem i32 %3, 23
  %shl = shl nuw nsw i32 1, %rem
  %rem1 = urem i32 %3, 10
  %add = shl nuw nsw i32 %rem1, 12
  %mul = add nuw nsw i32 %add, 4096
  %4 = call ptr @llvm.returnaddress(i32 0)
  %call = call noalias ptr @__vmalloc_node(i32 noundef %mul, i32 noundef %shl, i32 noundef 3520, i32 noundef 0, ptr noundef %4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @vfree(ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.09, 1
  %5 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rnd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @align_shift_alloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.06
  %call = tail call noalias ptr @__vmalloc_node(i32 noundef 4096, i32 noundef %shl, i32 noundef 3520, i32 noundef 0, ptr noundef %0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @vfree(ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcpu_alloc_test() #0 align 64 {
entry:
  %r = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call noalias ptr @vmalloc(i32 noundef 140000) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rv.030 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r) #11
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %r, align 4, !annotation !101
  call void @get_random_bytes(ptr noundef nonnull %r, i32 noundef 4) #11
  %1 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %r, align 4
  %rem = and i32 %2, 1023
  %add = add nuw nsw i32 %rem, 1
  call void @get_random_bytes(ptr noundef nonnull %r, i32 noundef 4) #11
  %rem1 = urem i32 %i.031, 11
  %shl = shl nuw nsw i32 2, %rem1
  %call3 = call noalias ptr @__alloc_percpu(i32 noundef %add, i32 noundef %shl) #12
  %arrayidx = getelementptr ptr, ptr %call, i32 %i.031
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %call3, null
  %spec.select = select i1 %tobool5.not, i32 -1, i32 %rv.030
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r) #11
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 35000
  br i1 %exitcond.not, label %for.body.for.body10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %i.132 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.body.for.body10_crit_edge ]
  %arrayidx11 = getelementptr ptr, ptr %call, i32 %i.132
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx11, align 4
  call void @free_percpu(ptr noundef %5) #11
  %inc13 = add nuw nsw i32 %i.132, 1
  %exitcond33.not = icmp eq i32 %inc13, 35000
  br i1 %exitcond33.not, label %for.end14, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.end14:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  call void @vfree(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %for.end14 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvfree_rcu_1_arg_vmalloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %array = getelementptr inbounds %struct.test_kvfree_rcu, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 97, ptr %array, align 4
  tail call void @kvfree_call_rcu(ptr noundef null, ptr noundef nonnull %call) #11
  %inc = add nuw nsw i32 %i.010, 1
  %2 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kvfree_rcu_2_arg_vmalloc_test() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @test_loop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp12 = icmp sgt i32 %0, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call noalias ptr @vmalloc(i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %array = getelementptr inbounds %struct.test_kvfree_rcu, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 97, ptr %array, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %call, ptr noundef null) #11
  %inc = add nuw nsw i32 %i.013, 1
  %2 = load i32, ptr @test_loop_count, align 4
  %cmp = icmp slt i32 %inc, %2
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__param_nr_threads, !1, !"__param_nr_threads", i1 false, i1 false}
!1 = !{!"../lib/test_vmalloc.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_nr_threadstype226, !1, !"__UNIQUE_ID_nr_threadstype226", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nr_threads227, !1, !"__UNIQUE_ID_nr_threads227", i1 false, i1 false}
!4 = !{ptr @__param_sequential_test_order, !5, !"__param_sequential_test_order", i1 false, i1 false}
!5 = !{!"../lib/test_vmalloc.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_sequential_test_ordertype228, !5, !"__UNIQUE_ID_sequential_test_ordertype228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_sequential_test_order229, !5, !"__UNIQUE_ID_sequential_test_order229", i1 false, i1 false}
!8 = !{ptr @__param_test_repeat_count, !9, !"__param_test_repeat_count", i1 false, i1 false}
!9 = !{!"../lib/test_vmalloc.c", i32 32, i32 1}
!10 = !{ptr @__UNIQUE_ID_test_repeat_counttype230, !9, !"__UNIQUE_ID_test_repeat_counttype230", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_test_repeat_count231, !9, !"__UNIQUE_ID_test_repeat_count231", i1 false, i1 false}
!12 = !{ptr @__param_test_loop_count, !13, !"__param_test_loop_count", i1 false, i1 false}
!13 = !{!"../lib/test_vmalloc.c", i32 35, i32 1}
!14 = !{ptr @__UNIQUE_ID_test_loop_counttype232, !13, !"__UNIQUE_ID_test_loop_counttype232", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_test_loop_count233, !13, !"__UNIQUE_ID_test_loop_count233", i1 false, i1 false}
!16 = !{ptr @__param_nr_pages, !17, !"__param_nr_pages", i1 false, i1 false}
!17 = !{!"../lib/test_vmalloc.c", i32 38, i32 1}
!18 = !{ptr @__UNIQUE_ID_nr_pagestype234, !17, !"__UNIQUE_ID_nr_pagestype234", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_nr_pages235, !17, !"__UNIQUE_ID_nr_pages235", i1 false, i1 false}
!20 = !{ptr @__param_run_test_mask, !21, !"__param_run_test_mask", i1 false, i1 false}
!21 = !{!"../lib/test_vmalloc.c", i32 41, i32 1}
!22 = !{ptr @__UNIQUE_ID_run_test_masktype236, !21, !"__UNIQUE_ID_run_test_masktype236", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_run_test_mask237, !21, !"__UNIQUE_ID_run_test_mask237", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_license243, !25, !"__UNIQUE_ID_license243", i1 false, i1 false}
!25 = !{!"../lib/test_vmalloc.c", i32 575, i32 1}
!26 = !{ptr @__UNIQUE_ID_author244, !27, !"__UNIQUE_ID_author244", i1 false, i1 false}
!27 = !{!"../lib/test_vmalloc.c", i32 576, i32 1}
!28 = !{ptr @__UNIQUE_ID_description245, !29, !"__UNIQUE_ID_description245", i1 false, i1 false}
!29 = !{!"../lib/test_vmalloc.c", i32 577, i32 1}
!30 = !{ptr @___asan_gen_.23, !1, !"__param_str_nr_threads", i1 false, i1 false}
!31 = !{ptr @nr_threads, !1, !"nr_threads", i1 false, i1 false}
!32 = !{ptr @___asan_gen_.26, !5, !"__param_str_sequential_test_order", i1 false, i1 false}
!33 = !{ptr @sequential_test_order, !5, !"sequential_test_order", i1 false, i1 false}
!34 = !{ptr @___asan_gen_.29, !9, !"__param_str_test_repeat_count", i1 false, i1 false}
!35 = !{ptr @test_repeat_count, !9, !"test_repeat_count", i1 false, i1 false}
!36 = !{ptr @___asan_gen_.32, !13, !"__param_str_test_loop_count", i1 false, i1 false}
!37 = !{ptr @test_loop_count, !13, !"test_loop_count", i1 false, i1 false}
!38 = !{ptr @___asan_gen_.35, !17, !"__param_str_nr_pages", i1 false, i1 false}
!39 = !{ptr @nr_pages, !17, !"nr_pages", i1 false, i1 false}
!40 = !{ptr @___asan_gen_.38, !21, !"__param_str_run_test_mask", i1 false, i1 false}
!41 = !{ptr @run_test_mask, !21, !"run_test_mask", i1 false, i1 false}
!42 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_vmalloc.c", i32 511, i32 13}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_vmalloc.c", i32 517, i32 4}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @do_concurrent_test._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_concurrent_test._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/test_vmalloc.c", i32 546, i32 4}
!52 = !{ptr @do_concurrent_test._entry.4, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_concurrent_test._entry_ptr.6, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/test_vmalloc.c", i32 555, i32 3}
!56 = !{ptr @do_concurrent_test._entry.7, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @do_concurrent_test._entry_ptr.9, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/test_vmalloc.c", i32 60, i32 8}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @prepare_for_test_rwsem, !59, !"prepare_for_test_rwsem", i1 false, i1 false}
!62 = !{ptr @tdriver, !63, !"tdriver", i1 false, i1 false}
!63 = !{!"../lib/test_vmalloc.c", i32 391, i32 4}
!64 = !{ptr @test_n_undone, !65, !"test_n_undone", i1 false, i1 false}
!65 = !{!"../lib/test_vmalloc.c", i32 66, i32 17}
!66 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_vmalloc.c", i32 65, i32 8}
!68 = !{ptr @test_all_done_comp, !67, !"test_all_done_comp", i1 false, i1 false}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/test_vmalloc.c", i32 366, i32 4}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_vmalloc.c", i32 367, i32 4}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test_vmalloc.c", i32 368, i32 4}
!75 = !{ptr @.str.16, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test_vmalloc.c", i32 369, i32 4}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test_vmalloc.c", i32 370, i32 4}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../lib/test_vmalloc.c", i32 371, i32 4}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test_vmalloc.c", i32 372, i32 4}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test_vmalloc.c", i32 373, i32 4}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/test_vmalloc.c", i32 374, i32 4}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test_vmalloc.c", i32 375, i32 4}
!89 = !{ptr @test_case_array, !90, !"test_case_array", i1 false, i1 false}
!90 = !{!"../lib/test_vmalloc.c", i32 365, i32 30}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148231033, i64 2148231059, i64 2148231088, i64 2148231122, i64 2148231153, i64 2148231176}
!100 = !{i8 0, i8 2}
!101 = !{!"auto-init"}
!102 = !{i64 1136023, i64 1136050, i64 1136072, i64 1136100}
!103 = !{i64 1136431, i64 1136458, i64 1136491, i64 1136512, i64 1136539, i64 1136565}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2148621567, i64 2148621847, i64 2148622181, i64 2148622515}
!106 = !{i64 2148319485}
!107 = !{i64 2148234218, i64 2148234250, i64 2148234279, i64 2148234313, i64 2148234344, i64 2148234367}
!108 = !{i64 2148319714}
!109 = !{i32 0, i32 33}
