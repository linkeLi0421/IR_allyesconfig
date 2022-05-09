; ModuleID = '/llk/IR_all_yes/lib/rbtree_test.c_pt.bc'
source_filename = "../lib/rbtree_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.test_node = type { i32, %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@__param_str_nnodes = internal constant [19 x i8] c"rbtree_test.nnodes\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nnodes = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_nnodes = internal constant %struct.kernel_param { ptr @__param_str_nnodes, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @nnodes } }, section "__param", align 4
@__UNIQUE_ID_nnodestype188 = internal constant [32 x i8] c"rbtree_test.parmtype=nnodes:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nnodes189 = internal constant [55 x i8] c"rbtree_test.parm=nnodes:Number of nodes in the rb-tree\00", section ".modinfo", align 1
@__param_str_perf_loops = internal constant [23 x i8] c"rbtree_test.perf_loops\00", align 1
@perf_loops = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_perf_loops = internal constant %struct.kernel_param { ptr @__param_str_perf_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @perf_loops } }, section "__param", align 4
@__UNIQUE_ID_perf_loopstype190 = internal constant [36 x i8] c"rbtree_test.parmtype=perf_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_perf_loops191 = internal constant [71 x i8] c"rbtree_test.parm=perf_loops:Number of iterations modifying the rb-tree\00", section ".modinfo", align 1
@__param_str_check_loops = internal constant [24 x i8] c"rbtree_test.check_loops\00", align 1
@check_loops = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_check_loops = internal constant %struct.kernel_param { ptr @__param_str_check_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @check_loops } }, section "__param", align 4
@__UNIQUE_ID_check_loopstype192 = internal constant [37 x i8] c"rbtree_test.parmtype=check_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_loops193 = internal constant [86 x i8] c"rbtree_test.parm=check_loops:Number of iterations modifying and verifying the rb-tree\00", section ".modinfo", align 1
@rbtree_test_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\011test exit\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rbtree_test_exit\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/rbtree_test.c\00", [46 x i8] zeroinitializer }, align 32
@rbtree_test_exit._entry_ptr = internal global ptr @rbtree_test_exit._entry, section ".printk_index", align 4
@__initcall__kmod_rbtree_test__194_403_rbtree_test_init6 = internal global ptr @rbtree_test_init, section ".initcall6.init", align 4
@__exitcall_rbtree_test_exit = internal global ptr @rbtree_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file195 = internal constant [33 x i8] c"rbtree_test.file=lib/rbtree_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [24 x i8] c"rbtree_test.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [37 x i8] c"rbtree_test.author=Michel Lespinasse\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [44 x i8] c"rbtree_test.description=Red Black Tree test\00", section ".modinfo", align 1
@nodes = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rbtree_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\011rbtree testing\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rbtree_test_init\00", [47 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr = internal global ptr @rbtree_test_init._entry, section ".printk_index", align 4
@rnd = internal global { %struct.rnd_state, [16 x i8] } zeroinitializer, align 32
@root = internal global { %struct.rb_root_cached, [24 x i8] } zeroinitializer, align 32
@rbtree_test_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c" -> test 1 (latency of nnodes insert+delete): %llu cycles\0A\00", [37 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.7 = internal global ptr @rbtree_test_init._entry.5, section ".printk_index", align 4
@rbtree_test_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c" -> test 2 (latency of nnodes cached insert+delete): %llu cycles\0A\00", [62 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.10 = internal global ptr @rbtree_test_init._entry.8, section ".printk_index", align 4
@rbtree_test_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c" -> test 3 (latency of inorder traversal): %llu cycles\0A\00", [40 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.13 = internal global ptr @rbtree_test_init._entry.11, section ".printk_index", align 4
@rbtree_test_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" -> test 4 (latency to fetch first node)\0A\00", [54 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.16 = internal global ptr @rbtree_test_init._entry.14, section ".printk_index", align 4
@rbtree_test_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"        non-cached: %llu cycles\0A\00", [63 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.19 = internal global ptr @rbtree_test_init._entry.17, section ".printk_index", align 4
@rbtree_test_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"        cached: %llu cycles\0A\00", [35 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.22 = internal global ptr @rbtree_test_init._entry.20, section ".printk_index", align 4
@rbtree_test_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\011augmented rbtree testing\00", [37 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.25 = internal global ptr @rbtree_test_init._entry.23, section ".printk_index", align 4
@rbtree_test_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.27 = internal global ptr @rbtree_test_init._entry.26, section ".printk_index", align 4
@rbtree_test_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rbtree_test_init._entry_ptr.29 = internal global ptr @rbtree_test_init._entry.28, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check.__already_done.30 = internal unnamed_addr global i1 false, section ".data.once", align 1
@check.__already_done.31 = internal unnamed_addr global i1 false, section ".data.once", align 1
@check.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@check.__already_done.33 = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_postorder.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_postorder_foreach.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_augmented.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"nnodes\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 14, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"perf_loops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 15, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"check_loops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 16, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 400, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 28, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 252, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"rnd\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 30, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 27, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 270, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 286, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 303, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 315, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 316, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 346, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 363, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private constant [21 x i8] c"../lib/rbtree_test.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 378, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_check_loops193, ptr @__UNIQUE_ID_check_loopstype192, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__UNIQUE_ID_nnodes189, ptr @__UNIQUE_ID_nnodestype188, ptr @__UNIQUE_ID_perf_loops191, ptr @__UNIQUE_ID_perf_loopstype190, ptr @__exitcall_rbtree_test_exit, ptr @__initcall__kmod_rbtree_test__194_403_rbtree_test_init6, ptr @__param_check_loops, ptr @__param_nnodes, ptr @__param_perf_loops, ptr @rbtree_test_exit, ptr @rbtree_test_exit._entry, ptr @rbtree_test_exit._entry_ptr, ptr @rbtree_test_init._entry, ptr @rbtree_test_init._entry.11, ptr @rbtree_test_init._entry.14, ptr @rbtree_test_init._entry.17, ptr @rbtree_test_init._entry.20, ptr @rbtree_test_init._entry.23, ptr @rbtree_test_init._entry.26, ptr @rbtree_test_init._entry.28, ptr @rbtree_test_init._entry.5, ptr @rbtree_test_init._entry.8, ptr @rbtree_test_init._entry_ptr, ptr @rbtree_test_init._entry_ptr.10, ptr @rbtree_test_init._entry_ptr.13, ptr @rbtree_test_init._entry_ptr.16, ptr @rbtree_test_init._entry_ptr.19, ptr @rbtree_test_init._entry_ptr.22, ptr @rbtree_test_init._entry_ptr.25, ptr @rbtree_test_init._entry_ptr.27, ptr @rbtree_test_init._entry_ptr.29, ptr @rbtree_test_init._entry_ptr.7, ptr @nnodes, ptr @perf_loops, ptr @check_loops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nodes, ptr @.str.3, ptr @.str.4, ptr @rnd, ptr @root, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nnodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rbtree_test_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rbtree_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rbtree_test_init() #0 section ".init.text" align 64 {
entry:
  %c = alloca i32, align 4
  %c18 = alloca i32, align 4
  %c34 = alloca i32, align 4
  %c65 = alloca i32, align 4
  %c91 = alloca i32, align 4
  %c113 = alloca i32, align 4
  %c131 = alloca i32, align 4
  %c147 = alloca i32, align 4
  %c170 = alloca i32, align 4
  %c185 = alloca i32, align 4
  %c240 = alloca i32, align 4
  %c271 = alloca i32, align 4
  %c289 = alloca i32, align 4
  %c320 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @nnodes, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 24) #12
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !107

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @nodes, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #13
  store ptr %call8.i, ptr @nodes, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %do.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end7.i
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  store i32 1082932233, ptr @rnd, align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 1), align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 2), align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 3), align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !98) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %9, ptrtoint (ptr @net_rand_noise to i32)
  %10 = inttoptr i32 %add.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %xor.i.i = xor i32 %12, ptrtoint (ptr @rnd to i32)
  %add8.i.i = add i32 %xor.i.i, 1082932233
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #12
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i, ptr %10, align 4
  tail call fastcc void @init()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #12
  %14 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %c, align 4, !annotation !108
  %call3 = call i32 @read_current_timer(ptr noundef nonnull %c) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cond.false, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.false ], [ 0, %do.end.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #12
  %17 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1161 = icmp sgt i32 %17, 0
  br i1 %cmp1161, label %cond.end.for.cond5.preheader_crit_edge, label %cond.end.for.end17_crit_edge

cond.end.for.end17_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

cond.end.for.cond5.preheader_crit_edge:           ; preds = %cond.end
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc15.for.cond5.preheader_crit_edge, %cond.end.for.cond5.preheader_crit_edge
  %i.01162 = phi i32 [ %inc16, %for.inc15.for.cond5.preheader_crit_edge ], [ 0, %cond.end.for.cond5.preheader_crit_edge ]
  %18 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp61157 = icmp sgt i32 %18, 0
  br i1 %cmp61157, label %for.cond5.preheader.for.body7_crit_edge, label %for.cond5.preheader.for.inc15_crit_edge

for.cond5.preheader.for.inc15_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond8.preheader:                              ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp91159 = icmp sgt i32 %20, 0
  br i1 %cmp91159, label %for.cond8.preheader.for.body10_crit_edge, label %for.cond8.preheader.for.inc15_crit_edge

for.cond8.preheader.for.inc15_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %j.01158 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %19 = load ptr, ptr @nodes, align 4
  %add.ptr = getelementptr %struct.test_node, ptr %19, i32 %j.01158
  call fastcc void @insert(ptr noundef %add.ptr)
  %inc = add nuw nsw i32 %j.01158, 1
  %20 = load i32, ptr @nnodes, align 4
  %cmp6 = icmp slt i32 %inc, %20
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.cond8.preheader

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %j.11160 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %21 = load ptr, ptr @nodes, align 4
  %rb.i = getelementptr %struct.test_node, ptr %21, i32 %j.11160, i32 1
  call void @rb_erase(ptr noundef %rb.i, ptr noundef nonnull @root) #12
  %inc13 = add nuw nsw i32 %j.11160, 1
  %22 = load i32, ptr @nnodes, align 4
  %cmp9 = icmp slt i32 %inc13, %22
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.inc15_crit_edge

for.body10.for.inc15_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.inc15:                                        ; preds = %for.body10.for.inc15_crit_edge, %for.cond8.preheader.for.inc15_crit_edge, %for.cond5.preheader.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.01162, 1
  %23 = load i32, ptr @perf_loops, align 4
  %cmp = icmp slt i32 %inc16, %23
  br i1 %cmp, label %for.inc15.for.cond5.preheader_crit_edge, label %for.inc15.for.end17_crit_edge

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end17

for.inc15.for.cond5.preheader_crit_edge:          ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %cond.end.for.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c18) #12
  %24 = ptrtoint ptr %c18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %c18, align 4, !annotation !108
  %call20 = call i32 @read_current_timer(ptr noundef nonnull %c18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cond.false23, label %for.end17.cond.end24_crit_edge

for.end17.cond.end24_crit_edge:                   ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end24

cond.false23:                                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %c18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %c18, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %for.end17.cond.end24_crit_edge
  %cond25 = phi i32 [ %26, %cond.false23 ], [ 0, %for.end17.cond.end24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c18) #12
  %sub = sub i32 %cond25, %cond
  %27 = load i32, ptr @perf_loops, align 4
  %div172.i.i = udiv i32 %sub, %27
  %conv173.i.i = zext i32 %div172.i.i to i64
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %conv173.i.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c34) #12
  %28 = ptrtoint ptr %c34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %c34, align 4, !annotation !108
  %call36 = call i32 @read_current_timer(ptr noundef nonnull %c34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %cond.false39, label %cond.end24.cond.end40_crit_edge

cond.end24.cond.end40_crit_edge:                  ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %c34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %c34, align 4
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.end24.cond.end40_crit_edge
  %cond41 = phi i32 [ %30, %cond.false39 ], [ 0, %cond.end24.cond.end40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c34) #12
  %31 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp431169 = icmp sgt i32 %31, 0
  br i1 %cmp431169, label %cond.end40.for.cond46.preheader_crit_edge, label %cond.end40.for.end64_crit_edge

cond.end40.for.end64_crit_edge:                   ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

cond.end40.for.cond46.preheader_crit_edge:        ; preds = %cond.end40
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %for.inc62.for.cond46.preheader_crit_edge, %cond.end40.for.cond46.preheader_crit_edge
  %i.11170 = phi i32 [ %inc63, %for.inc62.for.cond46.preheader_crit_edge ], [ 0, %cond.end40.for.cond46.preheader_crit_edge ]
  %32 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp471163 = icmp sgt i32 %32, 0
  br i1 %cmp471163, label %for.cond46.preheader.for.body49_crit_edge, label %for.cond46.preheader.for.inc62_crit_edge

for.cond46.preheader.for.inc62_crit_edge:         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62

for.cond46.preheader.for.body49_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body49

for.cond54.preheader:                             ; preds = %insert_cached.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp551167 = icmp sgt i32 %49, 0
  br i1 %cmp551167, label %for.cond54.preheader.for.body57_crit_edge, label %for.cond54.preheader.for.inc62_crit_edge

for.cond54.preheader.for.inc62_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62

for.cond54.preheader.for.body57_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body57

for.body49:                                       ; preds = %insert_cached.exit.for.body49_crit_edge, %for.cond46.preheader.for.body49_crit_edge
  %j.21164 = phi i32 [ %inc52, %insert_cached.exit.for.body49_crit_edge ], [ 0, %for.cond46.preheader.for.body49_crit_edge ]
  %33 = load ptr, ptr @nodes, align 4
  %add.ptr50 = getelementptr %struct.test_node, ptr %33, i32 %j.21164
  %34 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr50, align 4
  %36 = load ptr, ptr @root, align 4
  %tobool.not2.i = icmp eq ptr %36, null
  br i1 %tobool.not2.i, label %while.end.thread.i, label %for.body49.while.body.i_crit_edge

for.body49.while.body.i_crit_edge:                ; preds = %for.body49
  br label %while.body.i

while.end.thread.i:                               ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  %rb9.i = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1
  %37 = ptrtoint ptr %rb9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rb9.i, align 4
  %rb_right.i10.i = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1, i32 1
  %38 = ptrtoint ptr %rb_right.i10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %rb_right.i10.i, align 4
  %rb_left.i11.i = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1, i32 2
  %39 = ptrtoint ptr %rb_left.i11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rb_left.i11.i, align 4
  store ptr %rb9.i, ptr @root, align 4
  br label %if.then.i.i461

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body49.while.body.i_crit_edge
  %40 = phi ptr [ %44, %while.body.i.while.body.i_crit_edge ], [ %36, %for.body49.while.body.i_crit_edge ]
  %leftmost.0.off03.i = phi i1 [ %leftmost.1.off0.i, %while.body.i.while.body.i_crit_edge ], [ true, %for.body49.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %40, i32 -4
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %42)
  %cmp.i = icmp ult i32 %35, %42
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %leftmost.1.off0.i = select i1 %cmp.i, i1 %leftmost.0.off03.i, i1 false
  %new.1.i = select i1 %cmp.i, ptr %rb_left.i, ptr %rb_right.i
  %43 = ptrtoint ptr %new.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %new.1.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %phi.cast.le.i = ptrtoint ptr %40 to i32
  %rb.i460 = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1
  %45 = ptrtoint ptr %rb.i460 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %phi.cast.le.i, ptr %rb.i460, align 4
  %rb_right.i.i = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1, i32 1
  %46 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr %struct.test_node, ptr %33, i32 %j.21164, i32 1, i32 2
  %47 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_left.i.i, align 4
  %48 = ptrtoint ptr %new.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rb.i460, ptr %new.1.i, align 4
  br i1 %leftmost.1.off0.i, label %while.end.i.if.then.i.i461_crit_edge, label %while.end.i.insert_cached.exit_crit_edge

while.end.i.insert_cached.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert_cached.exit

while.end.i.if.then.i.i461_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i461

if.then.i.i461:                                   ; preds = %while.end.i.if.then.i.i461_crit_edge, %while.end.thread.i
  %rb13.i = phi ptr [ %rb9.i, %while.end.thread.i ], [ %rb.i460, %while.end.i.if.then.i.i461_crit_edge ]
  store ptr %rb13.i, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  br label %insert_cached.exit

insert_cached.exit:                               ; preds = %if.then.i.i461, %while.end.i.insert_cached.exit_crit_edge
  %rb12.i = phi ptr [ %rb.i460, %while.end.i.insert_cached.exit_crit_edge ], [ %rb13.i, %if.then.i.i461 ]
  call void @rb_insert_color(ptr noundef %rb12.i, ptr noundef nonnull @root) #12
  %inc52 = add nuw nsw i32 %j.21164, 1
  %49 = load i32, ptr @nnodes, align 4
  %cmp47 = icmp slt i32 %inc52, %49
  br i1 %cmp47, label %insert_cached.exit.for.body49_crit_edge, label %for.cond54.preheader

insert_cached.exit.for.body49_crit_edge:          ; preds = %insert_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49

for.body57:                                       ; preds = %erase_cached.exit.for.body57_crit_edge, %for.cond54.preheader.for.body57_crit_edge
  %j.31168 = phi i32 [ %inc60, %erase_cached.exit.for.body57_crit_edge ], [ 0, %for.cond54.preheader.for.body57_crit_edge ]
  %50 = load ptr, ptr @nodes, align 4
  %rb.i462 = getelementptr %struct.test_node, ptr %50, i32 %j.31168, i32 1
  %51 = load ptr, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  %cmp.i.i463 = icmp eq ptr %51, %rb.i462
  br i1 %cmp.i.i463, label %if.then.i.i464, label %for.body57.erase_cached.exit_crit_edge

for.body57.erase_cached.exit_crit_edge:           ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %erase_cached.exit

if.then.i.i464:                                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call ptr @rb_next(ptr noundef %rb.i462) #12
  store ptr %call.i.i, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  br label %erase_cached.exit

erase_cached.exit:                                ; preds = %if.then.i.i464, %for.body57.erase_cached.exit_crit_edge
  call void @rb_erase(ptr noundef %rb.i462, ptr noundef nonnull @root) #12
  %inc60 = add nuw nsw i32 %j.31168, 1
  %52 = load i32, ptr @nnodes, align 4
  %cmp55 = icmp slt i32 %inc60, %52
  br i1 %cmp55, label %erase_cached.exit.for.body57_crit_edge, label %erase_cached.exit.for.inc62_crit_edge

erase_cached.exit.for.inc62_crit_edge:            ; preds = %erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62

erase_cached.exit.for.body57_crit_edge:           ; preds = %erase_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.inc62:                                        ; preds = %erase_cached.exit.for.inc62_crit_edge, %for.cond54.preheader.for.inc62_crit_edge, %for.cond46.preheader.for.inc62_crit_edge
  %inc63 = add nuw nsw i32 %i.11170, 1
  %53 = load i32, ptr @perf_loops, align 4
  %cmp43 = icmp slt i32 %inc63, %53
  br i1 %cmp43, label %for.inc62.for.cond46.preheader_crit_edge, label %for.inc62.for.end64_crit_edge

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

for.inc62.for.cond46.preheader_crit_edge:         ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.preheader

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %cond.end40.for.end64_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c65) #12
  %54 = ptrtoint ptr %c65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %c65, align 4, !annotation !108
  %call67 = call i32 @read_current_timer(ptr noundef nonnull %c65) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %cond.false70, label %for.end64.cond.end71_crit_edge

for.end64.cond.end71_crit_edge:                   ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end71

cond.false70:                                     ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %c65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %c65, align 4
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false70, %for.end64.cond.end71_crit_edge
  %cond72 = phi i32 [ %56, %cond.false70 ], [ 0, %for.end64.cond.end71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c65) #12
  %sub73 = sub i32 %cond72, %cond41
  %57 = load i32, ptr @perf_loops, align 4
  %div172.i.i570 = udiv i32 %sub73, %57
  %conv173.i.i571 = zext i32 %div172.i.i570 to i64
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %conv173.i.i571) #11
  %58 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp841171 = icmp sgt i32 %58, 0
  br i1 %cmp841171, label %cond.end71.for.body86_crit_edge, label %cond.end71.for.end90_crit_edge

cond.end71.for.end90_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

cond.end71.for.body86_crit_edge:                  ; preds = %cond.end71
  br label %for.body86

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %cond.end71.for.body86_crit_edge
  %i.21172 = phi i32 [ %inc89, %for.body86.for.body86_crit_edge ], [ 0, %cond.end71.for.body86_crit_edge ]
  %59 = load ptr, ptr @nodes, align 4
  %add.ptr87 = getelementptr %struct.test_node, ptr %59, i32 %i.21172
  call fastcc void @insert(ptr noundef %add.ptr87)
  %inc89 = add nuw nsw i32 %i.21172, 1
  %60 = load i32, ptr @nnodes, align 4
  %cmp84 = icmp slt i32 %inc89, %60
  br i1 %cmp84, label %for.body86.for.body86_crit_edge, label %for.body86.for.end90_crit_edge

for.body86.for.end90_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body86

for.end90:                                        ; preds = %for.body86.for.end90_crit_edge, %cond.end71.for.end90_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c91) #12
  %61 = ptrtoint ptr %c91 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %c91, align 4, !annotation !108
  %call93 = call i32 @read_current_timer(ptr noundef nonnull %c91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cond.false96, label %for.end90.cond.end97_crit_edge

for.end90.cond.end97_crit_edge:                   ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end97

cond.false96:                                     ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %c91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %c91, align 4
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %for.end90.cond.end97_crit_edge
  %cond98 = phi i32 [ %63, %cond.false96 ], [ 0, %for.end90.cond.end97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c91) #12
  %64 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1001175 = icmp sgt i32 %64, 0
  br i1 %cmp1001175, label %cond.end97.for.body102_crit_edge, label %cond.end97.for.end112_crit_edge

cond.end97.for.end112_crit_edge:                  ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

cond.end97.for.body102_crit_edge:                 ; preds = %cond.end97
  br label %for.body102

for.body102:                                      ; preds = %for.inc110.for.body102_crit_edge, %cond.end97.for.body102_crit_edge
  %i.31176 = phi i32 [ %inc111, %for.inc110.for.body102_crit_edge ], [ 0, %cond.end97.for.body102_crit_edge ]
  %call103 = call ptr @rb_first(ptr noundef nonnull @root) #12
  %tobool105.not1173 = icmp eq ptr %call103, null
  br i1 %tobool105.not1173, label %for.body102.for.inc110_crit_edge, label %for.body102.for.inc107_crit_edge

for.body102.for.inc107_crit_edge:                 ; preds = %for.body102
  br label %for.inc107

for.body102.for.inc110_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

for.inc107:                                       ; preds = %for.inc107.for.inc107_crit_edge, %for.body102.for.inc107_crit_edge
  %node.01174 = phi ptr [ %call108, %for.inc107.for.inc107_crit_edge ], [ %call103, %for.body102.for.inc107_crit_edge ]
  %call108 = call ptr @rb_next(ptr noundef nonnull %node.01174) #12
  %tobool105.not = icmp eq ptr %call108, null
  br i1 %tobool105.not, label %for.inc107.for.inc110_crit_edge, label %for.inc107.for.inc107_crit_edge

for.inc107.for.inc107_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc107

for.inc107.for.inc110_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

for.inc110:                                       ; preds = %for.inc107.for.inc110_crit_edge, %for.body102.for.inc110_crit_edge
  %inc111 = add nuw nsw i32 %i.31176, 1
  %65 = load i32, ptr @perf_loops, align 4
  %cmp100 = icmp slt i32 %inc111, %65
  br i1 %cmp100, label %for.inc110.for.body102_crit_edge, label %for.inc110.for.end112_crit_edge

for.inc110.for.end112_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.inc110.for.body102_crit_edge:                 ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body102

for.end112:                                       ; preds = %for.inc110.for.end112_crit_edge, %cond.end97.for.end112_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c113) #12
  %66 = ptrtoint ptr %c113 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %c113, align 4, !annotation !108
  %call115 = call i32 @read_current_timer(ptr noundef nonnull %c113) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %cond.false118, label %for.end112.cond.end119_crit_edge

for.end112.cond.end119_crit_edge:                 ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end119

cond.false118:                                    ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %c113 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %c113, align 4
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %for.end112.cond.end119_crit_edge
  %cond120 = phi i32 [ %68, %cond.false118 ], [ 0, %for.end112.cond.end119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c113) #12
  %sub121 = sub i32 %cond120, %cond98
  %69 = load i32, ptr @perf_loops, align 4
  %div172.i.i679 = udiv i32 %sub121, %69
  %conv173.i.i680 = zext i32 %div172.i.i679 to i64
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %conv173.i.i680) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c131) #12
  %70 = ptrtoint ptr %c131 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %c131, align 4, !annotation !108
  %call133 = call i32 @read_current_timer(ptr noundef nonnull %c131) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %cond.false136, label %cond.end119.cond.end137_crit_edge

cond.end119.cond.end137_crit_edge:                ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end137

cond.false136:                                    ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %c131 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %c131, align 4
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %cond.end119.cond.end137_crit_edge
  %cond138 = phi i32 [ %72, %cond.false136 ], [ 0, %cond.end119.cond.end137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c131) #12
  %73 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp1401177 = icmp sgt i32 %73, 0
  br i1 %cmp1401177, label %cond.end137.for.body142_crit_edge, label %cond.end137.for.end146_crit_edge

cond.end137.for.end146_crit_edge:                 ; preds = %cond.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end146

cond.end137.for.body142_crit_edge:                ; preds = %cond.end137
  br label %for.body142

for.body142:                                      ; preds = %for.body142.for.body142_crit_edge, %cond.end137.for.body142_crit_edge
  %i.41178 = phi i32 [ %inc145, %for.body142.for.body142_crit_edge ], [ 0, %cond.end137.for.body142_crit_edge ]
  %call143 = call ptr @rb_first(ptr noundef nonnull @root) #12
  %inc145 = add nuw nsw i32 %i.41178, 1
  %74 = load i32, ptr @perf_loops, align 4
  %cmp140 = icmp slt i32 %inc145, %74
  br i1 %cmp140, label %for.body142.for.body142_crit_edge, label %for.body142.for.end146_crit_edge

for.body142.for.end146_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end146

for.body142.for.body142_crit_edge:                ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body142

for.end146:                                       ; preds = %for.body142.for.end146_crit_edge, %cond.end137.for.end146_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c147) #12
  %75 = ptrtoint ptr %c147 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %c147, align 4, !annotation !108
  %call149 = call i32 @read_current_timer(ptr noundef nonnull %c147) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %cond.false152, label %for.end146.cond.end153_crit_edge

for.end146.cond.end153_crit_edge:                 ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end153

cond.false152:                                    ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %c147 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %c147, align 4
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false152, %for.end146.cond.end153_crit_edge
  %cond154 = phi i32 [ %77, %cond.false152 ], [ 0, %for.end146.cond.end153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c147) #12
  %sub155 = sub i32 %cond154, %cond138
  %78 = load i32, ptr @perf_loops, align 4
  %div172.i.i788 = udiv i32 %sub155, %78
  %conv173.i.i789 = zext i32 %div172.i.i788 to i64
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i64 noundef %conv173.i.i789) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c170) #12
  %79 = ptrtoint ptr %c170 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %c170, align 4, !annotation !108
  %call172 = call i32 @read_current_timer(ptr noundef nonnull %c170) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %cond.false175, label %cond.end153.cond.end176_crit_edge

cond.end153.cond.end176_crit_edge:                ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end176

cond.false175:                                    ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %c170 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %c170, align 4
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false175, %cond.end153.cond.end176_crit_edge
  %cond177 = phi i32 [ %81, %cond.false175 ], [ 0, %cond.end153.cond.end176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c170) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c185) #12
  %82 = ptrtoint ptr %c185 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %c185, align 4, !annotation !108
  %call187 = call i32 @read_current_timer(ptr noundef nonnull %c185) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %cond.false190, label %cond.end176.cond.end191_crit_edge

cond.end176.cond.end191_crit_edge:                ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end191

cond.false190:                                    ; preds = %cond.end176
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %c185 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %c185, align 4
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false190, %cond.end176.cond.end191_crit_edge
  %cond192 = phi i32 [ %84, %cond.false190 ], [ 0, %cond.end176.cond.end191_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c185) #12
  %sub193 = sub i32 %cond192, %cond177
  %85 = load i32, ptr @perf_loops, align 4
  %div172.i.i897 = udiv i32 %sub193, %85
  %conv173.i.i898 = zext i32 %div172.i.i897 to i64
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i64 noundef %conv173.i.i898) #11
  %86 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp2041179 = icmp sgt i32 %86, 0
  br i1 %cmp2041179, label %cond.end191.for.body206_crit_edge, label %cond.end191.for.cond211.preheader_crit_edge

cond.end191.for.cond211.preheader_crit_edge:      ; preds = %cond.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond211.preheader

cond.end191.for.body206_crit_edge:                ; preds = %cond.end191
  br label %for.body206

for.cond211.preheader:                            ; preds = %for.body206.for.cond211.preheader_crit_edge, %cond.end191.for.cond211.preheader_crit_edge
  %87 = load i32, ptr @check_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp2121185 = icmp sgt i32 %87, 0
  br i1 %cmp2121185, label %for.cond211.preheader.for.body214_crit_edge, label %for.cond211.preheader.do.end237_crit_edge

for.cond211.preheader.do.end237_crit_edge:        ; preds = %for.cond211.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

for.cond211.preheader.for.body214_crit_edge:      ; preds = %for.cond211.preheader
  br label %for.body214

for.body206:                                      ; preds = %for.body206.for.body206_crit_edge, %cond.end191.for.body206_crit_edge
  %i.61180 = phi i32 [ %inc209, %for.body206.for.body206_crit_edge ], [ 0, %cond.end191.for.body206_crit_edge ]
  %88 = load ptr, ptr @nodes, align 4
  %rb.i901 = getelementptr %struct.test_node, ptr %88, i32 %i.61180, i32 1
  call void @rb_erase(ptr noundef %rb.i901, ptr noundef nonnull @root) #12
  %inc209 = add nuw nsw i32 %i.61180, 1
  %89 = load i32, ptr @nnodes, align 4
  %cmp204 = icmp slt i32 %inc209, %89
  br i1 %cmp204, label %for.body206.for.body206_crit_edge, label %for.body206.for.cond211.preheader_crit_edge

for.body206.for.cond211.preheader_crit_edge:      ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond211.preheader

for.body206.for.body206_crit_edge:                ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body206

for.body214:                                      ; preds = %for.end231.for.body214_crit_edge, %for.cond211.preheader.for.body214_crit_edge
  %i.71186 = phi i32 [ %inc233, %for.end231.for.body214_crit_edge ], [ 0, %for.cond211.preheader.for.body214_crit_edge ]
  call fastcc void @init()
  %90 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp2161181 = icmp sgt i32 %90, 0
  br i1 %cmp2161181, label %for.body214.for.body218_crit_edge, label %for.body214.for.end231_crit_edge

for.body214.for.end231_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end231

for.body214.for.body218_crit_edge:                ; preds = %for.body214
  br label %for.body218

for.cond223.preheader:                            ; preds = %for.body218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp2241183 = icmp sgt i32 %92, 0
  br i1 %cmp2241183, label %for.cond223.preheader.for.body226_crit_edge, label %for.cond223.preheader.for.end231_crit_edge

for.cond223.preheader.for.end231_crit_edge:       ; preds = %for.cond223.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end231

for.cond223.preheader.for.body226_crit_edge:      ; preds = %for.cond223.preheader
  br label %for.body226

for.body218:                                      ; preds = %for.body218.for.body218_crit_edge, %for.body214.for.body218_crit_edge
  %j.41182 = phi i32 [ %inc221, %for.body218.for.body218_crit_edge ], [ 0, %for.body214.for.body218_crit_edge ]
  call fastcc void @check(i32 noundef %j.41182)
  %91 = load ptr, ptr @nodes, align 4
  %add.ptr219 = getelementptr %struct.test_node, ptr %91, i32 %j.41182
  call fastcc void @insert(ptr noundef %add.ptr219)
  %inc221 = add nuw nsw i32 %j.41182, 1
  %92 = load i32, ptr @nnodes, align 4
  %cmp216 = icmp slt i32 %inc221, %92
  br i1 %cmp216, label %for.body218.for.body218_crit_edge, label %for.cond223.preheader

for.body218.for.body218_crit_edge:                ; preds = %for.body218
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body218

for.body226:                                      ; preds = %for.body226.for.body226_crit_edge, %for.cond223.preheader.for.body226_crit_edge
  %93 = phi i32 [ %95, %for.body226.for.body226_crit_edge ], [ %92, %for.cond223.preheader.for.body226_crit_edge ]
  %j.51184 = phi i32 [ %inc230, %for.body226.for.body226_crit_edge ], [ 0, %for.cond223.preheader.for.body226_crit_edge ]
  %sub227 = sub i32 %93, %j.51184
  call fastcc void @check(i32 noundef %sub227)
  %94 = load ptr, ptr @nodes, align 4
  %rb.i902 = getelementptr %struct.test_node, ptr %94, i32 %j.51184, i32 1
  call void @rb_erase(ptr noundef %rb.i902, ptr noundef nonnull @root) #12
  %inc230 = add nuw nsw i32 %j.51184, 1
  %95 = load i32, ptr @nnodes, align 4
  %cmp224 = icmp sgt i32 %95, %inc230
  br i1 %cmp224, label %for.body226.for.body226_crit_edge, label %for.body226.for.end231_crit_edge

for.body226.for.end231_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end231

for.body226.for.body226_crit_edge:                ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body226

for.end231:                                       ; preds = %for.body226.for.end231_crit_edge, %for.cond223.preheader.for.end231_crit_edge, %for.body214.for.end231_crit_edge
  call fastcc void @check(i32 noundef 0)
  %inc233 = add nuw nsw i32 %i.71186, 1
  %96 = load i32, ptr @check_loops, align 4
  %cmp212 = icmp slt i32 %inc233, %96
  br i1 %cmp212, label %for.end231.for.body214_crit_edge, label %for.end231.do.end237_crit_edge

for.end231.do.end237_crit_edge:                   ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end237

for.end231.for.body214_crit_edge:                 ; preds = %for.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body214

do.end237:                                        ; preds = %for.end231.do.end237_crit_edge, %for.cond211.preheader.do.end237_crit_edge
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  call fastcc void @init()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c240) #12
  %97 = ptrtoint ptr %c240 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %c240, align 4, !annotation !108
  %call242 = call i32 @read_current_timer(ptr noundef nonnull %c240) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %cond.false245, label %do.end237.cond.end246_crit_edge

do.end237.cond.end246_crit_edge:                  ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end246

cond.false245:                                    ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %c240 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c240, align 4
  br label %cond.end246

cond.end246:                                      ; preds = %cond.false245, %do.end237.cond.end246_crit_edge
  %cond247 = phi i32 [ %99, %cond.false245 ], [ 0, %do.end237.cond.end246_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c240) #12
  %100 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp2491191 = icmp sgt i32 %100, 0
  br i1 %cmp2491191, label %cond.end246.for.cond252.preheader_crit_edge, label %cond.end246.for.end270_crit_edge

cond.end246.for.end270_crit_edge:                 ; preds = %cond.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end270

cond.end246.for.cond252.preheader_crit_edge:      ; preds = %cond.end246
  br label %for.cond252.preheader

for.cond252.preheader:                            ; preds = %for.inc268.for.cond252.preheader_crit_edge, %cond.end246.for.cond252.preheader_crit_edge
  %i.81192 = phi i32 [ %inc269, %for.inc268.for.cond252.preheader_crit_edge ], [ 0, %cond.end246.for.cond252.preheader_crit_edge ]
  %101 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp2531187 = icmp sgt i32 %101, 0
  br i1 %cmp2531187, label %for.cond252.preheader.for.body255_crit_edge, label %for.cond252.preheader.for.inc268_crit_edge

for.cond252.preheader.for.inc268_crit_edge:       ; preds = %for.cond252.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc268

for.cond252.preheader.for.body255_crit_edge:      ; preds = %for.cond252.preheader
  br label %for.body255

for.cond260.preheader:                            ; preds = %for.body255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp2611189 = icmp sgt i32 %103, 0
  br i1 %cmp2611189, label %for.cond260.preheader.for.body263_crit_edge, label %for.cond260.preheader.for.inc268_crit_edge

for.cond260.preheader.for.inc268_crit_edge:       ; preds = %for.cond260.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc268

for.cond260.preheader.for.body263_crit_edge:      ; preds = %for.cond260.preheader
  br label %for.body263

for.body255:                                      ; preds = %for.body255.for.body255_crit_edge, %for.cond252.preheader.for.body255_crit_edge
  %j.61188 = phi i32 [ %inc258, %for.body255.for.body255_crit_edge ], [ 0, %for.cond252.preheader.for.body255_crit_edge ]
  %102 = load ptr, ptr @nodes, align 4
  %add.ptr256 = getelementptr %struct.test_node, ptr %102, i32 %j.61188
  call fastcc void @insert_augmented(ptr noundef %add.ptr256)
  %inc258 = add nuw nsw i32 %j.61188, 1
  %103 = load i32, ptr @nnodes, align 4
  %cmp253 = icmp slt i32 %inc258, %103
  br i1 %cmp253, label %for.body255.for.body255_crit_edge, label %for.cond260.preheader

for.body255.for.body255_crit_edge:                ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body255

for.body263:                                      ; preds = %for.body263.for.body263_crit_edge, %for.cond260.preheader.for.body263_crit_edge
  %j.71190 = phi i32 [ %inc266, %for.body263.for.body263_crit_edge ], [ 0, %for.cond260.preheader.for.body263_crit_edge ]
  %104 = load ptr, ptr @nodes, align 4
  %add.ptr264 = getelementptr %struct.test_node, ptr %104, i32 %j.71190
  call fastcc void @erase_augmented(ptr noundef %add.ptr264)
  %inc266 = add nuw nsw i32 %j.71190, 1
  %105 = load i32, ptr @nnodes, align 4
  %cmp261 = icmp slt i32 %inc266, %105
  br i1 %cmp261, label %for.body263.for.body263_crit_edge, label %for.body263.for.inc268_crit_edge

for.body263.for.inc268_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc268

for.body263.for.body263_crit_edge:                ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body263

for.inc268:                                       ; preds = %for.body263.for.inc268_crit_edge, %for.cond260.preheader.for.inc268_crit_edge, %for.cond252.preheader.for.inc268_crit_edge
  %inc269 = add nuw nsw i32 %i.81192, 1
  %106 = load i32, ptr @perf_loops, align 4
  %cmp249 = icmp slt i32 %inc269, %106
  br i1 %cmp249, label %for.inc268.for.cond252.preheader_crit_edge, label %for.inc268.for.end270_crit_edge

for.inc268.for.end270_crit_edge:                  ; preds = %for.inc268
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end270

for.inc268.for.cond252.preheader_crit_edge:       ; preds = %for.inc268
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond252.preheader

for.end270:                                       ; preds = %for.inc268.for.end270_crit_edge, %cond.end246.for.end270_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c271) #12
  %107 = ptrtoint ptr %c271 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 -1, ptr %c271, align 4, !annotation !108
  %call273 = call i32 @read_current_timer(ptr noundef nonnull %c271) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %cond.false276, label %for.end270.cond.end277_crit_edge

for.end270.cond.end277_crit_edge:                 ; preds = %for.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end277

cond.false276:                                    ; preds = %for.end270
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %c271 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %c271, align 4
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false276, %for.end270.cond.end277_crit_edge
  %cond278 = phi i32 [ %109, %cond.false276 ], [ 0, %for.end270.cond.end277_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c271) #12
  %sub279 = sub i32 %cond278, %cond247
  %110 = load i32, ptr @perf_loops, align 4
  %div172.i.i1008 = udiv i32 %sub279, %110
  %conv173.i.i1009 = zext i32 %div172.i.i1008 to i64
  %call288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %conv173.i.i1009) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c289) #12
  %111 = ptrtoint ptr %c289 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %c289, align 4, !annotation !108
  %call291 = call i32 @read_current_timer(ptr noundef nonnull %c289) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %cond.false294, label %cond.end277.cond.end295_crit_edge

cond.end277.cond.end295_crit_edge:                ; preds = %cond.end277
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end295

cond.false294:                                    ; preds = %cond.end277
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %c289 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %c289, align 4
  br label %cond.end295

cond.end295:                                      ; preds = %cond.false294, %cond.end277.cond.end295_crit_edge
  %cond296 = phi i32 [ %113, %cond.false294 ], [ 0, %cond.end277.cond.end295_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c289) #12
  %114 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp2981201 = icmp sgt i32 %114, 0
  br i1 %cmp2981201, label %cond.end295.for.cond301.preheader_crit_edge, label %cond.end295.for.end319_crit_edge

cond.end295.for.end319_crit_edge:                 ; preds = %cond.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end319

cond.end295.for.cond301.preheader_crit_edge:      ; preds = %cond.end295
  br label %for.cond301.preheader

for.cond301.preheader:                            ; preds = %for.inc317.for.cond301.preheader_crit_edge, %cond.end295.for.cond301.preheader_crit_edge
  %i.91202 = phi i32 [ %inc318, %for.inc317.for.cond301.preheader_crit_edge ], [ 0, %cond.end295.for.cond301.preheader_crit_edge ]
  %115 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp3021193 = icmp sgt i32 %115, 0
  br i1 %cmp3021193, label %for.cond301.preheader.for.body304_crit_edge, label %for.cond301.preheader.for.inc317_crit_edge

for.cond301.preheader.for.inc317_crit_edge:       ; preds = %for.cond301.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc317

for.cond301.preheader.for.body304_crit_edge:      ; preds = %for.cond301.preheader
  br label %for.body304

for.cond309.preheader:                            ; preds = %insert_augmented_cached.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp3101197 = icmp sgt i32 %139, 0
  br i1 %cmp3101197, label %for.cond309.preheader.for.body312_crit_edge, label %for.cond309.preheader.for.inc317_crit_edge

for.cond309.preheader.for.inc317_crit_edge:       ; preds = %for.cond309.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc317

for.cond309.preheader.for.body312_crit_edge:      ; preds = %for.cond309.preheader
  br label %for.body312

for.body304:                                      ; preds = %insert_augmented_cached.exit.for.body304_crit_edge, %for.cond301.preheader.for.body304_crit_edge
  %j.81194 = phi i32 [ %inc307, %insert_augmented_cached.exit.for.body304_crit_edge ], [ 0, %for.cond301.preheader.for.body304_crit_edge ]
  %116 = load ptr, ptr @nodes, align 4
  %add.ptr305 = getelementptr %struct.test_node, ptr %116, i32 %j.81194
  %117 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr305, align 4
  %val2.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 2
  %119 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val2.i, align 4
  %121 = load ptr, ptr @root, align 4
  %tobool.not2.i1012 = icmp eq ptr %121, null
  br i1 %tobool.not2.i1012, label %while.end.thread.i1013, label %for.body304.while.body.i1017_crit_edge

for.body304.while.body.i1017_crit_edge:           ; preds = %for.body304
  br label %while.body.i1017

while.end.thread.i1013:                           ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #10
  %augmented99.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 3
  %122 = ptrtoint ptr %augmented99.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %120, ptr %augmented99.i, align 4
  %rb1010.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1
  %123 = ptrtoint ptr %rb1010.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %rb1010.i, align 4
  %rb_right.i11.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1, i32 1
  %124 = ptrtoint ptr %rb_right.i11.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %rb_right.i11.i, align 4
  %rb_left.i12.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1, i32 2
  %125 = ptrtoint ptr %rb_left.i12.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %rb_left.i12.i, align 4
  store ptr %rb1010.i, ptr @root, align 4
  br label %if.then.i.i1028

while.body.i1017:                                 ; preds = %if.end.i1023.while.body.i1017_crit_edge, %for.body304.while.body.i1017_crit_edge
  %126 = phi ptr [ %133, %if.end.i1023.while.body.i1017_crit_edge ], [ %121, %for.body304.while.body.i1017_crit_edge ]
  %leftmost.0.off03.i1014 = phi i1 [ %leftmost.1.off0.i1020, %if.end.i1023.while.body.i1017_crit_edge ], [ true, %for.body304.while.body.i1017_crit_edge ]
  %add.ptr.i1015 = getelementptr i8, ptr %126, i32 -4
  %augmented.i = getelementptr i8, ptr %126, i32 16
  %127 = ptrtoint ptr %augmented.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %augmented.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %120)
  %cmp.i1016 = icmp ult i32 %128, %120
  br i1 %cmp.i1016, label %if.then.i, label %while.body.i1017.if.end.i1023_crit_edge

while.body.i1017.if.end.i1023_crit_edge:          ; preds = %while.body.i1017
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i1023

if.then.i:                                        ; preds = %while.body.i1017
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %augmented.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %120, ptr %augmented.i, align 4
  br label %if.end.i1023

if.end.i1023:                                     ; preds = %if.then.i, %while.body.i1017.if.end.i1023_crit_edge
  %130 = ptrtoint ptr %add.ptr.i1015 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %add.ptr.i1015, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %131)
  %cmp5.i = icmp ult i32 %118, %131
  %rb_left.i1018 = getelementptr inbounds %struct.rb_node, ptr %126, i32 0, i32 2
  %rb_right.i1019 = getelementptr inbounds %struct.rb_node, ptr %126, i32 0, i32 1
  %leftmost.1.off0.i1020 = select i1 %cmp5.i, i1 %leftmost.0.off03.i1014, i1 false
  %new.1.i1021 = select i1 %cmp5.i, ptr %rb_left.i1018, ptr %rb_right.i1019
  %132 = ptrtoint ptr %new.1.i1021 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %new.1.i1021, align 4
  %tobool.not.i1022 = icmp eq ptr %133, null
  br i1 %tobool.not.i1022, label %while.end.i1027, label %if.end.i1023.while.body.i1017_crit_edge

if.end.i1023.while.body.i1017_crit_edge:          ; preds = %if.end.i1023
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i1017

while.end.i1027:                                  ; preds = %if.end.i1023
  %phi.cast.le.i1024 = ptrtoint ptr %126 to i32
  %augmented9.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 3
  %134 = ptrtoint ptr %augmented9.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %120, ptr %augmented9.i, align 4
  %rb10.i = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1
  %135 = ptrtoint ptr %rb10.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %phi.cast.le.i1024, ptr %rb10.i, align 4
  %rb_right.i.i1025 = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1, i32 1
  %136 = ptrtoint ptr %rb_right.i.i1025 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %rb_right.i.i1025, align 4
  %rb_left.i.i1026 = getelementptr %struct.test_node, ptr %116, i32 %j.81194, i32 1, i32 2
  %137 = ptrtoint ptr %rb_left.i.i1026 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %rb_left.i.i1026, align 4
  %138 = ptrtoint ptr %new.1.i1021 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %rb10.i, ptr %new.1.i1021, align 4
  br i1 %leftmost.1.off0.i1020, label %while.end.i1027.if.then.i.i1028_crit_edge, label %while.end.i1027.insert_augmented_cached.exit_crit_edge

while.end.i1027.insert_augmented_cached.exit_crit_edge: ; preds = %while.end.i1027
  call void @__sanitizer_cov_trace_pc() #10
  br label %insert_augmented_cached.exit

while.end.i1027.if.then.i.i1028_crit_edge:        ; preds = %while.end.i1027
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i1028

if.then.i.i1028:                                  ; preds = %while.end.i1027.if.then.i.i1028_crit_edge, %while.end.thread.i1013
  %rb1014.i = phi ptr [ %rb1010.i, %while.end.thread.i1013 ], [ %rb10.i, %while.end.i1027.if.then.i.i1028_crit_edge ]
  store ptr %rb1014.i, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  br label %insert_augmented_cached.exit

insert_augmented_cached.exit:                     ; preds = %if.then.i.i1028, %while.end.i1027.insert_augmented_cached.exit_crit_edge
  %rb1013.i = phi ptr [ %rb10.i, %while.end.i1027.insert_augmented_cached.exit_crit_edge ], [ %rb1014.i, %if.then.i.i1028 ]
  call void @__rb_insert_augmented(ptr noundef %rb1013.i, ptr noundef nonnull @root, ptr noundef nonnull @augment_callbacks_rotate) #12
  %inc307 = add nuw nsw i32 %j.81194, 1
  %139 = load i32, ptr @nnodes, align 4
  %cmp302 = icmp slt i32 %inc307, %139
  br i1 %cmp302, label %insert_augmented_cached.exit.for.body304_crit_edge, label %for.cond309.preheader

insert_augmented_cached.exit.for.body304_crit_edge: ; preds = %insert_augmented_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body304

for.body312:                                      ; preds = %erase_augmented_cached.exit.for.body312_crit_edge, %for.cond309.preheader.for.body312_crit_edge
  %j.91198 = phi i32 [ %inc315, %erase_augmented_cached.exit.for.body312_crit_edge ], [ 0, %for.cond309.preheader.for.body312_crit_edge ]
  %140 = load ptr, ptr @nodes, align 4
  %rb.i1029 = getelementptr %struct.test_node, ptr %140, i32 %j.91198, i32 1
  %141 = load ptr, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  %cmp.i.i1030 = icmp eq ptr %141, %rb.i1029
  br i1 %cmp.i.i1030, label %if.then.i.i1032, label %for.body312.if.end.i.i1033_crit_edge

for.body312.if.end.i.i1033_crit_edge:             ; preds = %for.body312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i1033

if.then.i.i1032:                                  ; preds = %for.body312
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i1031 = call ptr @rb_next(ptr noundef %rb.i1029) #12
  store ptr %call.i.i1031, ptr getelementptr inbounds (%struct.rb_root_cached, ptr @root, i32 0, i32 1), align 4
  br label %if.end.i.i1033

if.end.i.i1033:                                   ; preds = %if.then.i.i1032, %for.body312.if.end.i.i1033_crit_edge
  %rb_right.i.i.i.i = getelementptr %struct.test_node, ptr %140, i32 %j.91198, i32 1, i32 1
  %142 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr %struct.test_node, ptr %140, i32 %j.91198, i32 1, i32 2
  %144 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.else6.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i1033
  %146 = ptrtoint ptr %rb.i1029 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rb.i1029, align 4
  %and.i.i.i.i = and i32 %147, -4
  %148 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rb_left.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %150, %rb.i1029
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %148, i32 0, i32 1
  %spec.select.i.i.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %rb_left.i.i.i.i.i, ptr %rb_right.i.i.i.i.i
  br label %__rb_change_child.exit.i.i.i.i

__rb_change_child.exit.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge
  %rb_left.sink.i.i.i.i.i = phi ptr [ @root, %if.then.i.i.i.i.__rb_change_child.exit.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %151 = ptrtoint ptr %rb_left.sink.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %143, ptr %rb_left.sink.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %143, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then2.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %__rb_change_child.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %147, ptr %143, align 4
  br label %if.end69.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__rb_change_child.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and4.i.i.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i)
  %tobool5.not.i.i.i.i = icmp eq i32 %and4.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %tobool5.not.i.i.i.i, ptr null, ptr %148
  br label %if.end69.i.i.i.i

if.else6.i.i.i.i:                                 ; preds = %if.end.i.i1033
  %tobool7.not.i.i.i.i = icmp eq ptr %143, null
  br i1 %tobool7.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.else12.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.else6.i.i.i.i
  %153 = ptrtoint ptr %rb.i1029 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rb.i1029, align 4
  %155 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %145, align 4
  %and11.i.i.i.i = and i32 %154, -4
  %156 = inttoptr i32 %and11.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i.i)
  %tobool.not.i2.i.i.i.i = icmp eq i32 %and11.i.i.i.i, 0
  br i1 %tobool.not.i2.i.i.i.i, label %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge, label %if.then.i7.i.i.i.i

if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge: ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit9.i.i.i.i

if.then.i7.i.i.i.i:                               ; preds = %if.then8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i3.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %rb_left.i3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rb_left.i3.i.i.i.i, align 4
  %cmp.i4.i.i.i.i = icmp eq ptr %158, %rb.i1029
  %rb_right.i5.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %156, i32 0, i32 1
  %spec.select.i6.i.i.i.i = select i1 %cmp.i4.i.i.i.i, ptr %rb_left.i3.i.i.i.i, ptr %rb_right.i5.i.i.i.i
  br label %__rb_change_child.exit9.i.i.i.i

__rb_change_child.exit9.i.i.i.i:                  ; preds = %if.then.i7.i.i.i.i, %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge
  %rb_left.sink.i8.i.i.i.i = phi ptr [ @root, %if.then8.i.i.i.i.__rb_change_child.exit9.i.i.i.i_crit_edge ], [ %spec.select.i6.i.i.i.i, %if.then.i7.i.i.i.i ]
  %159 = ptrtoint ptr %rb_left.sink.i8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %145, ptr %rb_left.sink.i8.i.i.i.i, align 4
  br label %if.end69.i.i.i.i

if.else12.i.i.i.i:                                ; preds = %if.else6.i.i.i.i
  %rb_left13.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 2
  %160 = ptrtoint ptr %rb_left13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rb_left13.i.i.i.i, align 4
  %tobool14.not.i.i.i.i = icmp eq ptr %161, null
  br i1 %tobool14.not.i.i.i.i, label %if.then15.i.i.i.i, label %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge

if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge:      ; preds = %if.else12.i.i.i.i
  br label %do.body.i.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.else12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right16.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %143, i32 0, i32 1
  %162 = ptrtoint ptr %rb_right16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rb_right16.i.i.i.i, align 4
  %augmented.i.i.i.i.i = getelementptr %struct.test_node, ptr %140, i32 %j.91198, i32 3
  %164 = ptrtoint ptr %augmented.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %augmented.i.i.i.i.i, align 4
  %augmented4.i.i.i.i.i = getelementptr i8, ptr %143, i32 16
  %166 = ptrtoint ptr %augmented4.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %augmented4.i.i.i.i.i, align 4
  %.pre.i.i.i.i = ptrtoint ptr %143 to i32
  br label %if.end42.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge
  %tmp.0.i.i.i.i = phi ptr [ %168, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %161, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %successor.0.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge ], [ %143, %if.else12.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %rb_left18.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 2
  %167 = ptrtoint ptr %rb_left18.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rb_left18.i.i.i.i, align 4
  %tobool19.not.i.i.i.i = icmp eq ptr %168, null
  br i1 %tobool19.not.i.i.i.i, label %do.end.i.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %rb_right20.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %rb_right20.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rb_right20.i.i.i.i, align 4
  %rb_left26.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %rb_left26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %170, ptr %rb_left26.i.i.i.i, align 4
  store volatile ptr %143, ptr %rb_right20.i.i.i.i, align 4
  %172 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %143, align 4
  %and.i.i.i.i.i = and i32 %173, 1
  %174 = ptrtoint ptr %tmp.0.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %174
  store i32 %or.i.i.i.i.i, ptr %143, align 4
  %augmented.i10.i.i.i.i = getelementptr %struct.test_node, ptr %140, i32 %j.91198, i32 3
  %175 = ptrtoint ptr %augmented.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %augmented.i10.i.i.i.i, align 4
  %augmented4.i11.i.i.i.i = getelementptr i8, ptr %tmp.0.i.i.i.i, i32 16
  %177 = ptrtoint ptr %augmented4.i11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %augmented4.i11.i.i.i.i, align 4
  %cmp.not8.i.i.i.i.i = icmp eq ptr %successor.0.i.i.i.i, %tmp.0.i.i.i.i
  br i1 %cmp.not8.i.i.i.i.i, label %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge

do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge:    ; preds = %do.end.i.i.i.i
  br label %while.body.i.i.i.i.i

do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge, %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge
  %rb.addr.09.i.i.i.i.i = phi ptr [ %195, %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %do.end.i.i.i.i.while.body.i.i.i.i.i_crit_edge ]
  %val.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i.i, i32 12
  %178 = ptrtoint ptr %val.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %val.i.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i.i, i32 8
  %180 = ptrtoint ptr %rb_left.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rb_left.i.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %181, null
  br i1 %tobool.not.i.i.i.i.i.i, label %while.body.i.i.i.i.i.if.end5.i.i.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i

while.body.i.i.i.i.i.if.end5.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %while.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented.i.i.i.i.i.i = getelementptr i8, ptr %181, i32 16
  %182 = ptrtoint ptr %augmented.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %augmented.i.i.i.i.i.i, align 4
  %184 = call i32 @llvm.umax.i32(i32 %183, i32 %179) #12
  br label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i.i.i, %while.body.i.i.i.i.i.if.end5.i.i.i.i.i.i_crit_edge
  %max.0.i.i.i.i.i.i = phi i32 [ %179, %while.body.i.i.i.i.i.if.end5.i.i.i.i.i.i_crit_edge ], [ %184, %if.then.i.i.i.i.i.i ]
  %rb_right.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i.i, i32 4
  %185 = ptrtoint ptr %rb_right.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rb_right.i.i.i.i.i.i, align 4
  %tobool7.not.i.i.i.i.i.i = icmp eq ptr %186, null
  br i1 %tobool7.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end19.i.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.if.end19.i.i.i.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i.i.i.i

if.then8.i.i.i.i.i.i:                             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented14.i.i.i.i.i.i = getelementptr i8, ptr %186, i32 16
  %187 = ptrtoint ptr %augmented14.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %augmented14.i.i.i.i.i.i, align 4
  %189 = call i32 @llvm.umax.i32(i32 %188, i32 %max.0.i.i.i.i.i.i) #12
  br label %if.end19.i.i.i.i.i.i

if.end19.i.i.i.i.i.i:                             ; preds = %if.then8.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end19.i.i.i.i.i.i_crit_edge
  %max.1.i.i.i.i.i.i = phi i32 [ %max.0.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end19.i.i.i.i.i.i_crit_edge ], [ %189, %if.then8.i.i.i.i.i.i ]
  %augmented21.i.i.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i.i.i, i32 16
  %190 = ptrtoint ptr %augmented21.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %augmented21.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %max.1.i.i.i.i.i.i)
  %cmp22.i.i.i.i.i.i = icmp eq i32 %191, %max.1.i.i.i.i.i.i
  br i1 %cmp22.i.i.i.i.i.i, label %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i

if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge:  ; preds = %if.end19.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i.i.i

cleanup.i.i.i.i.i:                                ; preds = %if.end19.i.i.i.i.i.i
  %192 = ptrtoint ptr %augmented21.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %max.1.i.i.i.i.i.i, ptr %augmented21.i.i.i.i.i.i, align 4
  %193 = ptrtoint ptr %rb.addr.09.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %rb.addr.09.i.i.i.i.i, align 4
  %and.i12.i.i.i.i = and i32 %194, -4
  %195 = inttoptr i32 %and.i12.i.i.i.i to ptr
  %cmp.not.i.i.i.i.i = icmp eq ptr %tmp.0.i.i.i.i, %195
  br i1 %cmp.not.i.i.i.i.i, label %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge

cleanup.i.i.i.i.i.while.body.i.i.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i.i

cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i.i.i

if.end42.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge, %if.then15.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %174, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %.pre.i.i.i.i, %if.then15.i.i.i.i ], [ %174, %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %174, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %parent.0.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %143, %if.then15.i.i.i.i ], [ %successor.0.i.i.i.i, %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %successor.0.i.i.i.i, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %successor.1.i.i.i.i = phi ptr [ %tmp.0.i.i.i.i, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %143, %if.then15.i.i.i.i ], [ %tmp.0.i.i.i.i, %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %tmp.0.i.i.i.i, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %child2.0.i.i.i.i = phi ptr [ %170, %do.end.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %163, %if.then15.i.i.i.i ], [ %170, %if.end19.i.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ], [ %170, %cleanup.i.i.i.i.i.if.end42.i.i.i.i_crit_edge ]
  %196 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %rb_left49.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %rb_left49.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %197, ptr %rb_left49.i.i.i.i, align 4
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %197, align 4
  %and.i13.i.i.i.i = and i32 %200, 1
  %or.i14.i.i.i.i = or i32 %and.i13.i.i.i.i, %.pre-phi.i.i.i.i
  store i32 %or.i14.i.i.i.i, ptr %197, align 4
  %201 = ptrtoint ptr %rb.i1029 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %rb.i1029, align 4
  %and55.i.i.i.i = and i32 %202, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i.i.i)
  %tobool.not.i15.i.i.i.i = icmp eq i32 %and55.i.i.i.i, 0
  br i1 %tobool.not.i15.i.i.i.i, label %if.end42.i.i.i.i.__rb_change_child.exit22.i.i.i.i_crit_edge, label %if.then.i20.i.i.i.i

if.end42.i.i.i.i.__rb_change_child.exit22.i.i.i.i_crit_edge: ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit22.i.i.i.i

if.then.i20.i.i.i.i:                              ; preds = %if.end42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %203 = inttoptr i32 %and55.i.i.i.i to ptr
  %rb_left.i16.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %rb_left.i16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rb_left.i16.i.i.i.i, align 4
  %cmp.i17.i.i.i.i = icmp eq ptr %205, %rb.i1029
  %rb_right.i18.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %203, i32 0, i32 1
  %spec.select.i19.i.i.i.i = select i1 %cmp.i17.i.i.i.i, ptr %rb_left.i16.i.i.i.i, ptr %rb_right.i18.i.i.i.i
  br label %__rb_change_child.exit22.i.i.i.i

__rb_change_child.exit22.i.i.i.i:                 ; preds = %if.then.i20.i.i.i.i, %if.end42.i.i.i.i.__rb_change_child.exit22.i.i.i.i_crit_edge
  %rb_left.sink.i21.i.i.i.i = phi ptr [ @root, %if.end42.i.i.i.i.__rb_change_child.exit22.i.i.i.i_crit_edge ], [ %spec.select.i19.i.i.i.i, %if.then.i20.i.i.i.i ]
  %206 = ptrtoint ptr %rb_left.sink.i21.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %successor.1.i.i.i.i, ptr %rb_left.sink.i21.i.i.i.i, align 4
  %tobool56.not.i.i.i.i = icmp eq ptr %child2.0.i.i.i.i, null
  br i1 %tobool56.not.i.i.i.i, label %if.else58.i.i.i.i, label %if.then57.i.i.i.i

if.then57.i.i.i.i:                                ; preds = %__rb_change_child.exit22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %parent.0.i.i.i.i to i32
  %or.i23.i.i.i.i = or i32 %207, 1
  %208 = ptrtoint ptr %child2.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %or.i23.i.i.i.i, ptr %child2.0.i.i.i.i, align 4
  br label %if.end66.i.i.i.i

if.else58.i.i.i.i:                                ; preds = %__rb_change_child.exit22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %successor.1.i.i.i.i, align 4
  %and60.i.i.i.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i.i.i)
  %tobool61.not.i.i.i.i = icmp eq i32 %and60.i.i.i.i, 0
  %spec.select1.i.i.i.i = select i1 %tobool61.not.i.i.i.i, ptr null, ptr %parent.0.i.i.i.i
  br label %if.end66.i.i.i.i

if.end66.i.i.i.i:                                 ; preds = %if.else58.i.i.i.i, %if.then57.i.i.i.i
  %rebalance.1.i.i.i.i = phi ptr [ null, %if.then57.i.i.i.i ], [ %spec.select1.i.i.i.i, %if.else58.i.i.i.i ]
  %211 = ptrtoint ptr %successor.1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %202, ptr %successor.1.i.i.i.i, align 4
  br label %if.end69.i.i.i.i

if.end69.i.i.i.i:                                 ; preds = %if.end66.i.i.i.i, %__rb_change_child.exit9.i.i.i.i, %if.else.i.i.i.i, %if.then2.i.i.i.i
  %tmp.1.i.i.i.i = phi ptr [ %successor.1.i.i.i.i, %if.end66.i.i.i.i ], [ %156, %__rb_change_child.exit9.i.i.i.i ], [ %148, %if.else.i.i.i.i ], [ %148, %if.then2.i.i.i.i ]
  %rebalance.2.i.i.i.i = phi ptr [ %rebalance.1.i.i.i.i, %if.end66.i.i.i.i ], [ null, %__rb_change_child.exit9.i.i.i.i ], [ %spec.select.i.i.i.i, %if.else.i.i.i.i ], [ null, %if.then2.i.i.i.i ]
  %cmp.not8.i24.i.i.i.i = icmp eq ptr %tmp.1.i.i.i.i, null
  br i1 %cmp.not8.i24.i.i.i.i, label %if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge

if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i
  br label %while.body.i29.i.i.i.i

if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %if.end69.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i.i.i

while.body.i29.i.i.i.i:                           ; preds = %cleanup.i44.i.i.i.i.while.body.i29.i.i.i.i_crit_edge, %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge
  %rb.addr.09.i25.i.i.i.i = phi ptr [ %229, %cleanup.i44.i.i.i.i.while.body.i29.i.i.i.i_crit_edge ], [ %tmp.1.i.i.i.i, %if.end69.i.i.i.i.while.body.i29.i.i.i.i_crit_edge ]
  %val.i.i26.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i.i, i32 12
  %212 = ptrtoint ptr %val.i.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %val.i.i26.i.i.i.i, align 4
  %rb_left.i.i27.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i.i, i32 8
  %214 = ptrtoint ptr %rb_left.i.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rb_left.i.i27.i.i.i.i, align 4
  %tobool.not.i.i28.i.i.i.i = icmp eq ptr %215, null
  br i1 %tobool.not.i.i28.i.i.i.i, label %while.body.i29.i.i.i.i.if.end5.i.i35.i.i.i.i_crit_edge, label %if.then.i.i31.i.i.i.i

while.body.i29.i.i.i.i.if.end5.i.i35.i.i.i.i_crit_edge: ; preds = %while.body.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i35.i.i.i.i

if.then.i.i31.i.i.i.i:                            ; preds = %while.body.i29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented.i.i30.i.i.i.i = getelementptr i8, ptr %215, i32 16
  %216 = ptrtoint ptr %augmented.i.i30.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %augmented.i.i30.i.i.i.i, align 4
  %218 = call i32 @llvm.umax.i32(i32 %217, i32 %213) #12
  br label %if.end5.i.i35.i.i.i.i

if.end5.i.i35.i.i.i.i:                            ; preds = %if.then.i.i31.i.i.i.i, %while.body.i29.i.i.i.i.if.end5.i.i35.i.i.i.i_crit_edge
  %max.0.i.i32.i.i.i.i = phi i32 [ %213, %while.body.i29.i.i.i.i.if.end5.i.i35.i.i.i.i_crit_edge ], [ %218, %if.then.i.i31.i.i.i.i ]
  %rb_right.i.i33.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i.i, i32 4
  %219 = ptrtoint ptr %rb_right.i.i33.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rb_right.i.i33.i.i.i.i, align 4
  %tobool7.not.i.i34.i.i.i.i = icmp eq ptr %220, null
  br i1 %tobool7.not.i.i34.i.i.i.i, label %if.end5.i.i35.i.i.i.i.if.end19.i.i41.i.i.i.i_crit_edge, label %if.then8.i.i37.i.i.i.i

if.end5.i.i35.i.i.i.i.if.end19.i.i41.i.i.i.i_crit_edge: ; preds = %if.end5.i.i35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i41.i.i.i.i

if.then8.i.i37.i.i.i.i:                           ; preds = %if.end5.i.i35.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented14.i.i36.i.i.i.i = getelementptr i8, ptr %220, i32 16
  %221 = ptrtoint ptr %augmented14.i.i36.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %augmented14.i.i36.i.i.i.i, align 4
  %223 = call i32 @llvm.umax.i32(i32 %222, i32 %max.0.i.i32.i.i.i.i) #12
  br label %if.end19.i.i41.i.i.i.i

if.end19.i.i41.i.i.i.i:                           ; preds = %if.then8.i.i37.i.i.i.i, %if.end5.i.i35.i.i.i.i.if.end19.i.i41.i.i.i.i_crit_edge
  %max.1.i.i38.i.i.i.i = phi i32 [ %max.0.i.i32.i.i.i.i, %if.end5.i.i35.i.i.i.i.if.end19.i.i41.i.i.i.i_crit_edge ], [ %223, %if.then8.i.i37.i.i.i.i ]
  %augmented21.i.i39.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i.i.i, i32 16
  %224 = ptrtoint ptr %augmented21.i.i39.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %augmented21.i.i39.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %max.1.i.i38.i.i.i.i)
  %cmp22.i.i40.i.i.i.i = icmp eq i32 %225, %max.1.i.i38.i.i.i.i
  br i1 %cmp22.i.i40.i.i.i.i, label %if.end19.i.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %cleanup.i44.i.i.i.i

if.end19.i.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %if.end19.i.i41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i.i.i

cleanup.i44.i.i.i.i:                              ; preds = %if.end19.i.i41.i.i.i.i
  %226 = ptrtoint ptr %augmented21.i.i39.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %max.1.i.i38.i.i.i.i, ptr %augmented21.i.i39.i.i.i.i, align 4
  %227 = ptrtoint ptr %rb.addr.09.i25.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %rb.addr.09.i25.i.i.i.i, align 4
  %and.i42.i.i.i.i = and i32 %228, -4
  %229 = inttoptr i32 %and.i42.i.i.i.i to ptr
  %cmp.not.i43.i.i.i.i = icmp eq i32 %and.i42.i.i.i.i, 0
  br i1 %cmp.not.i43.i.i.i.i, label %cleanup.i44.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, label %cleanup.i44.i.i.i.i.while.body.i29.i.i.i.i_crit_edge

cleanup.i44.i.i.i.i.while.body.i29.i.i.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i29.i.i.i.i

cleanup.i44.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge: ; preds = %cleanup.i44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i.i.i

__rb_erase_augmented.exit.i.i.i:                  ; preds = %cleanup.i44.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, %if.end19.i.i41.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge, %if.end69.i.i.i.i.__rb_erase_augmented.exit.i.i.i_crit_edge
  %tobool.not.i.i.i1034 = icmp eq ptr %rebalance.2.i.i.i.i, null
  br i1 %tobool.not.i.i.i1034, label %__rb_erase_augmented.exit.i.i.i.erase_augmented_cached.exit_crit_edge, label %if.then.i.i.i

__rb_erase_augmented.exit.i.i.i.erase_augmented_cached.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %erase_augmented_cached.exit

if.then.i.i.i:                                    ; preds = %__rb_erase_augmented.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i.i.i, ptr noundef nonnull @root, ptr noundef nonnull @augment_callbacks_rotate) #12
  br label %erase_augmented_cached.exit

erase_augmented_cached.exit:                      ; preds = %if.then.i.i.i, %__rb_erase_augmented.exit.i.i.i.erase_augmented_cached.exit_crit_edge
  %inc315 = add nuw nsw i32 %j.91198, 1
  %230 = load i32, ptr @nnodes, align 4
  %cmp310 = icmp slt i32 %inc315, %230
  br i1 %cmp310, label %erase_augmented_cached.exit.for.body312_crit_edge, label %erase_augmented_cached.exit.for.inc317_crit_edge

erase_augmented_cached.exit.for.inc317_crit_edge: ; preds = %erase_augmented_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc317

erase_augmented_cached.exit.for.body312_crit_edge: ; preds = %erase_augmented_cached.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body312

for.inc317:                                       ; preds = %erase_augmented_cached.exit.for.inc317_crit_edge, %for.cond309.preheader.for.inc317_crit_edge, %for.cond301.preheader.for.inc317_crit_edge
  %inc318 = add nuw nsw i32 %i.91202, 1
  %231 = load i32, ptr @perf_loops, align 4
  %cmp298 = icmp slt i32 %inc318, %231
  br i1 %cmp298, label %for.inc317.for.cond301.preheader_crit_edge, label %for.inc317.for.end319_crit_edge

for.inc317.for.end319_crit_edge:                  ; preds = %for.inc317
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end319

for.inc317.for.cond301.preheader_crit_edge:       ; preds = %for.inc317
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond301.preheader

for.end319:                                       ; preds = %for.inc317.for.end319_crit_edge, %cond.end295.for.end319_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c320) #12
  %232 = ptrtoint ptr %c320 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 -1, ptr %c320, align 4, !annotation !108
  %call322 = call i32 @read_current_timer(ptr noundef nonnull %c320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %cond.false325, label %for.end319.cond.end326_crit_edge

for.end319.cond.end326_crit_edge:                 ; preds = %for.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end326

cond.false325:                                    ; preds = %for.end319
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %c320 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %c320, align 4
  br label %cond.end326

cond.end326:                                      ; preds = %cond.false325, %for.end319.cond.end326_crit_edge
  %cond327 = phi i32 [ %234, %cond.false325 ], [ 0, %for.end319.cond.end326_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c320) #12
  %sub328 = sub i32 %cond327, %cond296
  %235 = load i32, ptr @perf_loops, align 4
  %div172.i.i1140 = udiv i32 %sub328, %235
  %conv173.i.i1141 = zext i32 %div172.i.i1140 to i64
  %call337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i64 noundef %conv173.i.i1141) #11
  %236 = load i32, ptr @check_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp3391207 = icmp sgt i32 %236, 0
  br i1 %cmp3391207, label %cond.end326.for.body341_crit_edge, label %cond.end326.for.end361_crit_edge

cond.end326.for.end361_crit_edge:                 ; preds = %cond.end326
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end361

cond.end326.for.body341_crit_edge:                ; preds = %cond.end326
  br label %for.body341

for.body341:                                      ; preds = %for.end358.for.body341_crit_edge, %cond.end326.for.body341_crit_edge
  %i.101208 = phi i32 [ %inc360, %for.end358.for.body341_crit_edge ], [ 0, %cond.end326.for.body341_crit_edge ]
  call fastcc void @init()
  %237 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp3431203 = icmp sgt i32 %237, 0
  br i1 %cmp3431203, label %for.body341.for.body345_crit_edge, label %for.body341.for.end358_crit_edge

for.body341.for.end358_crit_edge:                 ; preds = %for.body341
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end358

for.body341.for.body345_crit_edge:                ; preds = %for.body341
  br label %for.body345

for.cond350.preheader:                            ; preds = %for.body345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp3511205 = icmp sgt i32 %239, 0
  br i1 %cmp3511205, label %for.cond350.preheader.for.body353_crit_edge, label %for.cond350.preheader.for.end358_crit_edge

for.cond350.preheader.for.end358_crit_edge:       ; preds = %for.cond350.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end358

for.cond350.preheader.for.body353_crit_edge:      ; preds = %for.cond350.preheader
  br label %for.body353

for.body345:                                      ; preds = %for.body345.for.body345_crit_edge, %for.body341.for.body345_crit_edge
  %j.101204 = phi i32 [ %inc348, %for.body345.for.body345_crit_edge ], [ 0, %for.body341.for.body345_crit_edge ]
  call fastcc void @check_augmented(i32 noundef %j.101204)
  %238 = load ptr, ptr @nodes, align 4
  %add.ptr346 = getelementptr %struct.test_node, ptr %238, i32 %j.101204
  call fastcc void @insert_augmented(ptr noundef %add.ptr346)
  %inc348 = add nuw nsw i32 %j.101204, 1
  %239 = load i32, ptr @nnodes, align 4
  %cmp343 = icmp slt i32 %inc348, %239
  br i1 %cmp343, label %for.body345.for.body345_crit_edge, label %for.cond350.preheader

for.body345.for.body345_crit_edge:                ; preds = %for.body345
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body345

for.body353:                                      ; preds = %for.body353.for.body353_crit_edge, %for.cond350.preheader.for.body353_crit_edge
  %240 = phi i32 [ %242, %for.body353.for.body353_crit_edge ], [ %239, %for.cond350.preheader.for.body353_crit_edge ]
  %j.111206 = phi i32 [ %inc357, %for.body353.for.body353_crit_edge ], [ 0, %for.cond350.preheader.for.body353_crit_edge ]
  %sub354 = sub i32 %240, %j.111206
  call fastcc void @check_augmented(i32 noundef %sub354)
  %241 = load ptr, ptr @nodes, align 4
  %add.ptr355 = getelementptr %struct.test_node, ptr %241, i32 %j.111206
  call fastcc void @erase_augmented(ptr noundef %add.ptr355)
  %inc357 = add nuw nsw i32 %j.111206, 1
  %242 = load i32, ptr @nnodes, align 4
  %cmp351 = icmp sgt i32 %242, %inc357
  br i1 %cmp351, label %for.body353.for.body353_crit_edge, label %for.body353.for.end358_crit_edge

for.body353.for.end358_crit_edge:                 ; preds = %for.body353
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end358

for.body353.for.body353_crit_edge:                ; preds = %for.body353
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body353

for.end358:                                       ; preds = %for.body353.for.end358_crit_edge, %for.cond350.preheader.for.end358_crit_edge, %for.body341.for.end358_crit_edge
  call fastcc void @check_augmented(i32 noundef 0)
  %inc360 = add nuw nsw i32 %i.101208, 1
  %243 = load i32, ptr @check_loops, align 4
  %cmp339 = icmp slt i32 %inc360, %243
  br i1 %cmp339, label %for.end358.for.body341_crit_edge, label %for.end358.for.end361_crit_edge

for.end358.for.end361_crit_edge:                  ; preds = %for.end358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end361

for.end358.for.body341_crit_edge:                 ; preds = %for.end358
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body341

for.end361:                                       ; preds = %for.end358.for.end361_crit_edge, %cond.end326.for.end361_crit_edge
  %244 = load ptr, ptr @nodes, align 4
  call void @kfree(ptr noundef %244) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end361, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ -11, %for.end361 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @prandom_u32_state(ptr noundef nonnull @rnd) #12
  %1 = load ptr, ptr @nodes, align 4
  %arrayidx = getelementptr %struct.test_node, ptr %1, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %arrayidx, align 4
  %call1 = tail call i32 @prandom_u32_state(ptr noundef nonnull @rnd) #12
  %3 = load ptr, ptr @nodes, align 4
  %val = getelementptr %struct.test_node, ptr %3, i32 %i.07, i32 2
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %val, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %5 = load i32, ptr @nnodes, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert(ptr noundef %node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %2 = load ptr, ptr @root, align 4
  %tobool.not1 = icmp eq ptr %2, null
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %3 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %2, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp ult i32 %1, %5
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1
  %new.1 = select i1 %cmp, ptr %rb_left, ptr %rb_right
  %6 = ptrtoint ptr %new.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new.1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %3 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.1, %while.cond.while.end_crit_edge ], [ @root, %entry.while.end_crit_edge ]
  %rb = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1
  %8 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %parent.0.lcssa, ptr %rb, align 4
  %rb_right.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rb_left.i, align 4
  %11 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rb, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb, ptr noundef nonnull @root) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check(i32 noundef %nr_nodes) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @rb_first(ptr noundef nonnull @root) #12
  %tobool.not343 = icmp eq ptr %call, null
  br i1 %tobool.not343, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end159.for.body_crit_edge, %entry.for.body_crit_edge
  %rb.0347 = phi ptr [ %call161, %if.end159.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %count.0346 = phi i32 [ %inc, %if.end159.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %blacks.0345 = phi i32 [ %blacks.1, %if.end159.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %prev_key.0344 = phi i32 [ %18, %if.end159.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rb.0347, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %prev_key.0344)
  %cmp = icmp ult i32 %1, %prev_key.0344
  br i1 %cmp, label %land.rhs, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %for.body
  %.b305 = load i1, ptr @check.__already_done, align 1
  br i1 %.b305, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !109

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 199, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %2 = ptrtoint ptr %rb.0347 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rb.0347, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs39, label %if.end29.if.end89_crit_edge

if.end29.if.end89_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

land.rhs39:                                       ; preds = %if.end29
  %and = and i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %land.rhs39.land.rhs51_crit_edge, label %lor.rhs

land.rhs39.land.rhs51_crit_edge:                  ; preds = %land.rhs39
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs51

lor.rhs:                                          ; preds = %land.rhs39
  %4 = inttoptr i32 %and to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and.i308 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i309 = icmp eq i32 %and.i308, 0
  br i1 %tobool.not.i309, label %lor.rhs.land.rhs51_crit_edge, label %lor.rhs.if.end89_crit_edge

lor.rhs.if.end89_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

lor.rhs.land.rhs51_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs51

land.rhs51:                                       ; preds = %lor.rhs.land.rhs51_crit_edge, %land.rhs39.land.rhs51_crit_edge
  %.b297304 = load i1, ptr @check.__already_done.30, align 1
  br i1 %.b297304, label %land.rhs51.if.end89_crit_edge, label %if.then62, !prof !109

land.rhs51.if.end89_crit_edge:                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check.__already_done.30, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 9, ptr noundef null) #12
  br label %if.end89

if.end89:                                         ; preds = %if.then62, %land.rhs51.if.end89_crit_edge, %lor.rhs.if.end89_crit_edge, %if.end29.if.end89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0346)
  %tobool97.not = icmp eq i32 %count.0346, 0
  br i1 %tobool97.not, label %if.end89.for.body.i_crit_edge, label %if.else

if.end89.for.body.i_crit_edge:                    ; preds = %if.end89
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end89.for.body.i_crit_edge
  %count.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end89.for.body.i_crit_edge ]
  %rb.addr.05.i = phi ptr [ %9, %for.body.i.for.body.i_crit_edge ], [ %rb.0347, %if.end89.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %rb.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rb.addr.05.i, align 4
  %and.i.i = and i32 %8, 1
  %add.i = add i32 %and.i.i, %count.06.i
  %and.i310 = and i32 %8, -4
  %9 = inttoptr i32 %and.i310 to ptr
  %tobool.not.i311 = icmp eq i32 %and.i310, 0
  br i1 %tobool.not.i311, label %for.body.i.if.end159_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end159_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.else:                                          ; preds = %if.end89
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb.0347, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_left, align 4
  %tobool101.not = icmp eq ptr %11, null
  br i1 %tobool101.not, label %if.else.for.body.i319.preheader_crit_edge, label %lor.lhs.false

if.else.for.body.i319.preheader_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i319.preheader

lor.lhs.false:                                    ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb.0347, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rb_right, align 4
  %tobool102.not = icmp eq ptr %13, null
  br i1 %tobool102.not, label %lor.lhs.false.for.body.i319.preheader_crit_edge, label %lor.lhs.false.if.end159_crit_edge

lor.lhs.false.if.end159_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

lor.lhs.false.for.body.i319.preheader_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i319.preheader

for.body.i319.preheader:                          ; preds = %lor.lhs.false.for.body.i319.preheader_crit_edge, %if.else.for.body.i319.preheader_crit_edge
  br label %for.body.i319

for.body.i319:                                    ; preds = %for.body.i319.for.body.i319_crit_edge, %for.body.i319.preheader
  %count.06.i313 = phi i32 [ %add.i316, %for.body.i319.for.body.i319_crit_edge ], [ 0, %for.body.i319.preheader ]
  %rb.addr.05.i314 = phi ptr [ %16, %for.body.i319.for.body.i319_crit_edge ], [ %rb.0347, %for.body.i319.preheader ]
  %14 = ptrtoint ptr %rb.addr.05.i314 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rb.addr.05.i314, align 4
  %and.i.i315 = and i32 %15, 1
  %add.i316 = add i32 %and.i.i315, %count.06.i313
  %and.i317 = and i32 %15, -4
  %16 = inttoptr i32 %and.i317 to ptr
  %tobool.not.i318 = icmp eq i32 %and.i317, 0
  br i1 %tobool.not.i318, label %black_path_count.exit321, label %for.body.i319.for.body.i319_crit_edge

for.body.i319.for.body.i319_crit_edge:            ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i319

black_path_count.exit321:                         ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_cmp4(i32 %blacks.0345, i32 %add.i316)
  %cmp105.not = icmp eq i32 %blacks.0345, %add.i316
  br i1 %cmp105.not, label %black_path_count.exit321.if.end159_crit_edge, label %land.rhs113

black_path_count.exit321.if.end159_crit_edge:     ; preds = %black_path_count.exit321
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

land.rhs113:                                      ; preds = %black_path_count.exit321
  %.b298303 = load i1, ptr @check.__already_done.31, align 1
  br i1 %.b298303, label %land.rhs113.if.end159_crit_edge, label %if.then124, !prof !109

land.rhs113.if.end159_crit_edge:                  ; preds = %land.rhs113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then124:                                       ; preds = %land.rhs113
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check.__already_done.31, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #12
  br label %if.end159

if.end159:                                        ; preds = %if.then124, %land.rhs113.if.end159_crit_edge, %black_path_count.exit321.if.end159_crit_edge, %lor.lhs.false.if.end159_crit_edge, %for.body.i.if.end159_crit_edge
  %blacks.1 = phi i32 [ %blacks.0345, %lor.lhs.false.if.end159_crit_edge ], [ %blacks.0345, %black_path_count.exit321.if.end159_crit_edge ], [ %blacks.0345, %if.then124 ], [ %blacks.0345, %land.rhs113.if.end159_crit_edge ], [ %add.i, %for.body.i.if.end159_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %inc = add i32 %count.0346, 1
  %call161 = tail call ptr @rb_next(ptr noundef nonnull %rb.0347) #12
  %tobool.not = icmp eq ptr %call161, null
  br i1 %tobool.not, label %if.end159.for.end_crit_edge, label %if.end159.for.body_crit_edge

if.end159.for.body_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end159.for.end_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end159.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end159.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %nr_nodes)
  %cmp163.not = icmp eq i32 %count.0.lcssa, %nr_nodes
  br i1 %cmp163.not, label %for.end.if.end208_crit_edge, label %land.rhs170

for.end.if.end208_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

land.rhs170:                                      ; preds = %for.end
  %.b299302 = load i1, ptr @check.__already_done.32, align 1
  br i1 %.b299302, label %land.rhs170.if.end208_crit_edge, label %if.then181, !prof !109

land.rhs170.if.end208_crit_edge:                  ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.then181:                                       ; preds = %land.rhs170
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 211, i32 noundef 9, ptr noundef null) #12
  br label %if.end208

if.end208:                                        ; preds = %if.then181, %land.rhs170.if.end208_crit_edge, %for.end.if.end208_crit_edge
  %call217 = tail call ptr @rb_last(ptr noundef nonnull @root) #12
  %tobool.not4.i322 = icmp eq ptr %call217, null
  br i1 %tobool.not4.i322, label %if.end208.black_path_count.exit331_crit_edge, label %if.end208.for.body.i329_crit_edge

if.end208.for.body.i329_crit_edge:                ; preds = %if.end208
  br label %for.body.i329

if.end208.black_path_count.exit331_crit_edge:     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %black_path_count.exit331

for.body.i329:                                    ; preds = %for.body.i329.for.body.i329_crit_edge, %if.end208.for.body.i329_crit_edge
  %count.06.i323 = phi i32 [ %add.i326, %for.body.i329.for.body.i329_crit_edge ], [ 0, %if.end208.for.body.i329_crit_edge ]
  %rb.addr.05.i324 = phi ptr [ %21, %for.body.i329.for.body.i329_crit_edge ], [ %call217, %if.end208.for.body.i329_crit_edge ]
  %19 = ptrtoint ptr %rb.addr.05.i324 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rb.addr.05.i324, align 4
  %and.i.i325 = and i32 %20, 1
  %add.i326 = add i32 %and.i.i325, %count.06.i323
  %and.i327 = and i32 %20, -4
  %21 = inttoptr i32 %and.i327 to ptr
  %tobool.not.i328 = icmp eq i32 %and.i327, 0
  br i1 %tobool.not.i328, label %for.body.i329.black_path_count.exit331_crit_edge, label %for.body.i329.for.body.i329_crit_edge

for.body.i329.for.body.i329_crit_edge:            ; preds = %for.body.i329
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i329

for.body.i329.black_path_count.exit331_crit_edge: ; preds = %for.body.i329
  call void @__sanitizer_cov_trace_pc() #10
  br label %black_path_count.exit331

black_path_count.exit331:                         ; preds = %for.body.i329.black_path_count.exit331_crit_edge, %if.end208.black_path_count.exit331_crit_edge
  %count.0.lcssa.i330 = phi i32 [ 0, %if.end208.black_path_count.exit331_crit_edge ], [ %add.i326, %for.body.i329.black_path_count.exit331_crit_edge ]
  %notmask = shl nsw i32 -1, %count.0.lcssa.i330
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %sub)
  %cmp219 = icmp slt i32 %count.0.lcssa, %sub
  br i1 %cmp219, label %land.rhs226, label %black_path_count.exit331.if.end264_crit_edge

black_path_count.exit331.if.end264_crit_edge:     ; preds = %black_path_count.exit331
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

land.rhs226:                                      ; preds = %black_path_count.exit331
  %.b300301 = load i1, ptr @check.__already_done.33, align 1
  br i1 %.b300301, label %land.rhs226.if.end264_crit_edge, label %if.then237, !prof !109

land.rhs226.if.end264_crit_edge:                  ; preds = %land.rhs226
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then237:                                       ; preds = %land.rhs226
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check.__already_done.33, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 212, i32 noundef 9, ptr noundef null) #12
  br label %if.end264

if.end264:                                        ; preds = %if.then237, %land.rhs226.if.end264_crit_edge, %black_path_count.exit331.if.end264_crit_edge
  %call.i = tail call ptr @rb_first_postorder(ptr noundef nonnull @root) #12
  %tobool.not42.i = icmp eq ptr %call.i, null
  br i1 %tobool.not42.i, label %if.end264.for.end.i_crit_edge, label %if.end264.for.body.i333_crit_edge

if.end264.for.body.i333_crit_edge:                ; preds = %if.end264
  br label %for.body.i333

if.end264.for.end.i_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i333:                                    ; preds = %for.body.i333.for.body.i333_crit_edge, %if.end264.for.body.i333_crit_edge
  %rb.044.i = phi ptr [ %call1.i, %for.body.i333.for.body.i333_crit_edge ], [ %call.i, %if.end264.for.body.i333_crit_edge ]
  %count.043.i = phi i32 [ %inc.i, %for.body.i333.for.body.i333_crit_edge ], [ 0, %if.end264.for.body.i333_crit_edge ]
  %inc.i = add i32 %count.043.i, 1
  %call1.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %rb.044.i) #12
  %tobool.not.i332 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i332, label %for.body.i333.for.end.i_crit_edge, label %for.body.i333.for.body.i333_crit_edge

for.body.i333.for.body.i333_crit_edge:            ; preds = %for.body.i333
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i333

for.body.i333.for.end.i_crit_edge:                ; preds = %for.body.i333
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i333.for.end.i_crit_edge, %if.end264.for.end.i_crit_edge
  %count.0.lcssa.i334 = phi i32 [ 0, %if.end264.for.end.i_crit_edge ], [ %inc.i, %for.body.i333.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i334, i32 %nr_nodes)
  %cmp.not.i = icmp eq i32 %count.0.lcssa.i334, %nr_nodes
  br i1 %cmp.not.i, label %for.end.i.check_postorder.exit_crit_edge, label %land.rhs.i

for.end.i.check_postorder.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_postorder.exit

land.rhs.i:                                       ; preds = %for.end.i
  %.b41.i = load i1, ptr @check_postorder.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.check_postorder.exit_crit_edge, label %if.then.i, !prof !109

land.rhs.i.check_postorder.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_postorder.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_postorder.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 188, i32 noundef 9, ptr noundef null) #12
  br label %check_postorder.exit

check_postorder.exit:                             ; preds = %if.then.i, %land.rhs.i.check_postorder.exit_crit_edge, %for.end.i.check_postorder.exit_crit_edge
  %call.i335 = tail call ptr @rb_first_postorder(ptr noundef nonnull @root) #12
  %tobool.not.i336 = icmp eq ptr %call.i335, null
  %add.ptr.i = getelementptr i8, ptr %call.i335, i32 -4
  %tobool2.not6467.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not64.i = or i1 %tobool.not.i336, %tobool2.not6467.i
  br i1 %tobool2.not64.i, label %check_postorder.exit.for.end.i341_crit_edge, label %check_postorder.exit.land.rhs.i338_crit_edge

check_postorder.exit.land.rhs.i338_crit_edge:     ; preds = %check_postorder.exit
  br label %land.rhs.i338

check_postorder.exit.for.end.i341_crit_edge:      ; preds = %check_postorder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i341

land.rhs.i338:                                    ; preds = %land.rhs.i338.land.rhs.i338_crit_edge, %check_postorder.exit.land.rhs.i338_crit_edge
  %22 = phi ptr [ %call4.i, %land.rhs.i338.land.rhs.i338_crit_edge ], [ %call.i335, %check_postorder.exit.land.rhs.i338_crit_edge ]
  %count.065.i = phi i32 [ %inc.i337, %land.rhs.i338.land.rhs.i338_crit_edge ], [ 0, %check_postorder.exit.land.rhs.i338_crit_edge ]
  %call4.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %22) #12
  %tobool6.not.i = icmp eq ptr %call4.i, null
  %add.ptr10.i = getelementptr i8, ptr %call4.i, i32 -4
  %inc.i337 = add i32 %count.065.i, 1
  %tobool2.not68.i = icmp eq ptr %add.ptr10.i, null
  %tobool2.not.i = or i1 %tobool6.not.i, %tobool2.not68.i
  br i1 %tobool2.not.i, label %land.rhs.i338.for.end.i341_crit_edge, label %land.rhs.i338.land.rhs.i338_crit_edge

land.rhs.i338.land.rhs.i338_crit_edge:            ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i338

land.rhs.i338.for.end.i341_crit_edge:             ; preds = %land.rhs.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i341

for.end.i341:                                     ; preds = %land.rhs.i338.for.end.i341_crit_edge, %check_postorder.exit.for.end.i341_crit_edge
  %count.0.lcssa.i339 = phi i32 [ 0, %check_postorder.exit.for.end.i341_crit_edge ], [ %inc.i337, %land.rhs.i338.for.end.i341_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i339, i32 %nr_nodes)
  %cmp.not.i340 = icmp eq i32 %count.0.lcssa.i339, %nr_nodes
  br i1 %cmp.not.i340, label %for.end.i341.check_postorder_foreach.exit_crit_edge, label %land.rhs18.i

for.end.i341.check_postorder_foreach.exit_crit_edge: ; preds = %for.end.i341
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_postorder_foreach.exit

land.rhs18.i:                                     ; preds = %for.end.i341
  %.b60.i = load i1, ptr @check_postorder_foreach.__already_done, align 1
  br i1 %.b60.i, label %land.rhs18.i.check_postorder_foreach.exit_crit_edge, label %if.then.i342, !prof !109

land.rhs18.i.check_postorder_foreach.exit_crit_edge: ; preds = %land.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_postorder_foreach.exit

if.then.i342:                                     ; preds = %land.rhs18.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_postorder_foreach.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef null) #12
  br label %check_postorder_foreach.exit

check_postorder_foreach.exit:                     ; preds = %if.then.i342, %land.rhs18.i.check_postorder_foreach.exit_crit_edge, %for.end.i341.check_postorder_foreach.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_augmented(ptr noundef %node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %val2 = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val2, align 4
  %4 = load ptr, ptr @root, align 4
  %tobool.not1 = icmp eq ptr %4, null
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %5 = phi ptr [ %12, %if.end.while.body_crit_edge ], [ %4, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %augmented = getelementptr i8, ptr %5, i32 16
  %6 = ptrtoint ptr %augmented to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %augmented, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp = icmp ult i32 %7, %3
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %augmented to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %augmented, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %10)
  %cmp5 = icmp ult i32 %1, %10
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  %new.1 = select i1 %cmp5, ptr %rb_left, ptr %rb_right
  %11 = ptrtoint ptr %new.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new.1, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le = ptrtoint ptr %5 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %rb_parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.1, %while.cond.while.end_crit_edge ], [ @root, %entry.while.end_crit_edge ]
  %augmented9 = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 3
  %13 = ptrtoint ptr %augmented9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %augmented9, align 4
  %rb10 = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1
  %14 = ptrtoint ptr %rb10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %rb_parent.0.lcssa, ptr %rb10, align 4
  %rb_right.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i, align 4
  %17 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rb10, ptr %new.0.lcssa, align 4
  tail call void @__rb_insert_augmented(ptr noundef %rb10, ptr noundef nonnull @root, ptr noundef nonnull @augment_callbacks_rotate) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @erase_augmented(ptr noundef readonly %node) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %rb = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1
  %rb_right.i.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.test_node, ptr %node, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_left.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else6.i.i

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rb, align 4
  %and.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.__rb_change_child.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.__rb_change_child.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_left.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %8, %rb
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %rb_left.i.i.i, ptr %rb_right.i.i.i
  br label %__rb_change_child.exit.i.i

__rb_change_child.exit.i.i:                       ; preds = %if.then.i.i.i, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge
  %rb_left.sink.i.i.i = phi ptr [ @root, %if.then.i.i.__rb_change_child.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then.i.i.i ]
  %9 = ptrtoint ptr %rb_left.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %1, ptr %rb_left.sink.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %5, ptr %1, align 4
  br label %if.end69.i.i

if.else.i.i:                                      ; preds = %__rb_change_child.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and4.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %spec.select.i.i = select i1 %tobool5.not.i.i, ptr null, ptr %6
  br label %if.end69.i.i

if.else6.i.i:                                     ; preds = %entry
  %tobool7.not.i.i = icmp eq ptr %1, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.else12.i.i

if.then8.i.i:                                     ; preds = %if.else6.i.i
  %11 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rb, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %and11.i.i = and i32 %12, -4
  %14 = inttoptr i32 %and11.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i2.i.i, label %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge, label %if.then.i7.i.i

if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit9.i.i

if.then.i7.i.i:                                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i3.i.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rb_left.i3.i.i, align 4
  %cmp.i4.i.i = icmp eq ptr %16, %rb
  %rb_right.i5.i.i = getelementptr inbounds %struct.rb_node, ptr %14, i32 0, i32 1
  %spec.select.i6.i.i = select i1 %cmp.i4.i.i, ptr %rb_left.i3.i.i, ptr %rb_right.i5.i.i
  br label %__rb_change_child.exit9.i.i

__rb_change_child.exit9.i.i:                      ; preds = %if.then.i7.i.i, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge
  %rb_left.sink.i8.i.i = phi ptr [ @root, %if.then8.i.i.__rb_change_child.exit9.i.i_crit_edge ], [ %spec.select.i6.i.i, %if.then.i7.i.i ]
  %17 = ptrtoint ptr %rb_left.sink.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %3, ptr %rb_left.sink.i8.i.i, align 4
  br label %if.end69.i.i

if.else12.i.i:                                    ; preds = %if.else6.i.i
  %rb_left13.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left13.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left13.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %19, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.else12.i.i.do.body.i.i_crit_edge

if.else12.i.i.do.body.i.i_crit_edge:              ; preds = %if.else12.i.i
  br label %do.body.i.i

if.then15.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right16.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_right16.i.i, align 4
  %augmented.i.i.i = getelementptr %struct.test_node, ptr %node, i32 0, i32 3
  %22 = ptrtoint ptr %augmented.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %augmented.i.i.i, align 4
  %augmented4.i.i.i = getelementptr i8, ptr %1, i32 16
  %24 = ptrtoint ptr %augmented4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %augmented4.i.i.i, align 4
  %.pre.i.i = ptrtoint ptr %1 to i32
  br label %if.end42.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.else12.i.i.do.body.i.i_crit_edge
  %tmp.0.i.i = phi ptr [ %26, %do.body.i.i.do.body.i.i_crit_edge ], [ %19, %if.else12.i.i.do.body.i.i_crit_edge ]
  %successor.0.i.i = phi ptr [ %tmp.0.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %1, %if.else12.i.i.do.body.i.i_crit_edge ]
  %rb_left18.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %rb_left18.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rb_left18.i.i, align 4
  %tobool19.not.i.i = icmp eq ptr %26, null
  br i1 %tobool19.not.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %rb_right20.i.i = getelementptr inbounds %struct.rb_node, ptr %tmp.0.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rb_right20.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rb_right20.i.i, align 4
  %rb_left26.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.0.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %rb_left26.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %rb_left26.i.i, align 4
  store volatile ptr %1, ptr %rb_right20.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %and.i.i.i = and i32 %31, 1
  %32 = ptrtoint ptr %tmp.0.i.i to i32
  %or.i.i.i = or i32 %and.i.i.i, %32
  store i32 %or.i.i.i, ptr %1, align 4
  %augmented.i10.i.i = getelementptr %struct.test_node, ptr %node, i32 0, i32 3
  %33 = ptrtoint ptr %augmented.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %augmented.i10.i.i, align 4
  %augmented4.i11.i.i = getelementptr i8, ptr %tmp.0.i.i, i32 16
  %35 = ptrtoint ptr %augmented4.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %augmented4.i11.i.i, align 4
  %cmp.not8.i.i.i = icmp eq ptr %successor.0.i.i, %tmp.0.i.i
  br i1 %cmp.not8.i.i.i, label %do.end.i.i.if.end42.i.i_crit_edge, label %do.end.i.i.while.body.i.i.i_crit_edge

do.end.i.i.while.body.i.i.i_crit_edge:            ; preds = %do.end.i.i
  br label %while.body.i.i.i

do.end.i.i.if.end42.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %do.end.i.i.while.body.i.i.i_crit_edge
  %rb.addr.09.i.i.i = phi ptr [ %53, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %successor.0.i.i, %do.end.i.i.while.body.i.i.i_crit_edge ]
  %val.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i, i32 12
  %36 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i.i.i.i, align 4
  %rb_left.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i, i32 8
  %38 = ptrtoint ptr %rb_left.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rb_left.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.if.end5.i.i.i.i_crit_edge, label %if.then.i.i.i.i

while.body.i.i.i.if.end5.i.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented.i.i.i.i = getelementptr i8, ptr %39, i32 16
  %40 = ptrtoint ptr %augmented.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %augmented.i.i.i.i, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %37) #12
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then.i.i.i.i, %while.body.i.i.i.if.end5.i.i.i.i_crit_edge
  %max.0.i.i.i.i = phi i32 [ %37, %while.body.i.i.i.if.end5.i.i.i.i_crit_edge ], [ %42, %if.then.i.i.i.i ]
  %rb_right.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i, i32 4
  %43 = ptrtoint ptr %rb_right.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rb_right.i.i.i.i, align 4
  %tobool7.not.i.i.i.i = icmp eq ptr %44, null
  br i1 %tobool7.not.i.i.i.i, label %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented14.i.i.i.i = getelementptr i8, ptr %44, i32 16
  %45 = ptrtoint ptr %augmented14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %augmented14.i.i.i.i, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 %max.0.i.i.i.i) #12
  br label %if.end19.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %if.then8.i.i.i.i, %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge
  %max.1.i.i.i.i = phi i32 [ %max.0.i.i.i.i, %if.end5.i.i.i.i.if.end19.i.i.i.i_crit_edge ], [ %47, %if.then8.i.i.i.i ]
  %augmented21.i.i.i.i = getelementptr i8, ptr %rb.addr.09.i.i.i, i32 16
  %48 = ptrtoint ptr %augmented21.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %augmented21.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %max.1.i.i.i.i)
  %cmp22.i.i.i.i = icmp eq i32 %49, %max.1.i.i.i.i
  br i1 %cmp22.i.i.i.i, label %if.end19.i.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i

if.end19.i.i.i.i.if.end42.i.i_crit_edge:          ; preds = %if.end19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

cleanup.i.i.i:                                    ; preds = %if.end19.i.i.i.i
  %50 = ptrtoint ptr %augmented21.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %max.1.i.i.i.i, ptr %augmented21.i.i.i.i, align 4
  %51 = ptrtoint ptr %rb.addr.09.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rb.addr.09.i.i.i, align 4
  %and.i12.i.i = and i32 %52, -4
  %53 = inttoptr i32 %and.i12.i.i to ptr
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i, %53
  br i1 %cmp.not.i.i.i, label %cleanup.i.i.i.if.end42.i.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

cleanup.i.i.i.if.end42.i.i_crit_edge:             ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %cleanup.i.i.i.if.end42.i.i_crit_edge, %if.end19.i.i.i.i.if.end42.i.i_crit_edge, %do.end.i.i.if.end42.i.i_crit_edge, %if.then15.i.i
  %.pre-phi.i.i = phi i32 [ %32, %do.end.i.i.if.end42.i.i_crit_edge ], [ %.pre.i.i, %if.then15.i.i ], [ %32, %if.end19.i.i.i.i.if.end42.i.i_crit_edge ], [ %32, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %parent.0.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %1, %if.then15.i.i ], [ %successor.0.i.i, %if.end19.i.i.i.i.if.end42.i.i_crit_edge ], [ %successor.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %successor.1.i.i = phi ptr [ %tmp.0.i.i, %do.end.i.i.if.end42.i.i_crit_edge ], [ %1, %if.then15.i.i ], [ %tmp.0.i.i, %if.end19.i.i.i.i.if.end42.i.i_crit_edge ], [ %tmp.0.i.i, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %child2.0.i.i = phi ptr [ %28, %do.end.i.i.if.end42.i.i_crit_edge ], [ %21, %if.then15.i.i ], [ %28, %if.end19.i.i.i.i.if.end42.i.i_crit_edge ], [ %28, %cleanup.i.i.i.if.end42.i.i_crit_edge ]
  %54 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rb_left.i.i, align 4
  %rb_left49.i.i = getelementptr inbounds %struct.rb_node, ptr %successor.1.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %rb_left49.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %rb_left49.i.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %55, align 4
  %and.i13.i.i = and i32 %58, 1
  %or.i14.i.i = or i32 %and.i13.i.i, %.pre-phi.i.i
  store i32 %or.i14.i.i, ptr %55, align 4
  %59 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rb, align 4
  %and55.i.i = and i32 %60, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool.not.i15.i.i = icmp eq i32 %and55.i.i, 0
  br i1 %tobool.not.i15.i.i, label %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge, label %if.then.i20.i.i

if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge: ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_change_child.exit22.i.i

if.then.i20.i.i:                                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = inttoptr i32 %and55.i.i to ptr
  %rb_left.i16.i.i = getelementptr inbounds %struct.rb_node, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %rb_left.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rb_left.i16.i.i, align 4
  %cmp.i17.i.i = icmp eq ptr %63, %rb
  %rb_right.i18.i.i = getelementptr inbounds %struct.rb_node, ptr %61, i32 0, i32 1
  %spec.select.i19.i.i = select i1 %cmp.i17.i.i, ptr %rb_left.i16.i.i, ptr %rb_right.i18.i.i
  br label %__rb_change_child.exit22.i.i

__rb_change_child.exit22.i.i:                     ; preds = %if.then.i20.i.i, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge
  %rb_left.sink.i21.i.i = phi ptr [ @root, %if.end42.i.i.__rb_change_child.exit22.i.i_crit_edge ], [ %spec.select.i19.i.i, %if.then.i20.i.i ]
  %64 = ptrtoint ptr %rb_left.sink.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %successor.1.i.i, ptr %rb_left.sink.i21.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %child2.0.i.i, null
  br i1 %tobool56.not.i.i, label %if.else58.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %parent.0.i.i to i32
  %or.i23.i.i = or i32 %65, 1
  %66 = ptrtoint ptr %child2.0.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or.i23.i.i, ptr %child2.0.i.i, align 4
  br label %if.end66.i.i

if.else58.i.i:                                    ; preds = %__rb_change_child.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %successor.1.i.i, align 4
  %and60.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  %spec.select1.i.i = select i1 %tobool61.not.i.i, ptr null, ptr %parent.0.i.i
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else58.i.i, %if.then57.i.i
  %rebalance.1.i.i = phi ptr [ null, %if.then57.i.i ], [ %spec.select1.i.i, %if.else58.i.i ]
  %69 = ptrtoint ptr %successor.1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %60, ptr %successor.1.i.i, align 4
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end66.i.i, %__rb_change_child.exit9.i.i, %if.else.i.i, %if.then2.i.i
  %tmp.1.i.i = phi ptr [ %successor.1.i.i, %if.end66.i.i ], [ %14, %__rb_change_child.exit9.i.i ], [ %6, %if.else.i.i ], [ %6, %if.then2.i.i ]
  %rebalance.2.i.i = phi ptr [ %rebalance.1.i.i, %if.end66.i.i ], [ null, %__rb_change_child.exit9.i.i ], [ %spec.select.i.i, %if.else.i.i ], [ null, %if.then2.i.i ]
  %cmp.not8.i24.i.i = icmp eq ptr %tmp.1.i.i, null
  br i1 %cmp.not8.i24.i.i, label %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge, label %if.end69.i.i.while.body.i29.i.i_crit_edge

if.end69.i.i.while.body.i29.i.i_crit_edge:        ; preds = %if.end69.i.i
  br label %while.body.i29.i.i

if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i

while.body.i29.i.i:                               ; preds = %cleanup.i44.i.i.while.body.i29.i.i_crit_edge, %if.end69.i.i.while.body.i29.i.i_crit_edge
  %rb.addr.09.i25.i.i = phi ptr [ %87, %cleanup.i44.i.i.while.body.i29.i.i_crit_edge ], [ %tmp.1.i.i, %if.end69.i.i.while.body.i29.i.i_crit_edge ]
  %val.i.i26.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i, i32 12
  %70 = ptrtoint ptr %val.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i.i26.i.i, align 4
  %rb_left.i.i27.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i, i32 8
  %72 = ptrtoint ptr %rb_left.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rb_left.i.i27.i.i, align 4
  %tobool.not.i.i28.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i28.i.i, label %while.body.i29.i.i.if.end5.i.i35.i.i_crit_edge, label %if.then.i.i31.i.i

while.body.i29.i.i.if.end5.i.i35.i.i_crit_edge:   ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i35.i.i

if.then.i.i31.i.i:                                ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented.i.i30.i.i = getelementptr i8, ptr %73, i32 16
  %74 = ptrtoint ptr %augmented.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %augmented.i.i30.i.i, align 4
  %76 = tail call i32 @llvm.umax.i32(i32 %75, i32 %71) #12
  br label %if.end5.i.i35.i.i

if.end5.i.i35.i.i:                                ; preds = %if.then.i.i31.i.i, %while.body.i29.i.i.if.end5.i.i35.i.i_crit_edge
  %max.0.i.i32.i.i = phi i32 [ %71, %while.body.i29.i.i.if.end5.i.i35.i.i_crit_edge ], [ %76, %if.then.i.i31.i.i ]
  %rb_right.i.i33.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i, i32 4
  %77 = ptrtoint ptr %rb_right.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rb_right.i.i33.i.i, align 4
  %tobool7.not.i.i34.i.i = icmp eq ptr %78, null
  br i1 %tobool7.not.i.i34.i.i, label %if.end5.i.i35.i.i.if.end19.i.i41.i.i_crit_edge, label %if.then8.i.i37.i.i

if.end5.i.i35.i.i.if.end19.i.i41.i.i_crit_edge:   ; preds = %if.end5.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i41.i.i

if.then8.i.i37.i.i:                               ; preds = %if.end5.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented14.i.i36.i.i = getelementptr i8, ptr %78, i32 16
  %79 = ptrtoint ptr %augmented14.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %augmented14.i.i36.i.i, align 4
  %81 = tail call i32 @llvm.umax.i32(i32 %80, i32 %max.0.i.i32.i.i) #12
  br label %if.end19.i.i41.i.i

if.end19.i.i41.i.i:                               ; preds = %if.then8.i.i37.i.i, %if.end5.i.i35.i.i.if.end19.i.i41.i.i_crit_edge
  %max.1.i.i38.i.i = phi i32 [ %max.0.i.i32.i.i, %if.end5.i.i35.i.i.if.end19.i.i41.i.i_crit_edge ], [ %81, %if.then8.i.i37.i.i ]
  %augmented21.i.i39.i.i = getelementptr i8, ptr %rb.addr.09.i25.i.i, i32 16
  %82 = ptrtoint ptr %augmented21.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %augmented21.i.i39.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %max.1.i.i38.i.i)
  %cmp22.i.i40.i.i = icmp eq i32 %83, %max.1.i.i38.i.i
  br i1 %cmp22.i.i40.i.i, label %if.end19.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i44.i.i

if.end19.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %if.end19.i.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i

cleanup.i44.i.i:                                  ; preds = %if.end19.i.i41.i.i
  %84 = ptrtoint ptr %augmented21.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %max.1.i.i38.i.i, ptr %augmented21.i.i39.i.i, align 4
  %85 = ptrtoint ptr %rb.addr.09.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rb.addr.09.i25.i.i, align 4
  %and.i42.i.i = and i32 %86, -4
  %87 = inttoptr i32 %and.i42.i.i to ptr
  %cmp.not.i43.i.i = icmp eq i32 %and.i42.i.i, 0
  br i1 %cmp.not.i43.i.i, label %cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge, label %cleanup.i44.i.i.while.body.i29.i.i_crit_edge

cleanup.i44.i.i.while.body.i29.i.i_crit_edge:     ; preds = %cleanup.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i29.i.i

cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge: ; preds = %cleanup.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rb_erase_augmented.exit.i

__rb_erase_augmented.exit.i:                      ; preds = %cleanup.i44.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end19.i.i41.i.i.__rb_erase_augmented.exit.i_crit_edge, %if.end69.i.i.__rb_erase_augmented.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %rebalance.2.i.i, null
  br i1 %tobool.not.i, label %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge, label %if.then.i

__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge: ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rb_erase_augmented.exit

if.then.i:                                        ; preds = %__rb_erase_augmented.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__rb_erase_color(ptr noundef nonnull %rebalance.2.i.i, ptr noundef nonnull @root, ptr noundef nonnull @augment_callbacks_rotate) #12
  br label %rb_erase_augmented.exit

rb_erase_augmented.exit:                          ; preds = %if.then.i, %__rb_erase_augmented.exit.i.rb_erase_augmented.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_augmented(i32 noundef %nr_nodes) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @check(i32 noundef %nr_nodes)
  %call = tail call ptr @rb_first(ptr noundef nonnull @root) #12
  %tobool.not84 = icmp eq ptr %call, null
  br i1 %tobool.not84, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %entry.for.body_crit_edge
  %rb.085 = phi ptr [ %call63, %if.end55.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %val = getelementptr i8, ptr %rb.085, i32 12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rb.085, i32 0, i32 2
  %2 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rb_left, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.if.end9_crit_edge, label %if.then

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %augmented = getelementptr i8, ptr %3, i32 16
  %4 = ptrtoint ptr %augmented to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %augmented, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %1, i32 %5)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %for.body.if.end9_crit_edge
  %max.0 = phi i32 [ %1, %for.body.if.end9_crit_edge ], [ %6, %if.then ]
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rb.085, i32 0, i32 1
  %7 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rb_right, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %if.then12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %augmented18 = getelementptr i8, ptr %8, i32 16
  %9 = ptrtoint ptr %augmented18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %augmented18, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %max.0, i32 %10)
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end9.if.end22_crit_edge
  %max.1 = phi i32 [ %max.0, %if.end9.if.end22_crit_edge ], [ %11, %if.then12 ]
  %augmented23 = getelementptr i8, ptr %rb.085, i32 16
  %12 = ptrtoint ptr %augmented23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %augmented23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %max.1)
  %cmp24.not = icmp eq i32 %13, %max.1
  br i1 %cmp24.not, label %if.end22.if.end55_crit_edge, label %land.rhs

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

land.rhs:                                         ; preds = %if.end22
  %.b82 = load i1, ptr @check_augmented.__already_done, align 1
  br i1 %.b82, label %land.rhs.if.end55_crit_edge, label %if.then32, !prof !109

land.rhs.if.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_augmented.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef 9, ptr noundef null) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then32, %land.rhs.if.end55_crit_edge, %if.end22.if.end55_crit_edge
  %call63 = tail call ptr @rb_next(ptr noundef nonnull %rb.085) #12
  %tobool.not = icmp eq ptr %call63, null
  br i1 %tobool.not, label %if.end55.for.end_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end55.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @augment_callbacks_rotate(ptr nocapture noundef %rb_old, ptr nocapture noundef writeonly %rb_new) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %augmented = getelementptr i8, ptr %rb_old, i32 16
  %0 = ptrtoint ptr %augmented to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %augmented, align 4
  %augmented4 = getelementptr i8, ptr %rb_new, i32 16
  %2 = ptrtoint ptr %augmented4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %augmented4, align 4
  %val.i = getelementptr i8, ptr %rb_old, i32 12
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %rb_left.i = getelementptr i8, ptr %rb_old, i32 8
  %5 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rb_left.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.if.end5.i_crit_edge, label %if.then.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %augmented.i = getelementptr i8, ptr %6, i32 16
  %7 = ptrtoint ptr %augmented.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %augmented.i, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %4) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %entry.if.end5.i_crit_edge
  %max.0.i = phi i32 [ %4, %entry.if.end5.i_crit_edge ], [ %9, %if.then.i ]
  %rb_right.i = getelementptr i8, ptr %rb_old, i32 4
  %10 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rb_right.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end5.i.augment_callbacks_compute_max.exit_crit_edge, label %if.then8.i

if.end5.i.augment_callbacks_compute_max.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %augment_callbacks_compute_max.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %augmented14.i = getelementptr i8, ptr %11, i32 16
  %12 = ptrtoint ptr %augmented14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %augmented14.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %max.0.i) #12
  br label %augment_callbacks_compute_max.exit

augment_callbacks_compute_max.exit:               ; preds = %if.then8.i, %if.end5.i.augment_callbacks_compute_max.exit_crit_edge
  %max.1.i = phi i32 [ %max.0.i, %if.end5.i.augment_callbacks_compute_max.exit_crit_edge ], [ %14, %if.then8.i ]
  %15 = ptrtoint ptr %augmented to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max.1.i, ptr %augmented, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__param_nnodes, !1, !"__param_nnodes", i1 false, i1 false}
!1 = !{!"../lib/rbtree_test.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_nnodestype188, !1, !"__UNIQUE_ID_nnodestype188", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nnodes189, !1, !"__UNIQUE_ID_nnodes189", i1 false, i1 false}
!4 = !{ptr @__param_perf_loops, !5, !"__param_perf_loops", i1 false, i1 false}
!5 = !{!"../lib/rbtree_test.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_perf_loopstype190, !5, !"__UNIQUE_ID_perf_loopstype190", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_perf_loops191, !5, !"__UNIQUE_ID_perf_loops191", i1 false, i1 false}
!8 = !{ptr @__param_check_loops, !9, !"__param_check_loops", i1 false, i1 false}
!9 = !{!"../lib/rbtree_test.c", i32 16, i32 1}
!10 = !{ptr @__UNIQUE_ID_check_loopstype192, !9, !"__UNIQUE_ID_check_loopstype192", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_check_loops193, !9, !"__UNIQUE_ID_check_loops193", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/rbtree_test.c", i32 400, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rbtree_test_exit._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rbtree_test_exit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_rbtree_test__194_403_rbtree_test_init6, !19, !"__initcall__kmod_rbtree_test__194_403_rbtree_test_init6", i1 false, i1 false}
!19 = !{!"../lib/rbtree_test.c", i32 403, i32 1}
!20 = !{ptr @__exitcall_rbtree_test_exit, !21, !"__exitcall_rbtree_test_exit", i1 false, i1 false}
!21 = !{!"../lib/rbtree_test.c", i32 404, i32 1}
!22 = !{ptr @__UNIQUE_ID_file195, !23, !"__UNIQUE_ID_file195", i1 false, i1 false}
!23 = !{!"../lib/rbtree_test.c", i32 406, i32 1}
!24 = !{ptr @__UNIQUE_ID_license196, !23, !"__UNIQUE_ID_license196", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author197, !26, !"__UNIQUE_ID_author197", i1 false, i1 false}
!26 = !{!"../lib/rbtree_test.c", i32 407, i32 1}
!27 = !{ptr @__UNIQUE_ID_description198, !28, !"__UNIQUE_ID_description198", i1 false, i1 false}
!28 = !{!"../lib/rbtree_test.c", i32 408, i32 1}
!29 = !{ptr @__param_str_nnodes, !1, !"__param_str_nnodes", i1 false, i1 false}
!30 = !{ptr @nnodes, !1, !"nnodes", i1 false, i1 false}
!31 = !{ptr @__param_str_perf_loops, !5, !"__param_str_perf_loops", i1 false, i1 false}
!32 = !{ptr @perf_loops, !5, !"perf_loops", i1 false, i1 false}
!33 = !{ptr @__param_str_check_loops, !9, !"__param_str_check_loops", i1 false, i1 false}
!34 = !{ptr @check_loops, !9, !"check_loops", i1 false, i1 false}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/rbtree_test.c", i32 252, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rbtree_test_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rbtree_test_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/rbtree_test.c", i32 270, i32 2}
!42 = !{ptr @rbtree_test_init._entry.5, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rbtree_test_init._entry_ptr.7, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/rbtree_test.c", i32 286, i32 2}
!46 = !{ptr @rbtree_test_init._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rbtree_test_init._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/rbtree_test.c", i32 303, i32 2}
!50 = !{ptr @rbtree_test_init._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rbtree_test_init._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/rbtree_test.c", i32 315, i32 2}
!54 = !{ptr @rbtree_test_init._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rbtree_test_init._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/rbtree_test.c", i32 316, i32 2}
!58 = !{ptr @rbtree_test_init._entry.17, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rbtree_test_init._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/rbtree_test.c", i32 327, i32 2}
!62 = !{ptr @rbtree_test_init._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rbtree_test_init._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/rbtree_test.c", i32 346, i32 2}
!66 = !{ptr @rbtree_test_init._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rbtree_test_init._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rbtree_test_init._entry.26, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../lib/rbtree_test.c", i32 363, i32 2}
!70 = !{ptr @rbtree_test_init._entry_ptr.27, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @rbtree_test_init._entry.28, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../lib/rbtree_test.c", i32 378, i32 2}
!73 = !{ptr @rbtree_test_init._entry_ptr.29, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @nodes, !75, !"nodes", i1 false, i1 false}
!75 = !{!"../lib/rbtree_test.c", i32 28, i32 26}
!76 = !{ptr @rnd, !77, !"rnd", i1 false, i1 false}
!77 = !{!"../lib/rbtree_test.c", i32 30, i32 25}
!78 = !{ptr @root, !79, !"root", i1 false, i1 false}
!79 = !{!"../lib/rbtree_test.c", i32 27, i32 30}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../lib/rbtree_test.c", i32 199, i32 3}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../lib/rbtree_test.c", i32 200, i32 3}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../lib/rbtree_test.c", i32 205, i32 4}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../lib/rbtree_test.c", i32 211, i32 2}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../lib/rbtree_test.c", i32 212, i32 2}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../lib/rbtree_test.c", i32 188, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../lib/rbtree_test.c", i32 178, i32 2}
!94 = distinct !{null, !95, !"augment_callbacks", i1 false, i1 false}
!95 = !{!"../lib/rbtree_test.c", i32 82, i32 1}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../lib/rbtree_test.c", i32 238, i32 3}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{!"auto-init"}
!109 = !{!"branch_weights", i32 2000, i32 1}
