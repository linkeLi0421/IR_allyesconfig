; ModuleID = '/llk/IR_all_yes/lib/reed_solomon/test_rslib.c_pt.bc'
source_filename = "../lib/reed_solomon/test_rslib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.etab = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pad = type { i32, i32 }
%struct.rs_codec = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wspace = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_v = internal constant [13 x i8] c"test_rslib.v\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@v = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_v = internal constant %struct.kernel_param { ptr @__param_str_v, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @v } }, section "__param", align 4
@__UNIQUE_ID_vtype173 = internal constant [26 x i8] c"test_rslib.parmtype=v:int\00", section ".modinfo", align 1
@__UNIQUE_ID_v174 = internal constant [34 x i8] c"test_rslib.parm=v:Verbosity level\00", section ".modinfo", align 1
@__param_str_ewsc = internal constant [16 x i8] c"test_rslib.ewsc\00", align 1
@ewsc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ewsc = internal constant %struct.kernel_param { ptr @__param_str_ewsc, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @ewsc } }, section "__param", align 4
@__UNIQUE_ID_ewsctype175 = internal constant [29 x i8] c"test_rslib.parmtype=ewsc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ewsc176 = internal constant [56 x i8] c"test_rslib.parm=ewsc:Erasures without symbol corruption\00", section ".modinfo", align 1
@__param_str_bc = internal constant [14 x i8] c"test_rslib.bc\00", align 1
@bc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_bc = internal constant %struct.kernel_param { ptr @__param_str_bc, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @bc } }, section "__param", align 4
@__UNIQUE_ID_bctype177 = internal constant [27 x i8] c"test_rslib.parmtype=bc:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bc178 = internal constant [79 x i8] c"test_rslib.parm=bc:Test for correct behaviour beyond error correction capacity\00", section ".modinfo", align 1
@__initcall__kmod_test_rslib__179_513_test_rslib_init6 = internal global ptr @test_rslib_init, section ".initcall6.init", align 4
@__exitcall_test_rslib_exit = internal global ptr @test_rslib_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file180 = internal constant [44 x i8] c"test_rslib.file=lib/reed_solomon/test_rslib\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [23 x i8] c"test_rslib.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author182 = internal constant [38 x i8] c"test_rslib.author=Ferdinand Blomqvist\00", section ".modinfo", align 1
@__UNIQUE_ID_description183 = internal constant [49 x i8] c"test_rslib.description=Reed-Solomon library test\00", section ".modinfo", align 1
@Tab = internal constant { [12 x %struct.etab], [64 x i8] } { [12 x %struct.etab] [%struct.etab { i32 2, i32 7, i32 1, i32 1, i32 1, i32 100000 }, %struct.etab { i32 3, i32 11, i32 1, i32 1, i32 2, i32 100000 }, %struct.etab { i32 3, i32 11, i32 1, i32 1, i32 3, i32 100000 }, %struct.etab { i32 3, i32 11, i32 2, i32 1, i32 4, i32 100000 }, %struct.etab { i32 4, i32 19, i32 1, i32 1, i32 4, i32 10000 }, %struct.etab { i32 5, i32 37, i32 1, i32 1, i32 6, i32 1000 }, %struct.etab { i32 6, i32 67, i32 3, i32 1, i32 8, i32 1000 }, %struct.etab { i32 7, i32 137, i32 1, i32 1, i32 14, i32 500 }, %struct.etab { i32 8, i32 285, i32 1, i32 1, i32 30, i32 100 }, %struct.etab { i32 8, i32 391, i32 112, i32 11, i32 32, i32 100 }, %struct.etab { i32 9, i32 529, i32 1, i32 1, i32 33, i32 80 }, %struct.etab zeroinitializer], [64 x i8] zeroinitializer }, align 32
@test_rslib_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014rslib: test failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_rslib_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lib/reed_solomon/test_rslib.c\00", [34 x i8] zeroinitializer }, align 32
@test_rslib_init._entry_ptr = internal global ptr @test_rslib_init._entry, section ".printk_index", align 4
@test_rslib_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016rslib: test ok\0A\00", [46 x i8] zeroinitializer }, align 32
@test_rslib_init._entry_ptr.5 = internal global ptr @test_rslib_init._entry.3, section ".printk_index", align 4
@pad_coef = internal constant { [5 x %struct.pad], [56 x i8] } { [5 x %struct.pad] [%struct.pad zeroinitializer, %struct.pad { i32 1, i32 2 }, %struct.pad { i32 1, i32 1 }, %struct.pad { i32 3, i32 2 }, %struct.pad { i32 1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@run_exercise._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Testing (%d,%d)_%d code...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"run_exercise\00", [19 x i8] zeroinitializer }, align 32
@run_exercise._entry_ptr = internal global ptr @run_exercise._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@exercise_rs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Testing up to error correction capacity...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exercise_rs\00", [20 x i8] zeroinitializer }, align 32
@exercise_rs._entry_ptr = internal global ptr @exercise_rs._entry, section ".printk_index", align 4
@ex_rs_helper.desc = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Testing correction buffer interface...\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Testing with caller provided syndrome...\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Testing in-place interface...\00", [34 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016  %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ex_rs_helper\00", [19 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry_ptr = internal global ptr @ex_rs_helper._entry, section ".printk_index", align 4
@ex_rs_helper._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016    Decodes wrong:        %d / %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry_ptr.17 = internal global ptr @ex_rs_helper._entry.15, section ".printk_index", align 4
@ex_rs_helper._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016    Wrong return value:   %d / %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry_ptr.20 = internal global ptr @ex_rs_helper._entry.18, section ".printk_index", align 4
@ex_rs_helper._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016    Wrong error position: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry_ptr.23 = internal global ptr @ex_rs_helper._entry.21, section ".printk_index", align 4
@ex_rs_helper._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014    FAIL: %d decoding failures!\0A\00", [61 x i8] zeroinitializer }, align 32
@ex_rs_helper._entry_ptr.26 = internal global ptr @ex_rs_helper._entry.24, section ".printk_index", align 4
@exercise_rs_bc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016Testing beyond error correction capacity...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exercise_rs_bc\00", [17 x i8] zeroinitializer }, align 32
@exercise_rs_bc._entry_ptr = internal global ptr @exercise_rs_bc._entry, section ".printk_index", align 4
@exercise_rs_bc._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016  decoder gives up:        %d / %d\0A\00", [58 x i8] zeroinitializer }, align 32
@exercise_rs_bc._entry_ptr.31 = internal global ptr @exercise_rs_bc._entry.29, section ".printk_index", align 4
@exercise_rs_bc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016  decoder returns success: %d / %d\0A\00", [58 x i8] zeroinitializer }, align 32
@exercise_rs_bc._entry_ptr.34 = internal global ptr @exercise_rs_bc._entry.32, section ".printk_index", align 4
@exercise_rs_bc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016    not a codeword:        %d / %d\0A\00", [58 x i8] zeroinitializer }, align 32
@exercise_rs_bc._entry_ptr.37 = internal global ptr @exercise_rs_bc._entry.35, section ".printk_index", align 4
@exercise_rs_bc._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014    FAIL: %d silent failures!\0A\00", [63 x i8] zeroinitializer }, align 32
@exercise_rs_bc._entry_ptr.40 = internal global ptr @exercise_rs_bc._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 32, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"ewsc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 33, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 34, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [4 x i8] c"Tab\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 46, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 502, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 504, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"pad_coef\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 90, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 471, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 357, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 316, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 317, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 318, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 319, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 327, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 334, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 336, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 339, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 344, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 415, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 428, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 430, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 432, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [33 x i8] c"../lib/reed_solomon/test_rslib.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 437, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author182, ptr @__UNIQUE_ID_bc178, ptr @__UNIQUE_ID_bctype177, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_ewsc176, ptr @__UNIQUE_ID_ewsctype175, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__UNIQUE_ID_v174, ptr @__UNIQUE_ID_vtype173, ptr @__exitcall_test_rslib_exit, ptr @__initcall__kmod_test_rslib__179_513_test_rslib_init6, ptr @__param_bc, ptr @__param_ewsc, ptr @__param_v, ptr @ex_rs_helper._entry, ptr @ex_rs_helper._entry.15, ptr @ex_rs_helper._entry.18, ptr @ex_rs_helper._entry.21, ptr @ex_rs_helper._entry.24, ptr @ex_rs_helper._entry_ptr, ptr @ex_rs_helper._entry_ptr.17, ptr @ex_rs_helper._entry_ptr.20, ptr @ex_rs_helper._entry_ptr.23, ptr @ex_rs_helper._entry_ptr.26, ptr @exercise_rs._entry, ptr @exercise_rs._entry_ptr, ptr @exercise_rs_bc._entry, ptr @exercise_rs_bc._entry.29, ptr @exercise_rs_bc._entry.32, ptr @exercise_rs_bc._entry.35, ptr @exercise_rs_bc._entry.38, ptr @exercise_rs_bc._entry_ptr, ptr @exercise_rs_bc._entry_ptr.31, ptr @exercise_rs_bc._entry_ptr.34, ptr @exercise_rs_bc._entry_ptr.37, ptr @exercise_rs_bc._entry_ptr.40, ptr @run_exercise._entry, ptr @run_exercise._entry_ptr, ptr @test_rslib_exit, ptr @test_rslib_init._entry, ptr @test_rslib_init._entry.3, ptr @test_rslib_init._entry_ptr, ptr @test_rslib_init._entry_ptr.5, ptr @v, ptr @ewsc, ptr @bc, ptr @Tab, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pad_coef, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ex_rs_helper.desc, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ewsc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Tab to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rslib_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rslib_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad_coef to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_exercise._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper.desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_rs_helper._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs_bc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs_bc._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs_bc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs_bc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exercise_rs_bc._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_rslib_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_rslib_init() #1 section ".init.text" align 64 {
entry:
  %stat.sroa.0.i.i = alloca i32, align 4
  %stat.sroa.9.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %fail.024 = phi i32 [ %or, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %add.ptr = getelementptr %struct.etab, ptr @Tab, i32 %i.025
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %shl.i = shl nuw i32 1, %1
  %sub.i = add i32 %shl.i, -1
  %nroots.i = getelementptr %struct.etab, ptr @Tab, i32 %i.025, i32 4
  %2 = ptrtoint ptr %nroots.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nroots.i, align 4
  %sub1.i = sub i32 %sub.i, %3
  %sub3.i = add i32 %sub1.i, -1
  %genpoly.i = getelementptr %struct.etab, ptr @Tab, i32 %i.025, i32 1
  %4 = ptrtoint ptr %genpoly.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %genpoly.i, align 4
  %fcs.i = getelementptr %struct.etab, ptr @Tab, i32 %i.025, i32 2
  %6 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcs.i, align 4
  %prim.i = getelementptr %struct.etab, ptr @Tab, i32 %i.025, i32 3
  %8 = ptrtoint ptr %prim.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prim.i, align 4
  %call.i.i = tail call ptr @init_rs_gfp(i32 noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %3, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup11_crit_edge, label %if.end.i

for.body.cleanup11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i.i, align 4
  %nroots1.i.i = getelementptr inbounds %struct.rs_codec, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %nroots1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nroots1.i.i, align 4
  %nn2.i.i = getelementptr inbounds %struct.rs_codec, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %nn2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nn2.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 24) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %run_exercise.exit.thread, label %if.end.i.i

run_exercise.exit.thread:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_rs(ptr noundef nonnull %call.i.i) #10
  br label %cleanup11

if.end.i.i:                                       ; preds = %if.end.i
  %add.i.i = add i32 %15, %13
  %mul.i.i = shl i32 %add.i.i, 1
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i.i, i32 2) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end.i.i.free_ws.exit.sink.split.i.i_crit_edge, label %if.end7.i.i.i, !prof !112

if.end.i.i.free_ws.exit.sink.split.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ws.exit.sink.split.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3264) #14
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i.i, ptr %call7.i.i.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not.i.i, label %if.end7.i.i.i.free_ws.exit.i.i_crit_edge, label %if.end7.i.i

if.end7.i.i.i.free_ws.exit.i.i_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ws.exit.i.i

if.end7.i.i:                                      ; preds = %if.end7.i.i.i
  %add.ptr.i.i = getelementptr i16, ptr %call8.i.i.i, i32 %15
  %r.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %r.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %r.i.i, align 4
  %add.ptr10.i.i = getelementptr i16, ptr %add.ptr.i.i, i32 %15
  %s.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %s.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr10.i.i, ptr %s.i.i, align 8
  %add.ptr12.i.i = getelementptr i16, ptr %add.ptr10.i.i, i32 %13
  %corr.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %corr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr12.i.i, ptr %corr.i.i, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #10
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %kmalloc_array.exit77.thread.i.i, label %if.end7.i75.i.i, !prof !112

kmalloc_array.exit77.thread.i.i:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %errlocs86.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 4
  br label %free_ws.exit.sink.split.i.i

if.end7.i75.i.i:                                  ; preds = %if.end7.i.i
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i74.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #14
  %errlocs.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %errlocs.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i74.i.i, ptr %errlocs.i.i, align 8
  %tobool16.not.i.i = icmp eq ptr %call8.i74.i.i, null
  br i1 %tobool16.not.i.i, label %if.end7.i75.i.i.free_ws.exit.i.i_crit_edge, label %alloc_ws.exit.i

if.end7.i75.i.i.free_ws.exit.i.i_crit_edge:       ; preds = %if.end7.i75.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_ws.exit.i.i

free_ws.exit.sink.split.i.i:                      ; preds = %kmalloc_array.exit77.thread.i.i, %if.end.i.i.free_ws.exit.sink.split.i.i_crit_edge
  %errlocs86.sink.i.i = phi ptr [ %errlocs86.i.i, %kmalloc_array.exit77.thread.i.i ], [ %call7.i.i.i.i, %if.end.i.i.free_ws.exit.sink.split.i.i_crit_edge ]
  %28 = ptrtoint ptr %errlocs86.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %errlocs86.sink.i.i, align 8
  br label %free_ws.exit.i.i

free_ws.exit.i.i:                                 ; preds = %free_ws.exit.sink.split.i.i, %if.end7.i75.i.i.free_ws.exit.i.i_crit_edge, %if.end7.i.i.i.free_ws.exit.i.i_crit_edge
  %errlocs.i.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 4
  br label %run_exercise.exit

alloc_ws.exit.i:                                  ; preds = %if.end7.i75.i.i
  %add.ptr20.i.i = getelementptr i32, ptr %call8.i74.i.i, i32 %15
  %derrlocs.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %derrlocs.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr20.i.i, ptr %derrlocs.i.i, align 4
  %ntrials95.i = getelementptr %struct.etab, ptr @Tab, i32 %i.025, i32 5
  %errlocs2.i.i.i.i = getelementptr inbounds %struct.wspace, ptr %call7.i.i.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %alloc_ws.exit.i
  %i.0101.i = phi i32 [ 0, %alloc_ws.exit.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %prev_pad.0100.i = phi i32 [ -1, %alloc_ws.exit.i ], [ %prev_pad.1.i, %cleanup.i.for.body.i_crit_edge ]
  %retval2.099.i = phi i32 [ 0, %alloc_ws.exit.i ], [ %retval2.2.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x %struct.pad], ptr @pad_coef, i32 0, i32 %i.0101.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %31, %sub3.i
  %shift.i = getelementptr [5 x %struct.pad], ptr @pad_coef, i32 0, i32 %i.0101.i, i32 1
  %32 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i, align 4
  %shr.i = ashr i32 %mul.i, %33
  %sub11.i = sub i32 %sub.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %prev_pad.0100.i)
  %cmp12.i = icmp eq i32 %shr.i, %prev_pad.0100.i
  br i1 %cmp12.i, label %for.body.i.cleanup.i_crit_edge, label %if.end14.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end14.i:                                       ; preds = %for.body.i
  %34 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp15.i = icmp sgt i32 %34, 0
  br i1 %cmp15.i, label %if.end19.i, label %if.end19.thread.i

if.end19.thread.i:                                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %ntrials95.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ntrials95.i, align 4
  br label %if.end.i66.i

if.end19.i:                                       ; preds = %if.end14.i
  %sub17.i = sub i32 %sub1.i, %shr.i
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %sub11.i, i32 noundef %sub17.i, i32 noundef %shl.i) #15
  %.pr.i = load i32, ptr @v, align 4
  %37 = ptrtoint ptr %ntrials95.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ntrials95.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end19.i.if.end.i66.i_crit_edge

if.end19.i.if.end.i66.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i66.i

do.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %do.end.i.i, %if.end19.i.if.end.i66.i_crit_edge, %if.end19.thread.i
  %39 = phi i32 [ %36, %if.end19.thread.i ], [ %38, %do.end.i.i ], [ %38, %if.end19.i.if.end.i66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp97.i.i.i.i = icmp sgt i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub11.i)
  %cmp870.i.i.i.i.i = icmp sgt i32 %sub11.i, 1
  %mul.i.i.i.i = shl i32 %sub11.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ex_rs_helper.exit.i.i.for.body.i.i_crit_edge, %if.end.i66.i
  %retval1.011.i.i = phi i32 [ 0, %if.end.i66.i ], [ %or.i.i, %ex_rs_helper.exit.i.i.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ 0, %if.end.i66.i ], [ %inc.i.i, %ex_rs_helper.exit.i.i.for.body.i.i_crit_edge ]
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i.i, align 4
  %nroots1.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %nroots1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nroots1.i.i.i, align 4
  %44 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i = icmp sgt i32 %44, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %for.body.i.i.if.end.i.i67.i_crit_edge

for.body.i.i.if.end.i.i67.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i67.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i.i = getelementptr [3 x ptr], ptr @ex_rs_helper.desc, i32 0, i32 %i.08.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %46) #15
  br label %if.end.i.i67.i

if.end.i.i67.i:                                   ; preds = %do.end.i.i.i, %for.body.i.i.if.end.i.i67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp3.not82.i.i.i = icmp slt i32 %43, -1
  br i1 %cmp3.not82.i.i.i, label %if.end.i.i67.i.for.end9.i.i.i_crit_edge, label %for.cond4.preheader.lr.ph.i.i.i

if.end.i.i67.i.for.end9.i.i.i_crit_edge:          ; preds = %if.end.i.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9.i.i.i

for.cond4.preheader.lr.ph.i.i.i:                  ; preds = %if.end.i.i67.i
  %div.i.i.i = sdiv i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.08.i.i)
  %cmp14.not.i.i.i.i = icmp ne i32 %i.08.i.i, 2
  br label %for.cond4.preheader.i.i.i

for.cond4.preheader.i.i.i:                        ; preds = %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge, %for.cond4.preheader.lr.ph.i.i.i
  %errs.087.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %inc8.i.i.i, %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %stat.sroa.15.086.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %stat.sroa.15.1.lcssa.i.i.i, %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %stat.sroa.11.085.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %stat.sroa.11.1.lcssa.i.i.i, %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %stat.sroa.7.084.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %stat.sroa.7.1.lcssa.i.i.i, %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %stat.sroa.0.083.i.i.i = phi i32 [ 0, %for.cond4.preheader.lr.ph.i.i.i ], [ %stat.sroa.0.1.lcssa.i.i.i, %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge ]
  %mul.neg.i.i.i = mul nsw i32 %errs.087.i.i.i, -2
  %sub.i.i.i = add i32 %mul.neg.i.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp5.not72.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp5.not72.i.i.i, label %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge, label %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge

for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i.i
  br label %for.body6.i.i.i

for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge: ; preds = %for.cond4.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc7.i.i.i

for.body6.i.i.i:                                  ; preds = %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge
  %eras.077.i.i.i = phi i32 [ %inc.i.i.i, %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge ]
  %stat.sroa.15.176.i.i.i = phi i32 [ %add.i.i.i.i, %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge ], [ %stat.sroa.15.086.i.i.i, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge ]
  %stat.sroa.11.175.i.i.i = phi i32 [ %stat.sroa.11.7.i.i.i, %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge ], [ %stat.sroa.11.085.i.i.i, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge ]
  %stat.sroa.7.174.i.i.i = phi i32 [ %stat.sroa.7.5.i.i.i, %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge ], [ %stat.sroa.7.084.i.i.i, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge ]
  %stat.sroa.0.173.i.i.i = phi i32 [ %stat.sroa.0.4.i.i.i, %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge ], [ %stat.sroa.0.083.i.i.i, %for.cond4.preheader.i.i.i.for.body6.i.i.i_crit_edge ]
  %47 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i.i, align 4
  %nroots.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %nroots.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nroots.i.i.i.i, align 4
  %sub.i.i.i.i = sub i32 %sub11.i, %50
  %51 = ptrtoint ptr %derrlocs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %derrlocs.i.i, align 4
  %53 = ptrtoint ptr %errlocs2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %errlocs2.i.i.i.i, align 8
  %55 = ptrtoint ptr %corr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %corr.i.i, align 4
  %57 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i.i.i, align 8
  %59 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %r.i.i, align 4
  %61 = ptrtoint ptr %s.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s.i.i, align 8
  br i1 %cmp97.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge

for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge:     ; preds = %for.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_uc.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %for.body6.i.i.i
  %add.ptr11.i.i.i.i = getelementptr i16, ptr %60, i32 %sub.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %stat.sroa.0.2.i.i.i = phi i32 [ %stat.sroa.0.173.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %stat.sroa.0.3.i.i.i, %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %stat.sroa.7.2.i.i.i = phi i32 [ %stat.sroa.7.174.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %stat.sroa.7.4.i.i.i, %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %stat.sroa.11.2.i.i.i = phi i32 [ %stat.sroa.11.175.i.i.i, %for.body.lr.ph.i.i.i.i ], [ %stat.sroa.11.6.i.i.i, %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %j.098.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc31.i.i.i.i, %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call fastcc i32 @get_rcw_we(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %sub11.i, i32 noundef %errs.087.i.i.i, i32 noundef %eras.077.i.i.i) #10
  %63 = zext i32 %i.08.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.08.i.i, label %for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge [
    i32 0, label %sw.bb.i.i.i.i
    i32 1, label %sw.bb8.i.i.i.i
    i32 2, label %sw.bb10.i.i.i.i
  ]

for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc30.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i.i.i
  %call7.i.i.i68.i = tail call i32 @decode_rs16(ptr noundef nonnull %call.i.i, ptr noundef %60, ptr noundef %add.ptr11.i.i.i.i, i32 noundef %sub.i.i.i.i, ptr noundef null, i32 noundef %eras.077.i.i.i, ptr noundef %52, i16 noundef zeroext 0, ptr noundef %56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i68.i)
  %cmp9.i.i.i.i.i = icmp sgt i32 %call7.i.i.i68.i, 0
  br i1 %cmp9.i.i.i.i.i, label %sw.bb.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %sw.bb.i.i.i.i.if.end25.i.i.i.i_crit_edge

sw.bb.i.i.i.i.if.end25.i.i.i.i_crit_edge:         ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i.i

sw.bb.i.i.i.i.for.body.i.i.i.i.i_crit_edge:       ; preds = %sw.bb.i.i.i.i
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %sw.bb.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.010.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %sw.bb.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr i16, ptr %56, i32 %i.010.i.i.i.i.i
  %64 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  %arrayidx1.i.i.i.i.i = getelementptr i32, ptr %52, i32 %i.010.i.i.i.i.i
  %66 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.i.i.i.i, align 4
  %arrayidx2.i.i.i.i.i = getelementptr i16, ptr %60, i32 %67
  %68 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx2.i.i.i.i.i, align 2
  %xor8.i.i.i.i.i = xor i16 %69, %65
  store i16 %xor8.i.i.i.i.i, ptr %arrayidx2.i.i.i.i.i, align 2
  %inc.i.i.i.i.i = add nuw nsw i32 %i.010.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %call7.i.i.i68.i
  br i1 %exitcond.not.i.i.i.i.i, label %for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i.i

sw.bb8.i.i.i.i:                                   ; preds = %for.body.i.i.i.i
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i.i, align 4
  %alpha_to1.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %alpha_to1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %alpha_to1.i.i.i.i.i, align 4
  %index_of2.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 3
  %74 = ptrtoint ptr %index_of2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %index_of2.i.i.i.i.i, align 4
  %nroots3.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 5
  %76 = ptrtoint ptr %nroots3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nroots3.i.i.i.i.i, align 4
  %prim4.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 7
  %78 = ptrtoint ptr %prim4.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %prim4.i.i.i.i.i, align 4
  %fcr5.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 6
  %80 = ptrtoint ptr %fcr5.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fcr5.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp73.i.i.i.i.i = icmp sgt i32 %77, 0
  br i1 %cmp73.i.i.i.i.i, label %for.body.lr.ph.i.i.i.i.i, label %sw.bb8.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge

sw.bb8.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge: ; preds = %sw.bb8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %compute_syndrome.exit.i.i.i.i

for.body.lr.ph.i.i.i.i.i:                         ; preds = %sw.bb8.i.i.i.i
  %nn.i.i.i.i.i.i = getelementptr inbounds %struct.rs_codec, ptr %71, i32 0, i32 1
  br label %for.body.i81.i.i.i.i

for.body.i81.i.i.i.i:                             ; preds = %for.inc25.i.i.i.i.i.for.body.i81.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i.i
  %i.074.i.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i.i ], [ %inc26.i.i.i.i.i, %for.inc25.i.i.i.i.i.for.body.i81.i.i.i.i_crit_edge ]
  %82 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %60, align 2
  %arrayidx6.i.i.i.i.i = getelementptr i16, ptr %62, i32 %i.074.i.i.i.i.i
  %84 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx6.i.i.i.i.i, align 2
  br i1 %cmp870.i.i.i.i.i, label %for.body9.lr.ph.i.i.i.i.i, label %for.body.i81.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge

for.body.i81.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge: ; preds = %for.body.i81.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc25.i.i.i.i.i

for.body9.lr.ph.i.i.i.i.i:                        ; preds = %for.body.i81.i.i.i.i
  %add.i.i.i.i.i = add i32 %i.074.i.i.i.i.i, %81
  %mul.i.i.i.i.i = mul i32 %add.i.i.i.i.i, %79
  br label %for.body9.i.i.i.i.i

for.body9.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i.for.body9.i.i.i.i.i_crit_edge, %for.body9.lr.ph.i.i.i.i.i
  %85 = phi i16 [ %83, %for.body9.lr.ph.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body9.i.i.i.i.i_crit_edge ]
  %j.071.i.i.i.i.i = phi i32 [ 1, %for.body9.lr.ph.i.i.i.i.i ], [ %inc.i82.i.i.i.i, %for.inc.i.i.i.i.i.for.body9.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp11.i.i.i.i.i = icmp eq i16 %85, 0
  br i1 %cmp11.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13.i.i.i.i.i = getelementptr i16, ptr %60, i32 %j.071.i.i.i.i.i
  %86 = ptrtoint ptr %arrayidx13.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx13.i.i.i.i.i, align 2
  br label %for.inc.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body9.i.i.i.i.i
  %conv.i.i.i.i.i = zext i16 %85 to i32
  %arrayidx15.i.i.i.i.i = getelementptr i16, ptr %60, i32 %j.071.i.i.i.i.i
  %88 = ptrtoint ptr %arrayidx15.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx15.i.i.i.i.i, align 2
  %arrayidx18.i.i.i.i.i = getelementptr i16, ptr %75, i32 %conv.i.i.i.i.i
  %90 = ptrtoint ptr %arrayidx18.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx18.i.i.i.i.i, align 2
  %conv19.i.i.i.i.i = zext i16 %91 to i32
  %add20.i.i.i.i.i = add i32 %mul.i.i.i.i.i, %conv19.i.i.i.i.i
  %92 = ptrtoint ptr %nn.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nn.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %add20.i.i.i.i.i)
  %cmp.not10.i.i.i.i.i.i = icmp sgt i32 %93, %add20.i.i.i.i.i
  br i1 %cmp.not10.i.i.i.i.i.i, label %if.else.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i.i.i.i

if.else.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs_modnn.exit.i.i.i.i.i

while.body.lr.ph.i.i.i.i.i.i:                     ; preds = %if.else.i.i.i.i.i
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %71, align 4
  br label %while.body.i.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i.i.i
  %x.addr.011.i.i.i.i.i.i = phi i32 [ %add20.i.i.i.i.i, %while.body.lr.ph.i.i.i.i.i.i ], [ %add.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i69.i = sub i32 %x.addr.011.i.i.i.i.i.i, %93
  %shr.i.i.i.i.i.i = ashr i32 %sub.i.i.i.i.i69.i, %95
  %and.i.i.i.i.i.i = and i32 %sub.i.i.i.i.i69.i, %93
  %add.i.i.i.i.i.i = add i32 %shr.i.i.i.i.i.i, %and.i.i.i.i.i.i
  %cmp.not.i.i.i.i.i.i = icmp slt i32 %add.i.i.i.i.i.i, %93
  br i1 %cmp.not.i.i.i.i.i.i, label %while.body.i.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge, label %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i.i.i

while.body.i.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rs_modnn.exit.i.i.i.i.i

rs_modnn.exit.i.i.i.i.i:                          ; preds = %while.body.i.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge, %if.else.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge
  %x.addr.0.lcssa.i.i.i.i.i.i = phi i32 [ %add20.i.i.i.i.i, %if.else.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge ], [ %add.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.rs_modnn.exit.i.i.i.i.i_crit_edge ]
  %arrayidx21.i.i.i.i.i = getelementptr i16, ptr %73, i32 %x.addr.0.lcssa.i.i.i.i.i.i
  %96 = ptrtoint ptr %arrayidx21.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx21.i.i.i.i.i, align 2
  %xor69.i.i.i.i.i = xor i16 %97, %89
  br label %for.inc.i.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %rs_modnn.exit.i.i.i.i.i, %if.then.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i16 [ %xor69.i.i.i.i.i, %rs_modnn.exit.i.i.i.i.i ], [ %87, %if.then.i.i.i.i.i ]
  %98 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %storemerge.i.i.i.i.i, ptr %arrayidx6.i.i.i.i.i, align 2
  %inc.i82.i.i.i.i = add nuw nsw i32 %j.071.i.i.i.i.i, 1
  %exitcond.not.i83.i.i.i.i = icmp eq i32 %inc.i82.i.i.i.i, %sub11.i
  br i1 %exitcond.not.i83.i.i.i.i, label %for.inc.i.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body9.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body9.i.i.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9.i.i.i.i.i

for.inc.i.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc25.i.i.i.i.i

for.inc25.i.i.i.i.i:                              ; preds = %for.inc.i.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge, %for.body.i81.i.i.i.i.for.inc25.i.i.i.i.i_crit_edge
  %inc26.i.i.i.i.i = add nuw nsw i32 %i.074.i.i.i.i.i, 1
  %exitcond78.not.i.i.i.i.i = icmp eq i32 %inc26.i.i.i.i.i, %77
  br i1 %exitcond78.not.i.i.i.i.i, label %for.inc25.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge, label %for.inc25.i.i.i.i.i.for.body.i81.i.i.i.i_crit_edge

for.inc25.i.i.i.i.i.for.body.i81.i.i.i.i_crit_edge: ; preds = %for.inc25.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i81.i.i.i.i

for.inc25.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge: ; preds = %for.inc25.i.i.i.i.i
  br label %for.body31.i.i.i.i.i

for.body31.i.i.i.i.i:                             ; preds = %for.body31.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge, %for.inc25.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge
  %i.177.i.i.i.i.i = phi i32 [ %inc38.i.i.i.i.i, %for.body31.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge ], [ 0, %for.inc25.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge ]
  %99 = ptrtoint ptr %index_of2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %index_of2.i.i.i.i.i, align 4
  %arrayidx33.i.i.i.i.i = getelementptr i16, ptr %62, i32 %i.177.i.i.i.i.i
  %101 = ptrtoint ptr %arrayidx33.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx33.i.i.i.i.i, align 2
  %idxprom34.i.i.i.i.i = zext i16 %102 to i32
  %arrayidx35.i.i.i.i.i = getelementptr i16, ptr %100, i32 %idxprom34.i.i.i.i.i
  %103 = ptrtoint ptr %arrayidx35.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx35.i.i.i.i.i, align 2
  store i16 %104, ptr %arrayidx33.i.i.i.i.i, align 2
  %inc38.i.i.i.i.i = add nuw nsw i32 %i.177.i.i.i.i.i, 1
  %exitcond79.not.i.i.i.i.i = icmp eq i32 %inc38.i.i.i.i.i, %77
  br i1 %exitcond79.not.i.i.i.i.i, label %for.body31.i.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge, label %for.body31.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge

for.body31.i.i.i.i.i.for.body31.i.i.i.i.i_crit_edge: ; preds = %for.body31.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body31.i.i.i.i.i

for.body31.i.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge: ; preds = %for.body31.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %compute_syndrome.exit.i.i.i.i

compute_syndrome.exit.i.i.i.i:                    ; preds = %for.body31.i.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge, %sw.bb8.i.i.i.i.compute_syndrome.exit.i.i.i.i_crit_edge
  %call9.i.i.i70.i = tail call i32 @decode_rs16(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef null, i32 noundef %sub.i.i.i.i, ptr noundef %62, i32 noundef %eras.077.i.i.i, ptr noundef %52, i16 noundef zeroext 0, ptr noundef %56) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i70.i)
  %cmp9.i84.i.i.i.i = icmp sgt i32 %call9.i.i.i70.i, 0
  br i1 %cmp9.i84.i.i.i.i, label %compute_syndrome.exit.i.i.i.i.for.body.i92.i.i.i.i_crit_edge, label %compute_syndrome.exit.i.i.i.i.if.end25.i.i.i.i_crit_edge

compute_syndrome.exit.i.i.i.i.if.end25.i.i.i.i_crit_edge: ; preds = %compute_syndrome.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i.i

compute_syndrome.exit.i.i.i.i.for.body.i92.i.i.i.i_crit_edge: ; preds = %compute_syndrome.exit.i.i.i.i
  br label %for.body.i92.i.i.i.i

for.body.i92.i.i.i.i:                             ; preds = %for.body.i92.i.i.i.i.for.body.i92.i.i.i.i_crit_edge, %compute_syndrome.exit.i.i.i.i.for.body.i92.i.i.i.i_crit_edge
  %i.010.i85.i.i.i.i = phi i32 [ %inc.i90.i.i.i.i, %for.body.i92.i.i.i.i.for.body.i92.i.i.i.i_crit_edge ], [ 0, %compute_syndrome.exit.i.i.i.i.for.body.i92.i.i.i.i_crit_edge ]
  %arrayidx.i86.i.i.i.i = getelementptr i16, ptr %56, i32 %i.010.i85.i.i.i.i
  %105 = ptrtoint ptr %arrayidx.i86.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.i86.i.i.i.i, align 2
  %arrayidx1.i87.i.i.i.i = getelementptr i32, ptr %52, i32 %i.010.i85.i.i.i.i
  %107 = ptrtoint ptr %arrayidx1.i87.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx1.i87.i.i.i.i, align 4
  %arrayidx2.i88.i.i.i.i = getelementptr i16, ptr %60, i32 %108
  %109 = ptrtoint ptr %arrayidx2.i88.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx2.i88.i.i.i.i, align 2
  %xor8.i89.i.i.i.i = xor i16 %110, %106
  store i16 %xor8.i89.i.i.i.i, ptr %arrayidx2.i88.i.i.i.i, align 2
  %inc.i90.i.i.i.i = add nuw nsw i32 %i.010.i85.i.i.i.i, 1
  %exitcond.not.i91.i.i.i.i = icmp eq i32 %inc.i90.i.i.i.i, %call9.i.i.i70.i
  br i1 %exitcond.not.i91.i.i.i.i, label %for.body.i92.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, label %for.body.i92.i.i.i.i.for.body.i92.i.i.i.i_crit_edge

for.body.i92.i.i.i.i.for.body.i92.i.i.i.i_crit_edge: ; preds = %for.body.i92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i92.i.i.i.i

for.body.i92.i.i.i.i.sw.epilog.i.i.i.i_crit_edge: ; preds = %for.body.i92.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i.i.i

sw.bb10.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i.i.i.i = tail call i32 @decode_rs16(ptr noundef nonnull %call.i.i, ptr noundef %60, ptr noundef %add.ptr11.i.i.i.i, i32 noundef %sub.i.i.i.i, ptr noundef null, i32 noundef %eras.077.i.i.i, ptr noundef %52, i16 noundef zeroext 0, ptr noundef null) #10
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %sw.bb10.i.i.i.i, %for.body.i92.i.i.i.i.sw.epilog.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %derrs.0.i.i.i.i = phi i32 [ %call12.i.i.i.i, %sw.bb10.i.i.i.i ], [ %call7.i.i.i68.i, %for.body.i.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ], [ %call9.i.i.i70.i, %for.body.i92.i.i.i.i.sw.epilog.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %derrs.0.i.i.i.i)
  %cmp1795.i.i.i.i = icmp sgt i32 %derrs.0.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %cmp14.not.i.i.i.i, i1 %cmp1795.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %sw.epilog.i.i.i.i.for.body18.i.i.i.i_crit_edge, label %sw.epilog.i.i.i.i.if.end25.i.i.i.i_crit_edge

sw.epilog.i.i.i.i.if.end25.i.i.i.i_crit_edge:     ; preds = %sw.epilog.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i.i

sw.epilog.i.i.i.i.for.body18.i.i.i.i_crit_edge:   ; preds = %sw.epilog.i.i.i.i
  br label %for.body18.i.i.i.i

for.body18.i.i.i.i:                               ; preds = %for.body18.i.i.i.i.for.body18.i.i.i.i_crit_edge, %sw.epilog.i.i.i.i.for.body18.i.i.i.i_crit_edge
  %stat.sroa.11.3.i.i.i = phi i32 [ %spec.select69.i.i.i, %for.body18.i.i.i.i.for.body18.i.i.i.i_crit_edge ], [ %stat.sroa.11.2.i.i.i, %sw.epilog.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %i.096.i.i.i.i = phi i32 [ %inc24.i.i.i.i, %for.body18.i.i.i.i.for.body18.i.i.i.i_crit_edge ], [ 0, %sw.epilog.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr %52, i32 %i.096.i.i.i.i
  %111 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %arrayidx19.i.i.i.i = getelementptr i32, ptr %54, i32 %112
  %113 = ptrtoint ptr %arrayidx19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx19.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp20.not.i.i.i.i = icmp ne i32 %114, 1
  %inc22.i.i.i.i = zext i1 %cmp20.not.i.i.i.i to i32
  %spec.select69.i.i.i = add i32 %stat.sroa.11.3.i.i.i, %inc22.i.i.i.i
  %inc24.i.i.i.i = add nuw nsw i32 %i.096.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc24.i.i.i.i, %derrs.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body18.i.i.i.i.if.end25.i.i.i.i_crit_edge, label %for.body18.i.i.i.i.for.body18.i.i.i.i_crit_edge

for.body18.i.i.i.i.for.body18.i.i.i.i_crit_edge:  ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i.i.i.i

for.body18.i.i.i.i.if.end25.i.i.i.i_crit_edge:    ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i.i

if.end25.i.i.i.i:                                 ; preds = %for.body18.i.i.i.i.if.end25.i.i.i.i_crit_edge, %sw.epilog.i.i.i.i.if.end25.i.i.i.i_crit_edge, %compute_syndrome.exit.i.i.i.i.if.end25.i.i.i.i_crit_edge, %sw.bb.i.i.i.i.if.end25.i.i.i.i_crit_edge
  %derrs.0.i.pn.i.i.i = phi i32 [ %derrs.0.i.i.i.i, %sw.epilog.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %call9.i.i.i70.i, %compute_syndrome.exit.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %call7.i.i.i68.i, %sw.bb.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %derrs.0.i.i.i.i, %for.body18.i.i.i.i.if.end25.i.i.i.i_crit_edge ]
  %stat.sroa.11.5.i.i.i = phi i32 [ %stat.sroa.11.2.i.i.i, %sw.epilog.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %stat.sroa.11.2.i.i.i, %compute_syndrome.exit.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %stat.sroa.11.2.i.i.i, %sw.bb.i.i.i.i.if.end25.i.i.i.i_crit_edge ], [ %spec.select69.i.i.i, %for.body18.i.i.i.i.if.end25.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %derrs.0.i.pn.i.i.i, i32 %call.i.i.i.i)
  %inc.i.pn.in.i.i.i = icmp ne i32 %derrs.0.i.pn.i.i.i, %call.i.i.i.i
  %inc.i.pn.i.i.i = zext i1 %inc.i.pn.in.i.i.i to i32
  %spec.select100.i.i.i = add i32 %stat.sroa.7.2.i.i.i, %inc.i.pn.i.i.i
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %60, ptr %58, i32 %mul.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool.not.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i, 0
  %inc28.i.i.i.i = zext i1 %tobool.not.i.i.i.i to i32
  %spec.select70.i.i.i = add i32 %stat.sroa.0.2.i.i.i, %inc28.i.i.i.i
  br label %for.inc30.i.i.i.i

for.inc30.i.i.i.i:                                ; preds = %if.end25.i.i.i.i, %for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge
  %stat.sroa.0.3.i.i.i = phi i32 [ %stat.sroa.0.2.i.i.i, %for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge ], [ %spec.select70.i.i.i, %if.end25.i.i.i.i ]
  %stat.sroa.7.4.i.i.i = phi i32 [ %stat.sroa.7.2.i.i.i, %for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge ], [ %spec.select100.i.i.i, %if.end25.i.i.i.i ]
  %stat.sroa.11.6.i.i.i = phi i32 [ %stat.sroa.11.2.i.i.i, %for.body.i.i.i.i.for.inc30.i.i.i.i_crit_edge ], [ %stat.sroa.11.5.i.i.i, %if.end25.i.i.i.i ]
  %inc31.i.i.i.i = add nuw nsw i32 %j.098.i.i.i.i, 1
  %exitcond100.not.i.i.i.i = icmp eq i32 %inc31.i.i.i.i, %39
  br i1 %exitcond100.not.i.i.i.i, label %for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge, label %for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc30.i.i.i.i.for.body.i.i.i.i_crit_edge:     ; preds = %for.inc30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i.i

for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge:   ; preds = %for.inc30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_uc.exit.i.i.i

test_uc.exit.i.i.i:                               ; preds = %for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge, %for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge
  %stat.sroa.0.4.i.i.i = phi i32 [ %stat.sroa.0.173.i.i.i, %for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge ], [ %stat.sroa.0.3.i.i.i, %for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge ]
  %stat.sroa.7.5.i.i.i = phi i32 [ %stat.sroa.7.174.i.i.i, %for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge ], [ %stat.sroa.7.4.i.i.i, %for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge ]
  %stat.sroa.11.7.i.i.i = phi i32 [ %stat.sroa.11.175.i.i.i, %for.body6.i.i.i.test_uc.exit.i.i.i_crit_edge ], [ %stat.sroa.11.6.i.i.i, %for.inc30.i.i.i.i.test_uc.exit.i.i.i_crit_edge ]
  %add.i.i.i.i = add i32 %stat.sroa.15.176.i.i.i, %39
  %inc.i.i.i = add i32 %eras.077.i.i.i, 1
  %cmp5.not.i.i.i = icmp sgt i32 %inc.i.i.i, %sub.i.i.i
  br i1 %cmp5.not.i.i.i, label %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge, label %test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge

test_uc.exit.i.i.i.for.body6.i.i.i_crit_edge:     ; preds = %test_uc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i.i.i

test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge:      ; preds = %test_uc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc7.i.i.i

for.inc7.i.i.i:                                   ; preds = %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge, %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge
  %stat.sroa.0.1.lcssa.i.i.i = phi i32 [ %stat.sroa.0.083.i.i.i, %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge ], [ %stat.sroa.0.4.i.i.i, %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge ]
  %stat.sroa.7.1.lcssa.i.i.i = phi i32 [ %stat.sroa.7.084.i.i.i, %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge ], [ %stat.sroa.7.5.i.i.i, %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge ]
  %stat.sroa.11.1.lcssa.i.i.i = phi i32 [ %stat.sroa.11.085.i.i.i, %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge ], [ %stat.sroa.11.7.i.i.i, %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge ]
  %stat.sroa.15.1.lcssa.i.i.i = phi i32 [ %stat.sroa.15.086.i.i.i, %for.cond4.preheader.i.i.i.for.inc7.i.i.i_crit_edge ], [ %add.i.i.i.i, %test_uc.exit.i.i.i.for.inc7.i.i.i_crit_edge ]
  %inc8.i.i.i = add nuw nsw i32 %errs.087.i.i.i, 1
  %exitcond.i.i.i = icmp eq i32 %errs.087.i.i.i, %div.i.i.i
  br i1 %exitcond.i.i.i, label %for.inc7.i.i.i.for.end9.i.i.i_crit_edge, label %for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge

for.inc7.i.i.i.for.cond4.preheader.i.i.i_crit_edge: ; preds = %for.inc7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i.i.i

for.inc7.i.i.i.for.end9.i.i.i_crit_edge:          ; preds = %for.inc7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end9.i.i.i

for.end9.i.i.i:                                   ; preds = %for.inc7.i.i.i.for.end9.i.i.i_crit_edge, %if.end.i.i67.i.for.end9.i.i.i_crit_edge
  %stat.sroa.0.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i67.i.for.end9.i.i.i_crit_edge ], [ %stat.sroa.0.1.lcssa.i.i.i, %for.inc7.i.i.i.for.end9.i.i.i_crit_edge ]
  %stat.sroa.7.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i67.i.for.end9.i.i.i_crit_edge ], [ %stat.sroa.7.1.lcssa.i.i.i, %for.inc7.i.i.i.for.end9.i.i.i_crit_edge ]
  %stat.sroa.11.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i67.i.for.end9.i.i.i_crit_edge ], [ %stat.sroa.11.1.lcssa.i.i.i, %for.inc7.i.i.i.for.end9.i.i.i_crit_edge ]
  %stat.sroa.15.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i67.i.for.end9.i.i.i_crit_edge ], [ %stat.sroa.15.1.lcssa.i.i.i, %for.inc7.i.i.i.for.end9.i.i.i_crit_edge ]
  %115 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp10.i.i.i = icmp sgt i32 %115, 1
  br i1 %cmp10.i.i.i, label %do.end14.i.i.i, label %for.end9.i.i.i.if.end31.i.i.i_crit_edge

for.end9.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %for.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i.i

do.end14.i.i.i:                                   ; preds = %for.end9.i.i.i
  %call16.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %stat.sroa.0.0.lcssa.i.i.i, i32 noundef %stat.sroa.15.0.lcssa.i.i.i) #15
  %call22.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %stat.sroa.7.0.lcssa.i.i.i, i32 noundef %stat.sroa.15.0.lcssa.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.08.i.i)
  %cmp23.not.i.i.i = icmp eq i32 %i.08.i.i, 2
  br i1 %cmp23.not.i.i.i, label %do.end14.i.i.i.if.end31.i.i.i_crit_edge, label %do.end27.i.i.i

do.end14.i.i.i.if.end31.i.i.i_crit_edge:          ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i.i.i

do.end27.i.i.i:                                   ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %stat.sroa.11.0.lcssa.i.i.i) #15
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %do.end27.i.i.i, %do.end14.i.i.i.if.end31.i.i.i_crit_edge, %for.end9.i.i.i.if.end31.i.i.i_crit_edge
  %add.i.i.i = add i32 %stat.sroa.7.0.lcssa.i.i.i, %stat.sroa.0.0.lcssa.i.i.i
  %add35.i.i.i = add i32 %add.i.i.i, %stat.sroa.11.0.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %add35.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end31.i.i.i.ex_rs_helper.exit.i.i_crit_edge, label %land.lhs.true.i.i71.i

if.end31.i.i.i.ex_rs_helper.exit.i.i_crit_edge:   ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ex_rs_helper.exit.i.i

land.lhs.true.i.i71.i:                            ; preds = %if.end31.i.i.i
  %116 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp36.i.i.i = icmp sgt i32 %116, 0
  br i1 %cmp36.i.i.i, label %do.end40.i.i.i, label %land.lhs.true.i.i71.i.ex_rs_helper.exit.i.i_crit_edge

land.lhs.true.i.i71.i.ex_rs_helper.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ex_rs_helper.exit.i.i

do.end40.i.i.i:                                   ; preds = %land.lhs.true.i.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %add35.i.i.i) #15
  br label %ex_rs_helper.exit.i.i

ex_rs_helper.exit.i.i:                            ; preds = %do.end40.i.i.i, %land.lhs.true.i.i71.i.ex_rs_helper.exit.i.i_crit_edge, %if.end31.i.i.i.ex_rs_helper.exit.i.i_crit_edge
  %or.i.i = or i32 %add35.i.i.i, %retval1.011.i.i
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %exercise_rs.exit.i, label %ex_rs_helper.exit.i.i.for.body.i.i_crit_edge

ex_rs_helper.exit.i.i.for.body.i.i_crit_edge:     ; preds = %ex_rs_helper.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

exercise_rs.exit.i:                               ; preds = %ex_rs_helper.exit.i.i
  %or.i = or i32 %or.i.i, %retval2.099.i
  %117 = load i32, ptr @bc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool21.not.i = icmp eq i32 %117, 0
  br i1 %tobool21.not.i, label %exercise_rs.exit.i.cleanup.i_crit_edge, label %if.then22.i

exercise_rs.exit.i.cleanup.i_crit_edge:           ; preds = %exercise_rs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then22.i:                                      ; preds = %exercise_rs.exit.i
  %118 = ptrtoint ptr %ntrials95.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ntrials95.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.sroa.9.i.i)
  %120 = ptrtoint ptr %stat.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %stat.sroa.0.i.i, align 4
  %121 = ptrtoint ptr %stat.sroa.9.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %stat.sroa.9.i.i, align 4
  %122 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i.i, align 4
  %nroots1.i72.i = getelementptr inbounds %struct.rs_codec, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %nroots1.i72.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nroots1.i72.i, align 4
  %126 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i73.i = icmp sgt i32 %126, 0
  br i1 %cmp.i73.i, label %do.end.i75.i, label %if.then22.i.if.end.i76.i_crit_edge

if.then22.i.if.end.i76.i_crit_edge:               ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i76.i

do.end.i75.i:                                     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %if.end.i76.i

if.end.i76.i:                                     ; preds = %do.end.i75.i, %if.then22.i.if.end.i76.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp2.not75.i.i = icmp slt i32 %125, 1
  br i1 %cmp2.not75.i.i, label %if.end.i76.i.for.end14.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i76.i.for.end14.i.i_crit_edge:             ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i76.i
  %sub.i.i = add nuw i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp44.i.i.i = icmp sgt i32 %119, 0
  br label %for.body.i78.i

for.body.i78.i:                                   ; preds = %for.inc12.i.i.for.body.i78.i_crit_edge, %for.body.lr.ph.i.i
  %errs.078.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc13.i.i, %for.inc12.i.i.for.body.i78.i_crit_edge ]
  %stat.sroa.13.077.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %stat.sroa.13.1.lcssa.i.i, %for.inc12.i.i.for.body.i78.i_crit_edge ]
  %stat.sroa.5.076.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %stat.sroa.5.1.lcssa.i.i, %for.inc12.i.i.for.body.i78.i_crit_edge ]
  %mul.neg.i.i = mul i32 %errs.078.i.i, -2
  %add.i77.i = add i32 %sub.i.i, %mul.neg.i.i
  %127 = tail call i32 @llvm.smax.i32(i32 %add.i77.i, i32 0) #10
  %sub6.i.i = sub i32 %sub11.i, %errs.078.i.i
  %128 = tail call i32 @llvm.smin.i32(i32 %125, i32 %sub6.i.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %128)
  %cmp10.not69.i.i = icmp sgt i32 %127, %128
  br i1 %cmp10.not69.i.i, label %for.body.i78.i.for.inc12.i.i_crit_edge, label %for.body.i78.i.for.body11.i.i_crit_edge

for.body.i78.i.for.body11.i.i_crit_edge:          ; preds = %for.body.i78.i
  br label %for.body11.i.i

for.body.i78.i.for.inc12.i.i_crit_edge:           ; preds = %for.body.i78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12.i.i

for.body11.i.i:                                   ; preds = %test_bc.exit.i.i.for.body11.i.i_crit_edge, %for.body.i78.i.for.body11.i.i_crit_edge
  %eras.072.i.i = phi i32 [ %inc.i88.i, %test_bc.exit.i.i.for.body11.i.i_crit_edge ], [ %127, %for.body.i78.i.for.body11.i.i_crit_edge ]
  %stat.sroa.13.171.i.i = phi i32 [ %add.i.i87.i, %test_bc.exit.i.i.for.body11.i.i_crit_edge ], [ %stat.sroa.13.077.i.i, %for.body.i78.i.for.body11.i.i_crit_edge ]
  %stat.sroa.5.170.i.i = phi i32 [ %stat.sroa.5.5.i.i, %test_bc.exit.i.i.for.body11.i.i_crit_edge ], [ %stat.sroa.5.076.i.i, %for.body.i78.i.for.body11.i.i_crit_edge ]
  %129 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call.i.i, align 4
  %nroots1.i.i79.i = getelementptr inbounds %struct.rs_codec, ptr %130, i32 0, i32 5
  %131 = ptrtoint ptr %nroots1.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %nroots1.i.i79.i, align 4
  %sub.i.i80.i = sub i32 %sub11.i, %132
  %133 = ptrtoint ptr %derrlocs.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %derrlocs.i.i, align 4
  %135 = ptrtoint ptr %corr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %corr.i.i, align 4
  %137 = ptrtoint ptr %r.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %r.i.i, align 4
  br i1 %cmp44.i.i.i, label %for.body.lr.ph.i.i.i, label %for.body11.i.i.test_bc.exit.i.i_crit_edge

for.body11.i.i.test_bc.exit.i.i_crit_edge:        ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_bc.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %for.body11.i.i
  %add.ptr.i.i.i = getelementptr i16, ptr %138, i32 %sub.i.i80.i
  %mul.i.i.i = shl i32 %132, 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %stat.sroa.5.2.i.i = phi i32 [ %stat.sroa.5.170.i.i, %for.body.lr.ph.i.i.i ], [ %stat.sroa.5.4.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %j.045.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc15.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i.i81.i = tail call fastcc i32 @get_rcw_we(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %sub11.i, i32 noundef %errs.078.i.i, i32 noundef %eras.072.i.i) #10
  %call5.i.i.i = tail call i32 @decode_rs16(ptr noundef nonnull %call.i.i, ptr noundef %138, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i80.i, ptr noundef null, i32 noundef %eras.072.i.i, ptr noundef %134, i16 noundef zeroext 0, ptr noundef %136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp9.i.i.i.i = icmp sgt i32 %call5.i.i.i, 0
  br i1 %cmp9.i.i.i.i, label %for.body.i.i.i.for.body.i.i.i84.i_crit_edge, label %for.body.i.i.i.fix_err.exit.i.i.i_crit_edge

for.body.i.i.i.fix_err.exit.i.i.i_crit_edge:      ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fix_err.exit.i.i.i

for.body.i.i.i.for.body.i.i.i84.i_crit_edge:      ; preds = %for.body.i.i.i
  br label %for.body.i.i.i84.i

for.body.i.i.i84.i:                               ; preds = %for.body.i.i.i84.i.for.body.i.i.i84.i_crit_edge, %for.body.i.i.i.for.body.i.i.i84.i_crit_edge
  %i.010.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i84.i.for.body.i.i.i84.i_crit_edge ], [ 0, %for.body.i.i.i.for.body.i.i.i84.i_crit_edge ]
  %arrayidx.i.i.i82.i = getelementptr i16, ptr %136, i32 %i.010.i.i.i.i
  %139 = ptrtoint ptr %arrayidx.i.i.i82.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %arrayidx.i.i.i82.i, align 2
  %arrayidx1.i.i.i.i = getelementptr i32, ptr %134, i32 %i.010.i.i.i.i
  %141 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr i16, ptr %138, i32 %142
  %143 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx2.i.i.i.i, align 2
  %xor8.i.i.i.i = xor i16 %144, %140
  store i16 %xor8.i.i.i.i, ptr %arrayidx2.i.i.i.i, align 2
  %inc.i.i.i.i = add nuw nsw i32 %i.010.i.i.i.i, 1
  %exitcond.not.i.i.i83.i = icmp eq i32 %inc.i.i.i.i, %call5.i.i.i
  br i1 %exitcond.not.i.i.i83.i, label %for.body.i.i.i84.i.fix_err.exit.i.i.i_crit_edge, label %for.body.i.i.i84.i.for.body.i.i.i84.i_crit_edge

for.body.i.i.i84.i.for.body.i.i.i84.i_crit_edge:  ; preds = %for.body.i.i.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i84.i

for.body.i.i.i84.i.fix_err.exit.i.i.i_crit_edge:  ; preds = %for.body.i.i.i84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fix_err.exit.i.i.i

fix_err.exit.i.i.i:                               ; preds = %for.body.i.i.i84.i.fix_err.exit.i.i.i_crit_edge, %for.body.i.i.i.fix_err.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp sgt i32 %call5.i.i.i, -1
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %fix_err.exit.i.i.i.for.inc.sink.split.i.i.i_crit_edge

fix_err.exit.i.i.i.for.inc.sink.split.i.i.i_crit_edge: ; preds = %fix_err.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i.i.i

if.then.i.i.i:                                    ; preds = %fix_err.exit.i.i.i
  %inc.i.i85.i = add i32 %stat.sroa.5.2.i.i, 1
  %145 = call ptr @memset(ptr %136, i32 0, i32 %mul.i.i.i)
  %call7.i.i.i = tail call i32 @encode_rs16(ptr noundef nonnull %call.i.i, ptr noundef %138, i32 noundef %sub.i.i80.i, ptr noundef %136, i16 noundef zeroext 0) #10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %136, i32 %mul.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i86.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i86.i, label %if.then.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i.for.inc.sink.split.i.i.i_crit_edge

if.then.i.i.i.for.inc.sink.split.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i.i.i

if.then.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

for.inc.sink.split.i.i.i:                         ; preds = %if.then.i.i.i.for.inc.sink.split.i.i.i_crit_edge, %fix_err.exit.i.i.i.for.inc.sink.split.i.i.i_crit_edge
  %stat.sroa.5.3.i.i = phi i32 [ %inc.i.i85.i, %if.then.i.i.i.for.inc.sink.split.i.i.i_crit_edge ], [ %stat.sroa.5.2.i.i, %fix_err.exit.i.i.i.for.inc.sink.split.i.i.i_crit_edge ]
  %stat.sink46.i.i.i = phi ptr [ %stat.sroa.9.i.i, %if.then.i.i.i.for.inc.sink.split.i.i.i_crit_edge ], [ %stat.sroa.0.i.i, %fix_err.exit.i.i.i.for.inc.sink.split.i.i.i_crit_edge ]
  %146 = ptrtoint ptr %stat.sink46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %stat.sink46.i.i.i, align 4
  %inc13.i.i.i = add i32 %147, 1
  store i32 %inc13.i.i.i, ptr %stat.sink46.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.inc.sink.split.i.i.i, %if.then.i.i.i.for.inc.i.i.i_crit_edge
  %stat.sroa.5.4.i.i = phi i32 [ %inc.i.i85.i, %if.then.i.i.i.for.inc.i.i.i_crit_edge ], [ %stat.sroa.5.3.i.i, %for.inc.sink.split.i.i.i ]
  %inc15.i.i.i = add nuw nsw i32 %j.045.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc15.i.i.i, %119
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.test_bc.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.inc.i.i.i.test_bc.exit.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_bc.exit.i.i

test_bc.exit.i.i:                                 ; preds = %for.inc.i.i.i.test_bc.exit.i.i_crit_edge, %for.body11.i.i.test_bc.exit.i.i_crit_edge
  %stat.sroa.5.5.i.i = phi i32 [ %stat.sroa.5.170.i.i, %for.body11.i.i.test_bc.exit.i.i_crit_edge ], [ %stat.sroa.5.4.i.i, %for.inc.i.i.i.test_bc.exit.i.i_crit_edge ]
  %add.i.i87.i = add i32 %stat.sroa.13.171.i.i, %119
  %inc.i88.i = add i32 %eras.072.i.i, 1
  %cmp10.not.i.i = icmp sgt i32 %inc.i88.i, %128
  br i1 %cmp10.not.i.i, label %test_bc.exit.i.i.for.inc12.i.i_crit_edge, label %test_bc.exit.i.i.for.body11.i.i_crit_edge

test_bc.exit.i.i.for.body11.i.i_crit_edge:        ; preds = %test_bc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11.i.i

test_bc.exit.i.i.for.inc12.i.i_crit_edge:         ; preds = %test_bc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc12.i.i

for.inc12.i.i:                                    ; preds = %test_bc.exit.i.i.for.inc12.i.i_crit_edge, %for.body.i78.i.for.inc12.i.i_crit_edge
  %stat.sroa.5.1.lcssa.i.i = phi i32 [ %stat.sroa.5.076.i.i, %for.body.i78.i.for.inc12.i.i_crit_edge ], [ %stat.sroa.5.5.i.i, %test_bc.exit.i.i.for.inc12.i.i_crit_edge ]
  %stat.sroa.13.1.lcssa.i.i = phi i32 [ %stat.sroa.13.077.i.i, %for.body.i78.i.for.inc12.i.i_crit_edge ], [ %add.i.i87.i, %test_bc.exit.i.i.for.inc12.i.i_crit_edge ]
  %inc13.i.i = add i32 %errs.078.i.i, 1
  %cmp2.not.i.i = icmp sgt i32 %inc13.i.i, %125
  br i1 %cmp2.not.i.i, label %for.inc12.i.i.for.end14.i.i_crit_edge, label %for.inc12.i.i.for.body.i78.i_crit_edge

for.inc12.i.i.for.body.i78.i_crit_edge:           ; preds = %for.inc12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i78.i

for.inc12.i.i.for.end14.i.i_crit_edge:            ; preds = %for.inc12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end14.i.i

for.end14.i.i:                                    ; preds = %for.inc12.i.i.for.end14.i.i_crit_edge, %if.end.i76.i.for.end14.i.i_crit_edge
  %stat.sroa.5.0.lcssa.i.i = phi i32 [ 0, %if.end.i76.i.for.end14.i.i_crit_edge ], [ %stat.sroa.5.1.lcssa.i.i, %for.inc12.i.i.for.end14.i.i_crit_edge ]
  %stat.sroa.13.0.lcssa.i.i = phi i32 [ 0, %if.end.i76.i.for.end14.i.i_crit_edge ], [ %stat.sroa.13.1.lcssa.i.i, %for.inc12.i.i.for.end14.i.i_crit_edge ]
  %148 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp15.i.i = icmp sgt i32 %148, 1
  br i1 %cmp15.i.i, label %do.end19.i.i, label %if.end34thread-pre-split.i.i

do.end19.i.i:                                     ; preds = %for.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %stat.sroa.0.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %stat.sroa.0.i.i.0.stat.sroa.0.i.i.0.stat.sroa.0.i.0.stat.sroa.0.i.0.stat.sroa.0.0.stat.sroa.0.0.stat.sroa.0.0..i.i = load i32, ptr %stat.sroa.0.i.i, align 4
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %stat.sroa.0.i.i.0.stat.sroa.0.i.i.0.stat.sroa.0.i.0.stat.sroa.0.i.0.stat.sroa.0.0.stat.sroa.0.0.stat.sroa.0.0..i.i, i32 noundef %stat.sroa.13.0.lcssa.i.i) #15
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %stat.sroa.5.0.lcssa.i.i, i32 noundef %stat.sroa.13.0.lcssa.i.i) #15
  %150 = ptrtoint ptr %stat.sroa.9.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %stat.sroa.9.i.i.0.stat.sroa.9.i.i.0.stat.sroa.9.i.0.stat.sroa.9.i.0.stat.sroa.9.0.stat.sroa.9.0.stat.sroa.9.8..i.i = load i32, ptr %stat.sroa.9.i.i, align 4
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %stat.sroa.9.i.i.0.stat.sroa.9.i.i.0.stat.sroa.9.i.0.stat.sroa.9.i.0.stat.sroa.9.0.stat.sroa.9.0.stat.sroa.9.8..i.i, i32 noundef %stat.sroa.5.0.lcssa.i.i) #15
  br label %if.end34.i.i

if.end34thread-pre-split.i.i:                     ; preds = %for.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %stat.sroa.9.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %stat.sroa.9.i.i.0.stat.sroa.9.i.i.0.stat.sroa.9.i.0.stat.sroa.9.i.0.stat.sroa.9.0.stat.sroa.9.0.stat.sroa.9.8.63.pr.i.i = load i32, ptr %stat.sroa.9.i.i, align 4
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.end34thread-pre-split.i.i, %do.end19.i.i
  %stat.sroa.9.0.stat.sroa.9.8.63.i.i = phi i32 [ %stat.sroa.9.i.i.0.stat.sroa.9.i.i.0.stat.sroa.9.i.0.stat.sroa.9.i.0.stat.sroa.9.0.stat.sroa.9.0.stat.sroa.9.8.63.pr.i.i, %if.end34thread-pre-split.i.i ], [ %stat.sroa.9.i.i.0.stat.sroa.9.i.i.0.stat.sroa.9.i.0.stat.sroa.9.i.0.stat.sroa.9.0.stat.sroa.9.0.stat.sroa.9.8..i.i, %do.end19.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.sroa.9.0.stat.sroa.9.8.63.i.i)
  %tobool.not.i89.i = icmp eq i32 %stat.sroa.9.0.stat.sroa.9.8.63.i.i, 0
  br i1 %tobool.not.i89.i, label %if.end34.i.i.exercise_rs_bc.exit.i_crit_edge, label %land.lhs.true.i.i

if.end34.i.i.exercise_rs_bc.exit.i_crit_edge:     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exercise_rs_bc.exit.i

land.lhs.true.i.i:                                ; preds = %if.end34.i.i
  %152 = load i32, ptr @v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp36.i.i = icmp sgt i32 %152, 0
  br i1 %cmp36.i.i, label %do.end40.i.i, label %land.lhs.true.i.i.exercise_rs_bc.exit.i_crit_edge

land.lhs.true.i.i.exercise_rs_bc.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exercise_rs_bc.exit.i

do.end40.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %stat.sroa.9.0.stat.sroa.9.8.63.i.i) #15
  br label %exercise_rs_bc.exit.i

exercise_rs_bc.exit.i:                            ; preds = %do.end40.i.i, %land.lhs.true.i.i.exercise_rs_bc.exit.i_crit_edge, %if.end34.i.i.exercise_rs_bc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.sroa.9.i.i)
  %or25.i = or i32 %stat.sroa.9.0.stat.sroa.9.8.63.i.i, %or.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %exercise_rs_bc.exit.i, %exercise_rs.exit.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %retval2.2.i = phi i32 [ %retval2.099.i, %for.body.i.cleanup.i_crit_edge ], [ %or25.i, %exercise_rs_bc.exit.i ], [ %or.i, %exercise_rs.exit.i.cleanup.i_crit_edge ]
  %prev_pad.1.i = phi i32 [ %prev_pad.0100.i, %for.body.i.cleanup.i_crit_edge ], [ %shr.i, %exercise_rs_bc.exit.i ], [ %shr.i, %exercise_rs.exit.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %cleanup.i.run_exercise.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.run_exercise.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %run_exercise.exit

run_exercise.exit:                                ; preds = %cleanup.i.run_exercise.exit_crit_edge, %free_ws.exit.i.i
  %errlocs.i.i.sink.i = phi ptr [ %errlocs.i.i.i, %free_ws.exit.i.i ], [ %errlocs2.i.i.i.i, %cleanup.i.run_exercise.exit_crit_edge ]
  %retval2.3.ph.i = phi i32 [ -12, %free_ws.exit.i.i ], [ %retval2.2.i, %cleanup.i.run_exercise.exit_crit_edge ]
  %153 = ptrtoint ptr %errlocs.i.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %errlocs.i.i.sink.i, align 8
  tail call void @kfree(ptr noundef %154) #10
  %155 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %call7.i.i.i.i, align 8
  tail call void @kfree(ptr noundef %156) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  tail call void @free_rs(ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.3.ph.i)
  %cmp2 = icmp slt i32 %retval2.3.ph.i, 0
  br i1 %cmp2, label %run_exercise.exit.cleanup11_crit_edge, label %for.inc

run_exercise.exit.cleanup11_crit_edge:            ; preds = %run_exercise.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

for.inc:                                          ; preds = %run_exercise.exit
  %or = or i32 %retval2.3.ph.i, %fail.024
  %inc = add i32 %i.025, 1
  %arrayidx = getelementptr [12 x %struct.etab], ptr @Tab, i32 0, i32 %inc
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx, align 4
  %cmp.not = icmp eq i32 %158, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp eq i32 %or, 0
  br i1 %phi.cmp, label %do.end7, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %cleanup11

do.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %cleanup11

cleanup11:                                        ; preds = %do.end7, %do.end, %run_exercise.exit.cleanup11_crit_edge, %run_exercise.exit.thread, %for.body.cleanup11_crit_edge
  %retval.2 = phi i32 [ -11, %do.end7 ], [ -11, %do.end ], [ -12, %run_exercise.exit.thread ], [ -12, %run_exercise.exit.cleanup11_crit_edge ], [ -12, %for.body.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_gfp(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_rcw_we(ptr noundef %rs, ptr nocapture noundef readonly %ws, i32 noundef %len, i32 noundef %errs, i32 noundef %eras) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs, align 4
  %nroots1 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nroots1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nroots1, align 4
  %derrlocs2 = getelementptr inbounds %struct.wspace, ptr %ws, i32 0, i32 5
  %4 = ptrtoint ptr %derrlocs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %derrlocs2, align 4
  %errlocs3 = getelementptr inbounds %struct.wspace, ptr %ws, i32 0, i32 4
  %6 = ptrtoint ptr %errlocs3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %errlocs3, align 4
  %sub = sub i32 %len, %3
  %nn5 = getelementptr inbounds %struct.rs_codec, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %nn5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nn5, align 4
  %10 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ws, align 4
  %r7 = getelementptr inbounds %struct.wspace, ptr %ws, i32 0, i32 1
  %12 = ptrtoint ptr %r7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp115 = icmp sgt i32 %sub, 0
  br i1 %cmp115, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @prandom_u32() #10
  %and = and i32 %call, %9
  %conv = trunc i32 %and to i16
  %arrayidx = getelementptr i16, ptr %11, i32 %i.0116
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i16, ptr %11, i32 %sub
  %mul = shl i32 %3, 1
  %15 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  %call9 = tail call i32 @encode_rs16(ptr noundef %rs, ptr noundef %11, i32 noundef %sub, ptr noundef %add.ptr, i16 noundef zeroext 0) #10
  %mul10 = shl i32 %len, 1
  %16 = call ptr @memcpy(ptr %13, ptr %11, i32 %mul10)
  %mul11 = shl i32 %len, 2
  %17 = call ptr @memset(ptr %7, i32 0, i32 %mul11)
  %mul12 = shl i32 %3, 2
  %18 = call ptr @memset(ptr %5, i32 0, i32 %mul12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errs)
  %cmp14118 = icmp sgt i32 %errs, 0
  br i1 %cmp14118, label %for.end.do.body.preheader_crit_edge, label %for.end.for.cond35.preheader_crit_edge

for.end.for.cond35.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader

for.end.do.body.preheader_crit_edge:              ; preds = %for.end
  br label %do.body.preheader

do.body.preheader:                                ; preds = %do.end27.do.body.preheader_crit_edge, %for.end.do.body.preheader_crit_edge
  %i.1119 = phi i32 [ %inc33, %do.end27.do.body.preheader_crit_edge ], [ 0, %for.end.do.body.preheader_crit_edge ]
  br label %do.body

for.cond35.preheader:                             ; preds = %do.end27.for.cond35.preheader_crit_edge, %for.end.for.cond35.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eras)
  %cmp36121 = icmp sgt i32 %eras, 0
  br i1 %cmp36121, label %for.cond35.preheader.do.body39.preheader_crit_edge, label %for.cond35.preheader.for.end67_crit_edge

for.cond35.preheader.for.end67_crit_edge:         ; preds = %for.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67

for.cond35.preheader.do.body39.preheader_crit_edge: ; preds = %for.cond35.preheader
  br label %do.body39.preheader

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %call17 = tail call i32 @prandom_u32() #10
  %and18 = and i32 %call17, %9
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %do.body.do.body_crit_edge, label %do.body.do.body21_crit_edge

do.body.do.body21_crit_edge:                      ; preds = %do.body
  br label %do.body21

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body.do.body21_crit_edge
  %call22 = tail call i32 @prandom_u32() #10
  %rem = urem i32 %call22, %len
  %arrayidx24 = getelementptr i32, ptr %7, i32 %rem
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx24, align 4
  %cmp25.not = icmp eq i32 %20, 0
  br i1 %cmp25.not, label %do.end27, label %do.body21.do.body21_crit_edge

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.end27:                                         ; preds = %do.body21
  %arrayidx24.le = getelementptr i32, ptr %7, i32 %rem
  %21 = ptrtoint ptr %arrayidx24.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx24.le, align 4
  %arrayidx29 = getelementptr i16, ptr %13, i32 %rem
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx29, align 2
  %24 = trunc i32 %and18 to i16
  %conv31 = xor i16 %23, %24
  store i16 %conv31, ptr %arrayidx29, align 2
  %inc33 = add nuw nsw i32 %i.1119, 1
  %exitcond124.not = icmp eq i32 %inc33, %errs
  br i1 %exitcond124.not, label %do.end27.for.cond35.preheader_crit_edge, label %do.end27.do.body.preheader_crit_edge

do.end27.do.body.preheader_crit_edge:             ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

do.end27.for.cond35.preheader_crit_edge:          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond35.preheader

do.body39.preheader:                              ; preds = %for.inc65.do.body39.preheader_crit_edge, %for.cond35.preheader.do.body39.preheader_crit_edge
  %i.2123 = phi i32 [ %inc66, %for.inc65.do.body39.preheader_crit_edge ], [ 0, %for.cond35.preheader.do.body39.preheader_crit_edge ]
  %errs.addr.0122 = phi i32 [ %errs.addr.1, %for.inc65.do.body39.preheader_crit_edge ], [ %errs, %for.cond35.preheader.do.body39.preheader_crit_edge ]
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %do.body39.preheader
  %call40 = tail call i32 @prandom_u32() #10
  %rem41 = urem i32 %call40, %len
  %arrayidx43 = getelementptr i32, ptr %7, i32 %rem41
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx43, align 4
  %cmp44.not = icmp eq i32 %26, 0
  br i1 %cmp44.not, label %do.end46, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

do.end46:                                         ; preds = %do.body39
  %arrayidx43.le = getelementptr i32, ptr %7, i32 %rem41
  %arrayidx47 = getelementptr i32, ptr %5, i32 %i.2123
  %27 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rem41, ptr %arrayidx47, align 4
  %28 = load i32, ptr @ewsc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %do.end46.do.body52.preheader_crit_edge, label %land.lhs.true

do.end46.do.body52.preheader_crit_edge:           ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.preheader

do.body52.preheader:                              ; preds = %land.lhs.true.do.body52.preheader_crit_edge, %do.end46.do.body52.preheader_crit_edge
  br label %do.body52

land.lhs.true:                                    ; preds = %do.end46
  %call48 = tail call i32 @prandom_u32() #10
  %and49 = and i32 %call48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true.do.body52.preheader_crit_edge, label %if.then

land.lhs.true.do.body52.preheader_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx43.le to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %arrayidx43.le, align 4
  br label %for.inc65

do.body52:                                        ; preds = %do.body52.do.body52_crit_edge, %do.body52.preheader
  %call53 = tail call i32 @prandom_u32() #10
  %and54 = and i32 %call53, %9
  %cmp56 = icmp eq i32 %and54, 0
  br i1 %cmp56, label %do.body52.do.body52_crit_edge, label %do.end58

do.body52.do.body52_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %arrayidx43.le to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx43.le, align 4
  %arrayidx60 = getelementptr i16, ptr %13, i32 %rem41
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx60, align 2
  %33 = trunc i32 %and54 to i16
  %conv63 = xor i16 %32, %33
  store i16 %conv63, ptr %arrayidx60, align 2
  %inc64 = add i32 %errs.addr.0122, 1
  br label %for.inc65

for.inc65:                                        ; preds = %do.end58, %if.then
  %errs.addr.1 = phi i32 [ %errs.addr.0122, %if.then ], [ %inc64, %do.end58 ]
  %inc66 = add nuw nsw i32 %i.2123, 1
  %exitcond125.not = icmp eq i32 %inc66, %eras
  br i1 %exitcond125.not, label %for.inc65.for.end67_crit_edge, label %for.inc65.do.body39.preheader_crit_edge

for.inc65.do.body39.preheader_crit_edge:          ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39.preheader

for.inc65.for.end67_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67

for.end67:                                        ; preds = %for.inc65.for.end67_crit_edge, %for.cond35.preheader.for.end67_crit_edge
  %errs.addr.0.lcssa = phi i32 [ %errs, %for.cond35.preheader.for.end67_crit_edge ], [ %errs.addr.1, %for.inc65.for.end67_crit_edge ]
  ret i32 %errs.addr.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @encode_rs16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_v, !1, !"__param_v", i1 false, i1 false}
!1 = !{!"../lib/reed_solomon/test_rslib.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_vtype173, !1, !"__UNIQUE_ID_vtype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_v174, !1, !"__UNIQUE_ID_v174", i1 false, i1 false}
!4 = !{ptr @__param_ewsc, !5, !"__param_ewsc", i1 false, i1 false}
!5 = !{!"../lib/reed_solomon/test_rslib.c", i32 33, i32 1}
!6 = !{ptr @__UNIQUE_ID_ewsctype175, !5, !"__UNIQUE_ID_ewsctype175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_ewsc176, !5, !"__UNIQUE_ID_ewsc176", i1 false, i1 false}
!8 = !{ptr @__param_bc, !9, !"__param_bc", i1 false, i1 false}
!9 = !{!"../lib/reed_solomon/test_rslib.c", i32 34, i32 1}
!10 = !{ptr @__UNIQUE_ID_bctype177, !9, !"__UNIQUE_ID_bctype177", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_bc178, !9, !"__UNIQUE_ID_bc178", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_test_rslib__179_513_test_rslib_init6, !13, !"__initcall__kmod_test_rslib__179_513_test_rslib_init6", i1 false, i1 false}
!13 = !{!"../lib/reed_solomon/test_rslib.c", i32 513, i32 1}
!14 = !{ptr @__exitcall_test_rslib_exit, !15, !"__exitcall_test_rslib_exit", i1 false, i1 false}
!15 = !{!"../lib/reed_solomon/test_rslib.c", i32 514, i32 1}
!16 = !{ptr @__UNIQUE_ID_file180, !17, !"__UNIQUE_ID_file180", i1 false, i1 false}
!17 = !{!"../lib/reed_solomon/test_rslib.c", i32 516, i32 1}
!18 = !{ptr @__UNIQUE_ID_license181, !17, !"__UNIQUE_ID_license181", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author182, !20, !"__UNIQUE_ID_author182", i1 false, i1 false}
!20 = !{!"../lib/reed_solomon/test_rslib.c", i32 517, i32 1}
!21 = !{ptr @__UNIQUE_ID_description183, !22, !"__UNIQUE_ID_description183", i1 false, i1 false}
!22 = !{!"../lib/reed_solomon/test_rslib.c", i32 518, i32 1}
!23 = !{ptr @__param_str_v, !1, !"__param_str_v", i1 false, i1 false}
!24 = !{ptr @v, !1, !"v", i1 false, i1 false}
!25 = !{ptr @__param_str_ewsc, !5, !"__param_str_ewsc", i1 false, i1 false}
!26 = !{ptr @ewsc, !5, !"ewsc", i1 false, i1 false}
!27 = !{ptr @__param_str_bc, !9, !"__param_str_bc", i1 false, i1 false}
!28 = !{ptr @bc, !9, !"bc", i1 false, i1 false}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/reed_solomon/test_rslib.c", i32 502, i32 3}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @test_rslib_init._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_rslib_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/reed_solomon/test_rslib.c", i32 504, i32 3}
!37 = !{ptr @test_rslib_init._entry.3, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_rslib_init._entry_ptr.5, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @Tab, !40, !"Tab", i1 false, i1 false}
!40 = !{!"../lib/reed_solomon/test_rslib.c", i32 46, i32 20}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/reed_solomon/test_rslib.c", i32 471, i32 4}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @run_exercise._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @run_exercise._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pad_coef, !47, !"pad_coef", i1 false, i1 false}
!47 = !{!"../lib/reed_solomon/test_rslib.c", i32 90, i32 19}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/reed_solomon/test_rslib.c", i32 357, i32 3}
!50 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @exercise_rs._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @exercise_rs._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/reed_solomon/test_rslib.c", i32 317, i32 3}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/reed_solomon/test_rslib.c", i32 318, i32 3}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/reed_solomon/test_rslib.c", i32 319, i32 3}
!59 = !{ptr @ex_rs_helper.desc, !60, !"desc", i1 false, i1 false}
!60 = !{!"../lib/reed_solomon/test_rslib.c", i32 316, i32 28}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/reed_solomon/test_rslib.c", i32 327, i32 3}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ex_rs_helper._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @ex_rs_helper._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/reed_solomon/test_rslib.c", i32 334, i32 3}
!68 = !{ptr @ex_rs_helper._entry.15, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ex_rs_helper._entry_ptr.17, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/reed_solomon/test_rslib.c", i32 336, i32 3}
!72 = !{ptr @ex_rs_helper._entry.18, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ex_rs_helper._entry_ptr.20, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/reed_solomon/test_rslib.c", i32 339, i32 4}
!76 = !{ptr @ex_rs_helper._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ex_rs_helper._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/reed_solomon/test_rslib.c", i32 344, i32 3}
!80 = !{ptr @ex_rs_helper._entry.24, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ex_rs_helper._entry_ptr.26, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/reed_solomon/test_rslib.c", i32 415, i32 3}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @exercise_rs_bc._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @exercise_rs_bc._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/reed_solomon/test_rslib.c", i32 428, i32 3}
!89 = !{ptr @exercise_rs_bc._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @exercise_rs_bc._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/reed_solomon/test_rslib.c", i32 430, i32 3}
!93 = !{ptr @exercise_rs_bc._entry.32, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @exercise_rs_bc._entry_ptr.34, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/reed_solomon/test_rslib.c", i32 432, i32 3}
!97 = !{ptr @exercise_rs_bc._entry.35, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @exercise_rs_bc._entry_ptr.37, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/reed_solomon/test_rslib.c", i32 437, i32 3}
!101 = !{ptr @exercise_rs_bc._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @exercise_rs_bc._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 1, i32 2000}
