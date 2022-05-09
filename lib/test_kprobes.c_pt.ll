; ModuleID = '/llk/IR_all_yes/lib/test_kprobes.c_pt.bc'
source_filename = "../lib/test_kprobes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.kretprobe = type { %struct.kprobe, ptr, ptr, i32, i32, i32, %struct.freelist_head, ptr }
%struct.freelist_head = type { ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_array244 = internal global [2 x ptr] [ptr @kprobes_test_suite, ptr null], align 4
@__UNIQUE_ID_suites245 = internal global ptr @__UNIQUE_ID_array244, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file246 = internal constant [35 x i8] c"test_kprobes.file=lib/test_kprobes\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [25 x i8] c"test_kprobes.license=GPL\00", section ".modinfo", align 1
@kprobes_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"kprobes_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kprobes_test_init, ptr null, ptr @kprobes_testcases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@kprobes_testcases = internal global { [5 x %struct.kunit_case], [60 x i8] } { [5 x %struct.kunit_case] [%struct.kunit_case { ptr @test_kprobe, ptr @.str, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @test_kprobes, ptr @.str.1, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @test_kretprobe, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @test_kretprobes, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [60 x i8] zeroinitializer }, align 32
@target = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@target2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rand1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_kprobe\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"test_kprobes\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_kretprobe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_kretprobes\00", [16 x i8] zeroinitializer }, align 32
@current_test = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kp = internal global { %struct.kprobe, [48 x i8] } { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.11, i32 0, ptr @kp_pre_handler, ptr @kp_post_handler, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_kprobes.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register_kprobe(&kp)\00", [43 x i8] zeroinitializer }, align 32
@preh_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"!=\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"preh_val\00", [23 x i8] zeroinitializer }, align 32
@posth_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"posth_val\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kprobe_target\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [326 x i8], [90 x i8] } { [326 x i8] c"(preempt_count() == 0 && !({ unsigned long _flags; do { ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); _flags = arch_local_save_flags(); } while (0); ({ ({ unsigned long __dummy; typeof(_flags) __dummy2; (void)(&__dummy == &__dummy2); 1; }); arch_irqs_disabled_flags(_flags); }); }))\00", [90 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(rand1 / 3)\00", [20 x i8] zeroinitializer }, align 32
@kp2 = internal global { %struct.kprobe, [48 x i8] } { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.15, i32 0, ptr @kp_pre_handler2, ptr @kp_post_handler2, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@__const.test_kprobes.kps = private unnamed_addr constant [2 x ptr] [ptr @kp, ptr @kp2], align 8
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_kprobes(kps, 2)\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kprobe_target2\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(rand1 / 3) + 1\00", [16 x i8] zeroinitializer }, align 32
@rp = internal global { %struct.kretprobe, [52 x i8] } { %struct.kretprobe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.11, i32 0, ptr null, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, ptr @return_handler, ptr @entry_handler, i32 0, i32 0, i32 0, %struct.freelist_head zeroinitializer, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_kretprobe(&rp)\00", [40 x i8] zeroinitializer }, align 32
@krph_val = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"krph_val\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rand1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rand1 / 3\00", [22 x i8] zeroinitializer }, align 32
@rp2 = internal global { %struct.kretprobe, [52 x i8] } { %struct.kretprobe { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr null, ptr @.str.15, i32 0, ptr null, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, ptr @return_handler2, ptr @entry_handler, i32 0, i32 0, i32 0, %struct.freelist_head zeroinitializer, ptr null }, [52 x i8] zeroinitializer }, align 32
@__const.test_kretprobes.rps = private unnamed_addr constant [2 x ptr] [ptr @rp, ptr @rp2], align 8
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"register_kretprobes(rps, 2)\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"kprobes_test_suite\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 363, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"kprobes_testcases\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 349, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 16, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"target2\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 17, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"rand1\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 15, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 350, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 351, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 353, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 354, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"current_test\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 18, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [3 x i8] c"kp\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 45, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 54, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"preh_val\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 15, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 57, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"posth_val\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 15, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 58, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 46, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 32, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 41, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [4 x i8] c"kp2\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 106, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 122, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 107, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 102, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [3 x i8] c"rp\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 160, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 169, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"krph_val\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 140, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 172, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 154, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [4 x i8] c"rp2\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 185, i32 25 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [22 x i8] c"../lib/test_kprobes.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 199, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__UNIQUE_ID_suites245, ptr @kprobes_test_suite, ptr @kprobes_testcases, ptr @target, ptr @target2, ptr @rand1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @current_test, ptr @kp, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @preh_val, ptr @.str.8, ptr @.str.9, ptr @posth_val, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @kp2, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @rp, ptr @.str.17, ptr @krph_val, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @rp2, ptr @.str.22], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_testcases to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rand1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preh_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @posth_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 326, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kp2 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krph_val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp2 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobes_test_init(ptr nocapture noundef readnone %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  store ptr @kprobe_target, ptr @target, align 4
  store ptr @kprobe_target2, ptr @target2, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call = tail call i32 @prandom_u32() #8
  store i32 %call, ptr @rand1, align 4
  %cmp = icmp ult i32 %call, 4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kprobe_target(i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %value, 3
  ret i32 %div
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kprobe_target2(i32 noundef %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %div = udiv i32 %value, 3
  %add = add nuw nsw i32 %div, 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_kprobe(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion41 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %test, ptr @current_test, align 4
  %call = tail call i32 @register_kprobe(ptr noundef nonnull @kp) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 54, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.7, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %14 = load ptr, ptr @target, align 4
  %15 = load i32, ptr @rand1, align 4
  %call8 = call i32 %14(i32 noundef %15) #8, !callees !89
  call void @unregister_kprobe(ptr noundef nonnull @kp) #8
  %16 = load i32, ptr @preh_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #8
  %17 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %18 = call ptr @memset(ptr %17, i32 255, i32 24)
  %19 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %20 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %21 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 57, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %22 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.4, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %23 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %25 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %26 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.8, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %27 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.6, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %28 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %29 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.9, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %16 to i64
  %30 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31 = icmp ne i32 %16, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #8
  %31 = load i32, ptr @posth_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion41) #8
  %32 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %33 = call ptr @memset(ptr %32, i32 255, i32 24)
  %34 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %test, ptr %__assertion41, align 8
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %35 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %36 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 58, ptr %line45, align 8
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %37 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.4, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %38 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %message47, align 8
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %40 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @kunit_binary_assert_format, ptr %format50, align 8
  %operation51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 1
  %41 = ptrtoint ptr %operation51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.8, ptr %operation51, align 4
  %left_text52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 2
  %42 = ptrtoint ptr %left_text52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.6, ptr %left_text52, align 8
  %left_value53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 3
  %43 = ptrtoint ptr %left_value53 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %left_value53, align 8
  %right_text55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 4
  %44 = ptrtoint ptr %right_text55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.10, ptr %right_text55, align 8
  %right_value56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 5
  %conv57 = zext i32 %31 to i64
  %45 = ptrtoint ptr %right_value56 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv57, ptr %right_value56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp59 = icmp ne i32 %31, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp59, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion41) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_kprobes(ptr noundef %test) #0 align 64 {
entry:
  %kps = alloca [2 x ptr], align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion41 = alloca %struct.kunit_binary_assert, align 8
  %__assertion70 = alloca %struct.kunit_binary_assert, align 8
  %__assertion98 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kps) #8
  %0 = load i64, ptr @__const.test_kprobes.kps, align 8
  %1 = ptrtoint ptr %kps to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %kps, align 8
  store ptr %test, ptr @current_test, align 4
  store ptr null, ptr getelementptr inbounds (%struct.kprobe, ptr @kp, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.kprobe, ptr @kp, i32 0, i32 10), align 4
  %call = call i32 @register_kprobes(ptr noundef nonnull %kps, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 122, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %13 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.14, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %15 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  store i32 0, ptr @preh_val, align 4
  store i32 0, ptr @posth_val, align 4
  %16 = load ptr, ptr @target, align 4
  %17 = load i32, ptr @rand1, align 4
  %call8 = call i32 %16(i32 noundef %17) #8, !callees !89
  %18 = load i32, ptr @preh_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #8
  %19 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %20 = call ptr @memset(ptr %19, i32 255, i32 24)
  %21 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %22 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %23 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 127, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %24 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.4, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %25 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %27 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %28 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.8, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %29 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.6, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %30 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %31 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.9, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %18 to i64
  %32 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp31 = icmp ne i32 %18, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #8
  %33 = load i32, ptr @posth_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion41) #8
  %34 = getelementptr inbounds i8, ptr %__assertion41, i32 32
  %35 = call ptr @memset(ptr %34, i32 255, i32 24)
  %36 = ptrtoint ptr %__assertion41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion41, align 8
  %type44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 1
  %37 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type44, align 4
  %line45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 2
  %38 = ptrtoint ptr %line45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %line45, align 8
  %file46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 3
  %39 = ptrtoint ptr %file46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.4, ptr %file46, align 4
  %message47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4
  %40 = ptrtoint ptr %message47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message47, align 8
  %va49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %va49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va49, align 4
  %format50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion41, i32 0, i32 5
  %42 = ptrtoint ptr %format50 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_assert_format, ptr %format50, align 8
  %operation51 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 1
  %43 = ptrtoint ptr %operation51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.8, ptr %operation51, align 4
  %left_text52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 2
  %44 = ptrtoint ptr %left_text52 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.6, ptr %left_text52, align 8
  %left_value53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 3
  %45 = ptrtoint ptr %left_value53 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %left_value53, align 8
  %right_text55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 4
  %46 = ptrtoint ptr %right_text55 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.10, ptr %right_text55, align 8
  %right_value56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion41, i32 0, i32 5
  %conv57 = zext i32 %33 to i64
  %47 = ptrtoint ptr %right_value56 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv57, ptr %right_value56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp59 = icmp ne i32 %33, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion41, i1 noundef zeroext %cmp59, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion41) #8
  store i32 0, ptr @preh_val, align 4
  store i32 0, ptr @posth_val, align 4
  %48 = load ptr, ptr @target2, align 4
  %49 = load i32, ptr @rand1, align 4
  %call65 = call i32 %48(i32 noundef %49) #8, !callees !90
  %50 = load i32, ptr @preh_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion70) #8
  %51 = getelementptr inbounds i8, ptr %__assertion70, i32 32
  %52 = call ptr @memset(ptr %51, i32 255, i32 24)
  %53 = ptrtoint ptr %__assertion70 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %test, ptr %__assertion70, align 8
  %type73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 1
  %54 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %type73, align 4
  %line74 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 2
  %55 = ptrtoint ptr %line74 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 134, ptr %line74, align 8
  %file75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 3
  %56 = ptrtoint ptr %file75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.4, ptr %file75, align 4
  %message76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4
  %57 = ptrtoint ptr %message76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %message76, align 8
  %va78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %va78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %va78, align 4
  %format79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion70, i32 0, i32 5
  %59 = ptrtoint ptr %format79 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @kunit_binary_assert_format, ptr %format79, align 8
  %operation80 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 1
  %60 = ptrtoint ptr %operation80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.8, ptr %operation80, align 4
  %left_text81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 2
  %61 = ptrtoint ptr %left_text81 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.6, ptr %left_text81, align 8
  %left_value82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 3
  %62 = ptrtoint ptr %left_value82 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %left_value82, align 8
  %right_text84 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 4
  %63 = ptrtoint ptr %right_text84 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.9, ptr %right_text84, align 8
  %right_value85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion70, i32 0, i32 5
  %conv86 = zext i32 %50 to i64
  %64 = ptrtoint ptr %right_value85 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv86, ptr %right_value85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp88 = icmp ne i32 %50, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion70, i1 noundef zeroext %cmp88, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion70) #8
  %65 = load i32, ptr @posth_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion98) #8
  %66 = getelementptr inbounds i8, ptr %__assertion98, i32 32
  %67 = call ptr @memset(ptr %66, i32 255, i32 24)
  %68 = ptrtoint ptr %__assertion98 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %test, ptr %__assertion98, align 8
  %type101 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 1
  %69 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %type101, align 4
  %line102 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 2
  %70 = ptrtoint ptr %line102 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 135, ptr %line102, align 8
  %file103 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 3
  %71 = ptrtoint ptr %file103 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.4, ptr %file103, align 4
  %message104 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4
  %72 = ptrtoint ptr %message104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message104, align 8
  %va106 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %va106 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va106, align 4
  %format107 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion98, i32 0, i32 5
  %74 = ptrtoint ptr %format107 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_binary_assert_format, ptr %format107, align 8
  %operation108 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 1
  %75 = ptrtoint ptr %operation108 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.8, ptr %operation108, align 4
  %left_text109 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 2
  %76 = ptrtoint ptr %left_text109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.6, ptr %left_text109, align 8
  %left_value110 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 3
  %77 = ptrtoint ptr %left_value110 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %left_value110, align 8
  %right_text112 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 4
  %78 = ptrtoint ptr %right_text112 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.10, ptr %right_text112, align 8
  %right_value113 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion98, i32 0, i32 5
  %conv114 = zext i32 %65 to i64
  %79 = ptrtoint ptr %right_value113 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv114, ptr %right_value113, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp116 = icmp ne i32 %65, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion98, i1 noundef zeroext %cmp116, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion98) #8
  call void @unregister_kprobes(ptr noundef nonnull %kps, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kps) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_kretprobe(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %test, ptr @current_test, align 4
  %call = tail call i32 @register_kretprobe(ptr noundef nonnull @rp) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 169, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.17, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %14 = load ptr, ptr @target, align 4
  %15 = load i32, ptr @rand1, align 4
  %call8 = call i32 %14(i32 noundef %15) #8, !callees !89
  call void @unregister_kretprobe(ptr noundef nonnull @rp) #8
  %16 = load i32, ptr @krph_val, align 4
  %17 = load i32, ptr @rand1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #8
  %18 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %21 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %22 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 172, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %23 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.4, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %24 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %26 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %27 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.5, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %28 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.18, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = zext i32 %16 to i64
  %29 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %30 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.19, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %17 to i64
  %31 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp31 = icmp eq i32 %16, %17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @test_kretprobes(ptr noundef %test) #0 align 64 {
entry:
  %rps = alloca [2 x ptr], align 8
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion13 = alloca %struct.kunit_binary_assert, align 8
  %__assertion42 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rps) #8
  %0 = load i64, ptr @__const.test_kretprobes.rps, align 8
  %1 = ptrtoint ptr %rps to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %rps, align 8
  store ptr %test, ptr @current_test, align 4
  store ptr null, ptr getelementptr inbounds (%struct.kretprobe, ptr @rp, i32 0, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.kretprobe, ptr @rp, i32 0, i32 0, i32 10), align 4
  %call = call i32 @register_kretprobes(ptr noundef nonnull %rps, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 199, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.6, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %13 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.22, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv3 = sext i32 %call to i64
  %15 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv3, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  store i32 0, ptr @krph_val, align 4
  %16 = load ptr, ptr @target, align 4
  %17 = load i32, ptr @rand1, align 4
  %call8 = call i32 %16(i32 noundef %17) #8, !callees !89
  %18 = load i32, ptr @krph_val, align 4
  %19 = load i32, ptr @rand1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion13) #8
  %20 = getelementptr inbounds i8, ptr %__assertion13, i32 32
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  %22 = ptrtoint ptr %__assertion13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion13, align 8
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 1
  %23 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 2
  %24 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 203, ptr %line17, align 8
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 3
  %25 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.4, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4
  %26 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message19, align 8
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion13, i32 0, i32 5
  %28 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_assert_format, ptr %format22, align 8
  %operation23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 1
  %29 = ptrtoint ptr %operation23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.5, ptr %operation23, align 4
  %left_text24 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 2
  %30 = ptrtoint ptr %left_text24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.18, ptr %left_text24, align 8
  %left_value25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 3
  %conv26 = zext i32 %18 to i64
  %31 = ptrtoint ptr %left_value25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv26, ptr %left_value25, align 8
  %right_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 4
  %32 = ptrtoint ptr %right_text27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.19, ptr %right_text27, align 8
  %right_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion13, i32 0, i32 5
  %conv29 = zext i32 %19 to i64
  %33 = ptrtoint ptr %right_value28 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv29, ptr %right_value28, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp31 = icmp eq i32 %18, %19
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion13, i1 noundef zeroext %cmp31, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion13) #8
  store i32 0, ptr @krph_val, align 4
  %34 = load ptr, ptr @target2, align 4
  %35 = load i32, ptr @rand1, align 4
  %call37 = call i32 %34(i32 noundef %35) #8, !callees !90
  %36 = load i32, ptr @krph_val, align 4
  %37 = load i32, ptr @rand1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion42) #8
  %38 = getelementptr inbounds i8, ptr %__assertion42, i32 32
  %39 = call ptr @memset(ptr %38, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion42 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion42, align 8
  %type45 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 1
  %41 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type45, align 4
  %line46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 2
  %42 = ptrtoint ptr %line46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 207, ptr %line46, align 8
  %file47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 3
  %43 = ptrtoint ptr %file47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.4, ptr %file47, align 4
  %message48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4
  %44 = ptrtoint ptr %message48 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message48, align 8
  %va50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va50 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va50, align 4
  %format51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion42, i32 0, i32 5
  %46 = ptrtoint ptr %format51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format51, align 8
  %operation52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 1
  %47 = ptrtoint ptr %operation52 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.5, ptr %operation52, align 4
  %left_text53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 2
  %48 = ptrtoint ptr %left_text53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.18, ptr %left_text53, align 8
  %left_value54 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 3
  %conv55 = zext i32 %36 to i64
  %49 = ptrtoint ptr %left_value54 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv55, ptr %left_value54, align 8
  %right_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 4
  %50 = ptrtoint ptr %right_text56 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.19, ptr %right_text56, align 8
  %right_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion42, i32 0, i32 5
  %conv58 = zext i32 %37 to i64
  %51 = ptrtoint ptr %right_value57 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv58, ptr %right_value57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %37)
  %cmp60 = icmp eq i32 %36, %37
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion42, i1 noundef zeroext %cmp60, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion42) #8
  call void @unregister_kretprobes(ptr noundef nonnull %rps, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rps) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kp_pre_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !91
  %2 = load ptr, ptr @current_test, align 4
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #8
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !92
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %17 = phi i1 [ true, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %2, ptr noundef nonnull %__assertion, i1 noundef zeroext %17, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #8
  %18 = load i32, ptr @rand1, align 4
  %div = udiv i32 %18, 3
  store i32 %div, ptr @preh_val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kp_post_handler(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %regs, i32 noundef %flags) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion21 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !91
  %2 = load ptr, ptr @current_test, align 4
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #8
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !92
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %17 = phi i1 [ true, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %2, ptr noundef nonnull %__assertion, i1 noundef zeroext %17, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #8
  %18 = load i32, ptr @preh_val, align 4
  %19 = load i32, ptr @rand1, align 4
  %div = udiv i32 %19, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion21) #8
  %20 = getelementptr inbounds i8, ptr %__assertion21, i32 32
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  %22 = load ptr, ptr @current_test, align 4
  %23 = ptrtoint ptr %__assertion21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %__assertion21, align 8
  %type24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 1
  %24 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type24, align 4
  %line25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 2
  %25 = ptrtoint ptr %line25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 41, ptr %line25, align 8
  %file26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 3
  %26 = ptrtoint ptr %file26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.4, ptr %file26, align 4
  %message27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 4
  %27 = ptrtoint ptr %message27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %message27, align 8
  %va29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %va29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %va29, align 4
  %format30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion21, i32 0, i32 5
  %29 = ptrtoint ptr %format30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @kunit_binary_assert_format, ptr %format30, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion21, i32 0, i32 1
  %30 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion21, i32 0, i32 2
  %31 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion21, i32 0, i32 3
  %conv31 = zext i32 %18 to i64
  %32 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv31, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion21, i32 0, i32 4
  %33 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.13, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion21, i32 0, i32 5
  %conv32 = zext i32 %div to i64
  %34 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv32, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %div)
  %cmp34 = icmp eq i32 %18, %div
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion21, i1 noundef zeroext %cmp34, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion21) #8
  %35 = load i32, ptr @preh_val, align 4
  %add = add i32 %35, 3
  store i32 %add, ptr @posth_val, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kprobes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kprobes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kp_pre_handler2(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %regs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr @rand1, align 4
  %div = udiv i32 %0, 3
  %add = add nuw nsw i32 %div, 1
  store i32 %add, ptr @preh_val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kp_post_handler2(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %regs, i32 noundef %flags) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr @preh_val, align 4
  %1 = load i32, ptr @rand1, align 4
  %div = udiv i32 %1, 3
  %add = add nuw nsw i32 %div, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = load ptr, ptr @current_test, align 4
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 102, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.9, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %0 to i64
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = zext i32 %add to i64
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add)
  %cmp = icmp eq i32 %0, %add
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %4, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %17 = load i32, ptr @preh_val, align 4
  %add7 = add i32 %17, 3
  store i32 %add7, ptr @posth_val, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kretprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kretprobe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @return_handler(ptr nocapture noundef readnone %ri, ptr nocapture noundef readonly %regs) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion22 = alloca %struct.kunit_binary_assert, align 8
  %__assertion45 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #8
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !91
  %4 = load ptr, ptr @current_test, align 4
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 153, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.12, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %expected_true, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !80) #8
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !92
  %and.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %19 = phi i1 [ true, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %4, ptr noundef nonnull %__assertion, i1 noundef zeroext %19, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #8
  %20 = load i32, ptr @rand1, align 4
  %div = udiv i32 %20, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion22) #8
  %21 = getelementptr inbounds i8, ptr %__assertion22, i32 32
  %22 = call ptr @memset(ptr %21, i32 255, i32 24)
  %23 = load ptr, ptr @current_test, align 4
  %24 = ptrtoint ptr %__assertion22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %__assertion22, align 8
  %type25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 1
  %25 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type25, align 4
  %line26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 2
  %26 = ptrtoint ptr %line26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 154, ptr %line26, align 8
  %file27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 3
  %27 = ptrtoint ptr %file27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %file27, align 4
  %message28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 4
  %28 = ptrtoint ptr %message28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %message28, align 8
  %va30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %va30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %va30, align 4
  %format31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion22, i32 0, i32 5
  %30 = ptrtoint ptr %format31 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_binary_assert_format, ptr %format31, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion22, i32 0, i32 1
  %31 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion22, i32 0, i32 2
  %32 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.20, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion22, i32 0, i32 3
  %conv32 = zext i32 %1 to i64
  %33 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv32, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion22, i32 0, i32 4
  %34 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.21, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion22, i32 0, i32 5
  %conv33 = zext i32 %div to i64
  %35 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv33, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div)
  %cmp35 = icmp eq i32 %1, %div
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %23, ptr noundef nonnull %__assertion22, i1 noundef zeroext %cmp35, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion22) #8
  %36 = load i32, ptr @krph_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion45) #8
  %37 = getelementptr inbounds i8, ptr %__assertion45, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = load ptr, ptr @current_test, align 4
  %40 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %__assertion45, align 8
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %41 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %42 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 155, ptr %line49, align 8
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %43 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.4, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %44 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message51, align 8
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %46 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format54, align 8
  %operation55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 1
  %47 = ptrtoint ptr %operation55 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.8, ptr %operation55, align 4
  %left_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 2
  %48 = ptrtoint ptr %left_text56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.18, ptr %left_text56, align 8
  %left_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 3
  %conv58 = zext i32 %36 to i64
  %49 = ptrtoint ptr %left_value57 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv58, ptr %left_value57, align 8
  %right_text59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 4
  %50 = ptrtoint ptr %right_text59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.6, ptr %right_text59, align 8
  %right_value60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 5
  %51 = ptrtoint ptr %right_value60 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %right_value60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp63 = icmp ne i32 %36, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %39, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp63, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion45) #8
  %52 = load i32, ptr @rand1, align 4
  store i32 %52, ptr @krph_val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @entry_handler(ptr nocapture noundef readnone %ri, ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !91
  %2 = load ptr, ptr @current_test, align 4
  %3 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %5 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 144, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %7 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %10 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %11 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %expected_true, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !80) #8
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !92
  %and.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %17 = phi i1 [ true, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %2, ptr noundef nonnull %__assertion, i1 noundef zeroext %17, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #8
  %18 = load i32, ptr @rand1, align 4
  %div = udiv i32 %18, 3
  store i32 %div, ptr @krph_val, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_kretprobes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_kretprobes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @return_handler2(ptr nocapture noundef readnone %ri, ptr nocapture noundef readonly %regs) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion11 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs, align 4
  %2 = load i32, ptr @rand1, align 4
  %div = udiv i32 %2, 3
  %add = add nuw nsw i32 %div, 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = load ptr, ptr @current_test, align 4
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 179, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.4, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.5, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.20, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = zext i32 %1 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = zext i32 %add to i64
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp = icmp eq i32 %1, %add
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %5, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %18 = load i32, ptr @krph_val, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion11) #8
  %19 = getelementptr inbounds i8, ptr %__assertion11, i32 32
  %20 = call ptr @memset(ptr %19, i32 255, i32 24)
  %21 = load ptr, ptr @current_test, align 4
  %22 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %__assertion11, align 8
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %23 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %24 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 180, ptr %line15, align 8
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %25 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.4, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %26 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message17, align 8
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %28 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_assert_format, ptr %format20, align 8
  %operation21 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 1
  %29 = ptrtoint ptr %operation21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.8, ptr %operation21, align 4
  %left_text22 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 2
  %30 = ptrtoint ptr %left_text22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.18, ptr %left_text22, align 8
  %left_value23 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 3
  %conv24 = zext i32 %18 to i64
  %31 = ptrtoint ptr %left_value23 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv24, ptr %left_value23, align 8
  %right_text25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 4
  %32 = ptrtoint ptr %right_text25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.6, ptr %right_text25, align 8
  %right_value26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 5
  %33 = ptrtoint ptr %right_value26 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %right_value26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp29 = icmp ne i32 %18, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %21, ptr noundef nonnull %__assertion11, i1 noundef zeroext %cmp29, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion11) #8
  %34 = load i32, ptr @rand1, align 4
  store i32 %34, ptr @krph_val, align 4
  ret i32 0
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !74, !76, !78}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_suites245, !1, !"__UNIQUE_ID_suites245", i1 false, i1 false}
!1 = !{!"../lib/test_kprobes.c", i32 369, i32 1}
!2 = !{ptr @__UNIQUE_ID_file246, !3, !"__UNIQUE_ID_file246", i1 false, i1 false}
!3 = !{!"../lib/test_kprobes.c", i32 371, i32 1}
!4 = !{ptr @__UNIQUE_ID_license247, !3, !"__UNIQUE_ID_license247", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array244, !1, !"__UNIQUE_ID_array244", i1 false, i1 false}
!6 = !{ptr @kprobes_test_suite, !7, !"kprobes_test_suite", i1 false, i1 false}
!7 = !{!"../lib/test_kprobes.c", i32 363, i32 27}
!8 = !{ptr @target, !9, !"target", i1 false, i1 false}
!9 = !{!"../lib/test_kprobes.c", i32 16, i32 14}
!10 = !{ptr @target2, !11, !"target2", i1 false, i1 false}
!11 = !{!"../lib/test_kprobes.c", i32 17, i32 14}
!12 = distinct !{null, !13, !"target_return_address", i1 false, i1 false}
!13 = !{!"../lib/test_kprobes.c", i32 23, i32 22}
!14 = distinct !{null, !15, !"stacktrace_target", i1 false, i1 false}
!15 = !{!"../lib/test_kprobes.c", i32 21, i32 24}
!16 = distinct !{null, !17, !"internal_target", i1 false, i1 false}
!17 = !{!"../lib/test_kprobes.c", i32 20, i32 24}
!18 = distinct !{null, !19, !"stacktrace_driver", i1 false, i1 false}
!19 = !{!"../lib/test_kprobes.c", i32 22, i32 24}
!20 = !{ptr @rand1, !21, !"rand1", i1 false, i1 false}
!21 = !{!"../lib/test_kprobes.c", i32 15, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_kprobes.c", i32 350, i32 2}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/test_kprobes.c", i32 351, i32 2}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/test_kprobes.c", i32 353, i32 2}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/test_kprobes.c", i32 354, i32 2}
!30 = !{ptr @kprobes_testcases, !31, !"kprobes_testcases", i1 false, i1 false}
!31 = !{!"../lib/test_kprobes.c", i32 349, i32 26}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/test_kprobes.c", i32 54, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_kprobes.c", i32 57, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_kprobes.c", i32 58, i32 2}
!42 = !{ptr @current_test, !43, !"current_test", i1 false, i1 false}
!43 = !{!"../lib/test_kprobes.c", i32 18, i32 22}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_kprobes.c", i32 46, i32 17}
!46 = !{ptr @kp, !47, !"kp", i1 false, i1 false}
!47 = !{!"../lib/test_kprobes.c", i32 45, i32 22}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_kprobes.c", i32 32, i32 2}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/test_kprobes.c", i32 41, i32 2}
!52 = !{ptr @preh_val, !53, !"preh_val", i1 false, i1 false}
!53 = !{!"../lib/test_kprobes.c", i32 15, i32 19}
!54 = !{ptr @posth_val, !55, !"posth_val", i1 false, i1 false}
!55 = !{!"../lib/test_kprobes.c", i32 15, i32 29}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/test_kprobes.c", i32 122, i32 2}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/test_kprobes.c", i32 107, i32 17}
!60 = !{ptr @kp2, !61, !"kp2", i1 false, i1 false}
!61 = !{!"../lib/test_kprobes.c", i32 106, i32 22}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/test_kprobes.c", i32 102, i32 2}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/test_kprobes.c", i32 169, i32 2}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/test_kprobes.c", i32 172, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rp, !70, !"rp", i1 false, i1 false}
!70 = !{!"../lib/test_kprobes.c", i32 160, i32 25}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test_kprobes.c", i32 154, i32 2}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @krph_val, !75, !"krph_val", i1 false, i1 false}
!75 = !{!"../lib/test_kprobes.c", i32 140, i32 12}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/test_kprobes.c", i32 199, i32 2}
!78 = !{ptr @rp2, !79, !"rp2", i1 false, i1 false}
!79 = !{!"../lib/test_kprobes.c", i32 185, i32 25}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{ptr @kprobe_target}
!90 = !{ptr @kprobe_target2}
!91 = !{!"auto-init"}
!92 = !{i64 612603}
