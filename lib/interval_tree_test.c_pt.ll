; ModuleID = '/llk/IR_all_yes/lib/interval_tree_test.c_pt.bc'
source_filename = "../lib/interval_tree_test.c"
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
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@__param_str_nnodes = internal constant [26 x i8] c"interval_tree_test.nnodes\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nnodes = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_nnodes = internal constant %struct.kernel_param { ptr @__param_str_nnodes, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @nnodes } }, section "__param", align 4
@__UNIQUE_ID_nnodestype173 = internal constant [39 x i8] c"interval_tree_test.parmtype=nnodes:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nnodes174 = internal constant [68 x i8] c"interval_tree_test.parm=nnodes:Number of nodes in the interval tree\00", section ".modinfo", align 1
@__param_str_perf_loops = internal constant [30 x i8] c"interval_tree_test.perf_loops\00", align 1
@perf_loops = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_perf_loops = internal constant %struct.kernel_param { ptr @__param_str_perf_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @perf_loops } }, section "__param", align 4
@__UNIQUE_ID_perf_loopstype175 = internal constant [43 x i8] c"interval_tree_test.parmtype=perf_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_perf_loops176 = internal constant [75 x i8] c"interval_tree_test.parm=perf_loops:Number of iterations modifying the tree\00", section ".modinfo", align 1
@__param_str_nsearches = internal constant [29 x i8] c"interval_tree_test.nsearches\00", align 1
@nsearches = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_nsearches = internal constant %struct.kernel_param { ptr @__param_str_nsearches, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @nsearches } }, section "__param", align 4
@__UNIQUE_ID_nsearchestype177 = internal constant [42 x i8] c"interval_tree_test.parmtype=nsearches:int\00", section ".modinfo", align 1
@__UNIQUE_ID_nsearches178 = internal constant [74 x i8] c"interval_tree_test.parm=nsearches:Number of searches to the interval tree\00", section ".modinfo", align 1
@__param_str_search_loops = internal constant [32 x i8] c"interval_tree_test.search_loops\00", align 1
@search_loops = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_search_loops = internal constant %struct.kernel_param { ptr @__param_str_search_loops, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @search_loops } }, section "__param", align 4
@__UNIQUE_ID_search_loopstype179 = internal constant [45 x i8] c"interval_tree_test.parmtype=search_loops:int\00", section ".modinfo", align 1
@__UNIQUE_ID_search_loops180 = internal constant [77 x i8] c"interval_tree_test.parm=search_loops:Number of iterations searching the tree\00", section ".modinfo", align 1
@__param_str_search_all = internal constant [30 x i8] c"interval_tree_test.search_all\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@search_all = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_search_all = internal constant %struct.kernel_param { ptr @__param_str_search_all, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @search_all } }, section "__param", align 4
@__UNIQUE_ID_search_alltype181 = internal constant [44 x i8] c"interval_tree_test.parmtype=search_all:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_search_all182 = internal constant [79 x i8] c"interval_tree_test.parm=search_all:Searches will iterate all nodes in the tree\00", section ".modinfo", align 1
@__param_str_max_endpoint = internal constant [32 x i8] c"interval_tree_test.max_endpoint\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_endpoint = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_max_endpoint = internal constant %struct.kernel_param { ptr @__param_str_max_endpoint, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @max_endpoint } }, section "__param", align 4
@__UNIQUE_ID_max_endpointtype183 = internal constant [46 x i8] c"interval_tree_test.parmtype=max_endpoint:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_endpoint184 = internal constant [79 x i8] c"interval_tree_test.parm=max_endpoint:Largest value for the interval's endpoint\00", section ".modinfo", align 1
@__initcall__kmod_interval_tree_test__185_134_interval_tree_test_init6 = internal global ptr @interval_tree_test_init, section ".initcall6.init", align 4
@__exitcall_interval_tree_test_exit = internal global ptr @interval_tree_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [47 x i8] c"interval_tree_test.file=lib/interval_tree_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [31 x i8] c"interval_tree_test.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [44 x i8] c"interval_tree_test.author=Michel Lespinasse\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [50 x i8] c"interval_tree_test.description=Interval Tree test\00", section ".modinfo", align 1
@nodes = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@queries = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@interval_tree_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\011interval tree insert/remove\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interval_tree_test_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/interval_tree_test.c\00", [39 x i8] zeroinitializer }, align 32
@interval_tree_test_init._entry_ptr = internal global ptr @interval_tree_test_init._entry, section ".printk_index", align 4
@rnd = internal global { %struct.rnd_state, [16 x i8] } zeroinitializer, align 32
@root = internal global { %struct.rb_root_cached, [24 x i8] } zeroinitializer, align 32
@interval_tree_test_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" -> %llu cycles\0A\00", [47 x i8] zeroinitializer }, align 32
@interval_tree_test_init._entry_ptr.5 = internal global ptr @interval_tree_test_init._entry.3, section ".printk_index", align 4
@interval_tree_test_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\011interval tree search\00", [41 x i8] zeroinitializer }, align 32
@interval_tree_test_init._entry_ptr.8 = internal global ptr @interval_tree_test_init._entry.6, section ".printk_index", align 4
@interval_tree_test_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" -> %llu cycles (%lu results)\0A\00", [33 x i8] zeroinitializer }, align 32
@interval_tree_test_init._entry_ptr.11 = internal global ptr @interval_tree_test_init._entry.9, section ".printk_index", align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@interval_tree_test_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\011test exit\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interval_tree_test_exit\00", [40 x i8] zeroinitializer }, align 32
@interval_tree_test_exit._entry_ptr = internal global ptr @interval_tree_test_exit._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"nnodes\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 14, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"perf_loops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 15, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"nsearches\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 17, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"search_loops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 18, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"search_all\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 19, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"max_endpoint\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 21, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 24, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"queries\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 25, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 79, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [4 x i8] c"rnd\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 27, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 23, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 99, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 120, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [28 x i8] c"../lib/interval_tree_test.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 131, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__UNIQUE_ID_max_endpoint184, ptr @__UNIQUE_ID_max_endpointtype183, ptr @__UNIQUE_ID_nnodes174, ptr @__UNIQUE_ID_nnodestype173, ptr @__UNIQUE_ID_nsearches178, ptr @__UNIQUE_ID_nsearchestype177, ptr @__UNIQUE_ID_perf_loops176, ptr @__UNIQUE_ID_perf_loopstype175, ptr @__UNIQUE_ID_search_all182, ptr @__UNIQUE_ID_search_alltype181, ptr @__UNIQUE_ID_search_loops180, ptr @__UNIQUE_ID_search_loopstype179, ptr @__exitcall_interval_tree_test_exit, ptr @__initcall__kmod_interval_tree_test__185_134_interval_tree_test_init6, ptr @__param_max_endpoint, ptr @__param_nnodes, ptr @__param_nsearches, ptr @__param_perf_loops, ptr @__param_search_all, ptr @__param_search_loops, ptr @interval_tree_test_exit._entry, ptr @interval_tree_test_exit._entry_ptr, ptr @interval_tree_test_init._entry, ptr @interval_tree_test_init._entry.3, ptr @interval_tree_test_init._entry.6, ptr @interval_tree_test_init._entry.9, ptr @interval_tree_test_init._entry_ptr, ptr @interval_tree_test_init._entry_ptr.11, ptr @interval_tree_test_init._entry_ptr.5, ptr @interval_tree_test_init._entry_ptr.8, ptr @nnodes, ptr @perf_loops, ptr @nsearches, ptr @search_loops, ptr @search_all, ptr @max_endpoint, ptr @nodes, ptr @queries, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rnd, ptr @root, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nnodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsearches to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_loops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search_all to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_tree_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_tree_test_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_tree_test_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_tree_test_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interval_tree_test_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_tree_test_init() #0 align 64 {
entry:
  %c = alloca i32, align 4
  %c22 = alloca i32, align 4
  %c51 = alloca i32, align 4
  %c87 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr @nnodes, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 24) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !87

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @nodes, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #10
  store ptr %call8.i, ptr @nodes, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %4 = load i32, ptr @nsearches, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kmalloc_array.exit167.thread, label %if.end7.i165, !prof !87

kmalloc_array.exit167.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @queries, align 4
  br label %if.then3

if.end7.i165:                                     ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i164 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #10
  store ptr %call8.i164, ptr @queries, align 4
  %tobool2.not = icmp eq ptr %call8.i164, null
  br i1 %tobool2.not, label %if.end7.i165.if.then3_crit_edge, label %do.end

if.end7.i165.if.then3_crit_edge:                  ; preds = %if.end7.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.end7.i165.if.then3_crit_edge, %kmalloc_array.exit167.thread
  %8 = load ptr, ptr @nodes, align 4
  tail call void @kfree(ptr noundef %8) #9
  br label %cleanup

do.end:                                           ; preds = %if.end7.i165
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  store i32 1082932233, ptr @rnd, align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 1), align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 2), align 4
  store i32 1082932233, ptr getelementptr inbounds (%struct.rnd_state, ptr @rnd, i32 0, i32 3), align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, ptrtoint (ptr @net_rand_noise to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %xor.i.i = xor i32 %17, ptrtoint (ptr @rnd to i32)
  %add8.i.i = add i32 %xor.i.i, 1082932233
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i.i, i32 %add8.i.i, i32 16) #9
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i.i, ptr %15, align 4
  %19 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp22.i = icmp sgt i32 %19, 0
  br i1 %cmp22.i, label %do.end.for.body.i_crit_edge, label %do.end.for.cond5.preheader.i_crit_edge

do.end.for.cond5.preheader.i_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.body.i.for.cond5.preheader.i_crit_edge, %do.end.for.cond5.preheader.i_crit_edge
  %20 = load i32, ptr @nsearches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp624.i = icmp sgt i32 %20, 0
  br i1 %cmp624.i, label %for.cond5.preheader.i.for.body7.i_crit_edge, label %for.cond5.preheader.i.init.exit_crit_edge

for.cond5.preheader.i.init.exit_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init.exit

for.cond5.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %call.i = tail call i32 @prandom_u32_state(ptr noundef nonnull @rnd) #9
  %shr.i = lshr i32 %call.i, 4
  %21 = load i32, ptr @max_endpoint, align 4
  %rem.i = urem i32 %shr.i, %21
  %call1.i = tail call i32 @prandom_u32_state(ptr noundef nonnull @rnd) #9
  %shr2.i = lshr i32 %call1.i, 4
  %rem3.i = urem i32 %shr2.i, %rem.i
  %22 = load ptr, ptr @nodes, align 4
  %start.i = getelementptr %struct.interval_tree_node, ptr %22, i32 %i.023.i, i32 1
  %23 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rem3.i, ptr %start.i, align 4
  %last.i = getelementptr %struct.interval_tree_node, ptr %22, i32 %i.023.i, i32 2
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.i, ptr %last.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %25 = load i32, ptr @nnodes, align 4
  %cmp.i = icmp slt i32 %inc.i, %25
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond5.preheader.i_crit_edge

for.body.i.for.cond5.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond5.preheader.i.for.body7.i_crit_edge
  %i.125.i = phi i32 [ %inc13.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond5.preheader.i.for.body7.i_crit_edge ]
  %call8.i168 = tail call i32 @prandom_u32_state(ptr noundef nonnull @rnd) #9
  %shr9.i = lshr i32 %call8.i168, 4
  %26 = load i32, ptr @max_endpoint, align 4
  %rem10.i = urem i32 %shr9.i, %26
  %27 = load ptr, ptr @queries, align 4
  %arrayidx11.i = getelementptr i32, ptr %27, i32 %i.125.i
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem10.i, ptr %arrayidx11.i, align 4
  %inc13.i = add nuw nsw i32 %i.125.i, 1
  %29 = load i32, ptr @nsearches, align 4
  %cmp6.i = icmp slt i32 %inc13.i, %29
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.init.exit_crit_edge

for.body7.i.init.exit_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init.exit

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

init.exit:                                        ; preds = %for.body7.i.init.exit_crit_edge, %for.cond5.preheader.i.init.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #9
  %30 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %c, align 4, !annotation !88
  %call7 = call i32 @read_current_timer(ptr noundef nonnull %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cond.false, label %init.exit.cond.end_crit_edge

init.exit.cond.end_crit_edge:                     ; preds = %init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %init.exit.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.false ], [ 0, %init.exit.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #9
  %33 = load i32, ptr @perf_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp422 = icmp sgt i32 %33, 0
  br i1 %cmp422, label %cond.end.for.cond9.preheader_crit_edge, label %cond.end.for.end21_crit_edge

cond.end.for.end21_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

cond.end.for.cond9.preheader_crit_edge:           ; preds = %cond.end
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc19.for.cond9.preheader_crit_edge, %cond.end.for.cond9.preheader_crit_edge
  %i.0423 = phi i32 [ %inc20, %for.inc19.for.cond9.preheader_crit_edge ], [ 0, %cond.end.for.cond9.preheader_crit_edge ]
  %34 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp10418 = icmp sgt i32 %34, 0
  br i1 %cmp10418, label %for.cond9.preheader.for.body11_crit_edge, label %for.cond9.preheader.for.inc19_crit_edge

for.cond9.preheader.for.inc19_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond12.preheader:                             ; preds = %for.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp13420 = icmp sgt i32 %36, 0
  br i1 %cmp13420, label %for.cond12.preheader.for.body14_crit_edge, label %for.cond12.preheader.for.inc19_crit_edge

for.cond12.preheader.for.inc19_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

for.cond12.preheader.for.body14_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body14

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %j.0419 = phi i32 [ %inc, %for.body11.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %35 = load ptr, ptr @nodes, align 4
  %add.ptr = getelementptr %struct.interval_tree_node, ptr %35, i32 %j.0419
  call void @interval_tree_insert(ptr noundef %add.ptr, ptr noundef nonnull @root) #9
  %inc = add nuw nsw i32 %j.0419, 1
  %36 = load i32, ptr @nnodes, align 4
  %cmp10 = icmp slt i32 %inc, %36
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.cond12.preheader

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond12.preheader.for.body14_crit_edge
  %j.1421 = phi i32 [ %inc17, %for.body14.for.body14_crit_edge ], [ 0, %for.cond12.preheader.for.body14_crit_edge ]
  %37 = load ptr, ptr @nodes, align 4
  %add.ptr15 = getelementptr %struct.interval_tree_node, ptr %37, i32 %j.1421
  call void @interval_tree_remove(ptr noundef %add.ptr15, ptr noundef nonnull @root) #9
  %inc17 = add nuw nsw i32 %j.1421, 1
  %38 = load i32, ptr @nnodes, align 4
  %cmp13 = icmp slt i32 %inc17, %38
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.inc19_crit_edge

for.body14.for.inc19_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc19:                                        ; preds = %for.body14.for.inc19_crit_edge, %for.cond12.preheader.for.inc19_crit_edge, %for.cond9.preheader.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %i.0423, 1
  %39 = load i32, ptr @perf_loops, align 4
  %cmp = icmp slt i32 %inc20, %39
  br i1 %cmp, label %for.inc19.for.cond9.preheader_crit_edge, label %for.inc19.for.end21_crit_edge

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

for.inc19.for.cond9.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond9.preheader

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %cond.end.for.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c22) #9
  %40 = ptrtoint ptr %c22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %c22, align 4, !annotation !88
  %call24 = call i32 @read_current_timer(ptr noundef nonnull %c22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %cond.false27, label %for.end21.cond.end28_crit_edge

for.end21.cond.end28_crit_edge:                   ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false27:                                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %c22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c22, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %for.end21.cond.end28_crit_edge
  %cond29 = phi i32 [ %42, %cond.false27 ], [ 0, %for.end21.cond.end28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c22) #9
  %sub = sub i32 %cond29, %cond
  %43 = load i32, ptr @perf_loops, align 4
  %div172.i.i = udiv i32 %sub, %43
  %conv173.i.i = zext i32 %div172.i.i to i64
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %conv173.i.i) #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  %44 = load i32, ptr @nnodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp44424 = icmp sgt i32 %44, 0
  br i1 %cmp44424, label %cond.end28.for.body46_crit_edge, label %cond.end28.for.end50_crit_edge

cond.end28.for.end50_crit_edge:                   ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

cond.end28.for.body46_crit_edge:                  ; preds = %cond.end28
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %cond.end28.for.body46_crit_edge
  %j.2425 = phi i32 [ %inc49, %for.body46.for.body46_crit_edge ], [ 0, %cond.end28.for.body46_crit_edge ]
  %45 = load ptr, ptr @nodes, align 4
  %add.ptr47 = getelementptr %struct.interval_tree_node, ptr %45, i32 %j.2425
  call void @interval_tree_insert(ptr noundef %add.ptr47, ptr noundef nonnull @root) #9
  %inc49 = add nuw nsw i32 %j.2425, 1
  %46 = load i32, ptr @nnodes, align 4
  %cmp44 = icmp slt i32 %inc49, %46
  br i1 %cmp44, label %for.body46.for.body46_crit_edge, label %for.body46.for.end50_crit_edge

for.body46.for.end50_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.end50:                                        ; preds = %for.body46.for.end50_crit_edge, %cond.end28.for.end50_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c51) #9
  %47 = ptrtoint ptr %c51 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %c51, align 4, !annotation !88
  %call53 = call i32 @read_current_timer(ptr noundef nonnull %c51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %cond.false56, label %for.end50.cond.end57_crit_edge

for.end50.cond.end57_crit_edge:                   ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end57

cond.false56:                                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %c51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %c51, align 4
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %for.end50.cond.end57_crit_edge
  %cond58 = phi i32 [ %49, %cond.false56 ], [ 0, %for.end50.cond.end57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c51) #9
  %50 = load i32, ptr @search_loops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp60429 = icmp sgt i32 %50, 0
  br i1 %cmp60429, label %cond.end57.for.cond63.preheader_crit_edge, label %cond.end57.for.end86_crit_edge

cond.end57.for.end86_crit_edge:                   ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end86

cond.end57.for.cond63.preheader_crit_edge:        ; preds = %cond.end57
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.inc84.for.cond63.preheader_crit_edge, %cond.end57.for.cond63.preheader_crit_edge
  %i.1431 = phi i32 [ %inc85, %for.inc84.for.cond63.preheader_crit_edge ], [ 0, %cond.end57.for.cond63.preheader_crit_edge ]
  %results.0430 = phi i32 [ %results.1.lcssa, %for.inc84.for.cond63.preheader_crit_edge ], [ 0, %cond.end57.for.cond63.preheader_crit_edge ]
  %51 = load i32, ptr @nsearches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp64426 = icmp sgt i32 %51, 0
  br i1 %cmp64426, label %for.cond63.preheader.for.body66_crit_edge, label %for.cond63.preheader.for.inc84_crit_edge

for.cond63.preheader.for.inc84_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc84

for.cond63.preheader.for.body66_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body66

for.body66:                                       ; preds = %search.exit.for.body66_crit_edge, %for.cond63.preheader.for.body66_crit_edge
  %j.3428 = phi i32 [ %inc82, %search.exit.for.body66_crit_edge ], [ 0, %for.cond63.preheader.for.body66_crit_edge ]
  %results.1427 = phi i32 [ %add, %search.exit.for.body66_crit_edge ], [ %results.0430, %for.cond63.preheader.for.body66_crit_edge ]
  %52 = load i8, ptr @search_all, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool67.not = icmp eq i8 %52, 0
  br i1 %tobool67.not, label %cond.false76, label %for.body66.cond.end78_crit_edge

for.body66.cond.end78_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end78

cond.false76:                                     ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #8
  %53 = load ptr, ptr @queries, align 4
  %arrayidx = getelementptr i32, ptr %53, i32 %j.3428
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false76, %for.body66.cond.end78_crit_edge
  %cond72406 = phi i32 [ %55, %cond.false76 ], [ 0, %for.body66.cond.end78_crit_edge ]
  %cond79.in = phi ptr [ %arrayidx, %cond.false76 ], [ @max_endpoint, %for.body66.cond.end78_crit_edge ]
  %56 = ptrtoint ptr %cond79.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %cond79 = load i32, ptr %cond79.in, align 4
  %call.i173 = call ptr @interval_tree_iter_first(ptr noundef nonnull @root, i32 noundef %cond72406, i32 noundef %cond79) #9
  %tobool.not1.i = icmp eq ptr %call.i173, null
  br i1 %tobool.not1.i, label %cond.end78.search.exit_crit_edge, label %cond.end78.for.body.i176_crit_edge

cond.end78.for.body.i176_crit_edge:               ; preds = %cond.end78
  br label %for.body.i176

cond.end78.search.exit_crit_edge:                 ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %search.exit

for.body.i176:                                    ; preds = %for.body.i176.for.body.i176_crit_edge, %cond.end78.for.body.i176_crit_edge
  %results.03.i = phi i32 [ %inc.i174, %for.body.i176.for.body.i176_crit_edge ], [ 0, %cond.end78.for.body.i176_crit_edge ]
  %node.02.i = phi ptr [ %call1.i175, %for.body.i176.for.body.i176_crit_edge ], [ %call.i173, %cond.end78.for.body.i176_crit_edge ]
  %inc.i174 = add i32 %results.03.i, 1
  %call1.i175 = call ptr @interval_tree_iter_next(ptr noundef nonnull %node.02.i, i32 noundef %cond72406, i32 noundef %cond79) #9
  %tobool.not.i = icmp eq ptr %call1.i175, null
  br i1 %tobool.not.i, label %for.body.i176.search.exit_crit_edge, label %for.body.i176.for.body.i176_crit_edge

for.body.i176.for.body.i176_crit_edge:            ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i176

for.body.i176.search.exit_crit_edge:              ; preds = %for.body.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %search.exit

search.exit:                                      ; preds = %for.body.i176.search.exit_crit_edge, %cond.end78.search.exit_crit_edge
  %results.0.lcssa.i = phi i32 [ 0, %cond.end78.search.exit_crit_edge ], [ %inc.i174, %for.body.i176.search.exit_crit_edge ]
  %add = add i32 %results.0.lcssa.i, %results.1427
  %inc82 = add nuw nsw i32 %j.3428, 1
  %57 = load i32, ptr @nsearches, align 4
  %cmp64 = icmp slt i32 %inc82, %57
  br i1 %cmp64, label %search.exit.for.body66_crit_edge, label %search.exit.for.inc84_crit_edge

search.exit.for.inc84_crit_edge:                  ; preds = %search.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc84

search.exit.for.body66_crit_edge:                 ; preds = %search.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body66

for.inc84:                                        ; preds = %search.exit.for.inc84_crit_edge, %for.cond63.preheader.for.inc84_crit_edge
  %results.1.lcssa = phi i32 [ %results.0430, %for.cond63.preheader.for.inc84_crit_edge ], [ %add, %search.exit.for.inc84_crit_edge ]
  %inc85 = add nuw nsw i32 %i.1431, 1
  %58 = load i32, ptr @search_loops, align 4
  %cmp60 = icmp slt i32 %inc85, %58
  br i1 %cmp60, label %for.inc84.for.cond63.preheader_crit_edge, label %for.inc84.for.end86_crit_edge

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end86

for.inc84.for.cond63.preheader_crit_edge:         ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond63.preheader

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %cond.end57.for.end86_crit_edge
  %results.0.lcssa = phi i32 [ 0, %cond.end57.for.end86_crit_edge ], [ %results.1.lcssa, %for.inc84.for.end86_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c87) #9
  %59 = ptrtoint ptr %c87 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %c87, align 4, !annotation !88
  %call89 = call i32 @read_current_timer(ptr noundef nonnull %c87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %cond.false92, label %for.end86.cond.end93_crit_edge

for.end86.cond.end93_crit_edge:                   ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end93

cond.false92:                                     ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %c87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c87, align 4
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %for.end86.cond.end93_crit_edge
  %cond94 = phi i32 [ %61, %cond.false92 ], [ 0, %for.end86.cond.end93_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c87) #9
  %62 = load i32, ptr @search_loops, align 4
  %div172.i.i391 = udiv i32 %results.0.lcssa, %62
  %sub95 = sub i32 %cond94, %cond58
  %div172.i.i282 = udiv i32 %sub95, %62
  %conv173.i.i283 = zext i32 %div172.i.i282 to i64
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %conv173.i.i283, i32 noundef %div172.i.i391) #11
  %63 = load ptr, ptr @queries, align 4
  call void @kfree(ptr noundef %63) #9
  %64 = load ptr, ptr @nodes, align 4
  call void @kfree(ptr noundef %64) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end93, %if.then3, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ -11, %cond.end93 ], [ -12, %if.then3 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @interval_tree_test_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__param_nnodes, !1, !"__param_nnodes", i1 false, i1 false}
!1 = !{!"../lib/interval_tree_test.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_nnodestype173, !1, !"__UNIQUE_ID_nnodestype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nnodes174, !1, !"__UNIQUE_ID_nnodes174", i1 false, i1 false}
!4 = !{ptr @__param_perf_loops, !5, !"__param_perf_loops", i1 false, i1 false}
!5 = !{!"../lib/interval_tree_test.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_perf_loopstype175, !5, !"__UNIQUE_ID_perf_loopstype175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_perf_loops176, !5, !"__UNIQUE_ID_perf_loops176", i1 false, i1 false}
!8 = !{ptr @__param_nsearches, !9, !"__param_nsearches", i1 false, i1 false}
!9 = !{!"../lib/interval_tree_test.c", i32 17, i32 1}
!10 = !{ptr @__UNIQUE_ID_nsearchestype177, !9, !"__UNIQUE_ID_nsearchestype177", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_nsearches178, !9, !"__UNIQUE_ID_nsearches178", i1 false, i1 false}
!12 = !{ptr @__param_search_loops, !13, !"__param_search_loops", i1 false, i1 false}
!13 = !{!"../lib/interval_tree_test.c", i32 18, i32 1}
!14 = !{ptr @__UNIQUE_ID_search_loopstype179, !13, !"__UNIQUE_ID_search_loopstype179", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_search_loops180, !13, !"__UNIQUE_ID_search_loops180", i1 false, i1 false}
!16 = !{ptr @__param_search_all, !17, !"__param_search_all", i1 false, i1 false}
!17 = !{!"../lib/interval_tree_test.c", i32 19, i32 1}
!18 = !{ptr @__UNIQUE_ID_search_alltype181, !17, !"__UNIQUE_ID_search_alltype181", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_search_all182, !17, !"__UNIQUE_ID_search_all182", i1 false, i1 false}
!20 = !{ptr @__param_max_endpoint, !21, !"__param_max_endpoint", i1 false, i1 false}
!21 = !{!"../lib/interval_tree_test.c", i32 21, i32 1}
!22 = !{ptr @__UNIQUE_ID_max_endpointtype183, !21, !"__UNIQUE_ID_max_endpointtype183", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_max_endpoint184, !21, !"__UNIQUE_ID_max_endpoint184", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_interval_tree_test__185_134_interval_tree_test_init6, !25, !"__initcall__kmod_interval_tree_test__185_134_interval_tree_test_init6", i1 false, i1 false}
!25 = !{!"../lib/interval_tree_test.c", i32 134, i32 1}
!26 = !{ptr @__exitcall_interval_tree_test_exit, !27, !"__exitcall_interval_tree_test_exit", i1 false, i1 false}
!27 = !{!"../lib/interval_tree_test.c", i32 135, i32 1}
!28 = !{ptr @__UNIQUE_ID_file186, !29, !"__UNIQUE_ID_file186", i1 false, i1 false}
!29 = !{!"../lib/interval_tree_test.c", i32 137, i32 1}
!30 = !{ptr @__UNIQUE_ID_license187, !29, !"__UNIQUE_ID_license187", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_author188, !32, !"__UNIQUE_ID_author188", i1 false, i1 false}
!32 = !{!"../lib/interval_tree_test.c", i32 138, i32 1}
!33 = !{ptr @__UNIQUE_ID_description189, !34, !"__UNIQUE_ID_description189", i1 false, i1 false}
!34 = !{!"../lib/interval_tree_test.c", i32 139, i32 1}
!35 = !{ptr @__param_str_nnodes, !1, !"__param_str_nnodes", i1 false, i1 false}
!36 = !{ptr @nnodes, !1, !"nnodes", i1 false, i1 false}
!37 = !{ptr @__param_str_perf_loops, !5, !"__param_str_perf_loops", i1 false, i1 false}
!38 = !{ptr @perf_loops, !5, !"perf_loops", i1 false, i1 false}
!39 = !{ptr @__param_str_nsearches, !9, !"__param_str_nsearches", i1 false, i1 false}
!40 = !{ptr @nsearches, !9, !"nsearches", i1 false, i1 false}
!41 = !{ptr @__param_str_search_loops, !13, !"__param_str_search_loops", i1 false, i1 false}
!42 = !{ptr @search_loops, !13, !"search_loops", i1 false, i1 false}
!43 = !{ptr @__param_str_search_all, !17, !"__param_str_search_all", i1 false, i1 false}
!44 = !{ptr @search_all, !17, !"search_all", i1 false, i1 false}
!45 = !{ptr @__param_str_max_endpoint, !21, !"__param_str_max_endpoint", i1 false, i1 false}
!46 = !{ptr @max_endpoint, !21, !"max_endpoint", i1 false, i1 false}
!47 = !{ptr @.str, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../lib/interval_tree_test.c", i32 79, i32 2}
!49 = !{ptr @.str.1, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @interval_tree_test_init._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @interval_tree_test_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.4, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/interval_tree_test.c", i32 97, i32 2}
!55 = !{ptr @interval_tree_test_init._entry.3, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @interval_tree_test_init._entry_ptr.5, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/interval_tree_test.c", i32 99, i32 2}
!59 = !{ptr @interval_tree_test_init._entry.6, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @interval_tree_test_init._entry_ptr.8, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/interval_tree_test.c", i32 120, i32 2}
!63 = !{ptr @interval_tree_test_init._entry.9, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @interval_tree_test_init._entry_ptr.11, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @nodes, !66, !"nodes", i1 false, i1 false}
!66 = !{!"../lib/interval_tree_test.c", i32 24, i32 35}
!67 = !{ptr @queries, !68, !"queries", i1 false, i1 false}
!68 = !{!"../lib/interval_tree_test.c", i32 25, i32 13}
!69 = !{ptr @rnd, !70, !"rnd", i1 false, i1 false}
!70 = !{!"../lib/interval_tree_test.c", i32 27, i32 25}
!71 = !{ptr @root, !72, !"root", i1 false, i1 false}
!72 = !{!"../lib/interval_tree_test.c", i32 23, i32 30}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/interval_tree_test.c", i32 131, i32 2}
!75 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @interval_tree_test_exit._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @interval_tree_test_exit._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{!"auto-init"}
!89 = !{i8 0, i8 2}
