; ModuleID = '/llk/IR_all_yes/kernel/trace/synth_event_gen_test.c_pt.bc'
source_filename = "../kernel/trace/synth_event_gen_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.synth_field_desc = type { ptr, ptr }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dynevent_cmd = type { %struct.seq_buf, ptr, i32, i32, ptr, ptr }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.synth_event_trace_state = type { %struct.trace_event_buffer, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }

@gen_synth_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"synthetic\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gen_synth_test\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kernel/trace/synth_event_gen_test.c\00", [60 x i8] zeroinitializer }, align 32
@empty_synth_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"empty_synth_test\00", [47 x i8] zeroinitializer }, align 32
@create_synth_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"create_synth_test\00", [46 x i8] zeroinitializer }, align 32
@__initcall__kmod_synth_event_gen_test__253_524_synth_event_gen_test_init6 = internal global ptr @synth_event_gen_test_init, section ".initcall6.init", align 4
@__exitcall_synth_event_gen_test_exit = internal global ptr @synth_event_gen_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author254 = internal constant [40 x i8] c"synth_event_gen_test.author=Tom Zanussi\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [65 x i8] c"synth_event_gen_test.description=synthetic event generation test\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [60 x i8] c"synth_event_gen_test.file=kernel/trace/synth_event_gen_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [36 x i8] c"synth_event_gen_test.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"next_pid_field\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[16]\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"next_comm_field\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ts_ns\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ts_ms\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[64]\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"my_string_field\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"my_int_field\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hula hoops\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thneed\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tiddlywinks\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"thneed_2.0\00", [21 x i8] zeroinitializer }, align 32
@create_synth_test_fields = internal global { [9 x %struct.synth_field_desc], [56 x i8] } { [9 x %struct.synth_field_desc] [%struct.synth_field_desc { ptr @.str.5, ptr @.str.6 }, %struct.synth_field_desc { ptr @.str.7, ptr @.str.8 }, %struct.synth_field_desc { ptr @.str.9, ptr @.str.10 }, %struct.synth_field_desc { ptr @.str.24, ptr @.str.25 }, %struct.synth_field_desc { ptr @.str.9, ptr @.str.11 }, %struct.synth_field_desc { ptr @.str.12, ptr @.str.13 }, %struct.synth_field_desc { ptr @.str.14, ptr @.str.15 }, %struct.synth_field_desc { ptr @.str.24, ptr @.str.26 }, %struct.synth_field_desc { ptr @.str.16, ptr @.str.17 }], [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xrayspecs\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kerplunk\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char[]\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dynstring_field_1\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dynstring_field_2\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slinky\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thneed_2.01\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"silly putty\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"thneed_9\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clackers\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"viewmaster\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Thneed\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"yoyos\00", [26 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [7 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/synth_event_gen_test.gcda\00", [56 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [19 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 1280156244, i32 618900517 }, %emit_function_args_ty { i32 1, i32 1237462816, i32 618900517 }, %emit_function_args_ty { i32 2, i32 871643455, i32 618900517 }, %emit_function_args_ty { i32 3, i32 -642046164, i32 618900517 }, %emit_function_args_ty { i32 4, i32 684956984, i32 618900517 }, %emit_function_args_ty { i32 5, i32 578554590, i32 618900517 }, %emit_function_args_ty { i32 6, i32 694033, i32 618900517 }, %emit_function_args_ty { i32 7, i32 231703487, i32 618900517 }, %emit_function_args_ty { i32 8, i32 436087400, i32 618900517 }, %emit_function_args_ty { i32 9, i32 -10115036, i32 618900517 }, %emit_function_args_ty { i32 10, i32 1781672997, i32 618900517 }, %emit_function_args_ty { i32 11, i32 288547376, i32 618900517 }, %emit_function_args_ty { i32 12, i32 -400554785, i32 618900517 }, %emit_function_args_ty { i32 13, i32 -1782918348, i32 618900517 }, %emit_function_args_ty { i32 14, i32 795548855, i32 618900517 }, %emit_function_args_ty { i32 15, i32 727036892, i32 618900517 }, %emit_function_args_ty { i32 16, i32 1841983822, i32 618900517 }, %emit_function_args_ty { i32 17, i32 1624494247, i32 618900517 }, %emit_function_args_ty { i32 18, i32 -963894156, i32 618900517 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [19 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 7, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.52 }]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"gen_synth_test\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 39, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 491, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"empty_synth_test\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 38, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 502, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"create_synth_test\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 37, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 513, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 64, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 74, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 74, i32 52 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 78, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 78, i32 48 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 82, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 82, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 114, i32 23 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 118, i32 23 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 221, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 225, i32 23 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"create_synth_test_fields\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 241, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 297, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 301, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 245, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 245, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 249, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 337, i32 44 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 357, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 403, i32 58 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 408, i32 58 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 431, i32 16 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 433, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 436, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [39 x i8] c"../kernel/trace/synth_event_gen_test.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 437, i32 16 }
@___asan_gen_.170 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_synth_event_gen_test_exit, ptr @__initcall__kmod_synth_event_gen_test__253_524_synth_event_gen_test_init6, ptr @synth_event_gen_test_exit, ptr @gen_synth_test, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @empty_synth_test, ptr @.str.3, ptr @create_synth_test, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @create_synth_test_fields, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@1 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen_synth_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_synth_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_synth_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_synth_test_fields to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_event_gen_test_exit() #0 section ".exit.text" align 64 !dbg !94 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !97
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 16
  %1 = load ptr, ptr @gen_synth_test, align 4, !dbg !98
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !98
  %2 = ptrtoint ptr %tr to i32, !dbg !98
  call void @__asan_load4_noabort(i32 %2), !dbg !98
  %3 = load ptr, ptr %tr, align 4, !dbg !98
  %call = tail call i32 @trace_array_set_clr_event(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #10, !dbg !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !98
  %tobool.not = icmp eq i32 %call, 0, !dbg !98
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !98, !prof !99

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !98
  br label %if.end, !dbg !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !98
  %gcov_ctr182 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !98
  %4 = add i64 %gcov_ctr182, 1, !dbg !98
  store i64 %4, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !98
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 493, i32 noundef 9, ptr noundef null) #10, !dbg !98
  br label %if.end, !dbg !98

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = load ptr, ptr @gen_synth_test, align 4, !dbg !100
  tail call void @trace_put_event_file(ptr noundef %5) #10, !dbg !101
  %call21 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.1) #10, !dbg !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21), !dbg !102
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !102
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %if.then34, !dbg !102, !prof !99

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !102
  br label %if.end44, !dbg !102

if.then34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !102
  %gcov_ctr183 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !102
  %6 = add i64 %gcov_ctr183, 1, !dbg !102
  store i64 %6, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 2), align 16, !dbg !102
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 499, i32 noundef 9, ptr noundef null) #10, !dbg !102
  br label %if.end44, !dbg !102

if.end44:                                         ; preds = %if.then34, %if.end.if.end44_crit_edge
  %7 = load ptr, ptr @empty_synth_test, align 4, !dbg !103
  %tr53 = getelementptr inbounds %struct.trace_event_file, ptr %7, i32 0, i32 4, !dbg !103
  %8 = ptrtoint ptr %tr53 to i32, !dbg !103
  call void @__asan_load4_noabort(i32 %8), !dbg !103
  %9 = load ptr, ptr %tr53, align 4, !dbg !103
  %call54 = tail call i32 @trace_array_set_clr_event(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #10, !dbg !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54), !dbg !103
  %tobool55.not = icmp eq i32 %call54, 0, !dbg !103
  br i1 %tobool55.not, label %if.end44.if.end77_crit_edge, label %if.then67, !dbg !103, !prof !99

if.end44.if.end77_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9, !dbg !103
  br label %if.end77, !dbg !103

if.then67:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9, !dbg !103
  %gcov_ctr184 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !103
  %10 = add i64 %gcov_ctr184, 1, !dbg !103
  store i64 %10, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 3), align 8, !dbg !103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 504, i32 noundef 9, ptr noundef null) #10, !dbg !103
  br label %if.end77, !dbg !103

if.end77:                                         ; preds = %if.then67, %if.end44.if.end77_crit_edge
  %11 = load ptr, ptr @empty_synth_test, align 4, !dbg !104
  tail call void @trace_put_event_file(ptr noundef %11) #10, !dbg !105
  %call86 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.3) #10, !dbg !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86), !dbg !106
  %tobool87.not = icmp eq i32 %call86, 0, !dbg !106
  br i1 %tobool87.not, label %if.end77.if.end109_crit_edge, label %if.then99, !dbg !106, !prof !99

if.end77.if.end109_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9, !dbg !106
  br label %if.end109, !dbg !106

if.then99:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9, !dbg !106
  %gcov_ctr185 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !106
  %12 = add i64 %gcov_ctr185, 1, !dbg !106
  store i64 %12, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 4), align 16, !dbg !106
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 510, i32 noundef 9, ptr noundef null) #10, !dbg !106
  br label %if.end109, !dbg !106

if.end109:                                        ; preds = %if.then99, %if.end77.if.end109_crit_edge
  %13 = load ptr, ptr @create_synth_test, align 4, !dbg !107
  %tr118 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 4, !dbg !107
  %14 = ptrtoint ptr %tr118 to i32, !dbg !107
  call void @__asan_load4_noabort(i32 %14), !dbg !107
  %15 = load ptr, ptr %tr118, align 4, !dbg !107
  %call119 = tail call i32 @trace_array_set_clr_event(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i1 noundef zeroext false) #10, !dbg !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119), !dbg !107
  %tobool120.not = icmp eq i32 %call119, 0, !dbg !107
  br i1 %tobool120.not, label %if.end109.if.end142_crit_edge, label %if.then132, !dbg !107, !prof !99

if.end109.if.end142_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9, !dbg !107
  br label %if.end142, !dbg !107

if.then132:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9, !dbg !107
  %gcov_ctr186 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !107
  %16 = add i64 %gcov_ctr186, 1, !dbg !107
  store i64 %16, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 5), align 8, !dbg !107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 515, i32 noundef 9, ptr noundef null) #10, !dbg !107
  br label %if.end142, !dbg !107

if.end142:                                        ; preds = %if.then132, %if.end109.if.end142_crit_edge
  %17 = load ptr, ptr @create_synth_test, align 4, !dbg !108
  tail call void @trace_put_event_file(ptr noundef %17) #10, !dbg !109
  %call151 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.4) #10, !dbg !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151), !dbg !110
  %tobool152.not = icmp eq i32 %call151, 0, !dbg !110
  br i1 %tobool152.not, label %if.end142.if.end174_crit_edge, label %if.then164, !dbg !110, !prof !99

if.end142.if.end174_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9, !dbg !110
  br label %if.end174, !dbg !110

if.then164:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9, !dbg !110
  %gcov_ctr187 = load i64, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !110
  %18 = add i64 %gcov_ctr187, 1, !dbg !110
  store i64 %18, ptr getelementptr inbounds ([7 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 6), align 16, !dbg !110
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 521, i32 noundef 9, ptr noundef null) #10, !dbg !110
  br label %if.end174, !dbg !110

if.end174:                                        ; preds = %if.then164, %if.end142.if.end174_crit_edge
  ret void, !dbg !111
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_array_set_clr_event(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_put_event_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_event_gen_test_init() #0 section ".init.text" align 64 !dbg !112 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !113
  %call = tail call fastcc i32 @test_gen_synth_cmd() #11, !dbg !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !115
  %tobool.not = icmp eq i32 %call, 0, !dbg !115
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !115

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !116
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !116
  %0 = add i64 %gcov_ctr, 1, !dbg !116
  store i64 %0, ptr @__llvm_gcov_ctr.35, align 16, !dbg !116
  br label %cleanup, !dbg !117

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @test_empty_synth_event() #11, !dbg !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !119
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !119
  br i1 %tobool2.not, label %if.end59, label %if.then3, !dbg !119

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr @gen_synth_test, align 4, !dbg !120
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4, !dbg !120
  %2 = ptrtoint ptr %tr to i32, !dbg !120
  call void @__asan_load4_noabort(i32 %2), !dbg !120
  %3 = load ptr, ptr %tr, align 4, !dbg !120
  %call4 = tail call i32 @trace_array_set_clr_event(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #10, !dbg !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4), !dbg !120
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !120
  br i1 %tobool5.not, label %if.then3.if.end20_crit_edge, label %do.end, !dbg !120, !prof !99

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9, !dbg !120
  br label %if.end20, !dbg !120

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9, !dbg !120
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 454, i32 noundef 9, ptr noundef null) #10, !dbg !120
  %gcov_ctr290 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !120
  %4 = add i64 %gcov_ctr290, 1, !dbg !120
  store i64 %4, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !120
  br label %if.end20, !dbg !120

if.end20:                                         ; preds = %do.end, %if.then3.if.end20_crit_edge
  %5 = load ptr, ptr @gen_synth_test, align 4, !dbg !121
  tail call void @trace_put_event_file(ptr noundef %5) #10, !dbg !122
  %call28 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.1) #10, !dbg !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28), !dbg !123
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !123
  br i1 %tobool29.not, label %if.end20.if.end51_crit_edge, label %do.end45, !dbg !123, !prof !99

if.end20.if.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9, !dbg !123
  br label %if.end51, !dbg !123

do.end45:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9, !dbg !123
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 456, i32 noundef 9, ptr noundef null) #10, !dbg !123
  %gcov_ctr291 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !123
  %6 = add i64 %gcov_ctr291, 1, !dbg !123
  store i64 %6, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !123
  br label %if.end51, !dbg !123

if.end51:                                         ; preds = %do.end45, %if.end20.if.end51_crit_edge
  %gcov_ctr292 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !123
  %7 = add i64 %gcov_ctr292, 1, !dbg !123
  store i64 %7, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !123
  br label %cleanup, !dbg !124

if.end59:                                         ; preds = %if.end
  %call60 = tail call fastcc i32 @test_create_synth_event() #11, !dbg !125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60), !dbg !126
  %tobool61.not = icmp eq i32 %call60, 0, !dbg !126
  br i1 %tobool61.not, label %if.end193, label %if.then62, !dbg !126

if.then62:                                        ; preds = %if.end59
  %8 = load ptr, ptr @gen_synth_test, align 4, !dbg !127
  %tr64 = getelementptr inbounds %struct.trace_event_file, ptr %8, i32 0, i32 4, !dbg !127
  %9 = ptrtoint ptr %tr64 to i32, !dbg !127
  call void @__asan_load4_noabort(i32 %9), !dbg !127
  %10 = load ptr, ptr %tr64, align 4, !dbg !127
  %call65 = tail call i32 @trace_array_set_clr_event(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #10, !dbg !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65), !dbg !127
  %tobool66.not = icmp eq i32 %call65, 0, !dbg !127
  br i1 %tobool66.not, label %if.then62.if.end88_crit_edge, label %do.end82, !dbg !127, !prof !99

if.then62.if.end88_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9, !dbg !127
  br label %if.end88, !dbg !127

do.end82:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9, !dbg !127
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 464, i32 noundef 9, ptr noundef null) #10, !dbg !127
  %gcov_ctr293 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !127
  %11 = add i64 %gcov_ctr293, 1, !dbg !127
  store i64 %11, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !127
  br label %if.end88, !dbg !127

if.end88:                                         ; preds = %do.end82, %if.then62.if.end88_crit_edge
  %12 = load ptr, ptr @gen_synth_test, align 4, !dbg !128
  tail call void @trace_put_event_file(ptr noundef %12) #10, !dbg !129
  %call97 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.1) #10, !dbg !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97), !dbg !130
  %tobool98.not = icmp eq i32 %call97, 0, !dbg !130
  br i1 %tobool98.not, label %if.end88.if.end120_crit_edge, label %do.end114, !dbg !130, !prof !99

if.end88.if.end120_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9, !dbg !130
  br label %if.end120, !dbg !130

do.end114:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9, !dbg !130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 466, i32 noundef 9, ptr noundef null) #10, !dbg !130
  %gcov_ctr294 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !130
  %13 = add i64 %gcov_ctr294, 1, !dbg !130
  store i64 %13, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !130
  br label %if.end120, !dbg !130

if.end120:                                        ; preds = %do.end114, %if.end88.if.end120_crit_edge
  %14 = load ptr, ptr @empty_synth_test, align 4, !dbg !131
  %tr129 = getelementptr inbounds %struct.trace_event_file, ptr %14, i32 0, i32 4, !dbg !131
  %15 = ptrtoint ptr %tr129 to i32, !dbg !131
  call void @__asan_load4_noabort(i32 %15), !dbg !131
  %16 = load ptr, ptr %tr129, align 4, !dbg !131
  %call130 = tail call i32 @trace_array_set_clr_event(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false) #10, !dbg !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130), !dbg !131
  %tobool131.not = icmp eq i32 %call130, 0, !dbg !131
  br i1 %tobool131.not, label %if.end120.if.end153_crit_edge, label %do.end147, !dbg !131, !prof !99

if.end120.if.end153_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9, !dbg !131
  br label %if.end153, !dbg !131

do.end147:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9, !dbg !131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 470, i32 noundef 9, ptr noundef null) #10, !dbg !131
  %gcov_ctr295 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !131
  %17 = add i64 %gcov_ctr295, 1, !dbg !131
  store i64 %17, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 6), align 16, !dbg !131
  br label %if.end153, !dbg !131

if.end153:                                        ; preds = %do.end147, %if.end120.if.end153_crit_edge
  %18 = load ptr, ptr @empty_synth_test, align 4, !dbg !132
  tail call void @trace_put_event_file(ptr noundef %18) #10, !dbg !133
  %call162 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.3) #10, !dbg !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162), !dbg !134
  %tobool163.not = icmp eq i32 %call162, 0, !dbg !134
  br i1 %tobool163.not, label %if.end153.if.end185_crit_edge, label %do.end179, !dbg !134, !prof !99

if.end153.if.end185_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9, !dbg !134
  br label %if.end185, !dbg !134

do.end179:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9, !dbg !134
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 472, i32 noundef 9, ptr noundef null) #10, !dbg !134
  %gcov_ctr296 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 7), align 8, !dbg !134
  %19 = add i64 %gcov_ctr296, 1, !dbg !134
  store i64 %19, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 7), align 8, !dbg !134
  br label %if.end185, !dbg !134

if.end185:                                        ; preds = %do.end179, %if.end153.if.end185_crit_edge
  %gcov_ctr297 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 8), align 16, !dbg !134
  %20 = add i64 %gcov_ctr297, 1, !dbg !134
  store i64 %20, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 8), align 16, !dbg !134
  br label %cleanup, !dbg !135

if.end193:                                        ; preds = %if.end59
  %call194 = tail call fastcc i32 @test_add_next_synth_val() #11, !dbg !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194), !dbg !137
  %tobool196.not = icmp eq i32 %call194, 0, !dbg !137
  br i1 %tobool196.not, label %if.end193.if.end218_crit_edge, label %if.then208, !dbg !137, !prof !99

if.end193.if.end218_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9, !dbg !137
  br label %if.end218, !dbg !137

if.then208:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9, !dbg !137
  %gcov_ctr298 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 9), align 8, !dbg !137
  %21 = add i64 %gcov_ctr298, 1, !dbg !137
  store i64 %21, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 9), align 8, !dbg !137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 477, i32 noundef 9, ptr noundef null) #10, !dbg !137
  br label %if.end218, !dbg !137

if.end218:                                        ; preds = %if.then208, %if.end193.if.end218_crit_edge
  %call226 = tail call fastcc i32 @test_add_synth_val() #11, !dbg !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226), !dbg !139
  %tobool228.not = icmp eq i32 %call226, 0, !dbg !139
  br i1 %tobool228.not, label %if.end218.if.end250_crit_edge, label %if.then240, !dbg !139, !prof !99

if.end218.if.end250_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9, !dbg !139
  br label %if.end250, !dbg !139

if.then240:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9, !dbg !139
  %gcov_ctr299 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 10), align 16, !dbg !139
  %22 = add i64 %gcov_ctr299, 1, !dbg !139
  store i64 %22, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 10), align 16, !dbg !139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 480, i32 noundef 9, ptr noundef null) #10, !dbg !139
  br label %if.end250, !dbg !139

if.end250:                                        ; preds = %if.then240, %if.end218.if.end250_crit_edge
  %call258 = tail call fastcc i32 @test_trace_synth_event() #11, !dbg !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258), !dbg !141
  %tobool260.not = icmp eq i32 %call258, 0, !dbg !141
  br i1 %tobool260.not, label %if.end250.if.end282_crit_edge, label %do.end276, !dbg !141, !prof !99

if.end250.if.end282_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9, !dbg !141
  br label %if.end282, !dbg !141

do.end276:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #9, !dbg !141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 483, i32 noundef 9, ptr noundef null) #10, !dbg !141
  %gcov_ctr300 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 11), align 8, !dbg !141
  %23 = add i64 %gcov_ctr300, 1, !dbg !141
  store i64 %23, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 11), align 8, !dbg !141
  br label %if.end282, !dbg !141

if.end282:                                        ; preds = %do.end276, %if.end250.if.end282_crit_edge
  %gcov_ctr301 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 12), align 16, !dbg !141
  %24 = add i64 %gcov_ctr301, 1, !dbg !141
  store i64 %24, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 12), align 16, !dbg !141
  br label %cleanup, !dbg !141

cleanup:                                          ; preds = %if.end282, %if.end185, %if.end51, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.end51 ], [ %call60, %if.end185 ], [ %call258, %if.end282 ], !dbg !142
  ret i32 %retval.0, !dbg !143
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_gen_synth_cmd() unnamed_addr #0 section ".init.text" align 64 !dbg !144 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  %vals = alloca [7 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !145
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10, !dbg !146
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !147
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %vals) #10, !dbg !148
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 10), align 16, !dbg !149
  %2 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !149
  store i64 %2, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 10), align 16, !dbg !149
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !157
  %3 = add i64 %gcov_ctr11.i.i, 1, !dbg !157
  store i64 %3, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !157
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !158
  %4 = add i64 %gcov_ctr.i.i.i, 1, !dbg !158
  store i64 %4, ptr @__llvm_gcov_ctr.49, align 16, !dbg !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !161
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !161
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #12, !dbg !162
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !163
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !165
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !165
  %6 = add i64 %gcov_ctr, 1, !dbg !165
  store i64 %6, ptr @__llvm_gcov_ctr.36, align 16, !dbg !165
  br label %cleanup, !dbg !165

if.end:                                           ; preds = %entry
  call void @synth_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #10, !dbg !166
  %call1 = call i32 (ptr, ptr, ptr, ...) @__synth_event_gen_cmd_start(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, ptr noundef null) #10, !dbg !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !168
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !168
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !168

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !169
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !169
  %7 = add i64 %gcov_ctr42, 1, !dbg !169
  store i64 %7, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !169
  br label %free, !dbg !169

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #10, !dbg !170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !171
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !171
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !171

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !172
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !172
  %8 = add i64 %gcov_ctr43, 1, !dbg !172
  store i64 %8, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !172
  br label %free, !dbg !172

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10, !dbg !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !174
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !174
  br i1 %tobool10.not, label %if.end12, label %if.then11, !dbg !174

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !175
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !175
  %9 = add i64 %gcov_ctr44, 1, !dbg !175
  store i64 %9, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !175
  br label %free, !dbg !175

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10, !dbg !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !177
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !177
  br i1 %tobool14.not, label %if.end16, label %if.then15, !dbg !177

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9, !dbg !178
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !178
  %10 = add i64 %gcov_ctr45, 1, !dbg !178
  store i64 %10, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !178
  br label %free, !dbg !178

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #10, !dbg !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17), !dbg !180
  %tobool18.not = icmp eq i32 %call17, 0, !dbg !180
  br i1 %tobool18.not, label %if.end20, label %if.then19, !dbg !180

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9, !dbg !181
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), align 8, !dbg !181
  %11 = add i64 %gcov_ctr46, 1, !dbg !181
  store i64 %11, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), align 8, !dbg !181
  br label %free, !dbg !181

if.end20:                                         ; preds = %if.end16
  %call21 = call ptr @trace_get_event_file(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10, !dbg !182
  store ptr %call21, ptr @gen_synth_test, align 4, !dbg !183
  %gcov_ctr.i58 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %12 = add i64 %gcov_ctr.i58, 1
  store i64 %12, ptr @__llvm_gcov_ctr.43, align 8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr), !dbg !184
  br i1 %cmp.i, label %if.then23, label %if.end25, !dbg !188

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9, !dbg !189
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 6), align 16, !dbg !189
  %13 = add i64 %gcov_ctr47, 1, !dbg !189
  store i64 %13, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 6), align 16, !dbg !189
  %gcov_ctr.i59 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %14 = add i64 %gcov_ctr.i59, 1
  store i64 %14, ptr @__llvm_gcov_ctr.44, align 8
  %15 = ptrtoint ptr %call21 to i32, !dbg !190
  br label %delete, !dbg !193

if.end25:                                         ; preds = %if.end20
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %call21, i32 0, i32 4, !dbg !194
  %16 = ptrtoint ptr %tr to i32, !dbg !194
  call void @__asan_load4_noabort(i32 %16), !dbg !194
  %17 = load ptr, ptr %tr, align 4, !dbg !194
  %call26 = call i32 @trace_array_set_clr_event(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext true) #10, !dbg !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26), !dbg !196
  %tobool27.not = icmp eq i32 %call26, 0, !dbg !196
  br i1 %tobool27.not, label %if.end29, label %if.then28, !dbg !196

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9, !dbg !197
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 8), align 16, !dbg !197
  %18 = add i64 %gcov_ctr49, 1, !dbg !197
  store i64 %18, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 8), align 16, !dbg !197
  %19 = load ptr, ptr @gen_synth_test, align 4, !dbg !197
  call void @trace_put_event_file(ptr noundef %19) #10, !dbg !198
  br label %delete, !dbg !199

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9, !dbg !200
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 7), align 8, !dbg !200
  %20 = add i64 %gcov_ctr48, 1, !dbg !200
  store i64 %20, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 7), align 8, !dbg !200
  %21 = ptrtoint ptr %vals to i32, !dbg !201
  call void @__asan_store8_noabort(i32 %21), !dbg !201
  store i64 777, ptr %vals, align 8, !dbg !201
  %arrayidx30 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 1, !dbg !202
  %22 = ptrtoint ptr %arrayidx30 to i32, !dbg !203
  call void @__asan_store8_noabort(i32 %22), !dbg !203
  store i64 sext (i32 ptrtoint (ptr @.str.18 to i32) to i64), ptr %arrayidx30, align 8, !dbg !203
  %arrayidx31 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 2, !dbg !204
  %23 = ptrtoint ptr %arrayidx31 to i32, !dbg !205
  call void @__asan_store8_noabort(i32 %23), !dbg !205
  store i64 1000000, ptr %arrayidx31, align 8, !dbg !205
  %arrayidx32 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 3, !dbg !206
  %24 = ptrtoint ptr %arrayidx32 to i32, !dbg !207
  call void @__asan_store8_noabort(i32 %24), !dbg !207
  store i64 1000, ptr %arrayidx32, align 8, !dbg !207
  %gcov_ctr.i60 = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !208
  %25 = add i64 %gcov_ctr.i60, 1, !dbg !208
  store i64 %25, ptr @__llvm_gcov_ctr.45, align 8, !dbg !208
  %26 = call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !208
  %and.i = and i32 %26, -16384, !dbg !212
  %27 = inttoptr i32 %and.i to ptr, !dbg !213
  %cpu = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3, !dbg !214
  %28 = ptrtoint ptr %cpu to i32, !dbg !214
  call void @__asan_load4_noabort(i32 %28), !dbg !214
  %29 = load i32, ptr %cpu, align 4, !dbg !214
  %conv = zext i32 %29 to i64, !dbg !214
  %arrayidx34 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 4, !dbg !215
  %30 = ptrtoint ptr %arrayidx34 to i32, !dbg !216
  call void @__asan_store8_noabort(i32 %30), !dbg !216
  store i64 %conv, ptr %arrayidx34, align 8, !dbg !216
  %arrayidx35 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 5, !dbg !217
  %31 = ptrtoint ptr %arrayidx35 to i32, !dbg !218
  call void @__asan_store8_noabort(i32 %31), !dbg !218
  store i64 sext (i32 ptrtoint (ptr @.str.19 to i32) to i64), ptr %arrayidx35, align 8, !dbg !218
  %arrayidx36 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 6, !dbg !219
  %32 = ptrtoint ptr %arrayidx36 to i32, !dbg !220
  call void @__asan_store8_noabort(i32 %32), !dbg !220
  store i64 598, ptr %arrayidx36, align 8, !dbg !220
  %33 = load ptr, ptr @gen_synth_test, align 4, !dbg !221
  %call37 = call i32 @synth_event_trace_array(ptr noundef %33, ptr noundef nonnull %vals, i32 noundef 7) #10, !dbg !222
  br label %cleanup, !dbg !223

delete:                                           ; preds = %if.then28, %if.then23
  %ret.1 = phi i32 [ %15, %if.then23 ], [ %call26, %if.then28 ], !dbg !224
  %call38 = call i32 @synth_event_delete(ptr noundef nonnull @.str.1) #10, !dbg !225
  br label %free, !dbg !225

free:                                             ; preds = %delete, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3
  %ret.2 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ %call13, %if.then15 ], [ %call17, %if.then19 ], [ %ret.1, %delete ], !dbg !224
  call void @kfree(ptr noundef nonnull %call7.i.i) #10, !dbg !226
  br label %cleanup, !dbg !227

cleanup:                                          ; preds = %free, %if.end29, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %ret.2, %free ], [ %call37, %if.end29 ], !dbg !224
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %vals) #10, !dbg !228
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10, !dbg !228
  ret i32 %retval.0, !dbg !228
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_empty_synth_event() unnamed_addr #0 section ".init.text" align 64 !dbg !229 {
entry:
  %cmd = alloca %struct.dynevent_cmd, align 8
  %vals = alloca [7 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !230
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #10, !dbg !231
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 48), !dbg !232
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %vals) #10, !dbg !233
  %1 = call ptr @memset(ptr %vals, i32 255, i32 56), !dbg !234
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.42, align 8
  %gcov_ctr88.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 10), align 16, !dbg !235
  %3 = add i64 %gcov_ctr88.i.i.i, 1, !dbg !235
  store i64 %3, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 10), align 16, !dbg !235
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !239
  %4 = add i64 %gcov_ctr11.i.i, 1, !dbg !239
  store i64 %4, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 2), align 16, !dbg !239
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.49, align 16, !dbg !240
  %5 = add i64 %gcov_ctr.i.i.i, 1, !dbg !240
  store i64 %5, ptr @__llvm_gcov_ctr.49, align 16, !dbg !240
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32)), !dbg !242
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4, !dbg !242
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2048) #12, !dbg !243
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !244
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !246
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.37, align 16, !dbg !246
  %7 = add i64 %gcov_ctr, 1, !dbg !246
  store i64 %7, ptr @__llvm_gcov_ctr.37, align 16, !dbg !246
  br label %cleanup, !dbg !246

if.end:                                           ; preds = %entry
  call void @synth_event_cmd_init(ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i, i32 noundef 2048) #10, !dbg !247
  %call1 = call i32 (ptr, ptr, ptr, ...) @__synth_event_gen_cmd_start(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null) #10, !dbg !248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !249
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !249
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !249

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !250
  %gcov_ctr58 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !250
  %8 = add i64 %gcov_ctr58, 1, !dbg !250
  store i64 %8, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 1), align 8, !dbg !250
  br label %free, !dbg !250

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10, !dbg !251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !252
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !252
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !252

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !253
  %gcov_ctr59 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !253
  %9 = add i64 %gcov_ctr59, 1, !dbg !253
  store i64 %9, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 2), align 16, !dbg !253
  br label %free, !dbg !253

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10, !dbg !254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !255
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !255
  br i1 %tobool10.not, label %if.end12, label %if.then11, !dbg !255

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !256
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !256
  %10 = add i64 %gcov_ctr60, 1, !dbg !256
  store i64 %10, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 3), align 8, !dbg !256
  br label %free, !dbg !256

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10, !dbg !257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !258
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !258
  br i1 %tobool14.not, label %if.end16, label %if.then15, !dbg !258

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9, !dbg !259
  %gcov_ctr61 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !259
  %11 = add i64 %gcov_ctr61, 1, !dbg !259
  store i64 %11, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 4), align 16, !dbg !259
  br label %free, !dbg !259

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #10, !dbg !260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17), !dbg !261
  %tobool18.not = icmp eq i32 %call17, 0, !dbg !261
  br i1 %tobool18.not, label %if.end20, label %if.then19, !dbg !261

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9, !dbg !262
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !262
  %12 = add i64 %gcov_ctr62, 1, !dbg !262
  store i64 %12, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 5), align 8, !dbg !262
  br label %free, !dbg !262

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #10, !dbg !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21), !dbg !264
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !264
  br i1 %tobool22.not, label %if.end24, label %if.then23, !dbg !264

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9, !dbg !265
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 6), align 16, !dbg !265
  %13 = add i64 %gcov_ctr63, 1, !dbg !265
  store i64 %13, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 6), align 16, !dbg !265
  br label %free, !dbg !265

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10, !dbg !266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25), !dbg !267
  %tobool26.not = icmp eq i32 %call25, 0, !dbg !267
  br i1 %tobool26.not, label %if.end28, label %if.then27, !dbg !267

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9, !dbg !268
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 7), align 8, !dbg !268
  %14 = add i64 %gcov_ctr64, 1, !dbg !268
  store i64 %14, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 7), align 8, !dbg !268
  br label %free, !dbg !268

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @synth_event_add_field(ptr noundef nonnull %cmd, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10, !dbg !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29), !dbg !270
  %tobool30.not = icmp eq i32 %call29, 0, !dbg !270
  br i1 %tobool30.not, label %if.end32, label %if.then31, !dbg !270

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9, !dbg !271
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 8), align 16, !dbg !271
  %15 = add i64 %gcov_ctr65, 1, !dbg !271
  store i64 %15, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 8), align 16, !dbg !271
  br label %free, !dbg !271

if.end32:                                         ; preds = %if.end28
  %call33 = call i32 @dynevent_create(ptr noundef nonnull %cmd) #10, !dbg !272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33), !dbg !273
  %tobool34.not = icmp eq i32 %call33, 0, !dbg !273
  br i1 %tobool34.not, label %if.end36, label %if.then35, !dbg !273

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9, !dbg !274
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 9), align 8, !dbg !274
  %16 = add i64 %gcov_ctr66, 1, !dbg !274
  store i64 %16, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 9), align 8, !dbg !274
  br label %free, !dbg !274

if.end36:                                         ; preds = %if.end32
  %call37 = call ptr @trace_get_event_file(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10, !dbg !275
  store ptr %call37, ptr @empty_synth_test, align 4, !dbg !276
  %gcov_ctr.i82 = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %17 = add i64 %gcov_ctr.i82, 1
  store i64 %17, ptr @__llvm_gcov_ctr.43, align 8
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr), !dbg !277
  br i1 %cmp.i, label %if.then39, label %if.end41, !dbg !279

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9, !dbg !280
  %gcov_ctr67 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 10), align 16, !dbg !280
  %18 = add i64 %gcov_ctr67, 1, !dbg !280
  store i64 %18, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 10), align 16, !dbg !280
  %gcov_ctr.i83 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %19 = add i64 %gcov_ctr.i83, 1
  store i64 %19, ptr @__llvm_gcov_ctr.44, align 8
  %20 = ptrtoint ptr %call37 to i32, !dbg !281
  br label %delete, !dbg !283

if.end41:                                         ; preds = %if.end36
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %call37, i32 0, i32 4, !dbg !284
  %21 = ptrtoint ptr %tr to i32, !dbg !284
  call void @__asan_load4_noabort(i32 %21), !dbg !284
  %22 = load ptr, ptr %tr, align 4, !dbg !284
  %call42 = call i32 @trace_array_set_clr_event(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext true) #10, !dbg !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42), !dbg !286
  %tobool43.not = icmp eq i32 %call42, 0, !dbg !286
  br i1 %tobool43.not, label %if.end45, label %if.then44, !dbg !286

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9, !dbg !287
  %gcov_ctr69 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 12), align 16, !dbg !287
  %23 = add i64 %gcov_ctr69, 1, !dbg !287
  store i64 %23, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 12), align 16, !dbg !287
  %24 = load ptr, ptr @empty_synth_test, align 4, !dbg !287
  call void @trace_put_event_file(ptr noundef %24) #10, !dbg !288
  br label %delete, !dbg !289

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9, !dbg !290
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 11), align 8, !dbg !290
  %25 = add i64 %gcov_ctr68, 1, !dbg !290
  store i64 %25, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.37, i32 0, i32 11), align 8, !dbg !290
  %26 = ptrtoint ptr %vals to i32, !dbg !291
  call void @__asan_store8_noabort(i32 %26), !dbg !291
  store i64 777, ptr %vals, align 8, !dbg !291
  %arrayidx46 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 1, !dbg !292
  %27 = ptrtoint ptr %arrayidx46 to i32, !dbg !293
  call void @__asan_store8_noabort(i32 %27), !dbg !293
  store i64 sext (i32 ptrtoint (ptr @.str.20 to i32) to i64), ptr %arrayidx46, align 8, !dbg !293
  %arrayidx47 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 2, !dbg !294
  %28 = ptrtoint ptr %arrayidx47 to i32, !dbg !295
  call void @__asan_store8_noabort(i32 %28), !dbg !295
  store i64 1000000, ptr %arrayidx47, align 8, !dbg !295
  %arrayidx48 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 3, !dbg !296
  %29 = ptrtoint ptr %arrayidx48 to i32, !dbg !297
  call void @__asan_store8_noabort(i32 %29), !dbg !297
  store i64 1000, ptr %arrayidx48, align 8, !dbg !297
  %gcov_ctr.i84 = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !298
  %30 = add i64 %gcov_ctr.i84, 1, !dbg !298
  store i64 %30, ptr @__llvm_gcov_ctr.45, align 8, !dbg !298
  %31 = call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !298
  %and.i = and i32 %31, -16384, !dbg !300
  %32 = inttoptr i32 %and.i to ptr, !dbg !301
  %cpu = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3, !dbg !302
  %33 = ptrtoint ptr %cpu to i32, !dbg !302
  call void @__asan_load4_noabort(i32 %33), !dbg !302
  %34 = load i32, ptr %cpu, align 4, !dbg !302
  %conv = zext i32 %34 to i64, !dbg !302
  %arrayidx50 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 4, !dbg !303
  %35 = ptrtoint ptr %arrayidx50 to i32, !dbg !304
  call void @__asan_store8_noabort(i32 %35), !dbg !304
  store i64 %conv, ptr %arrayidx50, align 8, !dbg !304
  %arrayidx51 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 5, !dbg !305
  %36 = ptrtoint ptr %arrayidx51 to i32, !dbg !306
  call void @__asan_store8_noabort(i32 %36), !dbg !306
  store i64 sext (i32 ptrtoint (ptr @.str.21 to i32) to i64), ptr %arrayidx51, align 8, !dbg !306
  %arrayidx52 = getelementptr inbounds [7 x i64], ptr %vals, i32 0, i32 6, !dbg !307
  %37 = ptrtoint ptr %arrayidx52 to i32, !dbg !308
  call void @__asan_store8_noabort(i32 %37), !dbg !308
  store i64 399, ptr %arrayidx52, align 8, !dbg !308
  %38 = load ptr, ptr @empty_synth_test, align 4, !dbg !309
  %call53 = call i32 @synth_event_trace_array(ptr noundef %38, ptr noundef nonnull %vals, i32 noundef 7) #10, !dbg !310
  br label %cleanup, !dbg !311

delete:                                           ; preds = %if.then44, %if.then39
  %ret.1 = phi i32 [ %20, %if.then39 ], [ %call42, %if.then44 ], !dbg !312
  %call54 = call i32 @synth_event_delete(ptr noundef nonnull @.str.3) #10, !dbg !313
  br label %free, !dbg !313

free:                                             ; preds = %delete, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3
  %ret.2 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ %call13, %if.then15 ], [ %call17, %if.then19 ], [ %call21, %if.then23 ], [ %call25, %if.then27 ], [ %call29, %if.then31 ], [ %call33, %if.then35 ], [ %ret.1, %delete ], !dbg !312
  call void @kfree(ptr noundef nonnull %call7.i.i) #10, !dbg !314
  br label %cleanup, !dbg !315

cleanup:                                          ; preds = %free, %if.end45, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %ret.2, %free ], [ %call53, %if.end45 ], !dbg !312
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %vals) #10, !dbg !316
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #10, !dbg !316
  ret i32 %retval.0, !dbg !316
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_create_synth_event() unnamed_addr #0 section ".init.text" align 64 !dbg !317 {
entry:
  %vals = alloca [9 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !318
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %vals) #10, !dbg !319
  %call = tail call i32 @synth_event_create(ptr noundef nonnull @.str.4, ptr noundef nonnull @create_synth_test_fields, i32 noundef 9, ptr noundef null) #10, !dbg !320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !321
  %tobool.not = icmp eq i32 %call, 0, !dbg !321
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !321

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !322
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.38, align 16, !dbg !322
  %0 = add i64 %gcov_ctr, 1, !dbg !322
  store i64 %0, ptr @__llvm_gcov_ctr.38, align 16, !dbg !322
  br label %out, !dbg !322

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @trace_get_event_file(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10, !dbg !323
  store ptr %call1, ptr @create_synth_test, align 4, !dbg !324
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.43, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.43, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr), !dbg !325
  br i1 %cmp.i, label %if.then3, label %if.end5, !dbg !327

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !328
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !328
  %2 = add i64 %gcov_ctr21, 1, !dbg !328
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 1), align 8, !dbg !328
  %gcov_ctr.i26 = load i64, ptr @__llvm_gcov_ctr.44, align 8
  %3 = add i64 %gcov_ctr.i26, 1
  store i64 %3, ptr @__llvm_gcov_ctr.44, align 8
  %4 = ptrtoint ptr %call1 to i32, !dbg !329
  br label %delete, !dbg !331

if.end5:                                          ; preds = %if.end
  %tr = getelementptr inbounds %struct.trace_event_file, ptr %call1, i32 0, i32 4, !dbg !332
  %5 = ptrtoint ptr %tr to i32, !dbg !332
  call void @__asan_load4_noabort(i32 %5), !dbg !332
  %6 = load ptr, ptr %tr, align 4, !dbg !332
  %call6 = tail call i32 @trace_array_set_clr_event(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i1 noundef zeroext true) #10, !dbg !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6), !dbg !334
  %tobool7.not = icmp eq i32 %call6, 0, !dbg !334
  br i1 %tobool7.not, label %if.end9, label %if.then8, !dbg !334

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9, !dbg !335
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !335
  %7 = add i64 %gcov_ctr23, 1, !dbg !335
  store i64 %7, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 3), align 8, !dbg !335
  %8 = load ptr, ptr @create_synth_test, align 4, !dbg !335
  tail call void @trace_put_event_file(ptr noundef %8) #10, !dbg !336
  br label %delete, !dbg !337

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9, !dbg !338
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !338
  %9 = add i64 %gcov_ctr22, 1, !dbg !338
  store i64 %9, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.38, i32 0, i32 2), align 16, !dbg !338
  %10 = ptrtoint ptr %vals to i32, !dbg !339
  call void @__asan_store8_noabort(i32 %10), !dbg !339
  store i64 777, ptr %vals, align 8, !dbg !339
  %arrayidx10 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 1, !dbg !340
  %11 = ptrtoint ptr %arrayidx10 to i32, !dbg !341
  call void @__asan_store8_noabort(i32 %11), !dbg !341
  store i64 sext (i32 ptrtoint (ptr @.str.20 to i32) to i64), ptr %arrayidx10, align 8, !dbg !341
  %arrayidx11 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 2, !dbg !342
  %12 = ptrtoint ptr %arrayidx11 to i32, !dbg !343
  call void @__asan_store8_noabort(i32 %12), !dbg !343
  store i64 1000000, ptr %arrayidx11, align 8, !dbg !343
  %arrayidx12 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 3, !dbg !344
  %13 = ptrtoint ptr %arrayidx12 to i32, !dbg !345
  call void @__asan_store8_noabort(i32 %13), !dbg !345
  store i64 sext (i32 ptrtoint (ptr @.str.22 to i32) to i64), ptr %arrayidx12, align 8, !dbg !345
  %arrayidx13 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 4, !dbg !346
  %14 = ptrtoint ptr %arrayidx13 to i32, !dbg !347
  call void @__asan_store8_noabort(i32 %14), !dbg !347
  store i64 1000, ptr %arrayidx13, align 8, !dbg !347
  %gcov_ctr.i27 = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !348
  %15 = add i64 %gcov_ctr.i27, 1, !dbg !348
  store i64 %15, ptr @__llvm_gcov_ctr.45, align 8, !dbg !348
  %16 = tail call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !348
  %and.i = and i32 %16, -16384, !dbg !350
  %17 = inttoptr i32 %and.i to ptr, !dbg !351
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3, !dbg !352
  %18 = ptrtoint ptr %cpu to i32, !dbg !352
  call void @__asan_load4_noabort(i32 %18), !dbg !352
  %19 = load i32, ptr %cpu, align 4, !dbg !352
  %conv = zext i32 %19 to i64, !dbg !352
  %arrayidx15 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 5, !dbg !353
  %20 = ptrtoint ptr %arrayidx15 to i32, !dbg !354
  call void @__asan_store8_noabort(i32 %20), !dbg !354
  store i64 %conv, ptr %arrayidx15, align 8, !dbg !354
  %arrayidx16 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 6, !dbg !355
  %21 = ptrtoint ptr %arrayidx16 to i32, !dbg !356
  call void @__asan_store8_noabort(i32 %21), !dbg !356
  store i64 sext (i32 ptrtoint (ptr @.str.19 to i32) to i64), ptr %arrayidx16, align 8, !dbg !356
  %arrayidx17 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 7, !dbg !357
  %22 = ptrtoint ptr %arrayidx17 to i32, !dbg !358
  call void @__asan_store8_noabort(i32 %22), !dbg !358
  store i64 sext (i32 ptrtoint (ptr @.str.23 to i32) to i64), ptr %arrayidx17, align 8, !dbg !358
  %arrayidx18 = getelementptr inbounds [9 x i64], ptr %vals, i32 0, i32 8, !dbg !359
  %23 = ptrtoint ptr %arrayidx18 to i32, !dbg !360
  call void @__asan_store8_noabort(i32 %23), !dbg !360
  store i64 398, ptr %arrayidx18, align 8, !dbg !360
  %24 = load ptr, ptr @create_synth_test, align 4, !dbg !361
  %call19 = call i32 @synth_event_trace_array(ptr noundef %24, ptr noundef nonnull %vals, i32 noundef 9) #10, !dbg !362
  br label %out, !dbg !363

out:                                              ; preds = %delete, %if.end9, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %ret.1, %delete ], [ %call19, %if.end9 ], !dbg !364
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %vals) #10, !dbg !365
  ret i32 %ret.0, !dbg !366

delete:                                           ; preds = %if.then8, %if.then3
  %ret.1 = phi i32 [ %4, %if.then3 ], [ %call6, %if.then8 ], !dbg !364
  %call20 = tail call i32 @synth_event_delete(ptr noundef nonnull @.str.4) #10, !dbg !367
  br label %out, !dbg !368
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_add_next_synth_val() unnamed_addr #0 section ".init.text" align 64 !dbg !369 {
entry:
  %trace_state = alloca %struct.synth_event_trace_state, align 4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !370
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %trace_state) #10, !dbg !371
  %0 = call ptr @memset(ptr %trace_state, i32 255, i32 48), !dbg !372
  %1 = load ptr, ptr @gen_synth_test, align 4, !dbg !373
  %call = call i32 @synth_event_trace_start(ptr noundef %1, ptr noundef nonnull %trace_state) #10, !dbg !374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !375
  %tobool.not = icmp eq i32 %call, 0, !dbg !375
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !375

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !376
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.39, align 16, !dbg !376
  %2 = add i64 %gcov_ctr, 1, !dbg !376
  store i64 %2, ptr @__llvm_gcov_ctr.39, align 16, !dbg !376
  br label %cleanup, !dbg !377

if.end:                                           ; preds = %entry
  %call1 = call i32 @synth_event_add_next_val(i64 noundef 777, ptr noundef nonnull %trace_state) #10, !dbg !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !379
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !379
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !379

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !380
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !380
  %3 = add i64 %gcov_ctr29, 1, !dbg !380
  store i64 %3, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 1), align 8, !dbg !380
  br label %out, !dbg !380

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @synth_event_add_next_val(i64 noundef sext (i32 ptrtoint (ptr @.str.27 to i32) to i64), ptr noundef nonnull %trace_state) #10, !dbg !381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !382
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !382
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !382

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !383
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !383
  %4 = add i64 %gcov_ctr30, 1, !dbg !383
  store i64 %4, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 2), align 16, !dbg !383
  br label %out, !dbg !383

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @synth_event_add_next_val(i64 noundef 1000000, ptr noundef nonnull %trace_state) #10, !dbg !384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !385
  %tobool10.not = icmp eq i32 %call9, 0, !dbg !385
  br i1 %tobool10.not, label %if.end12, label %if.then11, !dbg !385

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !386
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !386
  %5 = add i64 %gcov_ctr31, 1, !dbg !386
  store i64 %5, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 3), align 8, !dbg !386
  br label %out, !dbg !386

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @synth_event_add_next_val(i64 noundef 1000, ptr noundef nonnull %trace_state) #10, !dbg !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13), !dbg !388
  %tobool14.not = icmp eq i32 %call13, 0, !dbg !388
  br i1 %tobool14.not, label %if.end16, label %if.then15, !dbg !388

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9, !dbg !389
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 4), align 16, !dbg !389
  %6 = add i64 %gcov_ctr32, 1, !dbg !389
  store i64 %6, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 4), align 16, !dbg !389
  br label %out, !dbg !389

if.end16:                                         ; preds = %if.end12
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !390
  %7 = add i64 %gcov_ctr.i, 1, !dbg !390
  store i64 %7, ptr @__llvm_gcov_ctr.45, align 8, !dbg !390
  %8 = call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !390
  %and.i = and i32 %8, -16384, !dbg !392
  %9 = inttoptr i32 %and.i to ptr, !dbg !393
  %cpu = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3, !dbg !394
  %10 = ptrtoint ptr %cpu to i32, !dbg !394
  call void @__asan_load4_noabort(i32 %10), !dbg !394
  %11 = load i32, ptr %cpu, align 4, !dbg !394
  %conv = zext i32 %11 to i64, !dbg !394
  %call18 = call i32 @synth_event_add_next_val(i64 noundef %conv, ptr noundef nonnull %trace_state) #10, !dbg !395
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !396
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !396
  br i1 %tobool19.not, label %if.end21, label %if.then20, !dbg !396

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9, !dbg !397
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !397
  %12 = add i64 %gcov_ctr33, 1, !dbg !397
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !397
  br label %out, !dbg !397

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 @synth_event_add_next_val(i64 noundef sext (i32 ptrtoint (ptr @.str.28 to i32) to i64), ptr noundef nonnull %trace_state) #10, !dbg !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !399
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !399
  br i1 %tobool23.not, label %if.end25, label %if.then24, !dbg !399

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9, !dbg !400
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 7), align 8, !dbg !400
  %13 = add i64 %gcov_ctr35, 1, !dbg !400
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 7), align 8, !dbg !400
  br label %out, !dbg !400

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9, !dbg !401
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 6), align 16, !dbg !401
  %14 = add i64 %gcov_ctr34, 1, !dbg !401
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 6), align 16, !dbg !401
  %call26 = call i32 @synth_event_add_next_val(i64 noundef 395, ptr noundef nonnull %trace_state) #10, !dbg !401
  br label %out, !dbg !402

out:                                              ; preds = %if.end25, %if.then24, %if.then20, %if.then15, %if.then11, %if.then7, %if.then3
  %call27 = call i32 @synth_event_trace_end(ptr noundef nonnull %trace_state) #10, !dbg !403
  br label %cleanup, !dbg !404

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call27, %out ], !dbg !405
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %trace_state) #10, !dbg !406
  ret i32 %retval.0, !dbg !406
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_add_synth_val() unnamed_addr #0 section ".init.text" align 64 !dbg !407 {
entry:
  %trace_state = alloca %struct.synth_event_trace_state, align 4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !408
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %trace_state) #10, !dbg !409
  %0 = call ptr @memset(ptr %trace_state, i32 255, i32 48), !dbg !410
  %1 = load ptr, ptr @gen_synth_test, align 4, !dbg !411
  %call = call i32 @synth_event_trace_start(ptr noundef %1, ptr noundef nonnull %trace_state) #10, !dbg !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call), !dbg !413
  %tobool.not = icmp eq i32 %call, 0, !dbg !413
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !413

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9, !dbg !414
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 16, !dbg !414
  %2 = add i64 %gcov_ctr, 1, !dbg !414
  store i64 %2, ptr @__llvm_gcov_ctr.40, align 16, !dbg !414
  br label %cleanup, !dbg !415

if.end:                                           ; preds = %entry
  %call1 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.10, i64 noundef 1000000, ptr noundef nonnull %trace_state) #10, !dbg !416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1), !dbg !417
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !417
  br i1 %tobool2.not, label %if.end4, label %if.then3, !dbg !417

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9, !dbg !418
  %gcov_ctr29 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !418
  %3 = add i64 %gcov_ctr29, 1, !dbg !418
  store i64 %3, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !418
  br label %out, !dbg !418

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.11, i64 noundef 1000, ptr noundef nonnull %trace_state) #10, !dbg !419
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5), !dbg !420
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !420
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !420

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9, !dbg !421
  %gcov_ctr30 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !421
  %4 = add i64 %gcov_ctr30, 1, !dbg !421
  store i64 %4, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !421
  br label %out, !dbg !421

if.end8:                                          ; preds = %if.end4
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !422
  %5 = add i64 %gcov_ctr.i, 1, !dbg !422
  store i64 %5, ptr @__llvm_gcov_ctr.45, align 8, !dbg !422
  %6 = call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !422
  %and.i = and i32 %6, -16384, !dbg !424
  %7 = inttoptr i32 %and.i to ptr, !dbg !425
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3, !dbg !426
  %8 = ptrtoint ptr %cpu to i32, !dbg !426
  call void @__asan_load4_noabort(i32 %8), !dbg !426
  %9 = load i32, ptr %cpu, align 4, !dbg !426
  %conv = zext i32 %9 to i64, !dbg !426
  %call10 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.13, i64 noundef %conv, ptr noundef nonnull %trace_state) #10, !dbg !427
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10), !dbg !428
  %tobool11.not = icmp eq i32 %call10, 0, !dbg !428
  br i1 %tobool11.not, label %if.end13, label %if.then12, !dbg !428

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9, !dbg !429
  %gcov_ctr31 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 3), align 8, !dbg !429
  %10 = add i64 %gcov_ctr31, 1, !dbg !429
  store i64 %10, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 3), align 8, !dbg !429
  br label %out, !dbg !429

if.end13:                                         ; preds = %if.end8
  %call14 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.6, i64 noundef 777, ptr noundef nonnull %trace_state) #10, !dbg !430
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14), !dbg !431
  %tobool15.not = icmp eq i32 %call14, 0, !dbg !431
  br i1 %tobool15.not, label %if.end17, label %if.then16, !dbg !431

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9, !dbg !432
  %gcov_ctr32 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 4), align 16, !dbg !432
  %11 = add i64 %gcov_ctr32, 1, !dbg !432
  store i64 %11, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 4), align 16, !dbg !432
  br label %out, !dbg !432

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.8, i64 noundef sext (i32 ptrtoint (ptr @.str.29 to i32) to i64), ptr noundef nonnull %trace_state) #10, !dbg !433
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18), !dbg !434
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !434
  br i1 %tobool19.not, label %if.end21, label %if.then20, !dbg !434

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9, !dbg !435
  %gcov_ctr33 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 5), align 8, !dbg !435
  %12 = add i64 %gcov_ctr33, 1, !dbg !435
  store i64 %12, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 5), align 8, !dbg !435
  br label %out, !dbg !435

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.15, i64 noundef sext (i32 ptrtoint (ptr @.str.30 to i32) to i64), ptr noundef nonnull %trace_state) #10, !dbg !436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22), !dbg !437
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !437
  br i1 %tobool23.not, label %if.end25, label %if.then24, !dbg !437

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9, !dbg !438
  %gcov_ctr35 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 7), align 8, !dbg !438
  %13 = add i64 %gcov_ctr35, 1, !dbg !438
  store i64 %13, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 7), align 8, !dbg !438
  br label %out, !dbg !438

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9, !dbg !439
  %gcov_ctr34 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 6), align 16, !dbg !439
  %14 = add i64 %gcov_ctr34, 1, !dbg !439
  store i64 %14, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 6), align 16, !dbg !439
  %call26 = call i32 @synth_event_add_val(ptr noundef nonnull @.str.17, i64 noundef 3999, ptr noundef nonnull %trace_state) #10, !dbg !439
  br label %out, !dbg !440

out:                                              ; preds = %if.end25, %if.then24, %if.then20, %if.then16, %if.then12, %if.then7, %if.then3
  %call27 = call i32 @synth_event_trace_end(ptr noundef nonnull %trace_state) #10, !dbg !441
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call27, %out ], !dbg !443
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %trace_state) #10, !dbg !444
  ret i32 %retval.0, !dbg !444
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_trace_synth_event() unnamed_addr #0 section ".init.text" align 64 !dbg !445 {
entry:
  call void @__sanitizer_cov_trace_pc() #9, !dbg !446
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.41, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.41, align 8
  %1 = load ptr, ptr @create_synth_test, align 4, !dbg !447
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.45, align 8, !dbg !448
  %2 = add i64 %gcov_ctr.i, 1, !dbg !448
  store i64 %2, ptr @__llvm_gcov_ctr.45, align 8, !dbg !448
  %3 = tail call i32 @llvm.read_register.i32(metadata !83) #10, !dbg !448
  %and.i = and i32 %3, -16384, !dbg !450
  %4 = inttoptr i32 %and.i to ptr, !dbg !451
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3, !dbg !452
  %5 = ptrtoint ptr %cpu to i32, !dbg !452
  call void @__asan_load4_noabort(i32 %5), !dbg !452
  %6 = load i32, ptr %cpu, align 4, !dbg !452
  %conv = zext i32 %6 to i64, !dbg !453
  %call1 = tail call i32 (ptr, i32, ...) @synth_event_trace(ptr noundef %1, i32 noundef 9, i64 noundef 444, i64 noundef sext (i32 ptrtoint (ptr @.str.31 to i32) to i64), i64 noundef 1000000, i64 noundef sext (i32 ptrtoint (ptr @.str.32 to i32) to i64), i64 noundef 1000, i64 noundef %conv, i64 noundef sext (i32 ptrtoint (ptr @.str.33 to i32) to i64), i64 noundef sext (i32 ptrtoint (ptr @.str.34 to i32) to i64), i64 noundef 999) #10, !dbg !454
  ret i32 %call1, !dbg !455
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_event_cmd_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__synth_event_gen_cmd_start(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_add_field(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dynevent_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_get_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_trace_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_trace_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_add_next_val(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_trace_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_add_val(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_event_trace(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 618900517) #10
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #10
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #10
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 19
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #9
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcda_summary_info() #10
  tail call void @llvm_gcda_end_file() #10
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) @__llvm_gcov_ctr, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.35, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.36, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.37, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.38, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.39, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.40, i8 0, i64 64, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.41, align 8
  store i64 0, ptr @__llvm_gcov_ctr.42, align 8
  store i64 0, ptr @__llvm_gcov_ctr.43, align 8
  store i64 0, ptr @__llvm_gcov_ctr.44, align 8
  store i64 0, ptr @__llvm_gcov_ctr.45, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.46, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.47, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.48, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.49, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.50, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.52, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #5 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #10
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { noinline nounwind uwtable(sync) }
attributes #6 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.gcov = !{!92}
!llvm.ident = !{!93}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/synth_event_gen_test.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/trace/synth_event_gen_test.c", i32 491, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/synth_event_gen_test.c", i32 502, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/synth_event_gen_test.c", i32 513, i32 2}
!10 = !{ptr @__initcall__kmod_synth_event_gen_test__253_524_synth_event_gen_test_init6, !11, !"__initcall__kmod_synth_event_gen_test__253_524_synth_event_gen_test_init6", i1 false, i1 false}
!11 = !{!"../kernel/trace/synth_event_gen_test.c", i32 524, i32 1}
!12 = !{ptr @__exitcall_synth_event_gen_test_exit, !13, !"__exitcall_synth_event_gen_test_exit", i1 false, i1 false}
!13 = !{!"../kernel/trace/synth_event_gen_test.c", i32 525, i32 1}
!14 = !{ptr @__UNIQUE_ID_author254, !15, !"__UNIQUE_ID_author254", i1 false, i1 false}
!15 = !{!"../kernel/trace/synth_event_gen_test.c", i32 527, i32 1}
!16 = !{ptr @__UNIQUE_ID_description255, !17, !"__UNIQUE_ID_description255", i1 false, i1 false}
!17 = !{!"../kernel/trace/synth_event_gen_test.c", i32 528, i32 1}
!18 = !{ptr @__UNIQUE_ID_file256, !19, !"__UNIQUE_ID_file256", i1 false, i1 false}
!19 = !{!"../kernel/trace/synth_event_gen_test.c", i32 529, i32 1}
!20 = !{ptr @__UNIQUE_ID_license257, !19, !"__UNIQUE_ID_license257", i1 false, i1 false}
!21 = !{ptr @create_synth_test, !22, !"create_synth_test", i1 false, i1 false}
!22 = !{!"../kernel/trace/synth_event_gen_test.c", i32 37, i32 33}
!23 = !{ptr @empty_synth_test, !24, !"empty_synth_test", i1 false, i1 false}
!24 = !{!"../kernel/trace/synth_event_gen_test.c", i32 38, i32 33}
!25 = !{ptr @gen_synth_test, !26, !"gen_synth_test", i1 false, i1 false}
!26 = !{!"../kernel/trace/synth_event_gen_test.c", i32 39, i32 33}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/trace/synth_event_gen_test.c", i32 64, i32 8}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/trace/synth_event_gen_test.c", i32 74, i32 36}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/trace/synth_event_gen_test.c", i32 74, i32 52}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/trace/synth_event_gen_test.c", i32 78, i32 36}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/trace/synth_event_gen_test.c", i32 78, i32 48}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/trace/synth_event_gen_test.c", i32 82, i32 36}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/trace/synth_event_gen_test.c", i32 82, i32 43}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/trace/synth_event_gen_test.c", i32 114, i32 23}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/trace/synth_event_gen_test.c", i32 118, i32 23}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/trace/synth_event_gen_test.c", i32 221, i32 23}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/trace/synth_event_gen_test.c", i32 225, i32 23}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/trace/synth_event_gen_test.c", i32 297, i32 23}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/trace/synth_event_gen_test.c", i32 301, i32 23}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/trace/synth_event_gen_test.c", i32 245, i32 12}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../kernel/trace/synth_event_gen_test.c", i32 245, i32 31}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../kernel/trace/synth_event_gen_test.c", i32 249, i32 31}
!65 = !{ptr @create_synth_test_fields, !66, !"create_synth_test_fields", i1 false, i1 false}
!66 = !{!"../kernel/trace/synth_event_gen_test.c", i32 241, i32 32}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../kernel/trace/synth_event_gen_test.c", i32 337, i32 44}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/trace/synth_event_gen_test.c", i32 357, i32 44}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/trace/synth_event_gen_test.c", i32 403, i32 58}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/trace/synth_event_gen_test.c", i32 408, i32 58}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/trace/synth_event_gen_test.c", i32 431, i32 16}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../kernel/trace/synth_event_gen_test.c", i32 433, i32 16}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../kernel/trace/synth_event_gen_test.c", i32 436, i32 16}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../kernel/trace/synth_event_gen_test.c", i32 437, i32 16}
!83 = !{!"sp"}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/synth_event_gen_test.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/synth_event_gen_test.gcda", !0}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = distinct !DISubprogram(name: "synth_event_gen_test_exit", scope: !1, file: !1, line: 488, type: !95, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!95 = !DISubroutineType(types: !96)
!96 = !{}
!97 = !DILocation(line: 489, scope: !94)
!98 = !DILocation(line: 491, column: 2, scope: !94)
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !DILocation(line: 496, column: 23, scope: !94)
!101 = !DILocation(line: 496, column: 2, scope: !94)
!102 = !DILocation(line: 499, column: 2, scope: !94)
!103 = !DILocation(line: 502, column: 2, scope: !94)
!104 = !DILocation(line: 507, column: 23, scope: !94)
!105 = !DILocation(line: 507, column: 2, scope: !94)
!106 = !DILocation(line: 510, column: 2, scope: !94)
!107 = !DILocation(line: 513, column: 2, scope: !94)
!108 = !DILocation(line: 518, column: 23, scope: !94)
!109 = !DILocation(line: 518, column: 2, scope: !94)
!110 = !DILocation(line: 521, column: 2, scope: !94)
!111 = !DILocation(line: 522, column: 1, scope: !94)
!112 = distinct !DISubprogram(name: "synth_event_gen_test_init", scope: !1, file: !1, line: 442, type: !95, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!113 = !DILocation(line: 443, scope: !112)
!114 = !DILocation(line: 446, column: 8, scope: !112)
!115 = !DILocation(line: 447, column: 6, scope: !112)
!116 = !DILocation(line: 448, column: 10, scope: !112)
!117 = !DILocation(line: 448, column: 3, scope: !112)
!118 = !DILocation(line: 450, column: 8, scope: !112)
!119 = !DILocation(line: 451, column: 6, scope: !112)
!120 = !DILocation(line: 452, column: 3, scope: !112)
!121 = !DILocation(line: 455, column: 24, scope: !112)
!122 = !DILocation(line: 455, column: 3, scope: !112)
!123 = !DILocation(line: 456, column: 3, scope: !112)
!124 = !DILocation(line: 457, column: 3, scope: !112)
!125 = !DILocation(line: 460, column: 8, scope: !112)
!126 = !DILocation(line: 461, column: 6, scope: !112)
!127 = !DILocation(line: 462, column: 3, scope: !112)
!128 = !DILocation(line: 465, column: 24, scope: !112)
!129 = !DILocation(line: 465, column: 3, scope: !112)
!130 = !DILocation(line: 466, column: 3, scope: !112)
!131 = !DILocation(line: 468, column: 3, scope: !112)
!132 = !DILocation(line: 471, column: 24, scope: !112)
!133 = !DILocation(line: 471, column: 3, scope: !112)
!134 = !DILocation(line: 472, column: 3, scope: !112)
!135 = !DILocation(line: 473, column: 3, scope: !112)
!136 = !DILocation(line: 476, column: 8, scope: !112)
!137 = !DILocation(line: 477, column: 2, scope: !112)
!138 = !DILocation(line: 479, column: 8, scope: !112)
!139 = !DILocation(line: 480, column: 2, scope: !112)
!140 = !DILocation(line: 482, column: 8, scope: !112)
!141 = !DILocation(line: 483, column: 2, scope: !112)
!142 = !DILocation(line: 0, scope: !112)
!143 = !DILocation(line: 486, column: 1, scope: !112)
!144 = distinct !DISubprogram(name: "test_gen_synth_cmd", scope: !1, file: !1, line: 45, type: !95, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!145 = !DILocation(line: 46, scope: !144)
!146 = !DILocation(line: 47, column: 2, scope: !144)
!147 = !DILocation(line: 47, column: 22, scope: !144)
!148 = !DILocation(line: 48, column: 2, scope: !144)
!149 = !DILocation(line: 390, column: 26, scope: !150, inlinedAt: !152)
!150 = distinct !DISubprogram(name: "__kmalloc_index", scope: !151, file: !151, line: 369, type: !95, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!151 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!152 = distinct !DILocation(line: 576, column: 11, scope: !153, inlinedAt: !154)
!153 = distinct !DISubprogram(name: "kmalloc", scope: !151, file: !151, line: 567, type: !95, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!154 = distinct !DILocation(line: 714, column: 9, scope: !155, inlinedAt: !156)
!155 = distinct !DISubprogram(name: "kzalloc", scope: !151, file: !151, line: 712, type: !95, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!156 = distinct !DILocation(line: 53, column: 8, scope: !144)
!157 = !DILocation(line: 582, column: 33, scope: !153, inlinedAt: !154)
!158 = !DILocation(line: 339, column: 3, scope: !159, inlinedAt: !160)
!159 = distinct !DISubprogram(name: "kmalloc_type", scope: !151, file: !151, line: 332, type: !95, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!160 = distinct !DILocation(line: 582, column: 20, scope: !153, inlinedAt: !154)
!161 = !DILocation(line: 582, column: 5, scope: !153, inlinedAt: !154)
!162 = !DILocation(line: 581, column: 10, scope: !153, inlinedAt: !154)
!163 = !DILocation(line: 54, column: 7, scope: !144)
!164 = !DILocation(line: 54, column: 6, scope: !144)
!165 = !DILocation(line: 55, column: 3, scope: !144)
!166 = !DILocation(line: 58, column: 2, scope: !144)
!167 = !DILocation(line: 64, column: 8, scope: !144)
!168 = !DILocation(line: 69, column: 6, scope: !144)
!169 = !DILocation(line: 70, column: 3, scope: !144)
!170 = !DILocation(line: 74, column: 8, scope: !144)
!171 = !DILocation(line: 75, column: 6, scope: !144)
!172 = !DILocation(line: 76, column: 3, scope: !144)
!173 = !DILocation(line: 78, column: 8, scope: !144)
!174 = !DILocation(line: 79, column: 6, scope: !144)
!175 = !DILocation(line: 80, column: 3, scope: !144)
!176 = !DILocation(line: 82, column: 8, scope: !144)
!177 = !DILocation(line: 83, column: 6, scope: !144)
!178 = !DILocation(line: 84, column: 3, scope: !144)
!179 = !DILocation(line: 86, column: 8, scope: !144)
!180 = !DILocation(line: 87, column: 6, scope: !144)
!181 = !DILocation(line: 88, column: 3, scope: !144)
!182 = !DILocation(line: 96, column: 19, scope: !144)
!183 = !DILocation(line: 96, column: 17, scope: !144)
!184 = !DILocation(line: 36, column: 9, scope: !185, inlinedAt: !187)
!185 = distinct !DISubprogram(name: "IS_ERR", scope: !186, file: !186, line: 34, type: !95, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!186 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!187 = distinct !DILocation(line: 98, column: 6, scope: !144)
!188 = !DILocation(line: 98, column: 6, scope: !144)
!189 = !DILocation(line: 99, column: 17, scope: !144)
!190 = !DILocation(line: 31, column: 9, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "PTR_ERR", scope: !186, file: !186, line: 29, type: !95, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!192 = distinct !DILocation(line: 99, column: 9, scope: !144)
!193 = !DILocation(line: 100, column: 3, scope: !144)
!194 = !DILocation(line: 104, column: 50, scope: !144)
!195 = !DILocation(line: 104, column: 8, scope: !144)
!196 = !DILocation(line: 106, column: 6, scope: !144)
!197 = !DILocation(line: 107, column: 24, scope: !144)
!198 = !DILocation(line: 107, column: 3, scope: !144)
!199 = !DILocation(line: 108, column: 3, scope: !144)
!200 = !DILocation(line: 113, column: 2, scope: !144)
!201 = !DILocation(line: 113, column: 10, scope: !144)
!202 = !DILocation(line: 114, column: 2, scope: !144)
!203 = !DILocation(line: 114, column: 10, scope: !144)
!204 = !DILocation(line: 115, column: 2, scope: !144)
!205 = !DILocation(line: 115, column: 10, scope: !144)
!206 = !DILocation(line: 116, column: 2, scope: !144)
!207 = !DILocation(line: 116, column: 10, scope: !144)
!208 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !211)
!209 = distinct !DISubprogram(name: "current_thread_info", scope: !210, file: !210, line: 101, type: !95, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!210 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!211 = distinct !DILocation(line: 117, column: 12, scope: !144)
!212 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !211)
!213 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !211)
!214 = !DILocation(line: 117, column: 12, scope: !144)
!215 = !DILocation(line: 117, column: 2, scope: !144)
!216 = !DILocation(line: 117, column: 10, scope: !144)
!217 = !DILocation(line: 118, column: 2, scope: !144)
!218 = !DILocation(line: 118, column: 10, scope: !144)
!219 = !DILocation(line: 119, column: 2, scope: !144)
!220 = !DILocation(line: 119, column: 10, scope: !144)
!221 = !DILocation(line: 122, column: 32, scope: !144)
!222 = !DILocation(line: 122, column: 8, scope: !144)
!223 = !DILocation(line: 122, column: 2, scope: !144)
!224 = !DILocation(line: 0, scope: !144)
!225 = !DILocation(line: 127, column: 2, scope: !144)
!226 = !DILocation(line: 129, column: 2, scope: !144)
!227 = !DILocation(line: 131, column: 2, scope: !144)
!228 = !DILocation(line: 132, column: 1, scope: !144)
!229 = distinct !DISubprogram(name: "test_empty_synth_event", scope: !1, file: !1, line: 138, type: !95, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!230 = !DILocation(line: 139, scope: !229)
!231 = !DILocation(line: 140, column: 2, scope: !229)
!232 = !DILocation(line: 140, column: 22, scope: !229)
!233 = !DILocation(line: 141, column: 2, scope: !229)
!234 = !DILocation(line: 141, column: 6, scope: !229)
!235 = !DILocation(line: 390, column: 26, scope: !150, inlinedAt: !236)
!236 = distinct !DILocation(line: 576, column: 11, scope: !153, inlinedAt: !237)
!237 = distinct !DILocation(line: 714, column: 9, scope: !155, inlinedAt: !238)
!238 = distinct !DILocation(line: 146, column: 8, scope: !229)
!239 = !DILocation(line: 582, column: 33, scope: !153, inlinedAt: !237)
!240 = !DILocation(line: 339, column: 3, scope: !159, inlinedAt: !241)
!241 = distinct !DILocation(line: 582, column: 20, scope: !153, inlinedAt: !237)
!242 = !DILocation(line: 582, column: 5, scope: !153, inlinedAt: !237)
!243 = !DILocation(line: 581, column: 10, scope: !153, inlinedAt: !237)
!244 = !DILocation(line: 147, column: 7, scope: !229)
!245 = !DILocation(line: 147, column: 6, scope: !229)
!246 = !DILocation(line: 148, column: 3, scope: !229)
!247 = !DILocation(line: 151, column: 2, scope: !229)
!248 = !DILocation(line: 156, column: 8, scope: !229)
!249 = !DILocation(line: 157, column: 6, scope: !229)
!250 = !DILocation(line: 158, column: 3, scope: !229)
!251 = !DILocation(line: 162, column: 8, scope: !229)
!252 = !DILocation(line: 163, column: 6, scope: !229)
!253 = !DILocation(line: 164, column: 3, scope: !229)
!254 = !DILocation(line: 166, column: 8, scope: !229)
!255 = !DILocation(line: 167, column: 6, scope: !229)
!256 = !DILocation(line: 168, column: 3, scope: !229)
!257 = !DILocation(line: 170, column: 8, scope: !229)
!258 = !DILocation(line: 171, column: 6, scope: !229)
!259 = !DILocation(line: 172, column: 3, scope: !229)
!260 = !DILocation(line: 174, column: 8, scope: !229)
!261 = !DILocation(line: 175, column: 6, scope: !229)
!262 = !DILocation(line: 176, column: 3, scope: !229)
!263 = !DILocation(line: 178, column: 8, scope: !229)
!264 = !DILocation(line: 179, column: 6, scope: !229)
!265 = !DILocation(line: 180, column: 3, scope: !229)
!266 = !DILocation(line: 182, column: 8, scope: !229)
!267 = !DILocation(line: 183, column: 6, scope: !229)
!268 = !DILocation(line: 184, column: 3, scope: !229)
!269 = !DILocation(line: 186, column: 8, scope: !229)
!270 = !DILocation(line: 187, column: 6, scope: !229)
!271 = !DILocation(line: 188, column: 3, scope: !229)
!272 = !DILocation(line: 192, column: 8, scope: !229)
!273 = !DILocation(line: 193, column: 6, scope: !229)
!274 = !DILocation(line: 194, column: 3, scope: !229)
!275 = !DILocation(line: 203, column: 21, scope: !229)
!276 = !DILocation(line: 203, column: 19, scope: !229)
!277 = !DILocation(line: 36, column: 9, scope: !185, inlinedAt: !278)
!278 = distinct !DILocation(line: 205, column: 6, scope: !229)
!279 = !DILocation(line: 205, column: 6, scope: !229)
!280 = !DILocation(line: 206, column: 17, scope: !229)
!281 = !DILocation(line: 31, column: 9, scope: !191, inlinedAt: !282)
!282 = distinct !DILocation(line: 206, column: 9, scope: !229)
!283 = !DILocation(line: 207, column: 3, scope: !229)
!284 = !DILocation(line: 211, column: 52, scope: !229)
!285 = !DILocation(line: 211, column: 8, scope: !229)
!286 = !DILocation(line: 213, column: 6, scope: !229)
!287 = !DILocation(line: 214, column: 24, scope: !229)
!288 = !DILocation(line: 214, column: 3, scope: !229)
!289 = !DILocation(line: 215, column: 3, scope: !229)
!290 = !DILocation(line: 220, column: 2, scope: !229)
!291 = !DILocation(line: 220, column: 10, scope: !229)
!292 = !DILocation(line: 221, column: 2, scope: !229)
!293 = !DILocation(line: 221, column: 10, scope: !229)
!294 = !DILocation(line: 222, column: 2, scope: !229)
!295 = !DILocation(line: 222, column: 10, scope: !229)
!296 = !DILocation(line: 223, column: 2, scope: !229)
!297 = !DILocation(line: 223, column: 10, scope: !229)
!298 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !299)
!299 = distinct !DILocation(line: 224, column: 12, scope: !229)
!300 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !299)
!301 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !299)
!302 = !DILocation(line: 224, column: 12, scope: !229)
!303 = !DILocation(line: 224, column: 2, scope: !229)
!304 = !DILocation(line: 224, column: 10, scope: !229)
!305 = !DILocation(line: 225, column: 2, scope: !229)
!306 = !DILocation(line: 225, column: 10, scope: !229)
!307 = !DILocation(line: 226, column: 2, scope: !229)
!308 = !DILocation(line: 226, column: 10, scope: !229)
!309 = !DILocation(line: 229, column: 32, scope: !229)
!310 = !DILocation(line: 229, column: 8, scope: !229)
!311 = !DILocation(line: 229, column: 2, scope: !229)
!312 = !DILocation(line: 0, scope: !229)
!313 = !DILocation(line: 234, column: 2, scope: !229)
!314 = !DILocation(line: 236, column: 2, scope: !229)
!315 = !DILocation(line: 238, column: 2, scope: !229)
!316 = !DILocation(line: 239, column: 1, scope: !229)
!317 = distinct !DISubprogram(name: "test_create_synth_event", scope: !1, file: !1, line: 257, type: !95, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!318 = !DILocation(line: 258, scope: !317)
!319 = !DILocation(line: 259, column: 2, scope: !317)
!320 = !DILocation(line: 263, column: 8, scope: !317)
!321 = !DILocation(line: 267, column: 6, scope: !317)
!322 = !DILocation(line: 268, column: 3, scope: !317)
!323 = !DILocation(line: 277, column: 22, scope: !317)
!324 = !DILocation(line: 277, column: 20, scope: !317)
!325 = !DILocation(line: 36, column: 9, scope: !185, inlinedAt: !326)
!326 = distinct !DILocation(line: 279, column: 6, scope: !317)
!327 = !DILocation(line: 279, column: 6, scope: !317)
!328 = !DILocation(line: 280, column: 17, scope: !317)
!329 = !DILocation(line: 31, column: 9, scope: !191, inlinedAt: !330)
!330 = distinct !DILocation(line: 280, column: 9, scope: !317)
!331 = !DILocation(line: 281, column: 3, scope: !317)
!332 = !DILocation(line: 285, column: 53, scope: !317)
!333 = !DILocation(line: 285, column: 8, scope: !317)
!334 = !DILocation(line: 287, column: 6, scope: !317)
!335 = !DILocation(line: 288, column: 24, scope: !317)
!336 = !DILocation(line: 288, column: 3, scope: !317)
!337 = !DILocation(line: 289, column: 3, scope: !317)
!338 = !DILocation(line: 294, column: 2, scope: !317)
!339 = !DILocation(line: 294, column: 10, scope: !317)
!340 = !DILocation(line: 295, column: 2, scope: !317)
!341 = !DILocation(line: 295, column: 10, scope: !317)
!342 = !DILocation(line: 296, column: 2, scope: !317)
!343 = !DILocation(line: 296, column: 10, scope: !317)
!344 = !DILocation(line: 297, column: 2, scope: !317)
!345 = !DILocation(line: 297, column: 10, scope: !317)
!346 = !DILocation(line: 298, column: 2, scope: !317)
!347 = !DILocation(line: 298, column: 10, scope: !317)
!348 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !349)
!349 = distinct !DILocation(line: 299, column: 12, scope: !317)
!350 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !349)
!351 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !349)
!352 = !DILocation(line: 299, column: 12, scope: !317)
!353 = !DILocation(line: 299, column: 2, scope: !317)
!354 = !DILocation(line: 299, column: 10, scope: !317)
!355 = !DILocation(line: 300, column: 2, scope: !317)
!356 = !DILocation(line: 300, column: 10, scope: !317)
!357 = !DILocation(line: 301, column: 2, scope: !317)
!358 = !DILocation(line: 301, column: 10, scope: !317)
!359 = !DILocation(line: 302, column: 2, scope: !317)
!360 = !DILocation(line: 302, column: 10, scope: !317)
!361 = !DILocation(line: 305, column: 32, scope: !317)
!362 = !DILocation(line: 305, column: 8, scope: !317)
!363 = !DILocation(line: 305, column: 2, scope: !317)
!364 = !DILocation(line: 0, scope: !317)
!365 = !DILocation(line: 313, column: 1, scope: !317)
!366 = !DILocation(line: 307, column: 2, scope: !317)
!367 = !DILocation(line: 310, column: 2, scope: !317)
!368 = !DILocation(line: 312, column: 2, scope: !317)
!369 = distinct !DISubprogram(name: "test_add_next_synth_val", scope: !1, file: !1, line: 319, type: !95, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!370 = !DILocation(line: 320, scope: !369)
!371 = !DILocation(line: 321, column: 2, scope: !369)
!372 = !DILocation(line: 321, column: 33, scope: !369)
!373 = !DILocation(line: 325, column: 32, scope: !369)
!374 = !DILocation(line: 325, column: 8, scope: !369)
!375 = !DILocation(line: 326, column: 6, scope: !369)
!376 = !DILocation(line: 327, column: 10, scope: !369)
!377 = !DILocation(line: 327, column: 3, scope: !369)
!378 = !DILocation(line: 332, column: 8, scope: !369)
!379 = !DILocation(line: 333, column: 6, scope: !369)
!380 = !DILocation(line: 334, column: 3, scope: !369)
!381 = !DILocation(line: 337, column: 8, scope: !369)
!382 = !DILocation(line: 338, column: 6, scope: !369)
!383 = !DILocation(line: 339, column: 3, scope: !369)
!384 = !DILocation(line: 342, column: 8, scope: !369)
!385 = !DILocation(line: 343, column: 6, scope: !369)
!386 = !DILocation(line: 344, column: 3, scope: !369)
!387 = !DILocation(line: 347, column: 8, scope: !369)
!388 = !DILocation(line: 348, column: 6, scope: !369)
!389 = !DILocation(line: 349, column: 3, scope: !369)
!390 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !391)
!391 = distinct !DILocation(line: 352, column: 33, scope: !369)
!392 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !391)
!393 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !391)
!394 = !DILocation(line: 352, column: 33, scope: !369)
!395 = !DILocation(line: 352, column: 8, scope: !369)
!396 = !DILocation(line: 353, column: 6, scope: !369)
!397 = !DILocation(line: 354, column: 3, scope: !369)
!398 = !DILocation(line: 357, column: 8, scope: !369)
!399 = !DILocation(line: 358, column: 6, scope: !369)
!400 = !DILocation(line: 359, column: 3, scope: !369)
!401 = !DILocation(line: 362, column: 8, scope: !369)
!402 = !DILocation(line: 362, column: 2, scope: !369)
!403 = !DILocation(line: 365, column: 8, scope: !369)
!404 = !DILocation(line: 367, column: 2, scope: !369)
!405 = !DILocation(line: 0, scope: !369)
!406 = !DILocation(line: 368, column: 1, scope: !369)
!407 = distinct !DISubprogram(name: "test_add_synth_val", scope: !1, file: !1, line: 375, type: !95, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!408 = !DILocation(line: 376, scope: !407)
!409 = !DILocation(line: 377, column: 2, scope: !407)
!410 = !DILocation(line: 377, column: 33, scope: !407)
!411 = !DILocation(line: 381, column: 32, scope: !407)
!412 = !DILocation(line: 381, column: 8, scope: !407)
!413 = !DILocation(line: 382, column: 6, scope: !407)
!414 = !DILocation(line: 383, column: 10, scope: !407)
!415 = !DILocation(line: 383, column: 3, scope: !407)
!416 = !DILocation(line: 387, column: 8, scope: !407)
!417 = !DILocation(line: 388, column: 6, scope: !407)
!418 = !DILocation(line: 389, column: 3, scope: !407)
!419 = !DILocation(line: 391, column: 8, scope: !407)
!420 = !DILocation(line: 392, column: 6, scope: !407)
!421 = !DILocation(line: 393, column: 3, scope: !407)
!422 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !423)
!423 = distinct !DILocation(line: 395, column: 35, scope: !407)
!424 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !423)
!425 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !423)
!426 = !DILocation(line: 395, column: 35, scope: !407)
!427 = !DILocation(line: 395, column: 8, scope: !407)
!428 = !DILocation(line: 396, column: 6, scope: !407)
!429 = !DILocation(line: 397, column: 3, scope: !407)
!430 = !DILocation(line: 399, column: 8, scope: !407)
!431 = !DILocation(line: 400, column: 6, scope: !407)
!432 = !DILocation(line: 401, column: 3, scope: !407)
!433 = !DILocation(line: 403, column: 8, scope: !407)
!434 = !DILocation(line: 405, column: 6, scope: !407)
!435 = !DILocation(line: 406, column: 3, scope: !407)
!436 = !DILocation(line: 408, column: 8, scope: !407)
!437 = !DILocation(line: 410, column: 6, scope: !407)
!438 = !DILocation(line: 411, column: 3, scope: !407)
!439 = !DILocation(line: 413, column: 8, scope: !407)
!440 = !DILocation(line: 413, column: 2, scope: !407)
!441 = !DILocation(line: 416, column: 8, scope: !407)
!442 = !DILocation(line: 418, column: 2, scope: !407)
!443 = !DILocation(line: 0, scope: !407)
!444 = !DILocation(line: 419, column: 1, scope: !407)
!445 = distinct !DISubprogram(name: "test_trace_synth_event", scope: !1, file: !1, line: 424, type: !95, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!446 = !DILocation(line: 425, scope: !445)
!447 = !DILocation(line: 429, column: 26, scope: !445)
!448 = !DILocation(line: 104, column: 4, scope: !209, inlinedAt: !449)
!449 = distinct !DILocation(line: 435, column: 10, scope: !445)
!450 = !DILocation(line: 104, column: 26, scope: !209, inlinedAt: !449)
!451 = !DILocation(line: 103, column: 9, scope: !209, inlinedAt: !449)
!452 = !DILocation(line: 435, column: 10, scope: !445)
!453 = !DILocation(line: 435, column: 5, scope: !445)
!454 = !DILocation(line: 429, column: 8, scope: !445)
!455 = !DILocation(line: 439, column: 2, scope: !445)
